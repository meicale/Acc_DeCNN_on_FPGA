// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module top_conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_bkb_ram (addr0, ce0, d0, we0, q0, addr1, ce1, q1, addr2, ce2, q2,  clk);

parameter DWIDTH = 128;
parameter AWIDTH = 10;
parameter MEM_SIZE = 1024;

input[AWIDTH-1:0] addr0;
input ce0;
input[DWIDTH-1:0] d0;
input we0;
output reg[DWIDTH-1:0] q0;
input[AWIDTH-1:0] addr1;
input ce1;
output reg[DWIDTH-1:0] q1;
input[AWIDTH-1:0] addr2;
input ce2;
output reg[DWIDTH-1:0] q2;
input clk;

reg [DWIDTH-1:0] ram0[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram1[0:MEM_SIZE-1];



always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram0[addr0] <= d0; 
        q0 <= ram0[addr0];
    end
end


always @(posedge clk)  
begin 
    if (ce1) begin
        q1 <= ram0[addr1];
    end
end


always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram1[addr0] <= d0; 
    end
end

always @(posedge clk)  
begin 
    if (ce2) begin
        q2 <= ram1[addr2];
    end
end


endmodule

`timescale 1 ns / 1 ps
module top_conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_bkb(
    reset,
    clk,
    address0,
    ce0,
    we0,
    d0,
    q0,
    address1,
    ce1,
    q1,
    address2,
    ce2,
    q2);

parameter DataWidth = 32'd128;
parameter AddressRange = 32'd1024;
parameter AddressWidth = 32'd10;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
input we0;
input[DataWidth - 1:0] d0;
output[DataWidth - 1:0] q0;
input[AddressWidth - 1:0] address1;
input ce1;
output[DataWidth - 1:0] q1;
input[AddressWidth - 1:0] address2;
input ce2;
output[DataWidth - 1:0] q2;



top_conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_bkb_ram top_conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_bkb_ram_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .we0( we0 ),
    .d0( d0 ),
    .q0( q0 ),
    .addr1( address1 ),
    .ce1( ce1 ),
    .q1( q1 ),
    .addr2( address2 ),
    .ce2( ce2 ),
    .q2( q2 ));

endmodule

