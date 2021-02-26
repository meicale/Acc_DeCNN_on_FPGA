set moduleName Loop_VITIS_LOOP_88_1_proc
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
set C_modelName {Loop_VITIS_LOOP_88_1_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ OC_V_loc int 16 regular {fifo 0}  }
	{ k3_buffer_V_0 int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ k3_buffer_V_1 int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ k3_buffer_V_2 int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ k3_buffer_V_3 int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ k3_buffer_V_4 int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ k3_buffer_V_5 int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ k3_buffer_V_6 int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ k3_buffer_V_7 int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ k3_buffer_V_8 int 64 regular {array 64 { 0 3 } 0 1 }  }
	{ k0_3 int 64 regular {fifo 0}  }
	{ gmem3 int 64 regular {axi_master 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "OC_V_loc", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "k3_buffer_V_0", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k3_buffer_V_1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k3_buffer_V_2", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k3_buffer_V_3", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k3_buffer_V_4", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k3_buffer_V_5", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k3_buffer_V_6", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k3_buffer_V_7", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k3_buffer_V_8", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k0_3", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 94
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ OC_V_loc_dout sc_in sc_lv 16 signal 0 } 
	{ OC_V_loc_empty_n sc_in sc_logic 1 signal 0 } 
	{ OC_V_loc_read sc_out sc_logic 1 signal 0 } 
	{ k3_buffer_V_0_address0 sc_out sc_lv 6 signal 1 } 
	{ k3_buffer_V_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ k3_buffer_V_0_we0 sc_out sc_logic 1 signal 1 } 
	{ k3_buffer_V_0_d0 sc_out sc_lv 64 signal 1 } 
	{ k3_buffer_V_1_address0 sc_out sc_lv 6 signal 2 } 
	{ k3_buffer_V_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ k3_buffer_V_1_we0 sc_out sc_logic 1 signal 2 } 
	{ k3_buffer_V_1_d0 sc_out sc_lv 64 signal 2 } 
	{ k3_buffer_V_2_address0 sc_out sc_lv 6 signal 3 } 
	{ k3_buffer_V_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ k3_buffer_V_2_we0 sc_out sc_logic 1 signal 3 } 
	{ k3_buffer_V_2_d0 sc_out sc_lv 64 signal 3 } 
	{ k3_buffer_V_3_address0 sc_out sc_lv 6 signal 4 } 
	{ k3_buffer_V_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ k3_buffer_V_3_we0 sc_out sc_logic 1 signal 4 } 
	{ k3_buffer_V_3_d0 sc_out sc_lv 64 signal 4 } 
	{ k3_buffer_V_4_address0 sc_out sc_lv 6 signal 5 } 
	{ k3_buffer_V_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ k3_buffer_V_4_we0 sc_out sc_logic 1 signal 5 } 
	{ k3_buffer_V_4_d0 sc_out sc_lv 64 signal 5 } 
	{ k3_buffer_V_5_address0 sc_out sc_lv 6 signal 6 } 
	{ k3_buffer_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ k3_buffer_V_5_we0 sc_out sc_logic 1 signal 6 } 
	{ k3_buffer_V_5_d0 sc_out sc_lv 64 signal 6 } 
	{ k3_buffer_V_6_address0 sc_out sc_lv 6 signal 7 } 
	{ k3_buffer_V_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ k3_buffer_V_6_we0 sc_out sc_logic 1 signal 7 } 
	{ k3_buffer_V_6_d0 sc_out sc_lv 64 signal 7 } 
	{ k3_buffer_V_7_address0 sc_out sc_lv 6 signal 8 } 
	{ k3_buffer_V_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ k3_buffer_V_7_we0 sc_out sc_logic 1 signal 8 } 
	{ k3_buffer_V_7_d0 sc_out sc_lv 64 signal 8 } 
	{ k3_buffer_V_8_address0 sc_out sc_lv 6 signal 9 } 
	{ k3_buffer_V_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ k3_buffer_V_8_we0 sc_out sc_logic 1 signal 9 } 
	{ k3_buffer_V_8_d0 sc_out sc_lv 64 signal 9 } 
	{ k0_3_dout sc_in sc_lv 64 signal 10 } 
	{ k0_3_empty_n sc_in sc_logic 1 signal 10 } 
	{ k0_3_read sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem3_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem3_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem3_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_gmem3_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem3_AWLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_gmem3_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_gmem3_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_gmem3_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_gmem3_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem3_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_gmem3_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem3_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem3_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem3_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem3_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem3_WDATA sc_out sc_lv 64 signal 11 } 
	{ m_axi_gmem3_WSTRB sc_out sc_lv 8 signal 11 } 
	{ m_axi_gmem3_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem3_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem3_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem3_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem3_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem3_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_gmem3_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem3_ARLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_gmem3_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_gmem3_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_gmem3_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_gmem3_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem3_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_gmem3_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem3_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem3_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem3_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem3_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem3_RDATA sc_in sc_lv 64 signal 11 } 
	{ m_axi_gmem3_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem3_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_gmem3_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_gmem3_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_gmem3_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem3_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem3_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_gmem3_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_gmem3_BUSER sc_in sc_lv 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "OC_V_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OC_V_loc", "role": "dout" }} , 
 	{ "name": "OC_V_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc", "role": "empty_n" }} , 
 	{ "name": "OC_V_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_loc", "role": "read" }} , 
 	{ "name": "k3_buffer_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_0", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_0", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_0", "role": "we0" }} , 
 	{ "name": "k3_buffer_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_0", "role": "d0" }} , 
 	{ "name": "k3_buffer_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_1", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_1", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_1", "role": "we0" }} , 
 	{ "name": "k3_buffer_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_1", "role": "d0" }} , 
 	{ "name": "k3_buffer_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_2", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_2", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_2", "role": "we0" }} , 
 	{ "name": "k3_buffer_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_2", "role": "d0" }} , 
 	{ "name": "k3_buffer_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_3", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_3", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_3", "role": "we0" }} , 
 	{ "name": "k3_buffer_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_3", "role": "d0" }} , 
 	{ "name": "k3_buffer_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_4", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_4", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_4", "role": "we0" }} , 
 	{ "name": "k3_buffer_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_4", "role": "d0" }} , 
 	{ "name": "k3_buffer_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_5", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_5", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_5", "role": "we0" }} , 
 	{ "name": "k3_buffer_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_5", "role": "d0" }} , 
 	{ "name": "k3_buffer_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_6", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_6", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_6", "role": "we0" }} , 
 	{ "name": "k3_buffer_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_6", "role": "d0" }} , 
 	{ "name": "k3_buffer_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_7", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_7", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_7", "role": "we0" }} , 
 	{ "name": "k3_buffer_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_7", "role": "d0" }} , 
 	{ "name": "k3_buffer_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k3_buffer_V_8", "role": "address0" }} , 
 	{ "name": "k3_buffer_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_8", "role": "ce0" }} , 
 	{ "name": "k3_buffer_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k3_buffer_V_8", "role": "we0" }} , 
 	{ "name": "k3_buffer_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k3_buffer_V_8", "role": "d0" }} , 
 	{ "name": "k0_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k0_3", "role": "dout" }} , 
 	{ "name": "k0_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k0_3", "role": "empty_n" }} , 
 	{ "name": "k0_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k0_3", "role": "read" }} , 
 	{ "name": "m_axi_gmem3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Loop_VITIS_LOOP_88_1_proc",
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
			{"Name" : "OC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k3_buffer_V_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k3_buffer_V_8", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k0_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k0_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_R", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_VITIS_LOOP_88_1_proc {
		OC_V_loc {Type I LastRead 0 FirstWrite -1}
		k3_buffer_V_0 {Type O LastRead -1 FirstWrite 10}
		k3_buffer_V_1 {Type O LastRead -1 FirstWrite 10}
		k3_buffer_V_2 {Type O LastRead -1 FirstWrite 10}
		k3_buffer_V_3 {Type O LastRead -1 FirstWrite 10}
		k3_buffer_V_4 {Type O LastRead -1 FirstWrite 10}
		k3_buffer_V_5 {Type O LastRead -1 FirstWrite 10}
		k3_buffer_V_6 {Type O LastRead -1 FirstWrite 10}
		k3_buffer_V_7 {Type O LastRead -1 FirstWrite 10}
		k3_buffer_V_8 {Type O LastRead -1 FirstWrite 10}
		k0_3 {Type I LastRead 0 FirstWrite -1}
		gmem3 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	OC_V_loc { ap_fifo {  { OC_V_loc_dout fifo_data 0 16 }  { OC_V_loc_empty_n fifo_status 0 1 }  { OC_V_loc_read fifo_update 1 1 } } }
	k3_buffer_V_0 { ap_memory {  { k3_buffer_V_0_address0 mem_address 1 6 }  { k3_buffer_V_0_ce0 mem_ce 1 1 }  { k3_buffer_V_0_we0 mem_we 1 1 }  { k3_buffer_V_0_d0 mem_din 1 64 } } }
	k3_buffer_V_1 { ap_memory {  { k3_buffer_V_1_address0 mem_address 1 6 }  { k3_buffer_V_1_ce0 mem_ce 1 1 }  { k3_buffer_V_1_we0 mem_we 1 1 }  { k3_buffer_V_1_d0 mem_din 1 64 } } }
	k3_buffer_V_2 { ap_memory {  { k3_buffer_V_2_address0 mem_address 1 6 }  { k3_buffer_V_2_ce0 mem_ce 1 1 }  { k3_buffer_V_2_we0 mem_we 1 1 }  { k3_buffer_V_2_d0 mem_din 1 64 } } }
	k3_buffer_V_3 { ap_memory {  { k3_buffer_V_3_address0 mem_address 1 6 }  { k3_buffer_V_3_ce0 mem_ce 1 1 }  { k3_buffer_V_3_we0 mem_we 1 1 }  { k3_buffer_V_3_d0 mem_din 1 64 } } }
	k3_buffer_V_4 { ap_memory {  { k3_buffer_V_4_address0 mem_address 1 6 }  { k3_buffer_V_4_ce0 mem_ce 1 1 }  { k3_buffer_V_4_we0 mem_we 1 1 }  { k3_buffer_V_4_d0 mem_din 1 64 } } }
	k3_buffer_V_5 { ap_memory {  { k3_buffer_V_5_address0 mem_address 1 6 }  { k3_buffer_V_5_ce0 mem_ce 1 1 }  { k3_buffer_V_5_we0 mem_we 1 1 }  { k3_buffer_V_5_d0 mem_din 1 64 } } }
	k3_buffer_V_6 { ap_memory {  { k3_buffer_V_6_address0 mem_address 1 6 }  { k3_buffer_V_6_ce0 mem_ce 1 1 }  { k3_buffer_V_6_we0 mem_we 1 1 }  { k3_buffer_V_6_d0 mem_din 1 64 } } }
	k3_buffer_V_7 { ap_memory {  { k3_buffer_V_7_address0 mem_address 1 6 }  { k3_buffer_V_7_ce0 mem_ce 1 1 }  { k3_buffer_V_7_we0 mem_we 1 1 }  { k3_buffer_V_7_d0 mem_din 1 64 } } }
	k3_buffer_V_8 { ap_memory {  { k3_buffer_V_8_address0 mem_address 1 6 }  { k3_buffer_V_8_ce0 mem_ce 1 1 }  { k3_buffer_V_8_we0 mem_we 1 1 }  { k3_buffer_V_8_d0 mem_din 1 64 } } }
	k0_3 { ap_fifo {  { k0_3_dout fifo_data 0 64 }  { k0_3_empty_n fifo_status 0 1 }  { k0_3_read fifo_update 1 1 } } }
	gmem3 { m_axi {  { m_axi_gmem3_AWVALID VALID 1 1 }  { m_axi_gmem3_AWREADY READY 0 1 }  { m_axi_gmem3_AWADDR ADDR 1 64 }  { m_axi_gmem3_AWID ID 1 1 }  { m_axi_gmem3_AWLEN LEN 1 32 }  { m_axi_gmem3_AWSIZE SIZE 1 3 }  { m_axi_gmem3_AWBURST BURST 1 2 }  { m_axi_gmem3_AWLOCK LOCK 1 2 }  { m_axi_gmem3_AWCACHE CACHE 1 4 }  { m_axi_gmem3_AWPROT PROT 1 3 }  { m_axi_gmem3_AWQOS QOS 1 4 }  { m_axi_gmem3_AWREGION REGION 1 4 }  { m_axi_gmem3_AWUSER USER 1 1 }  { m_axi_gmem3_WVALID VALID 1 1 }  { m_axi_gmem3_WREADY READY 0 1 }  { m_axi_gmem3_WDATA DATA 1 64 }  { m_axi_gmem3_WSTRB STRB 1 8 }  { m_axi_gmem3_WLAST LAST 1 1 }  { m_axi_gmem3_WID ID 1 1 }  { m_axi_gmem3_WUSER USER 1 1 }  { m_axi_gmem3_ARVALID VALID 1 1 }  { m_axi_gmem3_ARREADY READY 0 1 }  { m_axi_gmem3_ARADDR ADDR 1 64 }  { m_axi_gmem3_ARID ID 1 1 }  { m_axi_gmem3_ARLEN LEN 1 32 }  { m_axi_gmem3_ARSIZE SIZE 1 3 }  { m_axi_gmem3_ARBURST BURST 1 2 }  { m_axi_gmem3_ARLOCK LOCK 1 2 }  { m_axi_gmem3_ARCACHE CACHE 1 4 }  { m_axi_gmem3_ARPROT PROT 1 3 }  { m_axi_gmem3_ARQOS QOS 1 4 }  { m_axi_gmem3_ARREGION REGION 1 4 }  { m_axi_gmem3_ARUSER USER 1 1 }  { m_axi_gmem3_RVALID VALID 0 1 }  { m_axi_gmem3_RREADY READY 1 1 }  { m_axi_gmem3_RDATA DATA 0 64 }  { m_axi_gmem3_RLAST LAST 0 1 }  { m_axi_gmem3_RID ID 0 1 }  { m_axi_gmem3_RUSER USER 0 1 }  { m_axi_gmem3_RRESP RESP 0 2 }  { m_axi_gmem3_BVALID VALID 0 1 }  { m_axi_gmem3_BREADY READY 1 1 }  { m_axi_gmem3_BRESP RESP 0 2 }  { m_axi_gmem3_BID ID 0 1 }  { m_axi_gmem3_BUSER USER 0 1 } } }
}
