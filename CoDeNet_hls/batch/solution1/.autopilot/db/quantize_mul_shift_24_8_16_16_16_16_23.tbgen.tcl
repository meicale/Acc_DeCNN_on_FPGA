set moduleName quantize_mul_shift_24_8_16_16_16_16_23
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
set C_modelName {quantize_mul_shift<24, 8, 16, 16, 16, 16>23}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_conv1 int 512 regular {fifo 0 volatile }  }
	{ f1 int 128 regular {fifo 1 volatile }  }
	{ s_scale int 256 regular {fifo 0 volatile }  }
	{ s_bias int 256 regular {fifo 0 volatile }  }
	{ mul_ln31_1_loc int 32 regular {fifo 0}  }
	{ OC_V_loc int 16 regular {fifo 0}  }
	{ skip1 int 1 regular {fifo 0}  }
	{ relu1 int 1 regular {fifo 0}  }
	{ OC_V_loc_out int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_conv1", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "f1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_scale", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "s_bias", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln31_1_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OC_V_loc", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "skip1", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "relu1", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "OC_V_loc_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_conv1_dout sc_in sc_lv 512 signal 0 } 
	{ s_conv1_empty_n sc_in sc_logic 1 signal 0 } 
	{ s_conv1_read sc_out sc_logic 1 signal 0 } 
	{ f1_din sc_out sc_lv 128 signal 1 } 
	{ f1_full_n sc_in sc_logic 1 signal 1 } 
	{ f1_write sc_out sc_logic 1 signal 1 } 
	{ s_scale_dout sc_in sc_lv 256 signal 2 } 
	{ s_scale_empty_n sc_in sc_logic 1 signal 2 } 
	{ s_scale_read sc_out sc_logic 1 signal 2 } 
	{ s_bias_dout sc_in sc_lv 256 signal 3 } 
	{ s_bias_empty_n sc_in sc_logic 1 signal 3 } 
	{ s_bias_read sc_out sc_logic 1 signal 3 } 
	{ mul_ln31_1_loc_dout sc_in sc_lv 32 signal 4 } 
	{ mul_ln31_1_loc_empty_n sc_in sc_logic 1 signal 4 } 
	{ mul_ln31_1_loc_read sc_out sc_logic 1 signal 4 } 
	{ OC_V_loc_dout sc_in sc_lv 16 signal 5 } 
	{ OC_V_loc_empty_n sc_in sc_logic 1 signal 5 } 
	{ OC_V_loc_read sc_out sc_logic 1 signal 5 } 
	{ skip1_dout sc_in sc_lv 1 signal 6 } 
	{ skip1_empty_n sc_in sc_logic 1 signal 6 } 
	{ skip1_read sc_out sc_logic 1 signal 6 } 
	{ relu1_dout sc_in sc_lv 1 signal 7 } 
	{ relu1_empty_n sc_in sc_logic 1 signal 7 } 
	{ relu1_read sc_out sc_logic 1 signal 7 } 
	{ OC_V_loc_out_din sc_out sc_lv 16 signal 8 } 
	{ OC_V_loc_out_full_n sc_in sc_logic 1 signal 8 } 
	{ OC_V_loc_out_write sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_conv1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_conv1", "role": "dout" }} , 
 	{ "name": "s_conv1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_conv1", "role": "empty_n" }} , 
 	{ "name": "s_conv1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_conv1", "role": "read" }} , 
 	{ "name": "f1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "f1", "role": "din" }} , 
 	{ "name": "f1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f1", "role": "full_n" }} , 
 	{ "name": "f1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f1", "role": "write" }} , 
 	{ "name": "s_scale_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "s_scale", "role": "dout" }} , 
 	{ "name": "s_scale_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_scale", "role": "empty_n" }} , 
 	{ "name": "s_scale_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_scale", "role": "read" }} , 
 	{ "name": "s_bias_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "s_bias", "role": "dout" }} , 
 	{ "name": "s_bias_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_bias", "role": "empty_n" }} , 
 	{ "name": "s_bias_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_bias", "role": "read" }} , 
 	{ "name": "mul_ln31_1_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln31_1_loc", "role": "dout" }} , 
 	{ "name": "mul_ln31_1_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_loc", "role": "empty_n" }} , 
 	{ "name": "mul_ln31_1_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_loc", "role": "read" }} , 
 	{ "name": "OC_V_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OC_V_loc", "role": "dout" }} , 
 	{ "name": "OC_V_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc", "role": "empty_n" }} , 
 	{ "name": "OC_V_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc", "role": "read" }} , 
 	{ "name": "skip1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "dout" }} , 
 	{ "name": "skip1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "empty_n" }} , 
 	{ "name": "skip1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "read" }} , 
 	{ "name": "relu1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "relu1", "role": "dout" }} , 
 	{ "name": "relu1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "relu1", "role": "empty_n" }} , 
 	{ "name": "relu1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "relu1", "role": "read" }} , 
 	{ "name": "OC_V_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OC_V_loc_out", "role": "din" }} , 
 	{ "name": "OC_V_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc_out", "role": "full_n" }} , 
 	{ "name": "OC_V_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "quantize_mul_shift_24_8_16_16_16_16_23",
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
			{"Name" : "s_conv1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_conv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "f1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "f1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_scale", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_scale_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_bias", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_bias_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "relu1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "relu1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_12ns_44_5_1_U529", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U530", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U531", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U532", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U533", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U534", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U535", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U536", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U537", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U538", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U539", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U540", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U541", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U542", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U543", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U544", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_24s_16s_17ns_40_4_1_U545", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	quantize_mul_shift_24_8_16_16_16_16_23 {
		s_conv1 {Type I LastRead 7 FirstWrite -1}
		f1 {Type O LastRead -1 FirstWrite 7}
		s_scale {Type I LastRead 7 FirstWrite -1}
		s_bias {Type I LastRead 7 FirstWrite -1}
		mul_ln31_1_loc {Type I LastRead 0 FirstWrite -1}
		OC_V_loc {Type I LastRead 0 FirstWrite -1}
		skip1 {Type I LastRead 0 FirstWrite -1}
		relu1 {Type I LastRead 0 FirstWrite -1}
		OC_V_loc_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_conv1 { ap_fifo {  { s_conv1_dout fifo_data 0 512 }  { s_conv1_empty_n fifo_status 0 1 }  { s_conv1_read fifo_update 1 1 } } }
	f1 { ap_fifo {  { f1_din fifo_data 1 128 }  { f1_full_n fifo_status 0 1 }  { f1_write fifo_update 1 1 } } }
	s_scale { ap_fifo {  { s_scale_dout fifo_data 0 256 }  { s_scale_empty_n fifo_status 0 1 }  { s_scale_read fifo_update 1 1 } } }
	s_bias { ap_fifo {  { s_bias_dout fifo_data 0 256 }  { s_bias_empty_n fifo_status 0 1 }  { s_bias_read fifo_update 1 1 } } }
	mul_ln31_1_loc { ap_fifo {  { mul_ln31_1_loc_dout fifo_data 0 32 }  { mul_ln31_1_loc_empty_n fifo_status 0 1 }  { mul_ln31_1_loc_read fifo_update 1 1 } } }
	OC_V_loc { ap_fifo {  { OC_V_loc_dout fifo_data 0 16 }  { OC_V_loc_empty_n fifo_status 0 1 }  { OC_V_loc_read fifo_update 1 1 } } }
	skip1 { ap_fifo {  { skip1_dout fifo_data 0 1 }  { skip1_empty_n fifo_status 0 1 }  { skip1_read fifo_update 1 1 } } }
	relu1 { ap_fifo {  { relu1_dout fifo_data 0 1 }  { relu1_empty_n fifo_status 0 1 }  { relu1_read fifo_update 1 1 } } }
	OC_V_loc_out { ap_fifo {  { OC_V_loc_out_din fifo_data 1 16 }  { OC_V_loc_out_full_n fifo_status 0 1 }  { OC_V_loc_out_write fifo_update 1 1 } } }
}
