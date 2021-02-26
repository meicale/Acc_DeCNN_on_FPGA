Accelerate  CNN and deformable CNN on FPGA 

​    Deformable Convolutional Networks的原因其实比较简单，我们都知道，常规的卷积、池化等操作，得到的都是矩形框，因此对不规则的目标建模的时候有非常大的局限性。CNN其实不具有旋转不变性和尺度不变性，缺乏判断形变的策略依据。都和同一个卷积做计算时，例如固定的box对于灵活物体来说非常僵硬，同一层的特征图的不同位置可能对应的是不同形状的物体等情况存在很大局限性。作为对上述问题的解决方案，提有研究者出了一种新的卷积方式deformable convolution{1}。该方法虽然在目标检测等任务上效果突出，但是，由于采用了特殊打卷积计算导致内存访问不规则等问题给在fpga上加速该算法带来了非常大的挑战。目前，有多篇研究为解决这个问题提出了相应的解决方案，本项目旨在复现相关方法。
## 阶段1 算子原理与加速

### 1. CNN

#### 1.1 卷积算子原理

​    卷积滤波器可以用系数矩阵进行定义。卷积运算本质上是在像素集（以给定像素为中心的帧/图像子矩阵）和系数矩阵上执行MAC。下图说明了如何为像素计算卷积如黄色突出所示。在此，滤波器的系数矩阵大小为3x3。该图还显示了在过滤过程中如何生成整个输出图像。生成的输出像素的索引是黄色突出显示的输入像素的索引。该过程包括：

   -选择一个输入像素，如下图黄色突出显示
   -提取大小与滤波器系数相同的子矩阵
   -计算提取的子矩阵和系数矩阵的逐元素乘积和
   -将乘积和作为输出像素放置在与输入像素相同的索引的输出图像/帧中



![Convolution Filter](./images/convolution.jpg)

#### 1.2 2D卷积公式

   对于输出特征图y上的每个位置p0，我们有

![img](/home/bill/workspace/Acc_DeCNN_on_FPGA/images/cnn_form1.png)


   R定义了感受野的大小和dilation。例如：   R = {(−1, −1),(−1, 0), . . . ,(0, 1),(1, 1)} 定义了3×3的内核，dilation为1

   

#### 1.3 2D卷积代码实例

  卷积使用典型的多层嵌套循环结构实现。外层两个循环定义要处理的像素。内部的两个循环执行乘积和操作。

   提示： **该算法假定超出图像边界的所有像素均为零**

   ```cpp
   void Filter2D(
           const char           coeffs[FILTER_V_SIZE][FILTER_H_SIZE],
           float                factor,
           short                bias,
           unsigned short       width,
           unsigned short       height,
           unsigned short       stride,
           const unsigned char *src,
           unsigned char       *dst)
   {
       for(int y=0; y<height; ++y)
       {
           for(int x=0; x<width; ++x)
           {
               // Apply 2D filter to the pixel window
               int sum = 0;
               for(int row=0; row<FILTER_V_SIZE; row++)
               {
                   for(int col=0; col<FILTER_H_SIZE; col++)
                   {
                       unsigned char pixel;
                       int xoffset = (x+col-(FILTER_H_SIZE/2));
                       int yoffset = (y+row-(FILTER_V_SIZE/2));
                       // Deal with boundary conditions : clamp pixels to 0 when outside of image 
                       if ( (xoffset<0) || (xoffset>=width) || (yoffset<0) || (yoffset>=height) ) {
                           pixel = 0;
                       } else {
                           pixel = src[yoffset*stride+xoffset];
                       }
                       sum += pixel*coeffs[row][col];
                   }
               }
               
               // Normalize and saturate result
               unsigned char outpix = MIN(MAX((int(factor * sum)+bias), 0), 255);
   
               // Write output
               dst[y*stride+x] = outpix;
           }
       }
   }
   ```

#### 1.4 CNN算子加速方法

   数据流链包括四个不同的功能，如下所示：

   - ReadFromMem ：从主存储器读取像素数据或视频输入
   - Window2D ：在输出端具有宽（15x15像素）访问权限的本地缓存
   - Filter2D ：核心狗窝过滤算法
   - WriteToMem ：将输出数据写入主存储器

      ![Datflow](images/filterBlkDia.jpg)

   ##### Window2D: Line and Window Buffers

   ![Matrix Movement](images/Window2D.jpg)

   上图说明了行和窗口缓冲区的操作。

### 2. Deformable Convolution

