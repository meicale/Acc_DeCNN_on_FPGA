set moduleName M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {M2S_repeat_merge_1x1_v2<4, 16, 16, ap_int<64>, MultiChanData<16u, 64u> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ k1 int 1024 regular {fifo 1 volatile }  }
	{ k1_buffer_V_0 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_1 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_2 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_3 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_4 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_5 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_6 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_7 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_8 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_9 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_10 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_11 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_12 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_13 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_14 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ k1_buffer_V_15 int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ mul_ln31_1_loc int 32 regular {fifo 0}  }
	{ p_read int 24 regular  }
	{ skip1 int 1 regular {fifo 0}  }
	{ mul_ln31_1_loc_out int 32 regular {fifo 1}  }
	{ skip1_out int 1 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "k1", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_3", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_5", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_6", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_7", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_8", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_9", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_10", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_11", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_12", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_13", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_14", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_15", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln31_1_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "skip1", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln31_1_loc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip1_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 71
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ k1_din sc_out sc_lv 1024 signal 0 } 
	{ k1_full_n sc_in sc_logic 1 signal 0 } 
	{ k1_write sc_out sc_logic 1 signal 0 } 
	{ k1_buffer_V_0_address0 sc_out sc_lv 11 signal 1 } 
	{ k1_buffer_V_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ k1_buffer_V_0_q0 sc_in sc_lv 64 signal 1 } 
	{ k1_buffer_V_1_address0 sc_out sc_lv 11 signal 2 } 
	{ k1_buffer_V_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ k1_buffer_V_1_q0 sc_in sc_lv 64 signal 2 } 
	{ k1_buffer_V_2_address0 sc_out sc_lv 11 signal 3 } 
	{ k1_buffer_V_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ k1_buffer_V_2_q0 sc_in sc_lv 64 signal 3 } 
	{ k1_buffer_V_3_address0 sc_out sc_lv 11 signal 4 } 
	{ k1_buffer_V_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ k1_buffer_V_3_q0 sc_in sc_lv 64 signal 4 } 
	{ k1_buffer_V_4_address0 sc_out sc_lv 11 signal 5 } 
	{ k1_buffer_V_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ k1_buffer_V_4_q0 sc_in sc_lv 64 signal 5 } 
	{ k1_buffer_V_5_address0 sc_out sc_lv 11 signal 6 } 
	{ k1_buffer_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ k1_buffer_V_5_q0 sc_in sc_lv 64 signal 6 } 
	{ k1_buffer_V_6_address0 sc_out sc_lv 11 signal 7 } 
	{ k1_buffer_V_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ k1_buffer_V_6_q0 sc_in sc_lv 64 signal 7 } 
	{ k1_buffer_V_7_address0 sc_out sc_lv 11 signal 8 } 
	{ k1_buffer_V_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ k1_buffer_V_7_q0 sc_in sc_lv 64 signal 8 } 
	{ k1_buffer_V_8_address0 sc_out sc_lv 11 signal 9 } 
	{ k1_buffer_V_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ k1_buffer_V_8_q0 sc_in sc_lv 64 signal 9 } 
	{ k1_buffer_V_9_address0 sc_out sc_lv 11 signal 10 } 
	{ k1_buffer_V_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ k1_buffer_V_9_q0 sc_in sc_lv 64 signal 10 } 
	{ k1_buffer_V_10_address0 sc_out sc_lv 11 signal 11 } 
	{ k1_buffer_V_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ k1_buffer_V_10_q0 sc_in sc_lv 64 signal 11 } 
	{ k1_buffer_V_11_address0 sc_out sc_lv 11 signal 12 } 
	{ k1_buffer_V_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ k1_buffer_V_11_q0 sc_in sc_lv 64 signal 12 } 
	{ k1_buffer_V_12_address0 sc_out sc_lv 11 signal 13 } 
	{ k1_buffer_V_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ k1_buffer_V_12_q0 sc_in sc_lv 64 signal 13 } 
	{ k1_buffer_V_13_address0 sc_out sc_lv 11 signal 14 } 
	{ k1_buffer_V_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ k1_buffer_V_13_q0 sc_in sc_lv 64 signal 14 } 
	{ k1_buffer_V_14_address0 sc_out sc_lv 11 signal 15 } 
	{ k1_buffer_V_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ k1_buffer_V_14_q0 sc_in sc_lv 64 signal 15 } 
	{ k1_buffer_V_15_address0 sc_out sc_lv 11 signal 16 } 
	{ k1_buffer_V_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ k1_buffer_V_15_q0 sc_in sc_lv 64 signal 16 } 
	{ mul_ln31_1_loc_dout sc_in sc_lv 32 signal 17 } 
	{ mul_ln31_1_loc_empty_n sc_in sc_logic 1 signal 17 } 
	{ mul_ln31_1_loc_read sc_out sc_logic 1 signal 17 } 
	{ p_read sc_in sc_lv 24 signal 18 } 
	{ skip1_dout sc_in sc_lv 1 signal 19 } 
	{ skip1_empty_n sc_in sc_logic 1 signal 19 } 
	{ skip1_read sc_out sc_logic 1 signal 19 } 
	{ mul_ln31_1_loc_out_din sc_out sc_lv 32 signal 20 } 
	{ mul_ln31_1_loc_out_full_n sc_in sc_logic 1 signal 20 } 
	{ mul_ln31_1_loc_out_write sc_out sc_logic 1 signal 20 } 
	{ skip1_out_din sc_out sc_lv 1 signal 21 } 
	{ skip1_out_full_n sc_in sc_logic 1 signal 21 } 
	{ skip1_out_write sc_out sc_logic 1 signal 21 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "k1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "k1", "role": "din" }} , 
 	{ "name": "k1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1", "role": "full_n" }} , 
 	{ "name": "k1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1", "role": "write" }} , 
 	{ "name": "k1_buffer_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_0", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_0", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_0", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_1", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_1", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_1", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_2", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_2", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_2", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_3", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_3", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_3", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_4", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_4", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_4", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_5", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_5", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_5", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_6", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_6", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_6", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_7", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_7", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_7", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_8", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_8", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_8", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_9", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_9", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_9", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_10", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_10", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_10", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_11", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_11", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_11", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_12", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_12", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_12", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_13", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_13", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_13", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_14", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_14", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_14", "role": "q0" }} , 
 	{ "name": "k1_buffer_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_15", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_15", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_15", "role": "q0" }} , 
 	{ "name": "mul_ln31_1_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln31_1_loc", "role": "dout" }} , 
 	{ "name": "mul_ln31_1_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_loc", "role": "empty_n" }} , 
 	{ "name": "mul_ln31_1_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_loc", "role": "read" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "skip1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "dout" }} , 
 	{ "name": "skip1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "empty_n" }} , 
 	{ "name": "skip1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "read" }} , 
 	{ "name": "mul_ln31_1_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln31_1_loc_out", "role": "din" }} , 
 	{ "name": "mul_ln31_1_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_loc_out", "role": "full_n" }} , 
 	{ "name": "mul_ln31_1_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_loc_out", "role": "write" }} , 
 	{ "name": "skip1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out", "role": "din" }} , 
 	{ "name": "skip1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out", "role": "full_n" }} , 
 	{ "name": "skip1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "k1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k1_buffer_V_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_8", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_9", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_10", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_11", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_13", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_14", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_15", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "mul_ln31_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "skip1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_24ns_56_5_1_U219", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U220", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U221", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U222", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U223", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U224", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U225", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U226", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U227", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U228", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U229", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U230", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U231", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U232", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U233", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U234", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1664_64_1_1_U235", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_s {
		k1 {Type O LastRead -1 FirstWrite 9}
		k1_buffer_V_0 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_1 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_2 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_3 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_4 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_5 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_6 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_7 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_8 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_9 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_10 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_11 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_12 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_13 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_14 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_15 {Type I LastRead 7 FirstWrite -1}
		mul_ln31_1_loc {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 1 FirstWrite -1}
		skip1 {Type I LastRead 0 FirstWrite -1}
		mul_ln31_1_loc_out {Type O LastRead -1 FirstWrite 0}
		skip1_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	k1 { ap_fifo {  { k1_din fifo_data 1 1024 }  { k1_full_n fifo_status 0 1 }  { k1_write fifo_update 1 1 } } }
	k1_buffer_V_0 { ap_memory {  { k1_buffer_V_0_address0 mem_address 1 11 }  { k1_buffer_V_0_ce0 mem_ce 1 1 }  { k1_buffer_V_0_q0 mem_dout 0 64 } } }
	k1_buffer_V_1 { ap_memory {  { k1_buffer_V_1_address0 mem_address 1 11 }  { k1_buffer_V_1_ce0 mem_ce 1 1 }  { k1_buffer_V_1_q0 mem_dout 0 64 } } }
	k1_buffer_V_2 { ap_memory {  { k1_buffer_V_2_address0 mem_address 1 11 }  { k1_buffer_V_2_ce0 mem_ce 1 1 }  { k1_buffer_V_2_q0 mem_dout 0 64 } } }
	k1_buffer_V_3 { ap_memory {  { k1_buffer_V_3_address0 mem_address 1 11 }  { k1_buffer_V_3_ce0 mem_ce 1 1 }  { k1_buffer_V_3_q0 mem_dout 0 64 } } }
	k1_buffer_V_4 { ap_memory {  { k1_buffer_V_4_address0 mem_address 1 11 }  { k1_buffer_V_4_ce0 mem_ce 1 1 }  { k1_buffer_V_4_q0 mem_dout 0 64 } } }
	k1_buffer_V_5 { ap_memory {  { k1_buffer_V_5_address0 mem_address 1 11 }  { k1_buffer_V_5_ce0 mem_ce 1 1 }  { k1_buffer_V_5_q0 mem_dout 0 64 } } }
	k1_buffer_V_6 { ap_memory {  { k1_buffer_V_6_address0 mem_address 1 11 }  { k1_buffer_V_6_ce0 mem_ce 1 1 }  { k1_buffer_V_6_q0 mem_dout 0 64 } } }
	k1_buffer_V_7 { ap_memory {  { k1_buffer_V_7_address0 mem_address 1 11 }  { k1_buffer_V_7_ce0 mem_ce 1 1 }  { k1_buffer_V_7_q0 mem_dout 0 64 } } }
	k1_buffer_V_8 { ap_memory {  { k1_buffer_V_8_address0 mem_address 1 11 }  { k1_buffer_V_8_ce0 mem_ce 1 1 }  { k1_buffer_V_8_q0 mem_dout 0 64 } } }
	k1_buffer_V_9 { ap_memory {  { k1_buffer_V_9_address0 mem_address 1 11 }  { k1_buffer_V_9_ce0 mem_ce 1 1 }  { k1_buffer_V_9_q0 mem_dout 0 64 } } }
	k1_buffer_V_10 { ap_memory {  { k1_buffer_V_10_address0 mem_address 1 11 }  { k1_buffer_V_10_ce0 mem_ce 1 1 }  { k1_buffer_V_10_q0 mem_dout 0 64 } } }
	k1_buffer_V_11 { ap_memory {  { k1_buffer_V_11_address0 mem_address 1 11 }  { k1_buffer_V_11_ce0 mem_ce 1 1 }  { k1_buffer_V_11_q0 mem_dout 0 64 } } }
	k1_buffer_V_12 { ap_memory {  { k1_buffer_V_12_address0 mem_address 1 11 }  { k1_buffer_V_12_ce0 mem_ce 1 1 }  { k1_buffer_V_12_q0 mem_dout 0 64 } } }
	k1_buffer_V_13 { ap_memory {  { k1_buffer_V_13_address0 mem_address 1 11 }  { k1_buffer_V_13_ce0 mem_ce 1 1 }  { k1_buffer_V_13_q0 mem_dout 0 64 } } }
	k1_buffer_V_14 { ap_memory {  { k1_buffer_V_14_address0 mem_address 1 11 }  { k1_buffer_V_14_ce0 mem_ce 1 1 }  { k1_buffer_V_14_q0 mem_dout 0 64 } } }
	k1_buffer_V_15 { ap_memory {  { k1_buffer_V_15_address0 mem_address 1 11 }  { k1_buffer_V_15_ce0 mem_ce 1 1 }  { k1_buffer_V_15_q0 mem_dout 0 64 } } }
	mul_ln31_1_loc { ap_fifo {  { mul_ln31_1_loc_dout fifo_data 0 32 }  { mul_ln31_1_loc_empty_n fifo_status 0 1 }  { mul_ln31_1_loc_read fifo_update 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 24 } } }
	skip1 { ap_fifo {  { skip1_dout fifo_data 0 1 }  { skip1_empty_n fifo_status 0 1 }  { skip1_read fifo_update 1 1 } } }
	mul_ln31_1_loc_out { ap_fifo {  { mul_ln31_1_loc_out_din fifo_data 1 32 }  { mul_ln31_1_loc_out_full_n fifo_status 0 1 }  { mul_ln31_1_loc_out_write fifo_update 1 1 } } }
	skip1_out { ap_fifo {  { skip1_out_din fifo_data 1 1 }  { skip1_out_full_n fifo_status 0 1 }  { skip1_out_write fifo_update 1 1 } } }
}
