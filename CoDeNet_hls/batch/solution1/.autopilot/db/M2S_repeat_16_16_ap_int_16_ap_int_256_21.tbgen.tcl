set moduleName M2S_repeat_16_16_ap_int_16_ap_int_256_21
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
set C_modelName {M2S_repeat<16, 16, ap_int<16>, ap_int<256> >21}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_scale int 256 regular {fifo 1 volatile }  }
	{ scale_buffer1_V_0 int 16 regular {array 128 { 1 1 } 1 1 }  }
	{ scale_buffer1_V_1 int 16 regular {array 128 { 1 1 } 1 1 }  }
	{ scale_buffer1_V_2 int 16 regular {array 128 { 1 1 } 1 1 }  }
	{ scale_buffer1_V_3 int 16 regular {array 128 { 1 1 } 1 1 }  }
	{ scale_buffer1_V_4 int 16 regular {array 128 { 1 1 } 1 1 }  }
	{ scale_buffer1_V_5 int 16 regular {array 128 { 1 1 } 1 1 }  }
	{ scale_buffer1_V_6 int 16 regular {array 128 { 1 1 } 1 1 }  }
	{ scale_buffer1_V_7 int 16 regular {array 128 { 1 1 } 1 1 }  }
	{ mul_ln31_1_loc int 32 regular {fifo 0}  }
	{ ret_V_cast_loc int 12 regular {fifo 0}  }
	{ skip1 int 1 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_scale", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale_buffer1_V_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "scale_buffer1_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "scale_buffer1_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "scale_buffer1_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "scale_buffer1_V_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "scale_buffer1_V_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "scale_buffer1_V_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "scale_buffer1_V_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln31_1_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ret_V_cast_loc", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "skip1", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 67
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_scale_din sc_out sc_lv 256 signal 0 } 
	{ s_scale_full_n sc_in sc_logic 1 signal 0 } 
	{ s_scale_write sc_out sc_logic 1 signal 0 } 
	{ scale_buffer1_V_0_address0 sc_out sc_lv 7 signal 1 } 
	{ scale_buffer1_V_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ scale_buffer1_V_0_q0 sc_in sc_lv 16 signal 1 } 
	{ scale_buffer1_V_0_address1 sc_out sc_lv 7 signal 1 } 
	{ scale_buffer1_V_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ scale_buffer1_V_0_q1 sc_in sc_lv 16 signal 1 } 
	{ scale_buffer1_V_1_address0 sc_out sc_lv 7 signal 2 } 
	{ scale_buffer1_V_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ scale_buffer1_V_1_q0 sc_in sc_lv 16 signal 2 } 
	{ scale_buffer1_V_1_address1 sc_out sc_lv 7 signal 2 } 
	{ scale_buffer1_V_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ scale_buffer1_V_1_q1 sc_in sc_lv 16 signal 2 } 
	{ scale_buffer1_V_2_address0 sc_out sc_lv 7 signal 3 } 
	{ scale_buffer1_V_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ scale_buffer1_V_2_q0 sc_in sc_lv 16 signal 3 } 
	{ scale_buffer1_V_2_address1 sc_out sc_lv 7 signal 3 } 
	{ scale_buffer1_V_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ scale_buffer1_V_2_q1 sc_in sc_lv 16 signal 3 } 
	{ scale_buffer1_V_3_address0 sc_out sc_lv 7 signal 4 } 
	{ scale_buffer1_V_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ scale_buffer1_V_3_q0 sc_in sc_lv 16 signal 4 } 
	{ scale_buffer1_V_3_address1 sc_out sc_lv 7 signal 4 } 
	{ scale_buffer1_V_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ scale_buffer1_V_3_q1 sc_in sc_lv 16 signal 4 } 
	{ scale_buffer1_V_4_address0 sc_out sc_lv 7 signal 5 } 
	{ scale_buffer1_V_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ scale_buffer1_V_4_q0 sc_in sc_lv 16 signal 5 } 
	{ scale_buffer1_V_4_address1 sc_out sc_lv 7 signal 5 } 
	{ scale_buffer1_V_4_ce1 sc_out sc_logic 1 signal 5 } 
	{ scale_buffer1_V_4_q1 sc_in sc_lv 16 signal 5 } 
	{ scale_buffer1_V_5_address0 sc_out sc_lv 7 signal 6 } 
	{ scale_buffer1_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ scale_buffer1_V_5_q0 sc_in sc_lv 16 signal 6 } 
	{ scale_buffer1_V_5_address1 sc_out sc_lv 7 signal 6 } 
	{ scale_buffer1_V_5_ce1 sc_out sc_logic 1 signal 6 } 
	{ scale_buffer1_V_5_q1 sc_in sc_lv 16 signal 6 } 
	{ scale_buffer1_V_6_address0 sc_out sc_lv 7 signal 7 } 
	{ scale_buffer1_V_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ scale_buffer1_V_6_q0 sc_in sc_lv 16 signal 7 } 
	{ scale_buffer1_V_6_address1 sc_out sc_lv 7 signal 7 } 
	{ scale_buffer1_V_6_ce1 sc_out sc_logic 1 signal 7 } 
	{ scale_buffer1_V_6_q1 sc_in sc_lv 16 signal 7 } 
	{ scale_buffer1_V_7_address0 sc_out sc_lv 7 signal 8 } 
	{ scale_buffer1_V_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ scale_buffer1_V_7_q0 sc_in sc_lv 16 signal 8 } 
	{ scale_buffer1_V_7_address1 sc_out sc_lv 7 signal 8 } 
	{ scale_buffer1_V_7_ce1 sc_out sc_logic 1 signal 8 } 
	{ scale_buffer1_V_7_q1 sc_in sc_lv 16 signal 8 } 
	{ mul_ln31_1_loc_dout sc_in sc_lv 32 signal 9 } 
	{ mul_ln31_1_loc_empty_n sc_in sc_logic 1 signal 9 } 
	{ mul_ln31_1_loc_read sc_out sc_logic 1 signal 9 } 
	{ ret_V_cast_loc_dout sc_in sc_lv 12 signal 10 } 
	{ ret_V_cast_loc_empty_n sc_in sc_logic 1 signal 10 } 
	{ ret_V_cast_loc_read sc_out sc_logic 1 signal 10 } 
	{ skip1_dout sc_in sc_lv 1 signal 11 } 
	{ skip1_empty_n sc_in sc_logic 1 signal 11 } 
	{ skip1_read sc_out sc_logic 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_scale_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "s_scale", "role": "din" }} , 
 	{ "name": "s_scale_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_scale", "role": "full_n" }} , 
 	{ "name": "s_scale_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_scale", "role": "write" }} , 
 	{ "name": "scale_buffer1_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_0", "role": "address0" }} , 
 	{ "name": "scale_buffer1_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_0", "role": "ce0" }} , 
 	{ "name": "scale_buffer1_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_0", "role": "q0" }} , 
 	{ "name": "scale_buffer1_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_0", "role": "address1" }} , 
 	{ "name": "scale_buffer1_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_0", "role": "ce1" }} , 
 	{ "name": "scale_buffer1_V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_0", "role": "q1" }} , 
 	{ "name": "scale_buffer1_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_1", "role": "address0" }} , 
 	{ "name": "scale_buffer1_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_1", "role": "ce0" }} , 
 	{ "name": "scale_buffer1_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_1", "role": "q0" }} , 
 	{ "name": "scale_buffer1_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_1", "role": "address1" }} , 
 	{ "name": "scale_buffer1_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_1", "role": "ce1" }} , 
 	{ "name": "scale_buffer1_V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_1", "role": "q1" }} , 
 	{ "name": "scale_buffer1_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_2", "role": "address0" }} , 
 	{ "name": "scale_buffer1_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_2", "role": "ce0" }} , 
 	{ "name": "scale_buffer1_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_2", "role": "q0" }} , 
 	{ "name": "scale_buffer1_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_2", "role": "address1" }} , 
 	{ "name": "scale_buffer1_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_2", "role": "ce1" }} , 
 	{ "name": "scale_buffer1_V_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_2", "role": "q1" }} , 
 	{ "name": "scale_buffer1_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_3", "role": "address0" }} , 
 	{ "name": "scale_buffer1_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_3", "role": "ce0" }} , 
 	{ "name": "scale_buffer1_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_3", "role": "q0" }} , 
 	{ "name": "scale_buffer1_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_3", "role": "address1" }} , 
 	{ "name": "scale_buffer1_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_3", "role": "ce1" }} , 
 	{ "name": "scale_buffer1_V_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_3", "role": "q1" }} , 
 	{ "name": "scale_buffer1_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_4", "role": "address0" }} , 
 	{ "name": "scale_buffer1_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_4", "role": "ce0" }} , 
 	{ "name": "scale_buffer1_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_4", "role": "q0" }} , 
 	{ "name": "scale_buffer1_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_4", "role": "address1" }} , 
 	{ "name": "scale_buffer1_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_4", "role": "ce1" }} , 
 	{ "name": "scale_buffer1_V_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_4", "role": "q1" }} , 
 	{ "name": "scale_buffer1_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_5", "role": "address0" }} , 
 	{ "name": "scale_buffer1_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_5", "role": "ce0" }} , 
 	{ "name": "scale_buffer1_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_5", "role": "q0" }} , 
 	{ "name": "scale_buffer1_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_5", "role": "address1" }} , 
 	{ "name": "scale_buffer1_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_5", "role": "ce1" }} , 
 	{ "name": "scale_buffer1_V_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_5", "role": "q1" }} , 
 	{ "name": "scale_buffer1_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_6", "role": "address0" }} , 
 	{ "name": "scale_buffer1_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_6", "role": "ce0" }} , 
 	{ "name": "scale_buffer1_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_6", "role": "q0" }} , 
 	{ "name": "scale_buffer1_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_6", "role": "address1" }} , 
 	{ "name": "scale_buffer1_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_6", "role": "ce1" }} , 
 	{ "name": "scale_buffer1_V_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_6", "role": "q1" }} , 
 	{ "name": "scale_buffer1_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_7", "role": "address0" }} , 
 	{ "name": "scale_buffer1_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_7", "role": "ce0" }} , 
 	{ "name": "scale_buffer1_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_7", "role": "q0" }} , 
 	{ "name": "scale_buffer1_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale_buffer1_V_7", "role": "address1" }} , 
 	{ "name": "scale_buffer1_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale_buffer1_V_7", "role": "ce1" }} , 
 	{ "name": "scale_buffer1_V_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale_buffer1_V_7", "role": "q1" }} , 
 	{ "name": "mul_ln31_1_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln31_1_loc", "role": "dout" }} , 
 	{ "name": "mul_ln31_1_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_loc", "role": "empty_n" }} , 
 	{ "name": "mul_ln31_1_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_loc", "role": "read" }} , 
 	{ "name": "ret_V_cast_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ret_V_cast_loc", "role": "dout" }} , 
 	{ "name": "ret_V_cast_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_loc", "role": "empty_n" }} , 
 	{ "name": "ret_V_cast_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_loc", "role": "read" }} , 
 	{ "name": "skip1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "dout" }} , 
 	{ "name": "skip1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "empty_n" }} , 
 	{ "name": "skip1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "M2S_repeat_16_16_ap_int_16_ap_int_256_21",
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
			{"Name" : "s_scale", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_scale_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "scale_buffer1_V_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale_buffer1_V_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale_buffer1_V_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale_buffer1_V_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale_buffer1_V_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale_buffer1_V_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale_buffer1_V_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale_buffer1_V_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "mul_ln31_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_12ns_44_5_1_U139", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U140", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U141", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U142", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U143", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U144", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U145", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U146", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U147", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U148", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U149", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U150", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U151", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U152", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U153", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U154", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_16_1_1_U155", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	M2S_repeat_16_16_ap_int_16_ap_int_256_21 {
		s_scale {Type O LastRead -1 FirstWrite 9}
		scale_buffer1_V_0 {Type I LastRead 8 FirstWrite -1}
		scale_buffer1_V_1 {Type I LastRead 8 FirstWrite -1}
		scale_buffer1_V_2 {Type I LastRead 8 FirstWrite -1}
		scale_buffer1_V_3 {Type I LastRead 8 FirstWrite -1}
		scale_buffer1_V_4 {Type I LastRead 8 FirstWrite -1}
		scale_buffer1_V_5 {Type I LastRead 8 FirstWrite -1}
		scale_buffer1_V_6 {Type I LastRead 8 FirstWrite -1}
		scale_buffer1_V_7 {Type I LastRead 8 FirstWrite -1}
		mul_ln31_1_loc {Type I LastRead 0 FirstWrite -1}
		ret_V_cast_loc {Type I LastRead 0 FirstWrite -1}
		skip1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_scale { ap_fifo {  { s_scale_din fifo_data 1 256 }  { s_scale_full_n fifo_status 0 1 }  { s_scale_write fifo_update 1 1 } } }
	scale_buffer1_V_0 { ap_memory {  { scale_buffer1_V_0_address0 mem_address 1 7 }  { scale_buffer1_V_0_ce0 mem_ce 1 1 }  { scale_buffer1_V_0_q0 mem_dout 0 16 }  { scale_buffer1_V_0_address1 MemPortADDR2 1 7 }  { scale_buffer1_V_0_ce1 MemPortCE2 1 1 }  { scale_buffer1_V_0_q1 MemPortDOUT2 0 16 } } }
	scale_buffer1_V_1 { ap_memory {  { scale_buffer1_V_1_address0 mem_address 1 7 }  { scale_buffer1_V_1_ce0 mem_ce 1 1 }  { scale_buffer1_V_1_q0 mem_dout 0 16 }  { scale_buffer1_V_1_address1 MemPortADDR2 1 7 }  { scale_buffer1_V_1_ce1 MemPortCE2 1 1 }  { scale_buffer1_V_1_q1 MemPortDOUT2 0 16 } } }
	scale_buffer1_V_2 { ap_memory {  { scale_buffer1_V_2_address0 mem_address 1 7 }  { scale_buffer1_V_2_ce0 mem_ce 1 1 }  { scale_buffer1_V_2_q0 mem_dout 0 16 }  { scale_buffer1_V_2_address1 MemPortADDR2 1 7 }  { scale_buffer1_V_2_ce1 MemPortCE2 1 1 }  { scale_buffer1_V_2_q1 MemPortDOUT2 0 16 } } }
	scale_buffer1_V_3 { ap_memory {  { scale_buffer1_V_3_address0 mem_address 1 7 }  { scale_buffer1_V_3_ce0 mem_ce 1 1 }  { scale_buffer1_V_3_q0 mem_dout 0 16 }  { scale_buffer1_V_3_address1 MemPortADDR2 1 7 }  { scale_buffer1_V_3_ce1 MemPortCE2 1 1 }  { scale_buffer1_V_3_q1 MemPortDOUT2 0 16 } } }
	scale_buffer1_V_4 { ap_memory {  { scale_buffer1_V_4_address0 mem_address 1 7 }  { scale_buffer1_V_4_ce0 mem_ce 1 1 }  { scale_buffer1_V_4_q0 mem_dout 0 16 }  { scale_buffer1_V_4_address1 MemPortADDR2 1 7 }  { scale_buffer1_V_4_ce1 MemPortCE2 1 1 }  { scale_buffer1_V_4_q1 MemPortDOUT2 0 16 } } }
	scale_buffer1_V_5 { ap_memory {  { scale_buffer1_V_5_address0 mem_address 1 7 }  { scale_buffer1_V_5_ce0 mem_ce 1 1 }  { scale_buffer1_V_5_q0 mem_dout 0 16 }  { scale_buffer1_V_5_address1 MemPortADDR2 1 7 }  { scale_buffer1_V_5_ce1 MemPortCE2 1 1 }  { scale_buffer1_V_5_q1 MemPortDOUT2 0 16 } } }
	scale_buffer1_V_6 { ap_memory {  { scale_buffer1_V_6_address0 mem_address 1 7 }  { scale_buffer1_V_6_ce0 mem_ce 1 1 }  { scale_buffer1_V_6_q0 mem_dout 0 16 }  { scale_buffer1_V_6_address1 MemPortADDR2 1 7 }  { scale_buffer1_V_6_ce1 MemPortCE2 1 1 }  { scale_buffer1_V_6_q1 MemPortDOUT2 0 16 } } }
	scale_buffer1_V_7 { ap_memory {  { scale_buffer1_V_7_address0 mem_address 1 7 }  { scale_buffer1_V_7_ce0 mem_ce 1 1 }  { scale_buffer1_V_7_q0 mem_dout 0 16 }  { scale_buffer1_V_7_address1 MemPortADDR2 1 7 }  { scale_buffer1_V_7_ce1 MemPortCE2 1 1 }  { scale_buffer1_V_7_q1 MemPortDOUT2 0 16 } } }
	mul_ln31_1_loc { ap_fifo {  { mul_ln31_1_loc_dout fifo_data 0 32 }  { mul_ln31_1_loc_empty_n fifo_status 0 1 }  { mul_ln31_1_loc_read fifo_update 1 1 } } }
	ret_V_cast_loc { ap_fifo {  { ret_V_cast_loc_dout fifo_data 0 12 }  { ret_V_cast_loc_empty_n fifo_status 0 1 }  { ret_V_cast_loc_read fifo_update 1 1 } } }
	skip1 { ap_fifo {  { skip1_dout fifo_data 0 1 }  { skip1_empty_n fifo_status 0 1 }  { skip1_read fifo_update 1 1 } } }
}
