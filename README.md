# Acc_DeCNN_on_FPGA

###       a project accelerate the CNN and deformable CNN in FPGA board(ex.pynq-z2)

阶段1

CNN算子加速，并实现ssd目标检测算法

相关的工作已经有较好打基础，在此基础上进行学习借鉴。

阶段2

Deformable CNN算子加速，实现目标检测算法。

Deformable Convolutional Networks的原因其实比较简单，我们都知道，常规的卷积、池化等操作，得到的都是矩形框，因此对不规则的目标建模的时候有非常大的局限性。CNN其实不具有旋转不变性和尺度不变性的，缺乏判断形变的策略依据。都和同一个卷积做计算时，比如固定的box对于灵活物体来说非常僵硬，比如同一层的特征图的不同位置可能对应的是不同形状的物体等情况存在很大局限性。作为对上述问题的解决方案，提有研究者出了一种新的卷积方式deformable convolution{1}。主要思路就是卷积操作不是在规规矩矩的3x3的格子里做了，而是有了种种偏移，如下图所示：

（图片待补充）

该方法虽然在目标检测等任务上效果突出，但是，由于采用了特殊打卷积计算导致打内存访问不规则等问题给在fpga上加速该算法带来了非常大的挑战。目前，有多篇研究为解决这个问题提出了相应的解决方案，本项目旨在复现相关方法。

refs.
1. https://github.com/msracver/Deformable-ConvNets
2. https://yaohuicai.github.io/data/2019Deformable_NeurIPS_EMC2.pdf
3. https://arxiv.org/pdf/2006.08357.pdf
4. https://ieeexplore.ieee.org/document/9191028
5. https://github.com/Memory-bread/SSD_IN_PYNQ