####    Deformable CNN中通过引进新的模块，大大增强了CNN的对几何变换建模能力。

   Deformable Convolution在标准卷积中向常规采样网格添加了2D偏移。 deformable RoI pooling在以前的RoI pooling中的常规bin partition中为每个bin添加了一个offset。类似地，从先前的特征图和RoI学习偏移，使得能够对具有不同形状的对象进行自适应部分定位。

   ![img](/home/bill/workspace/Acc_DeCNN_on_FPGA/images/de_cnn_offset.jpg)

   展示了卷积核大小为 3x3 的正常卷积和可变形卷积的采样方式：(a) 所示的正常卷积规律的采样 9 个点（绿点），(b)(c)(d) 为可变形卷积，在正常的采样坐标上加上一个位移量（蓝色箭头），其中 (c)(d) 作为 (b) 的特殊情况，展示了可变形卷积可以作为尺度变换，比例变换和旋转变换的特殊情况

     两个模块的权值都不多。它们因为加入了偏移的学习添加了少量参数和计算。它们可以轻松集成到深CNN架构中，并通过反向传播进行端到端的训练。  两者原理是一样的，就是在这些卷积或者ROI采样层上，添加了位移变量，这个变量根据数据的情况学习，偏移后，相当于卷积核每个方块可伸缩的变化，从而改变了感受野的范围，感受野成了一个多边形。

#### 2.1 Deformable Convolution算子原理与公式

   Deformable Conv操作并没有改变卷积的计算操作，而是在卷积操作的作用区域上，加入了一个可学习的参数∆pn。对于变形的卷积，增加了一个参数，即偏移量 {∆pn|n = 1, ..., N}, where N = |R|. 

  Deformable Conv公式:   ![img](/home/bill/workspace/Acc_DeCNN_on_FPGA/images/decnn_form1.webp)



   ![img](/home/bill/workspace/Acc_DeCNN_on_FPGA/images/de_cnn.png)

3X3的变形卷积 ，*首先通过一个小卷积层（绿色）的输出得到可变形卷积所需要的位移量，然后将其作用在卷积核（蓝色）上，达到可变形卷积的效果*

#### 2.2 Deformable ROI Pooling算子原理与公式

   类似的定义变形的ROI pooling，增加一个偏移量∆pij,如下定义:  ![img](/home/bill/workspace/Acc_DeCNN_on_FPGA/images/deroi_fom1.webp)

   ![img](/home/bill/workspace/Acc_DeCNN_on_FPGA/images/deroi.png)

  3X3的deformable ROI pooling


#### 2.3 Deformable CNN 算子加速

##### 2.3.1 需要解决的问题

   FPGA加速器上支持DeCNN有几个挑战：（i），因为动态生成的偏移量，输入特征图的内存访问是不规则的。许多现有的加速器的ISA和控制逻辑不足以支持随机存储器访问模式。另外，不太连续的内存访问模式限制了突发内存访问的长度，消耗更多内存。 （ii）输入特征空间复用少。许多加速器是为利用输出重用的输出平稳或行平稳数据流而设计的。对于可变形的卷积，由于可变的偏移，当前输出像素的已加载输入像素将无法有效重用，会严重影响性能。 （iii）增加用于加载可变偏移量的内存带宽要求。

##### 2.3.2 解决方法

   对可变形卷积操作进行以下修改，以使其更适宜在fpga上运行：

   （1）将自适应偏移量限制在固定范围内，以允许输入缓冲并充分利用输入的重用。 

   （2）将任意偏移位移限制为正方形，以减少加载偏移量的开销，并允许并行访问片上存储器。 

   （3）将偏移位移取整为整数，并去除分数双线性插值运算以计算最终采样值。 

   （4）使用depth-wise卷积来减少乘法累加运算（MAC）的总数。

   ![img](/home/bill/workspace/Acc_DeCNN_on_FPGA/images/de_cnn_off_m.png)

用于可变形卷积运算协同设计的算法调整（a）默认的3×3卷积滤波器 （b）具有不受约束的非整数偏移量的原始可变形卷积。（c）设置偏移量的上限 （d）将几何形状限制为正方形（e）预测的偏移量舍入为整数



## 阶段2 检测网络构建与上板测试（未完待续...）

1. 基于CNN算子实现目标检测网络，例如yolo等。

2. Deformable CNN算子，实现目标检测算法。
3. 期待有板子中...，你感兴趣且有板子欢迎联系...


**ps. 本项目所列工作不是本人原创，从公开来源获取相关资源仅作为学习使用，相关出处在参考中进行列出，如有侵权请告知删除！！！**



代码：
1. https://github.com/msracver/Deformable-ConvNets
2. https://par.nsf.gov/servlets/purl/10087143 
3. https://github.com/Xilinx/Vitis-In-Depth-Tutorial/tree/master/Hardware_Accelerators/Design_Tutorials/01-convolution-tutorial
   https://github.com/WalkerLau/Accelerating-CNN-with-FPGA
4. https://github.com/Xilinx/HLS-Tiny-Tutorials/tree/master/algorithm_2D_convolution_linebuffer



参考文献：
1. 
	https://yaohuicai.github.io/data/2019Deformable_NeurIPS_EMC2.pdf
2. https://arxiv.org/pdf/2006.08357.pdf
3. https://arxiv.org/pdf/1811.11168.pdf
