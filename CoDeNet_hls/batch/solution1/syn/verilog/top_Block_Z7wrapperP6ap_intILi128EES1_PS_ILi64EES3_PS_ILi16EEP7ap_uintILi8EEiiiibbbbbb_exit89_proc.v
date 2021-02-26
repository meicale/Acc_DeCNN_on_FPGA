// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit89_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        batch_dout,
        batch_empty_n,
        batch_read,
        OC_dout,
        OC_empty_n,
        OC_read,
        CONV_D_loc_dout,
        CONV_D_loc_empty_n,
        CONV_D_loc_read,
        select_ln169_loc_out_din,
        select_ln169_loc_out_full_n,
        select_ln169_loc_out_write
);

parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] batch_dout;
input   batch_empty_n;
output   batch_read;
input  [31:0] OC_dout;
input   OC_empty_n;
output   OC_read;
input  [31:0] CONV_D_loc_dout;
input   CONV_D_loc_empty_n;
output   CONV_D_loc_read;
output  [28:0] select_ln169_loc_out_din;
input   select_ln169_loc_out_full_n;
output   select_ln169_loc_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg batch_read;
reg OC_read;
reg CONV_D_loc_read;
reg select_ln169_loc_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    batch_blk_n;
reg    OC_blk_n;
reg    CONV_D_loc_blk_n;
reg    select_ln169_loc_out_blk_n;
wire    ap_CS_fsm_state14;
reg  signed [31:0] batch_read_reg_125;
reg  signed [31:0] OC_read_reg_130;
reg  signed [31:0] CONV_D_loc_read_reg_135;
wire  signed [31:0] grp_fu_61_p2;
reg  signed [31:0] mul_ln169_reg_141;
wire    ap_CS_fsm_state6;
wire  signed [31:0] grp_fu_65_p2;
reg  signed [31:0] mul_ln169_1_reg_146;
wire   [31:0] grp_fu_69_p2;
reg   [31:0] mul_ln169_2_reg_151;
wire    ap_CS_fsm_state11;
reg   [0:0] tmp_reg_156;
reg   [27:0] trunc_ln169_2_reg_161;
reg   [27:0] trunc_ln169_1_reg_166;
wire    ap_CS_fsm_state12;
wire   [28:0] select_ln169_fu_118_p3;
reg   [28:0] select_ln169_reg_171;
wire    ap_CS_fsm_state13;
reg    ap_block_state1;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state7;
wire   [31:0] sub_ln169_fu_91_p2;
wire   [28:0] zext_ln169_fu_106_p1;
wire   [28:0] sub_ln169_1_fu_109_p2;
wire   [28:0] zext_ln169_1_fu_115_p1;
reg   [13:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 14'd1;
end

top_mul_32s_32s_32_5_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_5_1_U896(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(OC_read_reg_130),
    .din1(CONV_D_loc_read_reg_135),
    .ce(1'b1),
    .dout(grp_fu_61_p2)
);

top_mul_32s_32s_32_5_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_5_1_U897(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(batch_read_reg_125),
    .din1(CONV_D_loc_read_reg_135),
    .ce(1'b1),
    .dout(grp_fu_65_p2)
);

top_mul_32s_32s_32_5_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_5_1_U898(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mul_ln169_1_reg_146),
    .din1(mul_ln169_reg_141),
    .ce(1'b1),
    .dout(grp_fu_69_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((select_ln169_loc_out_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        CONV_D_loc_read_reg_135 <= CONV_D_loc_dout;
        OC_read_reg_130 <= OC_dout;
        batch_read_reg_125 <= batch_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mul_ln169_1_reg_146 <= grp_fu_65_p2;
        mul_ln169_reg_141 <= grp_fu_61_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln169_2_reg_151 <= grp_fu_69_p2;
        tmp_reg_156 <= grp_fu_69_p2[32'd31];
        trunc_ln169_2_reg_161 <= {{grp_fu_69_p2[31:4]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        select_ln169_reg_171 <= select_ln169_fu_118_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_156 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        trunc_ln169_1_reg_166 <= {{sub_ln169_fu_91_p2[31:4]}};
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        CONV_D_loc_blk_n = CONV_D_loc_empty_n;
    end else begin
        CONV_D_loc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((batch_empty_n == 1'b0) | (1'b0 == CONV_D_loc_empty_n) | (1'b0 == OC_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        CONV_D_loc_read = 1'b1;
    end else begin
        CONV_D_loc_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        OC_blk_n = OC_empty_n;
    end else begin
        OC_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((batch_empty_n == 1'b0) | (1'b0 == CONV_D_loc_empty_n) | (1'b0 == OC_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        OC_read = 1'b1;
    end else begin
        OC_read = 1'b0;
    end
end

always @ (*) begin
    if (((select_ln169_loc_out_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((select_ln169_loc_out_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        batch_blk_n = batch_empty_n;
    end else begin
        batch_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((batch_empty_n == 1'b0) | (1'b0 == CONV_D_loc_empty_n) | (1'b0 == OC_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        batch_read = 1'b1;
    end else begin
        batch_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        select_ln169_loc_out_blk_n = select_ln169_loc_out_full_n;
    end else begin
        select_ln169_loc_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((select_ln169_loc_out_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        select_ln169_loc_out_write = 1'b1;
    end else begin
        select_ln169_loc_out_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((batch_empty_n == 1'b0) | (1'b0 == CONV_D_loc_empty_n) | (1'b0 == OC_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((select_ln169_loc_out_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state1 = ((batch_empty_n == 1'b0) | (1'b0 == CONV_D_loc_empty_n) | (1'b0 == OC_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign select_ln169_fu_118_p3 = ((tmp_reg_156[0:0] == 1'b1) ? sub_ln169_1_fu_109_p2 : zext_ln169_1_fu_115_p1);

assign select_ln169_loc_out_din = select_ln169_reg_171;

assign sub_ln169_1_fu_109_p2 = (29'd0 - zext_ln169_fu_106_p1);

assign sub_ln169_fu_91_p2 = (32'd0 - mul_ln169_2_reg_151);

assign zext_ln169_1_fu_115_p1 = trunc_ln169_2_reg_161;

assign zext_ln169_fu_106_p1 = trunc_ln169_1_reg_166;

endmodule //top_Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit89_proc