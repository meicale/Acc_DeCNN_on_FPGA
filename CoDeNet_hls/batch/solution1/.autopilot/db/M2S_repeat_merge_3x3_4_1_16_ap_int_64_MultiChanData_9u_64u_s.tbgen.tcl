set moduleName M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_s
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
set C_modelName {M2S_repeat_merge_3x3<4, 1, 16, ap_int<64>, MultiChanData<9u, 64u> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ k3s int 576 regular {fifo 1 volatile }  }
	{ k3_buffer_V_0 int 64 regular {array 64 { 1 1 } 1 1 }  }
	{ k3_buffer_V_1 int 64 regular {array 64 { 1 1 } 1 1 }  }
	{ k3_buffer_V_2 int 64 regular {array 64 { 1 1 } 1 1 }  }
	{ k3_buffer_V_3 int 64 regular {array 64 { 1 1 } 1 1 }  }
	{ k3_buffer_V_4 int 64 regular {array 64 { 1 1 } 1 1 }  }
	{ k3_buffer_V_5 int 64 regular {array 64 { 1 1 } 1 1 }  }
	{ k3_buffer_V_6 int 64 regular {array 64 { 1 1 } 1 1 }  }
	{ k3_buffer_V_7 int 64 regular {array 64 { 1 1 } 1 1 }  }
	{ k3_buffer_V_8 int 64 regular {array 64 { 1 1 } 1 1 }  }
	{ mul_ln93_1_loc int 32 regular {fifo 0}  }
	{ ret_V_cast_loc int 12 regular {fifo 0}  }
	{ skip3 int 1 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "k3s", "interface" : "fifo", "bitwidth" : 576, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k3_buffer_V_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k3_buffer_V_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k3_buffer_V_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k3_buffer_V_3", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k3_buffer_V_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k3_buffer_V_5", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k3_buffer_V_6", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k3_buffer_V_7", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k3_buffer_V_8", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln93_1_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ret_V_cast_loc", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "skip3", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 76
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ k3s_din sc_out sc_lv 576 signal 0 } 
	{ k3s_full_n sc_in sc_logic 1 signal 0 } 
	{ k3s_write sc_out sc_logic 1 signal 0 } 
	{ k3_buffer_V_0_address0 sc_out sc_lv 6 signal 1 } 
	{ k3_buffer_V_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ k3_buffer_V_0_q0 sc_in sc_lv 64 signal 1 } 
	{ k3_buffer_V_0_address1 sc_out sc_lv 6 signal 1 } 
	{ k3_buffer_V_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ k3_buffer_V_0_q1 sc_in sc_lv 64 signal 1 } 
	{ k3_buffer_V_1_address0 sc_out sc_lv 6 signal 2 } 
	{ k3_buffer_V_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ k3_buffer_V_1_q0 sc_in sc_lv 64 signal 2 } 
	{ k3_buffer_V_1_address1 sc_out sc_lv 6 signal 2 } 
	{ k3_buffer_V_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ k3_buffer_V_1_q1 sc_in sc_lv 64 signal 2 } 
	{ k3_buffer_V_2_address0 sc_out sc_lv 6 signal 3 } 
	{ k3_buffer_V_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ k3_buffer_V_2_q0 sc_in sc_lv 64 signal 3 } 
	{ k3_buffer_V_2_address1 sc_out sc_lv 6 signal 3 } 
	{ k3_buffer_V_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ k3_buffer_V_2_q1 sc_in sc_lv 64 signal 3 } 
	{ k3_buffer_V_3_address0 sc_out sc_lv 6 signal 4 } 
	{ k3_buffer_V_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ k3_buffer_V_3_q0 sc_in sc_lv 64 signal 4 } 
	{ k3_buffer_V_3_address1 sc_out sc_lv 6 signal 4 } 
	{ k3_buffer_V_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ k3_buffer_V_3_q1 sc_in sc_lv 64 signal 4 } 
	{ k3_buffer_V_4_address0 sc_out sc_lv 6 signal 5 } 
	{ k3_buffer_V_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ k3_buffer_V_4_q0 sc_in sc_lv 64 signal 5 } 
	{ k3_buffer_V_4_address1 sc_out sc_lv 6 signal 5 } 
	{ k3_buffer_V_4_ce1 sc_out sc_logic 1 signal 5 } 
	{ k3_buffer_V_4_q1 sc_in sc_lv 64 signal 5 } 
	{ k3_buffer_V_5_address0 sc_out sc_lv 6 signal 6 } 
	{ k3_buffer_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ k3_buffer_V_5_q0 sc_in sc_lv 64 signal 6 } 
	{ k3_buffer_V_5_address1 sc_out sc_lv 6 signal 6 } 
	{ k3_buffer_V_5_ce1 sc_out sc_logic 1 signal 6 } 
	{ k3_buffer_V_5_q1 sc_in sc_lv 64 signal 6 } 
	{ k3_buffer_V_6_address0 sc_out sc_lv 6 signal 7 } 
	{ k3_buffer_V_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ k3_buffer_V_6_q0 sc_in sc_lv 64 signal 7 } 
	{ k3_buffer_V_6_address1 sc_out sc_lv 6 signal 7 } 
	{ k3_buffer_V_6_ce1 sc_out sc_logic 1 signal 7 } 
	{ k3_buffer_V_6_q1 sc_in sc_lv 64 signal 7 } 
	{ k3_buffer_V_7_address0 sc_out sc_lv 6 signal 8 } 
	{ k3_buffer_V_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ k3_buffer_V_7_q0 sc_in sc_lv 64 signal 8 } 
	{ k3_buffer_V_7_address1 sc_out sc_lv 6 signal 8 } 
	{ k3_buffer_V_7_ce1 sc_out sc_logic 1 signal 8 } 
	{ k3_buffer_V_7_q1 sc_in sc_lv 64 signal 8 } 
	{ k3_buffer_V_8_address0 sc_out sc_lv 6 signal 9 } 
	{ k3_buffer_V_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ k3_buffer_V_8_q0 sc_in sc_lv 64 signal 9 } 
	{ k3_buffer_V_8_address1 sc_out sc_lv 6 signal 9 } 
	{ k3_buffer_V_8_ce1 sc_out sc_logic 1 signal 9 } 
	{ k3_buffer_V_8_q1 sc_in sc_lv 64 signal 9 } 
	{ mul_ln93_1_loc_dout sc_in sc_lv 32 signal 10 } 
	{ mul_ln93_1_loc_empty_n sc_in sc_logic 1 signal 10 } 
	{ mul_ln93_1_loc_read sc_out sc_logic 1 signal 10 } 
	{ ret_V_cast_loc_dout sc_in sc_lv 12 signal 11 } 
	{ ret_V_cast_loc_empty_n sc_in sc_logic 1 signal 11 } 
	{ ret_V_cast_loc_read sc_out sc_logic 1 signal 11 } 
	{ skip3_dout sc_in sc_lv 1 signal 12 } 
	{ skip3_empty_n sc_in sc_logic 1 signal 12 } 
	{ skip3_read sc_out sc_logic 1 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "k3s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":576, "type": "signal", "bundle":{"name": "k3s", "role": "din" }} , 
 	{ "name": "k3s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3s", "role": "full_n" }} , 
 	{ "name": "k3s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3s", "role": "write" }} , 
 	{ "name": "k3_buffer_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_0", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_0", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_0", "role": "q0" }} , 
 	{ "name": "k3_buffer_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_0", "role": "address1" }} , 
 	{ "name": "k3_buffer_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_0", "role": "ce1" }} , 
 	{ "name": "k3_buffer_V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_0", "role": "q1" }} , 
 	{ "name": "k3_buffer_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_1", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_1", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_1", "role": "q0" }} , 
 	{ "name": "k3_buffer_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_1", "role": "address1" }} , 
 	{ "name": "k3_buffer_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_1", "role": "ce1" }} , 
 	{ "name": "k3_buffer_V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_1", "role": "q1" }} , 
 	{ "name": "k3_buffer_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_2", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_2", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_2", "role": "q0" }} , 
 	{ "name": "k3_buffer_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_2", "role": "address1" }} , 
 	{ "name": "k3_buffer_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_2", "role": "ce1" }} , 
 	{ "name": "k3_buffer_V_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_2", "role": "q1" }} , 
 	{ "name": "k3_buffer_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_3", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_3", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_3", "role": "q0" }} , 
 	{ "name": "k3_buffer_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_3", "role": "address1" }} , 
 	{ "name": "k3_buffer_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_3", "role": "ce1" }} , 
 	{ "name": "k3_buffer_V_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_3", "role": "q1" }} , 
 	{ "name": "k3_buffer_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_4", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_4", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_4", "role": "q0" }} , 
 	{ "name": "k3_buffer_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_4", "role": "address1" }} , 
 	{ "name": "k3_buffer_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_4", "role": "ce1" }} , 
 	{ "name": "k3_buffer_V_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_4", "role": "q1" }} , 
 	{ "name": "k3_buffer_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_5", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_5", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_5", "role": "q0" }} , 
 	{ "name": "k3_buffer_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_5", "role": "address1" }} , 
 	{ "name": "k3_buffer_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_5", "role": "ce1" }} , 
 	{ "name": "k3_buffer_V_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_5", "role": "q1" }} , 
 	{ "name": "k3_buffer_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_6", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_6", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_6", "role": "q0" }} , 
 	{ "name": "k3_buffer_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_6", "role": "address1" }} , 
 	{ "name": "k3_buffer_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_6", "role": "ce1" }} , 
 	{ "name": "k3_buffer_V_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_6", "role": "q1" }} , 
 	{ "name": "k3_buffer_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_7", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_7", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_7", "role": "q0" }} , 
 	{ "name": "k3_buffer_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_7", "role": "address1" }} , 
 	{ "name": "k3_buffer_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_7", "role": "ce1" }} , 
 	{ "name": "k3_buffer_V_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_7", "role": "q1" }} , 
 	{ "name": "k3_buffer_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_8", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_8", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_8", "role": "q0" }} , 
 	{ "name": "k3_buffer_V_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_8", "role": "address1" }} , 
 	{ "name": "k3_buffer_V_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_8", "role": "ce1" }} , 
 	{ "name": "k3_buffer_V_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_8", "role": "q1" }} , 
 	{ "name": "mul_ln93_1_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln93_1_loc", "role": "dout" }} , 
 	{ "name": "mul_ln93_1_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln93_1_loc", "role": "empty_n" }} , 
 	{ "name": "mul_ln93_1_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln93_1_loc", "role": "read" }} , 
 	{ "name": "ret_V_cast_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ret_V_cast_loc", "role": "dout" }} , 
 	{ "name": "ret_V_cast_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_loc", "role": "empty_n" }} , 
 	{ "name": "ret_V_cast_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_loc", "role": "read" }} , 
 	{ "name": "skip3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "dout" }} , 
 	{ "name": "skip3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "empty_n" }} , 
 	{ "name": "skip3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "k3s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k3s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k3_buffer_V_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_8", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "mul_ln93_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_12ns_44_5_1_U635", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_16ns_5ns_16_20_1_U636", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_964_64_1_1_U637", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_964_64_1_1_U638", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_964_64_1_1_U639", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_964_64_1_1_U640", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_964_64_1_1_U641", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_964_64_1_1_U642", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_964_64_1_1_U643", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_964_64_1_1_U644", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_964_64_1_1_U645", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_18ns_33_4_1_U646", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_18ns_33_4_1_U647", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_18ns_33_4_1_U648", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_18ns_33_4_1_U649", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_18ns_33_4_1_U650", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_18ns_33_4_1_U651", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_18ns_33_4_1_U652", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_18ns_33_4_1_U653", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_18ns_33_4_1_U654", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_s {
		k3s {Type O LastRead -1 FirstWrite 28}
		k3_buffer_V_0 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_1 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_2 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_3 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_4 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_5 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_6 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_7 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_8 {Type I LastRead 27 FirstWrite -1}
		mul_ln93_1_loc {Type I LastRead 0 FirstWrite -1}
		ret_V_cast_loc {Type I LastRead 0 FirstWrite -1}
		skip3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	k3s { ap_fifo {  { k3s_din fifo_data 1 576 }  { k3s_full_n fifo_status 0 1 }  { k3s_write fifo_update 1 1 } } }
	k3_buffer_V_0 { ap_memory {  { k3_buffer_V_0_address0 mem_address 1 6 }  { k3_buffer_V_0_ce0 mem_ce 1 1 }  { k3_buffer_V_0_q0 mem_dout 0 64 }  { k3_buffer_V_0_address1 MemPortADDR2 1 6 }  { k3_buffer_V_0_ce1 MemPortCE2 1 1 }  { k3_buffer_V_0_q1 MemPortDOUT2 0 64 } } }
	k3_buffer_V_1 { ap_memory {  { k3_buffer_V_1_address0 mem_address 1 6 }  { k3_buffer_V_1_ce0 mem_ce 1 1 }  { k3_buffer_V_1_q0 mem_dout 0 64 }  { k3_buffer_V_1_address1 MemPortADDR2 1 6 }  { k3_buffer_V_1_ce1 MemPortCE2 1 1 }  { k3_buffer_V_1_q1 MemPortDOUT2 0 64 } } }
	k3_buffer_V_2 { ap_memory {  { k3_buffer_V_2_address0 mem_address 1 6 }  { k3_buffer_V_2_ce0 mem_ce 1 1 }  { k3_buffer_V_2_q0 mem_dout 0 64 }  { k3_buffer_V_2_address1 MemPortADDR2 1 6 }  { k3_buffer_V_2_ce1 MemPortCE2 1 1 }  { k3_buffer_V_2_q1 MemPortDOUT2 0 64 } } }
	k3_buffer_V_3 { ap_memory {  { k3_buffer_V_3_address0 mem_address 1 6 }  { k3_buffer_V_3_ce0 mem_ce 1 1 }  { k3_buffer_V_3_q0 mem_dout 0 64 }  { k3_buffer_V_3_address1 MemPortADDR2 1 6 }  { k3_buffer_V_3_ce1 MemPortCE2 1 1 }  { k3_buffer_V_3_q1 MemPortDOUT2 0 64 } } }
	k3_buffer_V_4 { ap_memory {  { k3_buffer_V_4_address0 mem_address 1 6 }  { k3_buffer_V_4_ce0 mem_ce 1 1 }  { k3_buffer_V_4_q0 mem_dout 0 64 }  { k3_buffer_V_4_address1 MemPortADDR2 1 6 }  { k3_buffer_V_4_ce1 MemPortCE2 1 1 }  { k3_buffer_V_4_q1 MemPortDOUT2 0 64 } } }
	k3_buffer_V_5 { ap_memory {  { k3_buffer_V_5_address0 mem_address 1 6 }  { k3_buffer_V_5_ce0 mem_ce 1 1 }  { k3_buffer_V_5_q0 mem_dout 0 64 }  { k3_buffer_V_5_address1 MemPortADDR2 1 6 }  { k3_buffer_V_5_ce1 MemPortCE2 1 1 }  { k3_buffer_V_5_q1 MemPortDOUT2 0 64 } } }
	k3_buffer_V_6 { ap_memory {  { k3_buffer_V_6_address0 mem_address 1 6 }  { k3_buffer_V_6_ce0 mem_ce 1 1 }  { k3_buffer_V_6_q0 mem_dout 0 64 }  { k3_buffer_V_6_address1 MemPortADDR2 1 6 }  { k3_buffer_V_6_ce1 MemPortCE2 1 1 }  { k3_buffer_V_6_q1 MemPortDOUT2 0 64 } } }
	k3_buffer_V_7 { ap_memory {  { k3_buffer_V_7_address0 mem_address 1 6 }  { k3_buffer_V_7_ce0 mem_ce 1 1 }  { k3_buffer_V_7_q0 mem_dout 0 64 }  { k3_buffer_V_7_address1 MemPortADDR2 1 6 }  { k3_buffer_V_7_ce1 MemPortCE2 1 1 }  { k3_buffer_V_7_q1 MemPortDOUT2 0 64 } } }
	k3_buffer_V_8 { ap_memory {  { k3_buffer_V_8_address0 mem_address 1 6 }  { k3_buffer_V_8_ce0 mem_ce 1 1 }  { k3_buffer_V_8_q0 mem_dout 0 64 }  { k3_buffer_V_8_address1 MemPortADDR2 1 6 }  { k3_buffer_V_8_ce1 MemPortCE2 1 1 }  { k3_buffer_V_8_q1 MemPortDOUT2 0 64 } } }
	mul_ln93_1_loc { ap_fifo {  { mul_ln93_1_loc_dout fifo_data 0 32 }  { mul_ln93_1_loc_empty_n fifo_status 0 1 }  { mul_ln93_1_loc_read fifo_update 1 1 } } }
	ret_V_cast_loc { ap_fifo {  { ret_V_cast_loc_dout fifo_data 0 12 }  { ret_V_cast_loc_empty_n fifo_status 0 1 }  { ret_V_cast_loc_read fifo_update 1 1 } } }
	skip3 { ap_fifo {  { skip3_dout fifo_data 0 1 }  { skip3_empty_n fifo_status 0 1 }  { skip3_read fifo_update 1 1 } } }
}
