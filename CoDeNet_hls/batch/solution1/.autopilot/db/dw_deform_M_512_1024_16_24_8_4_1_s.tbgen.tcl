set moduleName dw_deform_M_512_1024_16_24_8_4_1_s
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
set C_modelName {dw_deform_M<512, 1024, 16, 24, 8, 4, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_layer int 1152 regular {fifo 0 volatile }  }
	{ s_conv3 int 512 regular {fifo 1 volatile }  }
	{ k3s int 576 regular {fifo 0 volatile }  }
	{ D_V_loc int 16 regular {fifo 0}  }
	{ OC_V_loc int 16 regular {fifo 0}  }
	{ batch int 32 regular {fifo 0}  }
	{ STRIDE_2 int 1 regular {fifo 0}  }
	{ skip3 int 1 regular {fifo 0}  }
	{ OC_V_loc_out int 16 regular {fifo 1}  }
	{ skip3_out int 1 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_layer", "interface" : "fifo", "bitwidth" : 1152, "direction" : "READONLY"} , 
 	{ "Name" : "s_conv3", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k3s", "interface" : "fifo", "bitwidth" : 576, "direction" : "READONLY"} , 
 	{ "Name" : "D_V_loc", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OC_V_loc", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "batch", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "STRIDE_2", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "skip3", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "OC_V_loc_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip3_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_layer_dout sc_in sc_lv 1152 signal 0 } 
	{ in_layer_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_layer_read sc_out sc_logic 1 signal 0 } 
	{ s_conv3_din sc_out sc_lv 512 signal 1 } 
	{ s_conv3_full_n sc_in sc_logic 1 signal 1 } 
	{ s_conv3_write sc_out sc_logic 1 signal 1 } 
	{ k3s_dout sc_in sc_lv 576 signal 2 } 
	{ k3s_empty_n sc_in sc_logic 1 signal 2 } 
	{ k3s_read sc_out sc_logic 1 signal 2 } 
	{ D_V_loc_dout sc_in sc_lv 16 signal 3 } 
	{ D_V_loc_empty_n sc_in sc_logic 1 signal 3 } 
	{ D_V_loc_read sc_out sc_logic 1 signal 3 } 
	{ OC_V_loc_dout sc_in sc_lv 16 signal 4 } 
	{ OC_V_loc_empty_n sc_in sc_logic 1 signal 4 } 
	{ OC_V_loc_read sc_out sc_logic 1 signal 4 } 
	{ batch_dout sc_in sc_lv 32 signal 5 } 
	{ batch_empty_n sc_in sc_logic 1 signal 5 } 
	{ batch_read sc_out sc_logic 1 signal 5 } 
	{ STRIDE_2_dout sc_in sc_lv 1 signal 6 } 
	{ STRIDE_2_empty_n sc_in sc_logic 1 signal 6 } 
	{ STRIDE_2_read sc_out sc_logic 1 signal 6 } 
	{ skip3_dout sc_in sc_lv 1 signal 7 } 
	{ skip3_empty_n sc_in sc_logic 1 signal 7 } 
	{ skip3_read sc_out sc_logic 1 signal 7 } 
	{ OC_V_loc_out_din sc_out sc_lv 16 signal 8 } 
	{ OC_V_loc_out_full_n sc_in sc_logic 1 signal 8 } 
	{ OC_V_loc_out_write sc_out sc_logic 1 signal 8 } 
	{ skip3_out_din sc_out sc_lv 1 signal 9 } 
	{ skip3_out_full_n sc_in sc_logic 1 signal 9 } 
	{ skip3_out_write sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_layer_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1152, "type": "signal", "bundle":{"name": "in_layer", "role": "dout" }} , 
 	{ "name": "in_layer_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_layer", "role": "empty_n" }} , 
 	{ "name": "in_layer_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_layer", "role": "read" }} , 
 	{ "name": "s_conv3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_conv3", "role": "din" }} , 
 	{ "name": "s_conv3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_conv3", "role": "full_n" }} , 
 	{ "name": "s_conv3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_conv3", "role": "write" }} , 
 	{ "name": "k3s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":576, "type": "signal", "bundle":{"name": "k3s", "role": "dout" }} , 
 	{ "name": "k3s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3s", "role": "empty_n" }} , 
 	{ "name": "k3s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3s", "role": "read" }} , 
 	{ "name": "D_V_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "D_V_loc", "role": "dout" }} , 
 	{ "name": "D_V_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_V_loc", "role": "empty_n" }} , 
 	{ "name": "D_V_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_V_loc", "role": "read" }} , 
 	{ "name": "OC_V_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OC_V_loc", "role": "dout" }} , 
 	{ "name": "OC_V_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc", "role": "empty_n" }} , 
 	{ "name": "OC_V_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc", "role": "read" }} , 
 	{ "name": "batch_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch", "role": "dout" }} , 
 	{ "name": "batch_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "empty_n" }} , 
 	{ "name": "batch_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "read" }} , 
 	{ "name": "STRIDE_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2", "role": "dout" }} , 
 	{ "name": "STRIDE_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2", "role": "empty_n" }} , 
 	{ "name": "STRIDE_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2", "role": "read" }} , 
 	{ "name": "skip3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "dout" }} , 
 	{ "name": "skip3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "empty_n" }} , 
 	{ "name": "skip3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "read" }} , 
 	{ "name": "OC_V_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OC_V_loc_out", "role": "din" }} , 
 	{ "name": "OC_V_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc_out", "role": "full_n" }} , 
 	{ "name": "OC_V_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc_out", "role": "write" }} , 
 	{ "name": "skip3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out", "role": "din" }} , 
 	{ "name": "skip3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out", "role": "full_n" }} , 
 	{ "name": "skip3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146"],
		"CDFG" : "dw_deform_M_512_1024_16_24_8_4_1_s",
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
			{"Name" : "in_layer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_layer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_conv3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_conv3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k3s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k3s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_5_1_U713", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U714", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U715", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U716", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U717", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U718", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U719", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U720", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U721", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U722", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U723", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U724", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U725", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U726", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U727", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U728", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U729", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U730", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U731", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U732", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U733", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U734", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U735", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U736", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U737", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U738", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U739", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U740", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U741", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U742", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U743", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U744", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U745", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U746", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U747", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U748", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U749", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U750", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U751", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U752", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U753", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U754", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U755", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U756", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U757", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U758", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U759", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U760", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U761", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U762", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U763", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U764", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U765", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U766", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U767", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U768", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U769", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U770", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U771", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U772", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U773", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U774", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U775", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U776", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U777", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U778", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U779", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U780", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U781", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U782", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U783", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U784", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U785", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U786", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U787", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U788", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U789", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U790", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U791", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U792", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U793", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U794", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U795", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U796", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U797", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U798", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U799", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U800", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U801", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U802", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U803", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U804", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U805", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U806", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U807", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U808", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U809", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U810", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U811", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U812", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U813", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U814", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U815", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U816", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U817", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U818", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U819", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U820", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U821", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U822", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U823", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U824", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U825", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U826", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U827", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U828", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U829", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U830", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U831", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U832", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U833", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U834", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U835", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U836", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U837", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U838", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U839", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U840", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U841", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_13_4_1_U842", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U843", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U844", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U845", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U846", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U847", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U848", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U849", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U850", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U851", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U852", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U853", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U854", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U855", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U856", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U857", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_13s_14_4_1_U858", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dw_deform_M_512_1024_16_24_8_4_1_s {
		in_layer {Type I LastRead 13 FirstWrite -1}
		s_conv3 {Type O LastRead -1 FirstWrite 13}
		k3s {Type I LastRead 12 FirstWrite -1}
		D_V_loc {Type I LastRead 0 FirstWrite -1}
		OC_V_loc {Type I LastRead 0 FirstWrite -1}
		batch {Type I LastRead 0 FirstWrite -1}
		STRIDE_2 {Type I LastRead 0 FirstWrite -1}
		skip3 {Type I LastRead 0 FirstWrite -1}
		OC_V_loc_out {Type O LastRead -1 FirstWrite 0}
		skip3_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_layer { ap_fifo {  { in_layer_dout fifo_data 0 1152 }  { in_layer_empty_n fifo_status 0 1 }  { in_layer_read fifo_update 1 1 } } }
	s_conv3 { ap_fifo {  { s_conv3_din fifo_data 1 512 }  { s_conv3_full_n fifo_status 0 1 }  { s_conv3_write fifo_update 1 1 } } }
	k3s { ap_fifo {  { k3s_dout fifo_data 0 576 }  { k3s_empty_n fifo_status 0 1 }  { k3s_read fifo_update 1 1 } } }
	D_V_loc { ap_fifo {  { D_V_loc_dout fifo_data 0 16 }  { D_V_loc_empty_n fifo_status 0 1 }  { D_V_loc_read fifo_update 1 1 } } }
	OC_V_loc { ap_fifo {  { OC_V_loc_dout fifo_data 0 16 }  { OC_V_loc_empty_n fifo_status 0 1 }  { OC_V_loc_read fifo_update 1 1 } } }
	batch { ap_fifo {  { batch_dout fifo_data 0 32 }  { batch_empty_n fifo_status 0 1 }  { batch_read fifo_update 1 1 } } }
	STRIDE_2 { ap_fifo {  { STRIDE_2_dout fifo_data 0 1 }  { STRIDE_2_empty_n fifo_status 0 1 }  { STRIDE_2_read fifo_update 1 1 } } }
	skip3 { ap_fifo {  { skip3_dout fifo_data 0 1 }  { skip3_empty_n fifo_status 0 1 }  { skip3_read fifo_update 1 1 } } }
	OC_V_loc_out { ap_fifo {  { OC_V_loc_out_din fifo_data 1 16 }  { OC_V_loc_out_full_n fifo_status 0 1 }  { OC_V_loc_out_write fifo_update 1 1 } } }
	skip3_out { ap_fifo {  { skip3_out_din fifo_data 1 1 }  { skip3_out_full_n fifo_status 0 1 }  { skip3_out_write fifo_update 1 1 } } }
}
