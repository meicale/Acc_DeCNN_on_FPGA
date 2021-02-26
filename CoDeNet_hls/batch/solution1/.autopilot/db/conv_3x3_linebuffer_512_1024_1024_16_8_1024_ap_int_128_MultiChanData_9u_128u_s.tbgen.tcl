set moduleName conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_s
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
set C_modelName {conv_3x3_linebuffer<512, 1024, 1024, 16, 8, 1024, ap_int<128>, MultiChanData<9u, 128u> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ f1 int 128 regular {fifo 0 volatile }  }
	{ offset_s int 8 regular {fifo 0 volatile }  }
	{ in_layer int 1152 regular {fifo 1 volatile }  }
	{ D_V_loc int 16 regular {fifo 0}  }
	{ OC_V_loc int 16 regular {fifo 0}  }
	{ batch int 32 regular {fifo 0}  }
	{ STRIDE_2 int 1 regular {fifo 0}  }
	{ skip3 int 1 regular {fifo 0}  }
	{ deform int 1 regular {fifo 0}  }
	{ D_V_loc_out int 16 regular {fifo 1}  }
	{ OC_V_loc_out int 16 regular {fifo 1}  }
	{ batch_out int 32 regular {fifo 1}  }
	{ STRIDE_2_out int 1 regular {fifo 1}  }
	{ skip3_out int 1 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "f1", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "offset_s", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_layer", "interface" : "fifo", "bitwidth" : 1152, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_V_loc", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OC_V_loc", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "batch", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "STRIDE_2", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "skip3", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "deform", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "D_V_loc_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OC_V_loc_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "batch_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "STRIDE_2_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip3_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ f1_dout sc_in sc_lv 128 signal 0 } 
	{ f1_empty_n sc_in sc_logic 1 signal 0 } 
	{ f1_read sc_out sc_logic 1 signal 0 } 
	{ offset_s_dout sc_in sc_lv 8 signal 1 } 
	{ offset_s_empty_n sc_in sc_logic 1 signal 1 } 
	{ offset_s_read sc_out sc_logic 1 signal 1 } 
	{ in_layer_din sc_out sc_lv 1152 signal 2 } 
	{ in_layer_full_n sc_in sc_logic 1 signal 2 } 
	{ in_layer_write sc_out sc_logic 1 signal 2 } 
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
	{ deform_dout sc_in sc_lv 1 signal 8 } 
	{ deform_empty_n sc_in sc_logic 1 signal 8 } 
	{ deform_read sc_out sc_logic 1 signal 8 } 
	{ D_V_loc_out_din sc_out sc_lv 16 signal 9 } 
	{ D_V_loc_out_full_n sc_in sc_logic 1 signal 9 } 
	{ D_V_loc_out_write sc_out sc_logic 1 signal 9 } 
	{ OC_V_loc_out_din sc_out sc_lv 16 signal 10 } 
	{ OC_V_loc_out_full_n sc_in sc_logic 1 signal 10 } 
	{ OC_V_loc_out_write sc_out sc_logic 1 signal 10 } 
	{ batch_out_din sc_out sc_lv 32 signal 11 } 
	{ batch_out_full_n sc_in sc_logic 1 signal 11 } 
	{ batch_out_write sc_out sc_logic 1 signal 11 } 
	{ STRIDE_2_out_din sc_out sc_lv 1 signal 12 } 
	{ STRIDE_2_out_full_n sc_in sc_logic 1 signal 12 } 
	{ STRIDE_2_out_write sc_out sc_logic 1 signal 12 } 
	{ skip3_out_din sc_out sc_lv 1 signal 13 } 
	{ skip3_out_full_n sc_in sc_logic 1 signal 13 } 
	{ skip3_out_write sc_out sc_logic 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "f1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "f1", "role": "dout" }} , 
 	{ "name": "f1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f1", "role": "empty_n" }} , 
 	{ "name": "f1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f1", "role": "read" }} , 
 	{ "name": "offset_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "offset_s", "role": "dout" }} , 
 	{ "name": "offset_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_s", "role": "empty_n" }} , 
 	{ "name": "offset_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_s", "role": "read" }} , 
 	{ "name": "in_layer_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1152, "type": "signal", "bundle":{"name": "in_layer", "role": "din" }} , 
 	{ "name": "in_layer_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_layer", "role": "full_n" }} , 
 	{ "name": "in_layer_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_layer", "role": "write" }} , 
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
 	{ "name": "deform_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "deform", "role": "dout" }} , 
 	{ "name": "deform_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "deform", "role": "empty_n" }} , 
 	{ "name": "deform_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "deform", "role": "read" }} , 
 	{ "name": "D_V_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "D_V_loc_out", "role": "din" }} , 
 	{ "name": "D_V_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_V_loc_out", "role": "full_n" }} , 
 	{ "name": "D_V_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_V_loc_out", "role": "write" }} , 
 	{ "name": "OC_V_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OC_V_loc_out", "role": "din" }} , 
 	{ "name": "OC_V_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc_out", "role": "full_n" }} , 
 	{ "name": "OC_V_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc_out", "role": "write" }} , 
 	{ "name": "batch_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_out", "role": "din" }} , 
 	{ "name": "batch_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out", "role": "full_n" }} , 
 	{ "name": "batch_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out", "role": "write" }} , 
 	{ "name": "STRIDE_2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2_out", "role": "din" }} , 
 	{ "name": "STRIDE_2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2_out", "role": "full_n" }} , 
 	{ "name": "STRIDE_2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2_out", "role": "write" }} , 
 	{ "name": "skip3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out", "role": "din" }} , 
 	{ "name": "skip3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out", "role": "full_n" }} , 
 	{ "name": "skip3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_s",
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
			{"Name" : "f1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "f1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "offset_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "offset_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_layer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_layer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "deform", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "deform_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_V_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_V_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_33ns_65_5_1_U671", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32s_5ns_4_36_seq_1_U672", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_17ns_3ns_2_21_seq_1_U673", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_17ns_3ns_2_21_seq_1_U674", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32s_5ns_4_36_seq_1_U675", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_10s_10_1_1_U676", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32s_5ns_4_36_seq_1_U677", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32s_5ns_4_36_seq_1_U678", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_10s_10_1_1_U679", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_10s_10_1_1_U680", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_10s_10_1_1_U681", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_128_1_1_U682", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_128_1_1_U683", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_128_1_1_U684", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_128_1_1_U685", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_128_1_1_U686", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_128_1_1_U687", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_128_1_1_U688", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_128_1_1_U689", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_128_1_1_U690", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_16ns_5ns_16ns_33_4_1_U691", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_s {
		f1 {Type I LastRead 84 FirstWrite -1}
		offset_s {Type I LastRead 84 FirstWrite -1}
		in_layer {Type O LastRead -1 FirstWrite 84}
		D_V_loc {Type I LastRead 0 FirstWrite -1}
		OC_V_loc {Type I LastRead 0 FirstWrite -1}
		batch {Type I LastRead 0 FirstWrite -1}
		STRIDE_2 {Type I LastRead 0 FirstWrite -1}
		skip3 {Type I LastRead 0 FirstWrite -1}
		deform {Type I LastRead 0 FirstWrite -1}
		D_V_loc_out {Type O LastRead -1 FirstWrite 0}
		OC_V_loc_out {Type O LastRead -1 FirstWrite 0}
		batch_out {Type O LastRead -1 FirstWrite 0}
		STRIDE_2_out {Type O LastRead -1 FirstWrite 0}
		skip3_out {Type O LastRead -1 FirstWrite 0}}}

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
	f1 { ap_fifo {  { f1_dout fifo_data 0 128 }  { f1_empty_n fifo_status 0 1 }  { f1_read fifo_update 1 1 } } }
	offset_s { ap_fifo {  { offset_s_dout fifo_data 0 8 }  { offset_s_empty_n fifo_status 0 1 }  { offset_s_read fifo_update 1 1 } } }
	in_layer { ap_fifo {  { in_layer_din fifo_data 1 1152 }  { in_layer_full_n fifo_status 0 1 }  { in_layer_write fifo_update 1 1 } } }
	D_V_loc { ap_fifo {  { D_V_loc_dout fifo_data 0 16 }  { D_V_loc_empty_n fifo_status 0 1 }  { D_V_loc_read fifo_update 1 1 } } }
	OC_V_loc { ap_fifo {  { OC_V_loc_dout fifo_data 0 16 }  { OC_V_loc_empty_n fifo_status 0 1 }  { OC_V_loc_read fifo_update 1 1 } } }
	batch { ap_fifo {  { batch_dout fifo_data 0 32 }  { batch_empty_n fifo_status 0 1 }  { batch_read fifo_update 1 1 } } }
	STRIDE_2 { ap_fifo {  { STRIDE_2_dout fifo_data 0 1 }  { STRIDE_2_empty_n fifo_status 0 1 }  { STRIDE_2_read fifo_update 1 1 } } }
	skip3 { ap_fifo {  { skip3_dout fifo_data 0 1 }  { skip3_empty_n fifo_status 0 1 }  { skip3_read fifo_update 1 1 } } }
	deform { ap_fifo {  { deform_dout fifo_data 0 1 }  { deform_empty_n fifo_status 0 1 }  { deform_read fifo_update 1 1 } } }
	D_V_loc_out { ap_fifo {  { D_V_loc_out_din fifo_data 1 16 }  { D_V_loc_out_full_n fifo_status 0 1 }  { D_V_loc_out_write fifo_update 1 1 } } }
	OC_V_loc_out { ap_fifo {  { OC_V_loc_out_din fifo_data 1 16 }  { OC_V_loc_out_full_n fifo_status 0 1 }  { OC_V_loc_out_write fifo_update 1 1 } } }
	batch_out { ap_fifo {  { batch_out_din fifo_data 1 32 }  { batch_out_full_n fifo_status 0 1 }  { batch_out_write fifo_update 1 1 } } }
	STRIDE_2_out { ap_fifo {  { STRIDE_2_out_din fifo_data 1 1 }  { STRIDE_2_out_full_n fifo_status 0 1 }  { STRIDE_2_out_write fifo_update 1 1 } } }
	skip3_out { ap_fifo {  { skip3_out_din fifo_data 1 1 }  { skip3_out_full_n fifo_status 0 1 }  { skip3_out_write fifo_update 1 1 } } }
}
