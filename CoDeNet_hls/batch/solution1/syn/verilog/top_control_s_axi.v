// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module top_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [63:0]                   fmap,
    output wire [63:0]                   out_r,
    output wire [63:0]                   k0_1,
    output wire [63:0]                   k0_3,
    output wire [63:0]                   quant,
    output wire [63:0]                   offsets,
    output wire [31:0]                   D,
    output wire [31:0]                   IC,
    output wire [31:0]                   OC,
    output wire [31:0]                   batch,
    output wire [0:0]                    STRIDE_2,
    output wire [0:0]                    skip3,
    output wire [0:0]                    skip1,
    output wire [0:0]                    deform,
    output wire [0:0]                    relu1,
    output wire [0:0]                    relu3,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
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

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL         = 8'h00,
    ADDR_GIE             = 8'h04,
    ADDR_IER             = 8'h08,
    ADDR_ISR             = 8'h0c,
    ADDR_FMAP_DATA_0     = 8'h10,
    ADDR_FMAP_DATA_1     = 8'h14,
    ADDR_FMAP_CTRL       = 8'h18,
    ADDR_OUT_R_DATA_0    = 8'h1c,
    ADDR_OUT_R_DATA_1    = 8'h20,
    ADDR_OUT_R_CTRL      = 8'h24,
    ADDR_K0_1_DATA_0     = 8'h28,
    ADDR_K0_1_DATA_1     = 8'h2c,
    ADDR_K0_1_CTRL       = 8'h30,
    ADDR_K0_3_DATA_0     = 8'h34,
    ADDR_K0_3_DATA_1     = 8'h38,
    ADDR_K0_3_CTRL       = 8'h3c,
    ADDR_QUANT_DATA_0    = 8'h40,
    ADDR_QUANT_DATA_1    = 8'h44,
    ADDR_QUANT_CTRL      = 8'h48,
    ADDR_OFFSETS_DATA_0  = 8'h4c,
    ADDR_OFFSETS_DATA_1  = 8'h50,
    ADDR_OFFSETS_CTRL    = 8'h54,
    ADDR_D_DATA_0        = 8'h58,
    ADDR_D_CTRL          = 8'h5c,
    ADDR_IC_DATA_0       = 8'h60,
    ADDR_IC_CTRL         = 8'h64,
    ADDR_OC_DATA_0       = 8'h68,
    ADDR_OC_CTRL         = 8'h6c,
    ADDR_BATCH_DATA_0    = 8'h70,
    ADDR_BATCH_CTRL      = 8'h74,
    ADDR_STRIDE_2_DATA_0 = 8'h78,
    ADDR_STRIDE_2_CTRL   = 8'h7c,
    ADDR_SKIP3_DATA_0    = 8'h80,
    ADDR_SKIP3_CTRL      = 8'h84,
    ADDR_SKIP1_DATA_0    = 8'h88,
    ADDR_SKIP1_CTRL      = 8'h8c,
    ADDR_DEFORM_DATA_0   = 8'h90,
    ADDR_DEFORM_CTRL     = 8'h94,
    ADDR_RELU1_DATA_0    = 8'h98,
    ADDR_RELU1_CTRL      = 8'h9c,
    ADDR_RELU3_DATA_0    = 8'ha0,
    ADDR_RELU3_CTRL      = 8'ha4,
    WRIDLE               = 2'd0,
    WRDATA               = 2'd1,
    WRRESP               = 2'd2,
    WRRESET              = 2'd3,
    RDIDLE               = 2'd0,
    RDDATA               = 2'd1,
    RDRESET              = 2'd2,
    ADDR_BITS                = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [63:0]                   int_fmap = 'b0;
    reg  [63:0]                   int_out_r = 'b0;
    reg  [63:0]                   int_k0_1 = 'b0;
    reg  [63:0]                   int_k0_3 = 'b0;
    reg  [63:0]                   int_quant = 'b0;
    reg  [63:0]                   int_offsets = 'b0;
    reg  [31:0]                   int_D = 'b0;
    reg  [31:0]                   int_IC = 'b0;
    reg  [31:0]                   int_OC = 'b0;
    reg  [31:0]                   int_batch = 'b0;
    reg  [0:0]                    int_STRIDE_2 = 'b0;
    reg  [0:0]                    int_skip3 = 'b0;
    reg  [0:0]                    int_skip1 = 'b0;
    reg  [0:0]                    int_deform = 'b0;
    reg  [0:0]                    int_relu1 = 'b0;
    reg  [0:0]                    int_relu3 = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_FMAP_DATA_0: begin
                    rdata <= int_fmap[31:0];
                end
                ADDR_FMAP_DATA_1: begin
                    rdata <= int_fmap[63:32];
                end
                ADDR_OUT_R_DATA_0: begin
                    rdata <= int_out_r[31:0];
                end
                ADDR_OUT_R_DATA_1: begin
                    rdata <= int_out_r[63:32];
                end
                ADDR_K0_1_DATA_0: begin
                    rdata <= int_k0_1[31:0];
                end
                ADDR_K0_1_DATA_1: begin
                    rdata <= int_k0_1[63:32];
                end
                ADDR_K0_3_DATA_0: begin
                    rdata <= int_k0_3[31:0];
                end
                ADDR_K0_3_DATA_1: begin
                    rdata <= int_k0_3[63:32];
                end
                ADDR_QUANT_DATA_0: begin
                    rdata <= int_quant[31:0];
                end
                ADDR_QUANT_DATA_1: begin
                    rdata <= int_quant[63:32];
                end
                ADDR_OFFSETS_DATA_0: begin
                    rdata <= int_offsets[31:0];
                end
                ADDR_OFFSETS_DATA_1: begin
                    rdata <= int_offsets[63:32];
                end
                ADDR_D_DATA_0: begin
                    rdata <= int_D[31:0];
                end
                ADDR_IC_DATA_0: begin
                    rdata <= int_IC[31:0];
                end
                ADDR_OC_DATA_0: begin
                    rdata <= int_OC[31:0];
                end
                ADDR_BATCH_DATA_0: begin
                    rdata <= int_batch[31:0];
                end
                ADDR_STRIDE_2_DATA_0: begin
                    rdata <= int_STRIDE_2[0:0];
                end
                ADDR_SKIP3_DATA_0: begin
                    rdata <= int_skip3[0:0];
                end
                ADDR_SKIP1_DATA_0: begin
                    rdata <= int_skip1[0:0];
                end
                ADDR_DEFORM_DATA_0: begin
                    rdata <= int_deform[0:0];
                end
                ADDR_RELU1_DATA_0: begin
                    rdata <= int_relu1[0:0];
                end
                ADDR_RELU3_DATA_0: begin
                    rdata <= int_relu3[0:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt = int_gie & (|int_isr);
assign ap_start  = int_ap_start;
assign fmap      = int_fmap;
assign out_r     = int_out_r;
assign k0_1      = int_k0_1;
assign k0_3      = int_k0_3;
assign quant     = int_quant;
assign offsets   = int_offsets;
assign D         = int_D;
assign IC        = int_IC;
assign OC        = int_OC;
assign batch     = int_batch;
assign STRIDE_2  = int_STRIDE_2;
assign skip3     = int_skip3;
assign skip1     = int_skip1;
assign deform    = int_deform;
assign relu1     = int_relu1;
assign relu3     = int_relu3;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_fmap[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fmap[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FMAP_DATA_0)
            int_fmap[31:0] <= (WDATA[31:0] & wmask) | (int_fmap[31:0] & ~wmask);
    end
end

// int_fmap[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_fmap[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FMAP_DATA_1)
            int_fmap[63:32] <= (WDATA[31:0] & wmask) | (int_fmap[63:32] & ~wmask);
    end
end

// int_out_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_out_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUT_R_DATA_0)
            int_out_r[31:0] <= (WDATA[31:0] & wmask) | (int_out_r[31:0] & ~wmask);
    end
end

// int_out_r[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_out_r[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUT_R_DATA_1)
            int_out_r[63:32] <= (WDATA[31:0] & wmask) | (int_out_r[63:32] & ~wmask);
    end
end

// int_k0_1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_k0_1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K0_1_DATA_0)
            int_k0_1[31:0] <= (WDATA[31:0] & wmask) | (int_k0_1[31:0] & ~wmask);
    end
end

// int_k0_1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_k0_1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K0_1_DATA_1)
            int_k0_1[63:32] <= (WDATA[31:0] & wmask) | (int_k0_1[63:32] & ~wmask);
    end
end

// int_k0_3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_k0_3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K0_3_DATA_0)
            int_k0_3[31:0] <= (WDATA[31:0] & wmask) | (int_k0_3[31:0] & ~wmask);
    end
end

// int_k0_3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_k0_3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K0_3_DATA_1)
            int_k0_3[63:32] <= (WDATA[31:0] & wmask) | (int_k0_3[63:32] & ~wmask);
    end
end

// int_quant[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_quant[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUANT_DATA_0)
            int_quant[31:0] <= (WDATA[31:0] & wmask) | (int_quant[31:0] & ~wmask);
    end
end

// int_quant[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_quant[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUANT_DATA_1)
            int_quant[63:32] <= (WDATA[31:0] & wmask) | (int_quant[63:32] & ~wmask);
    end
end

// int_offsets[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_offsets[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OFFSETS_DATA_0)
            int_offsets[31:0] <= (WDATA[31:0] & wmask) | (int_offsets[31:0] & ~wmask);
    end
end

// int_offsets[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_offsets[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OFFSETS_DATA_1)
            int_offsets[63:32] <= (WDATA[31:0] & wmask) | (int_offsets[63:32] & ~wmask);
    end
end

// int_D[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_D[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_D_DATA_0)
            int_D[31:0] <= (WDATA[31:0] & wmask) | (int_D[31:0] & ~wmask);
    end
end

// int_IC[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_IC[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IC_DATA_0)
            int_IC[31:0] <= (WDATA[31:0] & wmask) | (int_IC[31:0] & ~wmask);
    end
end

// int_OC[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_OC[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OC_DATA_0)
            int_OC[31:0] <= (WDATA[31:0] & wmask) | (int_OC[31:0] & ~wmask);
    end
end

// int_batch[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_batch[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BATCH_DATA_0)
            int_batch[31:0] <= (WDATA[31:0] & wmask) | (int_batch[31:0] & ~wmask);
    end
end

// int_STRIDE_2[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_STRIDE_2[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_STRIDE_2_DATA_0)
            int_STRIDE_2[0:0] <= (WDATA[31:0] & wmask) | (int_STRIDE_2[0:0] & ~wmask);
    end
end

// int_skip3[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_skip3[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SKIP3_DATA_0)
            int_skip3[0:0] <= (WDATA[31:0] & wmask) | (int_skip3[0:0] & ~wmask);
    end
end

// int_skip1[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_skip1[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SKIP1_DATA_0)
            int_skip1[0:0] <= (WDATA[31:0] & wmask) | (int_skip1[0:0] & ~wmask);
    end
end

// int_deform[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_deform[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DEFORM_DATA_0)
            int_deform[0:0] <= (WDATA[31:0] & wmask) | (int_deform[0:0] & ~wmask);
    end
end

// int_relu1[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_relu1[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RELU1_DATA_0)
            int_relu1[0:0] <= (WDATA[31:0] & wmask) | (int_relu1[0:0] & ~wmask);
    end
end

// int_relu3[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_relu3[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RELU3_DATA_0)
            int_relu3[0:0] <= (WDATA[31:0] & wmask) | (int_relu3[0:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule