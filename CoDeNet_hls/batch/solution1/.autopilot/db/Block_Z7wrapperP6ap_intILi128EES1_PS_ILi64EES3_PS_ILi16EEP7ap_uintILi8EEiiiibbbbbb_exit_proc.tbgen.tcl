set moduleName Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit_proc
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
set C_modelName {Block__Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb.exit_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ D_V_loc int 16 regular {fifo 0}  }
	{ STRIDE_2 int 1 regular {fifo 0}  }
	{ batch int 32 regular {fifo 0}  }
	{ mul_ln93_1_loc_out int 32 regular {fifo 1}  }
	{ mul_ln93_1_loc_out1 int 32 regular {fifo 1}  }
	{ mul_ln93_1_loc_out2 int 32 regular {fifo 1}  }
	{ mul_ln93_1_loc_out3 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "D_V_loc", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "STRIDE_2", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "batch", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln93_1_loc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mul_ln93_1_loc_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mul_ln93_1_loc_out2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mul_ln93_1_loc_out3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ D_V_loc_dout sc_in sc_lv 16 signal 0 } 
	{ D_V_loc_empty_n sc_in sc_logic 1 signal 0 } 
	{ D_V_loc_read sc_out sc_logic 1 signal 0 } 
	{ STRIDE_2_dout sc_in sc_lv 1 signal 1 } 
	{ STRIDE_2_empty_n sc_in sc_logic 1 signal 1 } 
	{ STRIDE_2_read sc_out sc_logic 1 signal 1 } 
	{ batch_dout sc_in sc_lv 32 signal 2 } 
	{ batch_empty_n sc_in sc_logic 1 signal 2 } 
	{ batch_read sc_out sc_logic 1 signal 2 } 
	{ mul_ln93_1_loc_out_din sc_out sc_lv 32 signal 3 } 
	{ mul_ln93_1_loc_out_full_n sc_in sc_logic 1 signal 3 } 
	{ mul_ln93_1_loc_out_write sc_out sc_logic 1 signal 3 } 
	{ mul_ln93_1_loc_out1_din sc_out sc_lv 32 signal 4 } 
	{ mul_ln93_1_loc_out1_full_n sc_in sc_logic 1 signal 4 } 
	{ mul_ln93_1_loc_out1_write sc_out sc_logic 1 signal 4 } 
	{ mul_ln93_1_loc_out2_din sc_out sc_lv 32 signal 5 } 
	{ mul_ln93_1_loc_out2_full_n sc_in sc_logic 1 signal 5 } 
	{ mul_ln93_1_loc_out2_write sc_out sc_logic 1 signal 5 } 
	{ mul_ln93_1_loc_out3_din sc_out sc_lv 32 signal 6 } 
	{ mul_ln93_1_loc_out3_full_n sc_in sc_logic 1 signal 6 } 
	{ mul_ln93_1_loc_out3_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "D_V_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "D_V_loc", "role": "dout" }} , 
 	{ "name": "D_V_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_V_loc", "role": "empty_n" }} , 
 	{ "name": "D_V_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_V_loc", "role": "read" }} , 
 	{ "name": "STRIDE_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2", "role": "dout" }} , 
 	{ "name": "STRIDE_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2", "role": "empty_n" }} , 
 	{ "name": "STRIDE_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2", "role": "read" }} , 
 	{ "name": "batch_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch", "role": "dout" }} , 
 	{ "name": "batch_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "empty_n" }} , 
 	{ "name": "batch_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "read" }} , 
 	{ "name": "mul_ln93_1_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln93_1_loc_out", "role": "din" }} , 
 	{ "name": "mul_ln93_1_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln93_1_loc_out", "role": "full_n" }} , 
 	{ "name": "mul_ln93_1_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln93_1_loc_out", "role": "write" }} , 
 	{ "name": "mul_ln93_1_loc_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln93_1_loc_out1", "role": "din" }} , 
 	{ "name": "mul_ln93_1_loc_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln93_1_loc_out1", "role": "full_n" }} , 
 	{ "name": "mul_ln93_1_loc_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln93_1_loc_out1", "role": "write" }} , 
 	{ "name": "mul_ln93_1_loc_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln93_1_loc_out2", "role": "din" }} , 
 	{ "name": "mul_ln93_1_loc_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln93_1_loc_out2", "role": "full_n" }} , 
 	{ "name": "mul_ln93_1_loc_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln93_1_loc_out2", "role": "write" }} , 
 	{ "name": "mul_ln93_1_loc_out3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln93_1_loc_out3", "role": "din" }} , 
 	{ "name": "mul_ln93_1_loc_out3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln93_1_loc_out3", "role": "full_n" }} , 
 	{ "name": "mul_ln93_1_loc_out3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln93_1_loc_out3", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "D_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln93_1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln93_1_loc_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln93_1_loc_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln93_1_loc_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_out3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U568", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U569", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit_proc {
		D_V_loc {Type I LastRead 0 FirstWrite -1}
		STRIDE_2 {Type I LastRead 0 FirstWrite -1}
		batch {Type I LastRead 0 FirstWrite -1}
		mul_ln93_1_loc_out {Type O LastRead -1 FirstWrite 10}
		mul_ln93_1_loc_out1 {Type O LastRead -1 FirstWrite 10}
		mul_ln93_1_loc_out2 {Type O LastRead -1 FirstWrite 10}
		mul_ln93_1_loc_out3 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	D_V_loc { ap_fifo {  { D_V_loc_dout fifo_data 0 16 }  { D_V_loc_empty_n fifo_status 0 1 }  { D_V_loc_read fifo_update 1 1 } } }
	STRIDE_2 { ap_fifo {  { STRIDE_2_dout fifo_data 0 1 }  { STRIDE_2_empty_n fifo_status 0 1 }  { STRIDE_2_read fifo_update 1 1 } } }
	batch { ap_fifo {  { batch_dout fifo_data 0 32 }  { batch_empty_n fifo_status 0 1 }  { batch_read fifo_update 1 1 } } }
	mul_ln93_1_loc_out { ap_fifo {  { mul_ln93_1_loc_out_din fifo_data 1 32 }  { mul_ln93_1_loc_out_full_n fifo_status 0 1 }  { mul_ln93_1_loc_out_write fifo_update 1 1 } } }
	mul_ln93_1_loc_out1 { ap_fifo {  { mul_ln93_1_loc_out1_din fifo_data 1 32 }  { mul_ln93_1_loc_out1_full_n fifo_status 0 1 }  { mul_ln93_1_loc_out1_write fifo_update 1 1 } } }
	mul_ln93_1_loc_out2 { ap_fifo {  { mul_ln93_1_loc_out2_din fifo_data 1 32 }  { mul_ln93_1_loc_out2_full_n fifo_status 0 1 }  { mul_ln93_1_loc_out2_write fifo_update 1 1 } } }
	mul_ln93_1_loc_out3 { ap_fifo {  { mul_ln93_1_loc_out3_din fifo_data 1 32 }  { mul_ln93_1_loc_out3_full_n fifo_status 0 1 }  { mul_ln93_1_loc_out3_write fifo_update 1 1 } } }
}
