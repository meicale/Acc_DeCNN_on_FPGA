; ModuleID = '/home/bill/workspace/CoDeNet/CoDeNet_hls/batch/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_int = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i128 }
%struct.ap_int.0 = type { %struct.ap_int_base.1 }
%struct.ap_int_base.1 = type { %struct.ssdm_int.2 }
%struct.ssdm_int.2 = type { i64 }
%struct.ap_int.3 = type { %struct.ap_int_base.4 }
%struct.ap_int_base.4 = type { %struct.ssdm_int.5 }
%struct.ssdm_int.5 = type { i16 }
%struct.ap_uint = type { %struct.ap_int_base.6 }
%struct.ap_int_base.6 = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }

; Function Attrs: noinline
define void @apatb_top_ir(%struct.ap_int* %fmap, %struct.ap_int* %out, %struct.ap_int.0* %k0_1, %struct.ap_int.0* %k0_3, %struct.ap_int.3* %quant, %struct.ap_uint* %offsets, i32 %D, i32 %IC, i32 %OC, i32 %batch, i1 %STRIDE_2, i1 %skip3, i1 %skip1, i1 %deform, i1 %relu1, i1 %relu3) local_unnamed_addr #0 {
entry:
  %fmap_copy = alloca [2 x %struct.ap_int], align 512
  %out_copy = alloca [2 x %struct.ap_int], align 512
  %k0_1_copy = alloca [2 x %struct.ap_int.0], align 512
  %k0_3_copy = alloca [2 x %struct.ap_int.0], align 512
  %quant_copy = alloca [2 x %struct.ap_int.3], align 512
  %offsets_copy = alloca [2 x %struct.ap_uint], align 512
  %0 = bitcast %struct.ap_int* %fmap to [2 x %struct.ap_int]*
  %1 = bitcast %struct.ap_int* %out to [2 x %struct.ap_int]*
  %2 = bitcast %struct.ap_int.0* %k0_1 to [2 x %struct.ap_int.0]*
  %3 = bitcast %struct.ap_int.0* %k0_3 to [2 x %struct.ap_int.0]*
  %4 = bitcast %struct.ap_int.3* %quant to [2 x %struct.ap_int.3]*
  %5 = bitcast %struct.ap_uint* %offsets to [2 x %struct.ap_uint]*
  call fastcc void @copy_in([2 x %struct.ap_int]* %0, [2 x %struct.ap_int]* nonnull align 512 %fmap_copy, [2 x %struct.ap_int]* %1, [2 x %struct.ap_int]* nonnull align 512 %out_copy, [2 x %struct.ap_int.0]* %2, [2 x %struct.ap_int.0]* nonnull align 512 %k0_1_copy, [2 x %struct.ap_int.0]* %3, [2 x %struct.ap_int.0]* nonnull align 512 %k0_3_copy, [2 x %struct.ap_int.3]* %4, [2 x %struct.ap_int.3]* nonnull align 512 %quant_copy, [2 x %struct.ap_uint]* %5, [2 x %struct.ap_uint]* nonnull align 512 %offsets_copy)
  %6 = getelementptr inbounds [2 x %struct.ap_int], [2 x %struct.ap_int]* %fmap_copy, i32 0, i32 0
  %7 = getelementptr inbounds [2 x %struct.ap_int], [2 x %struct.ap_int]* %out_copy, i32 0, i32 0
  %8 = getelementptr inbounds [2 x %struct.ap_int.0], [2 x %struct.ap_int.0]* %k0_1_copy, i32 0, i32 0
  %9 = getelementptr inbounds [2 x %struct.ap_int.0], [2 x %struct.ap_int.0]* %k0_3_copy, i32 0, i32 0
  %10 = getelementptr inbounds [2 x %struct.ap_int.3], [2 x %struct.ap_int.3]* %quant_copy, i32 0, i32 0
  %11 = getelementptr inbounds [2 x %struct.ap_uint], [2 x %struct.ap_uint]* %offsets_copy, i32 0, i32 0
  call void @apatb_top_hw(%struct.ap_int* %6, %struct.ap_int* %7, %struct.ap_int.0* %8, %struct.ap_int.0* %9, %struct.ap_int.3* %10, %struct.ap_uint* %11, i32 %D, i32 %IC, i32 %OC, i32 %batch, i1 %STRIDE_2, i1 %skip3, i1 %skip1, i1 %deform, i1 %relu1, i1 %relu3)
  call fastcc void @copy_out([2 x %struct.ap_int]* %0, [2 x %struct.ap_int]* nonnull align 512 %fmap_copy, [2 x %struct.ap_int]* %1, [2 x %struct.ap_int]* nonnull align 512 %out_copy, [2 x %struct.ap_int.0]* %2, [2 x %struct.ap_int.0]* nonnull align 512 %k0_1_copy, [2 x %struct.ap_int.0]* %3, [2 x %struct.ap_int.0]* nonnull align 512 %k0_3_copy, [2 x %struct.ap_int.3]* %4, [2 x %struct.ap_int.3]* nonnull align 512 %quant_copy, [2 x %struct.ap_uint]* %5, [2 x %struct.ap_uint]* nonnull align 512 %offsets_copy)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in([2 x %struct.ap_int]*, [2 x %struct.ap_int]* noalias align 512, [2 x %struct.ap_int]*, [2 x %struct.ap_int]* noalias align 512, [2 x %struct.ap_int.0]*, [2 x %struct.ap_int.0]* noalias align 512, [2 x %struct.ap_int.0]*, [2 x %struct.ap_int.0]* noalias align 512, [2 x %struct.ap_int.3]*, [2 x %struct.ap_int.3]* noalias align 512, [2 x %struct.ap_uint]*, [2 x %struct.ap_uint]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_int([2 x %struct.ap_int]* align 512 %1, [2 x %struct.ap_int]* %0)
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_int([2 x %struct.ap_int]* align 512 %3, [2 x %struct.ap_int]* %2)
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_int.0([2 x %struct.ap_int.0]* align 512 %5, [2 x %struct.ap_int.0]* %4)
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_int.0([2 x %struct.ap_int.0]* align 512 %7, [2 x %struct.ap_int.0]* %6)
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_int.3([2 x %struct.ap_int.3]* align 512 %9, [2 x %struct.ap_int.3]* %8)
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_uint([2 x %struct.ap_uint]* align 512 %11, [2 x %struct.ap_uint]* %10)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a2struct.ap_int([2 x %struct.ap_int]* noalias align 512, [2 x %struct.ap_int]* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq [2 x %struct.ap_int]* %0, null
  %3 = icmp eq [2 x %struct.ap_int]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [2 x %struct.ap_int], [2 x %struct.ap_int]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [2 x %struct.ap_int], [2 x %struct.ap_int]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_int* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_int(%struct.ap_int* align 16 %dst.addr, %struct.ap_int* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [2 x %struct.ap_int], [2 x %struct.ap_int]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [2 x %struct.ap_int], [2 x %struct.ap_int]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_int_base* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_16(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 16 %dst.addr.02, %struct.ap_int_base* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [2 x %struct.ap_int], [2 x %struct.ap_int]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [2 x %struct.ap_int], [2 x %struct.ap_int]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_16(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 16 %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [2 x %struct.ap_int], [2 x %struct.ap_int]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i128* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [2 x %struct.ap_int], [2 x %struct.ap_int]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i128* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 16, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

declare i1 @fpga_fifo_exist_16(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int(%struct.ap_int* noalias nocapture align 16, %struct.ap_int* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int* %2 to i8*
  %6 = bitcast %struct.ap_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int, %struct.ap_int* %2
  %8 = bitcast %struct.ap_int* %2 to i8*
  %9 = bitcast %struct.ap_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int* %1 to i8*
  %11 = bitcast %struct.ap_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* noalias nocapture align 16, %struct.ap_int_base* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base* %1 to i8*
  %11 = bitcast %struct.ap_int_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* noalias nocapture align 16, %struct.ssdm_int* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a2struct.ap_int.0([2 x %struct.ap_int.0]* noalias align 512, [2 x %struct.ap_int.0]* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq [2 x %struct.ap_int.0]* %0, null
  %3 = icmp eq [2 x %struct.ap_int.0]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [2 x %struct.ap_int.0], [2 x %struct.ap_int.0]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [2 x %struct.ap_int.0], [2 x %struct.ap_int.0]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_int.0* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_int.0(%struct.ap_int.0* %dst.addr, %struct.ap_int.0* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [2 x %struct.ap_int.0], [2 x %struct.ap_int.0]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [2 x %struct.ap_int.0], [2 x %struct.ap_int.0]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_int_base.1* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_8(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %dst.addr.02, %struct.ap_int_base.1* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [2 x %struct.ap_int.0], [2 x %struct.ap_int.0]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [2 x %struct.ap_int.0], [2 x %struct.ap_int.0]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int.2* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_8(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %dst.addr.0.04, %struct.ssdm_int.2* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [2 x %struct.ap_int.0], [2 x %struct.ap_int.0]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i64* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [2 x %struct.ap_int.0], [2 x %struct.ap_int.0]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i64* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 8, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

declare i1 @fpga_fifo_exist_8(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int.0(%struct.ap_int.0* noalias nocapture, %struct.ap_int.0* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int.0
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int.0* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int.0* %2 to i8*
  %6 = bitcast %struct.ap_int.0* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int.0, %struct.ap_int.0* %2
  %8 = bitcast %struct.ap_int.0* %2 to i8*
  %9 = bitcast %struct.ap_int.0* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int.0* %1 to i8*
  %11 = bitcast %struct.ap_int.0* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* noalias nocapture, %struct.ap_int_base.1* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.1
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.1* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.1* %2 to i8*
  %6 = bitcast %struct.ap_int_base.1* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.1, %struct.ap_int_base.1* %2
  %8 = bitcast %struct.ap_int_base.1* %2 to i8*
  %9 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.1* %1 to i8*
  %11 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* noalias nocapture, %struct.ssdm_int.2* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.2
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.2* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.2* %2 to i8*
  %6 = bitcast %struct.ssdm_int.2* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.2, %struct.ssdm_int.2* %2
  %8 = bitcast %struct.ssdm_int.2* %2 to i8*
  %9 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.2* %1 to i8*
  %11 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a2struct.ap_int.3([2 x %struct.ap_int.3]* noalias align 512, [2 x %struct.ap_int.3]* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq [2 x %struct.ap_int.3]* %0, null
  %3 = icmp eq [2 x %struct.ap_int.3]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [2 x %struct.ap_int.3], [2 x %struct.ap_int.3]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [2 x %struct.ap_int.3], [2 x %struct.ap_int.3]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_int.3* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_int.3(%struct.ap_int.3* %dst.addr, %struct.ap_int.3* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [2 x %struct.ap_int.3], [2 x %struct.ap_int.3]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [2 x %struct.ap_int.3], [2 x %struct.ap_int.3]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_int_base.4* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_2(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %dst.addr.02, %struct.ap_int_base.4* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [2 x %struct.ap_int.3], [2 x %struct.ap_int.3]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [2 x %struct.ap_int.3], [2 x %struct.ap_int.3]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int.5* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_2(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %dst.addr.0.04, %struct.ssdm_int.5* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [2 x %struct.ap_int.3], [2 x %struct.ap_int.3]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i16* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [2 x %struct.ap_int.3], [2 x %struct.ap_int.3]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i16* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 2, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

declare i1 @fpga_fifo_exist_2(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int.3(%struct.ap_int.3* noalias nocapture, %struct.ap_int.3* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int.3
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int.3* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int.3* %2 to i8*
  %6 = bitcast %struct.ap_int.3* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int.3, %struct.ap_int.3* %2
  %8 = bitcast %struct.ap_int.3* %2 to i8*
  %9 = bitcast %struct.ap_int.3* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int.3* %1 to i8*
  %11 = bitcast %struct.ap_int.3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* noalias nocapture, %struct.ap_int_base.4* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.4
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.4* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.4* %2 to i8*
  %6 = bitcast %struct.ap_int_base.4* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.4, %struct.ap_int_base.4* %2
  %8 = bitcast %struct.ap_int_base.4* %2 to i8*
  %9 = bitcast %struct.ap_int_base.4* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.4* %1 to i8*
  %11 = bitcast %struct.ap_int_base.4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* noalias nocapture, %struct.ssdm_int.5* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.5
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.5* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.5* %2 to i8*
  %6 = bitcast %struct.ssdm_int.5* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.5, %struct.ssdm_int.5* %2
  %8 = bitcast %struct.ssdm_int.5* %2 to i8*
  %9 = bitcast %struct.ssdm_int.5* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.5* %1 to i8*
  %11 = bitcast %struct.ssdm_int.5* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a2struct.ap_uint([2 x %struct.ap_uint]* noalias align 512, [2 x %struct.ap_uint]* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq [2 x %struct.ap_uint]* %0, null
  %3 = icmp eq [2 x %struct.ap_uint]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [2 x %struct.ap_uint], [2 x %struct.ap_uint]* %0, i64 0, i64 %for.loop.idx7
  %src.addr = getelementptr [2 x %struct.ap_uint], [2 x %struct.ap_uint]* %1, i64 0, i64 %for.loop.idx7
  %5 = getelementptr [2 x %struct.ap_uint], [2 x %struct.ap_uint]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %dst.addr, %struct.ap_uint* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [2 x %struct.ap_uint], [2 x %struct.ap_uint]* %1, i64 0, i64 %for.loop.idx7, i32 0
  %dst.addr.02 = getelementptr [2 x %struct.ap_uint], [2 x %struct.ap_uint]* %0, i64 0, i64 %for.loop.idx7, i32 0
  %9 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.6(%struct.ap_int_base.6* %dst.addr.02, %struct.ap_int_base.6* %src.addr.01)
  br label %for.loop.head

; <label>:11:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [2 x %struct.ap_uint], [2 x %struct.ap_uint]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [2 x %struct.ap_uint], [2 x %struct.ap_uint]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @"streamcpy_hls.p0class.std::ios_base::Init"(%"class.std::ios_base::Init"* %dst.addr.0.04, %"class.std::ios_base::Init"* %src.addr.0.03)
  br label %for.loop.head

; <label>:14:                                     ; preds = %11
  %dst.addr.0.0.06 = getelementptr [2 x %struct.ap_uint], [2 x %struct.ap_uint]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr.0.0.06, i8* align 1 %5, i64 1, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %14, %13, %10, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias nocapture, %struct.ap_uint* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint* %2 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint, %struct.ap_uint* %2
  %8 = bitcast %struct.ap_uint* %2 to i8*
  %9 = bitcast %struct.ap_uint* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !15

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_uint, %struct.ap_uint* %1, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_uint, %struct.ap_uint* %0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.6(%struct.ap_int_base.6* noalias nocapture, %struct.ap_int_base.6* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.6
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.6* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.6* %2 to i8*
  %6 = bitcast %struct.ap_int_base.6* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.6, %struct.ap_int_base.6* %2
  %8 = bitcast %struct.ap_int_base.6* %2 to i8*
  %9 = bitcast %struct.ap_int_base.6* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !16

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_int_base.6, %struct.ap_int_base.6* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_int_base.6, %struct.ap_int_base.6* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.std::ios_base::Init"(%"class.std::ios_base::Init"* noalias nocapture, %"class.std::ios_base::Init"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.std::ios_base::Init"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.std::ios_base::Init"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.std::ios_base::Init"* %2 to i8*
  %6 = bitcast %"class.std::ios_base::Init"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %2
  %8 = bitcast %"class.std::ios_base::Init"* %2 to i8*
  %9 = bitcast %"class.std::ios_base::Init"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %1, i32 0, i32 0
  %11 = getelementptr inbounds %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out([2 x %struct.ap_int]*, [2 x %struct.ap_int]* noalias align 512, [2 x %struct.ap_int]*, [2 x %struct.ap_int]* noalias align 512, [2 x %struct.ap_int.0]*, [2 x %struct.ap_int.0]* noalias align 512, [2 x %struct.ap_int.0]*, [2 x %struct.ap_int.0]* noalias align 512, [2 x %struct.ap_int.3]*, [2 x %struct.ap_int.3]* noalias align 512, [2 x %struct.ap_uint]*, [2 x %struct.ap_uint]* noalias align 512) unnamed_addr #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_int([2 x %struct.ap_int]* %0, [2 x %struct.ap_int]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_int([2 x %struct.ap_int]* %2, [2 x %struct.ap_int]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_int.0([2 x %struct.ap_int.0]* %4, [2 x %struct.ap_int.0]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_int.0([2 x %struct.ap_int.0]* %6, [2 x %struct.ap_int.0]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_int.3([2 x %struct.ap_int.3]* %8, [2 x %struct.ap_int.3]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a2struct.ap_uint([2 x %struct.ap_uint]* %10, [2 x %struct.ap_uint]* align 512 %11)
  ret void
}

declare void @apatb_top_hw(%struct.ap_int*, %struct.ap_int*, %struct.ap_int.0*, %struct.ap_int.0*, %struct.ap_int.3*, %struct.ap_uint*, i32, i32, i32, i32, i1, i1, i1, i1, i1, i1)

define void @top_hw_stub_wrapper(%struct.ap_int*, %struct.ap_int*, %struct.ap_int.0*, %struct.ap_int.0*, %struct.ap_int.3*, %struct.ap_uint*, i32, i32, i32, i32, i1, i1, i1, i1, i1, i1) #6 {
entry:
  %16 = bitcast %struct.ap_int* %0 to [2 x %struct.ap_int]*
  %17 = bitcast %struct.ap_int* %1 to [2 x %struct.ap_int]*
  %18 = bitcast %struct.ap_int.0* %2 to [2 x %struct.ap_int.0]*
  %19 = bitcast %struct.ap_int.0* %3 to [2 x %struct.ap_int.0]*
  %20 = bitcast %struct.ap_int.3* %4 to [2 x %struct.ap_int.3]*
  %21 = bitcast %struct.ap_uint* %5 to [2 x %struct.ap_uint]*
  call void @copy_out([2 x %struct.ap_int]* null, [2 x %struct.ap_int]* %16, [2 x %struct.ap_int]* null, [2 x %struct.ap_int]* %17, [2 x %struct.ap_int.0]* null, [2 x %struct.ap_int.0]* %18, [2 x %struct.ap_int.0]* null, [2 x %struct.ap_int.0]* %19, [2 x %struct.ap_int.3]* null, [2 x %struct.ap_int.3]* %20, [2 x %struct.ap_uint]* null, [2 x %struct.ap_uint]* %21)
  %22 = bitcast [2 x %struct.ap_int]* %16 to %struct.ap_int*
  %23 = bitcast [2 x %struct.ap_int]* %17 to %struct.ap_int*
  %24 = bitcast [2 x %struct.ap_int.0]* %18 to %struct.ap_int.0*
  %25 = bitcast [2 x %struct.ap_int.0]* %19 to %struct.ap_int.0*
  %26 = bitcast [2 x %struct.ap_int.3]* %20 to %struct.ap_int.3*
  %27 = bitcast [2 x %struct.ap_uint]* %21 to %struct.ap_uint*
  call void @top_hw_stub(%struct.ap_int* %22, %struct.ap_int* %23, %struct.ap_int.0* %24, %struct.ap_int.0* %25, %struct.ap_int.3* %26, %struct.ap_uint* %27, i32 %6, i32 %7, i32 %8, i32 %9, i1 %10, i1 %11, i1 %12, i1 %13, i1 %14, i1 %15)
  call void @copy_in([2 x %struct.ap_int]* null, [2 x %struct.ap_int]* %16, [2 x %struct.ap_int]* null, [2 x %struct.ap_int]* %17, [2 x %struct.ap_int.0]* null, [2 x %struct.ap_int.0]* %18, [2 x %struct.ap_int.0]* null, [2 x %struct.ap_int.0]* %19, [2 x %struct.ap_int.3]* null, [2 x %struct.ap_int.3]* %20, [2 x %struct.ap_uint]* null, [2 x %struct.ap_uint]* %21)
  ret void
}

declare void @top_hw_stub(%struct.ap_int*, %struct.ap_int*, %struct.ap_int.0*, %struct.ap_int.0*, %struct.ap_int.3*, %struct.ap_uint*, i32, i32, i32, i32, i1, i1, i1, i1, i1, i1)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
