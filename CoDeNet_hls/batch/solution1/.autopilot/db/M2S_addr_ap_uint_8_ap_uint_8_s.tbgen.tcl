set moduleName M2S_addr_ap_uint_8_ap_uint_8_s
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
set C_modelName {M2S_addr<ap_uint<8>, ap_uint<8> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem5 int 8 regular {axi_master 0}  }
	{ s_mem int 8 regular {fifo 1 volatile }  }
	{ offsets int 64 regular {fifo 0}  }
	{ batch int 32 regular {fifo 0}  }
	{ CONV_D_loc int 32 regular {fifo 0}  }
	{ deform int 1 regular {fifo 0}  }
	{ skip3 int 1 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem5", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_mem", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "offsets", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "batch", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "CONV_D_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "deform", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "skip3", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem5_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem5_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem5_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem5_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem5_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem5_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem5_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem5_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem5_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem5_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem5_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem5_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem5_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem5_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem5_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem5_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem5_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem5_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem5_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem5_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem5_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem5_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem5_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem5_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem5_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem5_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem5_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem5_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem5_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem5_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem5_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem5_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem5_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem5_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem5_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem5_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_gmem5_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem5_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem5_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem5_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem5_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem5_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem5_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem5_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem5_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_mem_din sc_out sc_lv 8 signal 1 } 
	{ s_mem_full_n sc_in sc_logic 1 signal 1 } 
	{ s_mem_write sc_out sc_logic 1 signal 1 } 
	{ offsets_dout sc_in sc_lv 64 signal 2 } 
	{ offsets_empty_n sc_in sc_logic 1 signal 2 } 
	{ offsets_read sc_out sc_logic 1 signal 2 } 
	{ batch_dout sc_in sc_lv 32 signal 3 } 
	{ batch_empty_n sc_in sc_logic 1 signal 3 } 
	{ batch_read sc_out sc_logic 1 signal 3 } 
	{ CONV_D_loc_dout sc_in sc_lv 32 signal 4 } 
	{ CONV_D_loc_empty_n sc_in sc_logic 1 signal 4 } 
	{ CONV_D_loc_read sc_out sc_logic 1 signal 4 } 
	{ deform_dout sc_in sc_lv 1 signal 5 } 
	{ deform_empty_n sc_in sc_logic 1 signal 5 } 
	{ deform_read sc_out sc_logic 1 signal 5 } 
	{ skip3_dout sc_in sc_lv 1 signal 6 } 
	{ skip3_empty_n sc_in sc_logic 1 signal 6 } 
	{ skip3_read sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem5_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem5_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem5_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem5_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem5_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem5", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem5_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem5_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem5_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem5_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem5_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem5_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem5_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem5_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem5_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem5_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem5_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem5", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem5_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem5_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem5_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WID" }} , 
 	{ "name": "m_axi_gmem5_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem5_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem5_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem5_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem5_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem5_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem5", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem5_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem5_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem5_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem5_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem5_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem5", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem5_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem5_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem5_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem5_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem5_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem5_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem5", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem5_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem5_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RID" }} , 
 	{ "name": "m_axi_gmem5_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem5_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem5_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem5_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem5_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem5_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BID" }} , 
 	{ "name": "m_axi_gmem5_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BUSER" }} , 
 	{ "name": "s_mem_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_mem", "role": "din" }} , 
 	{ "name": "s_mem_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_mem", "role": "full_n" }} , 
 	{ "name": "s_mem_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_mem", "role": "write" }} , 
 	{ "name": "offsets_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "offsets", "role": "dout" }} , 
 	{ "name": "offsets_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offsets", "role": "empty_n" }} , 
 	{ "name": "offsets_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offsets", "role": "read" }} , 
 	{ "name": "batch_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch", "role": "dout" }} , 
 	{ "name": "batch_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "empty_n" }} , 
 	{ "name": "batch_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "read" }} , 
 	{ "name": "CONV_D_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONV_D_loc", "role": "dout" }} , 
 	{ "name": "CONV_D_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONV_D_loc", "role": "empty_n" }} , 
 	{ "name": "CONV_D_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONV_D_loc", "role": "read" }} , 
 	{ "name": "deform_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "deform", "role": "dout" }} , 
 	{ "name": "deform_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "deform", "role": "empty_n" }} , 
 	{ "name": "deform_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "deform", "role": "read" }} , 
 	{ "name": "skip3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "dout" }} , 
 	{ "name": "skip3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "empty_n" }} , 
 	{ "name": "skip3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "M2S_addr_ap_uint_8_ap_uint_8_s",
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
			{"Name" : "gmem5", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem5_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem5_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "s_mem", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_mem_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "offsets", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "offsets_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CONV_D_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "CONV_D_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "deform", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "deform_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U54", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_5_1_U55", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	M2S_addr_ap_uint_8_ap_uint_8_s {
		gmem5 {Type I LastRead 20 FirstWrite -1}
		s_mem {Type O LastRead -1 FirstWrite 21}
		offsets {Type I LastRead 0 FirstWrite -1}
		batch {Type I LastRead 0 FirstWrite -1}
		CONV_D_loc {Type I LastRead 0 FirstWrite -1}
		deform {Type I LastRead 0 FirstWrite -1}
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
	gmem5 { m_axi {  { m_axi_gmem5_AWVALID VALID 1 1 }  { m_axi_gmem5_AWREADY READY 0 1 }  { m_axi_gmem5_AWADDR ADDR 1 64 }  { m_axi_gmem5_AWID ID 1 1 }  { m_axi_gmem5_AWLEN LEN 1 32 }  { m_axi_gmem5_AWSIZE SIZE 1 3 }  { m_axi_gmem5_AWBURST BURST 1 2 }  { m_axi_gmem5_AWLOCK LOCK 1 2 }  { m_axi_gmem5_AWCACHE CACHE 1 4 }  { m_axi_gmem5_AWPROT PROT 1 3 }  { m_axi_gmem5_AWQOS QOS 1 4 }  { m_axi_gmem5_AWREGION REGION 1 4 }  { m_axi_gmem5_AWUSER USER 1 1 }  { m_axi_gmem5_WVALID VALID 1 1 }  { m_axi_gmem5_WREADY READY 0 1 }  { m_axi_gmem5_WDATA DATA 1 8 }  { m_axi_gmem5_WSTRB STRB 1 1 }  { m_axi_gmem5_WLAST LAST 1 1 }  { m_axi_gmem5_WID ID 1 1 }  { m_axi_gmem5_WUSER USER 1 1 }  { m_axi_gmem5_ARVALID VALID 1 1 }  { m_axi_gmem5_ARREADY READY 0 1 }  { m_axi_gmem5_ARADDR ADDR 1 64 }  { m_axi_gmem5_ARID ID 1 1 }  { m_axi_gmem5_ARLEN LEN 1 32 }  { m_axi_gmem5_ARSIZE SIZE 1 3 }  { m_axi_gmem5_ARBURST BURST 1 2 }  { m_axi_gmem5_ARLOCK LOCK 1 2 }  { m_axi_gmem5_ARCACHE CACHE 1 4 }  { m_axi_gmem5_ARPROT PROT 1 3 }  { m_axi_gmem5_ARQOS QOS 1 4 }  { m_axi_gmem5_ARREGION REGION 1 4 }  { m_axi_gmem5_ARUSER USER 1 1 }  { m_axi_gmem5_RVALID VALID 0 1 }  { m_axi_gmem5_RREADY READY 1 1 }  { m_axi_gmem5_RDATA DATA 0 8 }  { m_axi_gmem5_RLAST LAST 0 1 }  { m_axi_gmem5_RID ID 0 1 }  { m_axi_gmem5_RUSER USER 0 1 }  { m_axi_gmem5_RRESP RESP 0 2 }  { m_axi_gmem5_BVALID VALID 0 1 }  { m_axi_gmem5_BREADY READY 1 1 }  { m_axi_gmem5_BRESP RESP 0 2 }  { m_axi_gmem5_BID ID 0 1 }  { m_axi_gmem5_BUSER USER 0 1 } } }
	s_mem { ap_fifo {  { s_mem_din fifo_data 1 8 }  { s_mem_full_n fifo_status 0 1 }  { s_mem_write fifo_update 1 1 } } }
	offsets { ap_fifo {  { offsets_dout fifo_data 0 64 }  { offsets_empty_n fifo_status 0 1 }  { offsets_read fifo_update 1 1 } } }
	batch { ap_fifo {  { batch_dout fifo_data 0 32 }  { batch_empty_n fifo_status 0 1 }  { batch_read fifo_update 1 1 } } }
	CONV_D_loc { ap_fifo {  { CONV_D_loc_dout fifo_data 0 32 }  { CONV_D_loc_empty_n fifo_status 0 1 }  { CONV_D_loc_read fifo_update 1 1 } } }
	deform { ap_fifo {  { deform_dout fifo_data 0 1 }  { deform_empty_n fifo_status 0 1 }  { deform_read fifo_update 1 1 } } }
	skip3 { ap_fifo {  { skip3_dout fifo_data 0 1 }  { skip3_empty_n fifo_status 0 1 }  { skip3_read fifo_update 1 1 } } }
}
