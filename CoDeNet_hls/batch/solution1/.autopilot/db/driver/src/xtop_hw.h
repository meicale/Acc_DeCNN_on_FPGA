// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of fmap
//        bit 31~0 - fmap[31:0] (Read/Write)
// 0x14 : Data signal of fmap
//        bit 31~0 - fmap[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of out_r
//        bit 31~0 - out_r[31:0] (Read/Write)
// 0x20 : Data signal of out_r
//        bit 31~0 - out_r[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of k0_1
//        bit 31~0 - k0_1[31:0] (Read/Write)
// 0x2c : Data signal of k0_1
//        bit 31~0 - k0_1[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of k0_3
//        bit 31~0 - k0_3[31:0] (Read/Write)
// 0x38 : Data signal of k0_3
//        bit 31~0 - k0_3[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of quant
//        bit 31~0 - quant[31:0] (Read/Write)
// 0x44 : Data signal of quant
//        bit 31~0 - quant[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of offsets
//        bit 31~0 - offsets[31:0] (Read/Write)
// 0x50 : Data signal of offsets
//        bit 31~0 - offsets[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of D
//        bit 31~0 - D[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of IC
//        bit 31~0 - IC[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of OC
//        bit 31~0 - OC[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of batch
//        bit 31~0 - batch[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of STRIDE_2
//        bit 0  - STRIDE_2[0] (Read/Write)
//        others - reserved
// 0x7c : reserved
// 0x80 : Data signal of skip3
//        bit 0  - skip3[0] (Read/Write)
//        others - reserved
// 0x84 : reserved
// 0x88 : Data signal of skip1
//        bit 0  - skip1[0] (Read/Write)
//        others - reserved
// 0x8c : reserved
// 0x90 : Data signal of deform
//        bit 0  - deform[0] (Read/Write)
//        others - reserved
// 0x94 : reserved
// 0x98 : Data signal of relu1
//        bit 0  - relu1[0] (Read/Write)
//        others - reserved
// 0x9c : reserved
// 0xa0 : Data signal of relu3
//        bit 0  - relu3[0] (Read/Write)
//        others - reserved
// 0xa4 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XTOP_CONTROL_ADDR_AP_CTRL       0x00
#define XTOP_CONTROL_ADDR_GIE           0x04
#define XTOP_CONTROL_ADDR_IER           0x08
#define XTOP_CONTROL_ADDR_ISR           0x0c
#define XTOP_CONTROL_ADDR_FMAP_DATA     0x10
#define XTOP_CONTROL_BITS_FMAP_DATA     64
#define XTOP_CONTROL_ADDR_OUT_R_DATA    0x1c
#define XTOP_CONTROL_BITS_OUT_R_DATA    64
#define XTOP_CONTROL_ADDR_K0_1_DATA     0x28
#define XTOP_CONTROL_BITS_K0_1_DATA     64
#define XTOP_CONTROL_ADDR_K0_3_DATA     0x34
#define XTOP_CONTROL_BITS_K0_3_DATA     64
#define XTOP_CONTROL_ADDR_QUANT_DATA    0x40
#define XTOP_CONTROL_BITS_QUANT_DATA    64
#define XTOP_CONTROL_ADDR_OFFSETS_DATA  0x4c
#define XTOP_CONTROL_BITS_OFFSETS_DATA  64
#define XTOP_CONTROL_ADDR_D_DATA        0x58
#define XTOP_CONTROL_BITS_D_DATA        32
#define XTOP_CONTROL_ADDR_IC_DATA       0x60
#define XTOP_CONTROL_BITS_IC_DATA       32
#define XTOP_CONTROL_ADDR_OC_DATA       0x68
#define XTOP_CONTROL_BITS_OC_DATA       32
#define XTOP_CONTROL_ADDR_BATCH_DATA    0x70
#define XTOP_CONTROL_BITS_BATCH_DATA    32
#define XTOP_CONTROL_ADDR_STRIDE_2_DATA 0x78
#define XTOP_CONTROL_BITS_STRIDE_2_DATA 1
#define XTOP_CONTROL_ADDR_SKIP3_DATA    0x80
#define XTOP_CONTROL_BITS_SKIP3_DATA    1
#define XTOP_CONTROL_ADDR_SKIP1_DATA    0x88
#define XTOP_CONTROL_BITS_SKIP1_DATA    1
#define XTOP_CONTROL_ADDR_DEFORM_DATA   0x90
#define XTOP_CONTROL_BITS_DEFORM_DATA   1
#define XTOP_CONTROL_ADDR_RELU1_DATA    0x98
#define XTOP_CONTROL_BITS_RELU1_DATA    1
#define XTOP_CONTROL_ADDR_RELU3_DATA    0xa0
#define XTOP_CONTROL_BITS_RELU3_DATA    1

