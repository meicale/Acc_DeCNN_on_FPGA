set moduleName conv1x1_v4_512_512_1024_16_16_24_8_4_s
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
set C_modelName {conv1x1_v4<512, 512, 1024, 16, 16, 24, 8, 4>}
set C_modelType { void 0 }
set C_modelArgList {
	{ fin int 128 regular {fifo 0 volatile }  }
	{ s_conv1 int 512 regular {fifo 1 volatile }  }
	{ k1 int 1024 regular {fifo 0 volatile }  }
	{ mul_ln31_1_loc int 32 regular {fifo 0}  }
	{ IC_V_loc int 16 regular {fifo 0}  }
	{ OC_V_loc int 16 regular {fifo 0}  }
	{ skip1 int 1 regular {fifo 0}  }
	{ mul_ln31_1_loc_out int 32 regular {fifo 1}  }
	{ OC_V_loc_out int 16 regular {fifo 1}  }
	{ skip1_out int 1 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fin", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "s_conv1", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln31_1_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "IC_V_loc", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OC_V_loc", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "skip1", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln31_1_loc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OC_V_loc_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip1_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ fin_dout sc_in sc_lv 128 signal 0 } 
	{ fin_empty_n sc_in sc_logic 1 signal 0 } 
	{ fin_read sc_out sc_logic 1 signal 0 } 
	{ s_conv1_din sc_out sc_lv 512 signal 1 } 
	{ s_conv1_full_n sc_in sc_logic 1 signal 1 } 
	{ s_conv1_write sc_out sc_logic 1 signal 1 } 
	{ k1_dout sc_in sc_lv 1024 signal 2 } 
	{ k1_empty_n sc_in sc_logic 1 signal 2 } 
	{ k1_read sc_out sc_logic 1 signal 2 } 
	{ mul_ln31_1_loc_dout sc_in sc_lv 32 signal 3 } 
	{ mul_ln31_1_loc_empty_n sc_in sc_logic 1 signal 3 } 
	{ mul_ln31_1_loc_read sc_out sc_logic 1 signal 3 } 
	{ IC_V_loc_dout sc_in sc_lv 16 signal 4 } 
	{ IC_V_loc_empty_n sc_in sc_logic 1 signal 4 } 
	{ IC_V_loc_read sc_out sc_logic 1 signal 4 } 
	{ OC_V_loc_dout sc_in sc_lv 16 signal 5 } 
	{ OC_V_loc_empty_n sc_in sc_logic 1 signal 5 } 
	{ OC_V_loc_read sc_out sc_logic 1 signal 5 } 
	{ skip1_dout sc_in sc_lv 1 signal 6 } 
	{ skip1_empty_n sc_in sc_logic 1 signal 6 } 
	{ skip1_read sc_out sc_logic 1 signal 6 } 
	{ mul_ln31_1_loc_out_din sc_out sc_lv 32 signal 7 } 
	{ mul_ln31_1_loc_out_full_n sc_in sc_logic 1 signal 7 } 
	{ mul_ln31_1_loc_out_write sc_out sc_logic 1 signal 7 } 
	{ OC_V_loc_out_din sc_out sc_lv 16 signal 8 } 
	{ OC_V_loc_out_full_n sc_in sc_logic 1 signal 8 } 
	{ OC_V_loc_out_write sc_out sc_logic 1 signal 8 } 
	{ skip1_out_din sc_out sc_lv 1 signal 9 } 
	{ skip1_out_full_n sc_in sc_logic 1 signal 9 } 
	{ skip1_out_write sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fin_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fin", "role": "dout" }} , 
 	{ "name": "fin_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fin", "role": "empty_n" }} , 
 	{ "name": "fin_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fin", "role": "read" }} , 
 	{ "name": "s_conv1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_conv1", "role": "din" }} , 
 	{ "name": "s_conv1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_conv1", "role": "full_n" }} , 
 	{ "name": "s_conv1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_conv1", "role": "write" }} , 
 	{ "name": "k1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "k1", "role": "dout" }} , 
 	{ "name": "k1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1", "role": "empty_n" }} , 
 	{ "name": "k1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1", "role": "read" }} , 
 	{ "name": "mul_ln31_1_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln31_1_loc", "role": "dout" }} , 
 	{ "name": "mul_ln31_1_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_loc", "role": "empty_n" }} , 
 	{ "name": "mul_ln31_1_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_loc", "role": "read" }} , 
 	{ "name": "IC_V_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "IC_V_loc", "role": "dout" }} , 
 	{ "name": "IC_V_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IC_V_loc", "role": "empty_n" }} , 
 	{ "name": "IC_V_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IC_V_loc", "role": "read" }} , 
 	{ "name": "OC_V_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OC_V_loc", "role": "dout" }} , 
 	{ "name": "OC_V_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc", "role": "empty_n" }} , 
 	{ "name": "OC_V_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc", "role": "read" }} , 
 	{ "name": "skip1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "dout" }} , 
 	{ "name": "skip1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "empty_n" }} , 
 	{ "name": "skip1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "read" }} , 
 	{ "name": "mul_ln31_1_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln31_1_loc_out", "role": "din" }} , 
 	{ "name": "mul_ln31_1_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_loc_out", "role": "full_n" }} , 
 	{ "name": "mul_ln31_1_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_loc_out", "role": "write" }} , 
 	{ "name": "OC_V_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OC_V_loc_out", "role": "din" }} , 
 	{ "name": "OC_V_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc_out", "role": "full_n" }} , 
 	{ "name": "OC_V_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc_out", "role": "write" }} , 
 	{ "name": "skip1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out", "role": "din" }} , 
 	{ "name": "skip1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out", "role": "full_n" }} , 
 	{ "name": "skip1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257"],
		"CDFG" : "conv1x1_v4_512_512_1024_16_16_24_8_4_s",
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
			{"Name" : "fin", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fin_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_conv1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_conv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "IC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_value_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U260", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U261", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U262", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U263", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U264", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U265", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U266", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U267", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U268", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U269", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U270", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U271", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U272", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U273", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U274", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U275", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U276", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U277", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U278", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U279", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U280", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U281", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U282", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U283", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U284", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U285", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U286", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U287", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U288", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U289", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U290", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U291", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U292", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U293", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U294", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U295", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U296", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U297", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U298", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U299", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U300", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U301", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U302", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U303", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U304", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U305", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U306", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U307", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U308", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U309", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U310", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U311", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U312", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U313", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U314", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U315", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U316", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U317", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U318", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U319", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U320", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U321", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U322", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U323", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U324", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U325", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U326", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U327", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U328", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U329", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U330", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U331", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U332", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U333", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U334", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U335", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U336", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U337", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U338", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U339", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U340", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U341", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U342", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U343", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U344", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U345", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U346", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U347", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U348", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U349", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U350", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U351", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U352", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U353", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U354", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U355", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U356", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U357", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U358", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U359", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U360", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U361", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U362", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U363", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U364", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U365", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U366", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U367", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U368", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U369", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U370", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U371", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U372", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U373", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U374", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U375", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U376", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U377", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U378", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U379", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U380", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U381", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U382", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U383", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U384", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U385", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U386", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_4s_12_1_1_U387", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U388", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U389", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U390", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U391", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U392", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U393", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U394", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U395", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U396", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U397", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U398", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U399", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U400", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U401", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U402", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U403", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U404", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U405", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U406", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U407", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U408", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U409", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U410", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U411", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U412", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U413", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U414", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U415", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U416", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U417", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U418", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U419", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U420", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U421", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U422", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U423", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U424", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U425", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U426", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U427", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U428", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U429", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U430", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U431", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U432", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U433", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U434", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U435", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U436", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U437", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U438", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U439", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U440", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U441", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U442", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U443", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U444", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U445", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U446", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U447", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U448", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U449", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U450", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U451", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U452", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U453", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U454", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U455", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U456", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U457", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U458", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U459", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U460", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U461", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U462", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U463", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U464", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U465", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U466", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U467", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U468", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U469", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U470", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U471", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U472", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U473", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U474", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U475", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U476", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U477", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U478", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U479", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U480", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U481", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U482", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U483", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U484", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U485", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U486", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U487", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U488", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U489", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U490", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U491", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U492", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U493", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U494", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U495", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U496", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U497", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U498", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U499", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U500", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U501", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U502", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U503", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U504", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U505", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U506", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U507", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U508", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U509", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U510", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U511", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U512", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U513", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U514", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_4s_12s_13_4_1_U515", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv1x1_v4_512_512_1024_16_16_24_8_4_s {
		fin {Type I LastRead 3 FirstWrite -1}
		s_conv1 {Type O LastRead -1 FirstWrite 3}
		k1 {Type I LastRead 7 FirstWrite -1}
		mul_ln31_1_loc {Type I LastRead 0 FirstWrite -1}
		IC_V_loc {Type I LastRead 0 FirstWrite -1}
		OC_V_loc {Type I LastRead 0 FirstWrite -1}
		skip1 {Type I LastRead 0 FirstWrite -1}
		mul_ln31_1_loc_out {Type O LastRead -1 FirstWrite 0}
		OC_V_loc_out {Type O LastRead -1 FirstWrite 0}
		skip1_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	fin { ap_fifo {  { fin_dout fifo_data 0 128 }  { fin_empty_n fifo_status 0 1 }  { fin_read fifo_update 1 1 } } }
	s_conv1 { ap_fifo {  { s_conv1_din fifo_data 1 512 }  { s_conv1_full_n fifo_status 0 1 }  { s_conv1_write fifo_update 1 1 } } }
	k1 { ap_fifo {  { k1_dout fifo_data 0 1024 }  { k1_empty_n fifo_status 0 1 }  { k1_read fifo_update 1 1 } } }
	mul_ln31_1_loc { ap_fifo {  { mul_ln31_1_loc_dout fifo_data 0 32 }  { mul_ln31_1_loc_empty_n fifo_status 0 1 }  { mul_ln31_1_loc_read fifo_update 1 1 } } }
	IC_V_loc { ap_fifo {  { IC_V_loc_dout fifo_data 0 16 }  { IC_V_loc_empty_n fifo_status 0 1 }  { IC_V_loc_read fifo_update 1 1 } } }
	OC_V_loc { ap_fifo {  { OC_V_loc_dout fifo_data 0 16 }  { OC_V_loc_empty_n fifo_status 0 1 }  { OC_V_loc_read fifo_update 1 1 } } }
	skip1 { ap_fifo {  { skip1_dout fifo_data 0 1 }  { skip1_empty_n fifo_status 0 1 }  { skip1_read fifo_update 1 1 } } }
	mul_ln31_1_loc_out { ap_fifo {  { mul_ln31_1_loc_out_din fifo_data 1 32 }  { mul_ln31_1_loc_out_full_n fifo_status 0 1 }  { mul_ln31_1_loc_out_write fifo_update 1 1 } } }
	OC_V_loc_out { ap_fifo {  { OC_V_loc_out_din fifo_data 1 16 }  { OC_V_loc_out_full_n fifo_status 0 1 }  { OC_V_loc_out_write fifo_update 1 1 } } }
	skip1_out { ap_fifo {  { skip1_out_din fifo_data 1 1 }  { skip1_out_full_n fifo_status 0 1 }  { skip1_out_write fifo_update 1 1 } } }
}
