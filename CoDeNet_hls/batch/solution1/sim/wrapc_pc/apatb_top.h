// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_top (
volatile void* fmap,
volatile void* out,
volatile void* k0_1,
volatile void* k0_3,
volatile void* quant,
volatile void* offsets,
int D,
int IC,
int OC,
int batch,
char STRIDE_2,
char skip3,
char skip1,
char deform,
char relu1,
char relu3);
