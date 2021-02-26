set moduleName Loop_VITIS_LOOP_38_1_proc
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
set C_modelName {Loop_VITIS_LOOP_38_1_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ ret_V_1_loc int 32 regular {fifo 0}  }
	{ k1_buffer_V_0 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_1 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_2 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_3 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_4 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_5 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_6 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_7 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_8 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_9 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_10 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_11 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_12 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_13 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_14 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k1_buffer_V_15 int 64 regular {array 2048 { 0 3 } 0 1 }  }
	{ k0_1 int 64 regular {fifo 0}  }
	{ gmem2 int 64 regular {axi_master 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ret_V_1_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k1_buffer_V_0", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_2", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_3", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_4", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_5", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_6", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_7", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_8", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_9", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_10", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_11", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_12", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_13", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_14", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k1_buffer_V_15", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k0_1", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 122
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ret_V_1_loc_dout sc_in sc_lv 32 signal 0 } 
	{ ret_V_1_loc_empty_n sc_in sc_logic 1 signal 0 } 
	{ ret_V_1_loc_read sc_out sc_logic 1 signal 0 } 
	{ k1_buffer_V_0_address0 sc_out sc_lv 11 signal 1 } 
	{ k1_buffer_V_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ k1_buffer_V_0_we0 sc_out sc_logic 1 signal 1 } 
	{ k1_buffer_V_0_d0 sc_out sc_lv 64 signal 1 } 
	{ k1_buffer_V_1_address0 sc_out sc_lv 11 signal 2 } 
	{ k1_buffer_V_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ k1_buffer_V_1_we0 sc_out sc_logic 1 signal 2 } 
	{ k1_buffer_V_1_d0 sc_out sc_lv 64 signal 2 } 
	{ k1_buffer_V_2_address0 sc_out sc_lv 11 signal 3 } 
	{ k1_buffer_V_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ k1_buffer_V_2_we0 sc_out sc_logic 1 signal 3 } 
	{ k1_buffer_V_2_d0 sc_out sc_lv 64 signal 3 } 
	{ k1_buffer_V_3_address0 sc_out sc_lv 11 signal 4 } 
	{ k1_buffer_V_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ k1_buffer_V_3_we0 sc_out sc_logic 1 signal 4 } 
	{ k1_buffer_V_3_d0 sc_out sc_lv 64 signal 4 } 
	{ k1_buffer_V_4_address0 sc_out sc_lv 11 signal 5 } 
	{ k1_buffer_V_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ k1_buffer_V_4_we0 sc_out sc_logic 1 signal 5 } 
	{ k1_buffer_V_4_d0 sc_out sc_lv 64 signal 5 } 
	{ k1_buffer_V_5_address0 sc_out sc_lv 11 signal 6 } 
	{ k1_buffer_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ k1_buffer_V_5_we0 sc_out sc_logic 1 signal 6 } 
	{ k1_buffer_V_5_d0 sc_out sc_lv 64 signal 6 } 
	{ k1_buffer_V_6_address0 sc_out sc_lv 11 signal 7 } 
	{ k1_buffer_V_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ k1_buffer_V_6_we0 sc_out sc_logic 1 signal 7 } 
	{ k1_buffer_V_6_d0 sc_out sc_lv 64 signal 7 } 
	{ k1_buffer_V_7_address0 sc_out sc_lv 11 signal 8 } 
	{ k1_buffer_V_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ k1_buffer_V_7_we0 sc_out sc_logic 1 signal 8 } 
	{ k1_buffer_V_7_d0 sc_out sc_lv 64 signal 8 } 
	{ k1_buffer_V_8_address0 sc_out sc_lv 11 signal 9 } 
	{ k1_buffer_V_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ k1_buffer_V_8_we0 sc_out sc_logic 1 signal 9 } 
	{ k1_buffer_V_8_d0 sc_out sc_lv 64 signal 9 } 
	{ k1_buffer_V_9_address0 sc_out sc_lv 11 signal 10 } 
	{ k1_buffer_V_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ k1_buffer_V_9_we0 sc_out sc_logic 1 signal 10 } 
	{ k1_buffer_V_9_d0 sc_out sc_lv 64 signal 10 } 
	{ k1_buffer_V_10_address0 sc_out sc_lv 11 signal 11 } 
	{ k1_buffer_V_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ k1_buffer_V_10_we0 sc_out sc_logic 1 signal 11 } 
	{ k1_buffer_V_10_d0 sc_out sc_lv 64 signal 11 } 
	{ k1_buffer_V_11_address0 sc_out sc_lv 11 signal 12 } 
	{ k1_buffer_V_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ k1_buffer_V_11_we0 sc_out sc_logic 1 signal 12 } 
	{ k1_buffer_V_11_d0 sc_out sc_lv 64 signal 12 } 
	{ k1_buffer_V_12_address0 sc_out sc_lv 11 signal 13 } 
	{ k1_buffer_V_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ k1_buffer_V_12_we0 sc_out sc_logic 1 signal 13 } 
	{ k1_buffer_V_12_d0 sc_out sc_lv 64 signal 13 } 
	{ k1_buffer_V_13_address0 sc_out sc_lv 11 signal 14 } 
	{ k1_buffer_V_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ k1_buffer_V_13_we0 sc_out sc_logic 1 signal 14 } 
	{ k1_buffer_V_13_d0 sc_out sc_lv 64 signal 14 } 
	{ k1_buffer_V_14_address0 sc_out sc_lv 11 signal 15 } 
	{ k1_buffer_V_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ k1_buffer_V_14_we0 sc_out sc_logic 1 signal 15 } 
	{ k1_buffer_V_14_d0 sc_out sc_lv 64 signal 15 } 
	{ k1_buffer_V_15_address0 sc_out sc_lv 11 signal 16 } 
	{ k1_buffer_V_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ k1_buffer_V_15_we0 sc_out sc_logic 1 signal 16 } 
	{ k1_buffer_V_15_d0 sc_out sc_lv 64 signal 16 } 
	{ k0_1_dout sc_in sc_lv 64 signal 17 } 
	{ k0_1_empty_n sc_in sc_logic 1 signal 17 } 
	{ k0_1_read sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 18 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 32 signal 18 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 64 signal 18 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 8 signal 18 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 18 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 32 signal 18 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 64 signal 18 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ret_V_1_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ret_V_1_loc", "role": "dout" }} , 
 	{ "name": "ret_V_1_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_1_loc", "role": "empty_n" }} , 
 	{ "name": "ret_V_1_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_1_loc", "role": "read" }} , 
 	{ "name": "k1_buffer_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_0", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_0", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_0", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_0", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_1", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_1", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_1", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_1", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_2", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_2", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_2", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_2", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_3", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_3", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_3", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_3", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_4", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_4", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_4", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_4", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_5", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_5", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_5", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_5", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_6", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_6", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_6", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_6", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_7", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_7", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_7", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_7", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_8", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_8", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_8", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_8", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_9", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_9", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_9", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_9", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_10", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_10", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_10", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_10", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_11", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_11", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_11", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_11", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_12", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_12", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_12", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_12", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_13", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_13", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_13", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_13", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_14", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_14", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_14", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_14", "role": "d0" }} , 
 	{ "name": "k1_buffer_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "k1_buffer_V_15", "role": "address0" }} , 
 	{ "name": "k1_buffer_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_15", "role": "ce0" }} , 
 	{ "name": "k1_buffer_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k1_buffer_V_15", "role": "we0" }} , 
 	{ "name": "k1_buffer_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k1_buffer_V_15", "role": "d0" }} , 
 	{ "name": "k0_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k0_1", "role": "dout" }} , 
 	{ "name": "k0_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k0_1", "role": "empty_n" }} , 
 	{ "name": "k0_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k0_1", "role": "read" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Loop_VITIS_LOOP_38_1_proc",
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
			{"Name" : "ret_V_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k1_buffer_V_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_8", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_9", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_10", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_11", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_12", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_13", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_14", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k1_buffer_V_15", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "k0_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k0_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_R", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_VITIS_LOOP_38_1_proc {
		ret_V_1_loc {Type I LastRead 0 FirstWrite -1}
		k1_buffer_V_0 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_1 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_2 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_3 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_4 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_5 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_6 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_7 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_8 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_9 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_10 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_11 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_12 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_13 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_14 {Type O LastRead -1 FirstWrite 10}
		k1_buffer_V_15 {Type O LastRead -1 FirstWrite 10}
		k0_1 {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ret_V_1_loc { ap_fifo {  { ret_V_1_loc_dout fifo_data 0 32 }  { ret_V_1_loc_empty_n fifo_status 0 1 }  { ret_V_1_loc_read fifo_update 1 1 } } }
	k1_buffer_V_0 { ap_memory {  { k1_buffer_V_0_address0 mem_address 1 11 }  { k1_buffer_V_0_ce0 mem_ce 1 1 }  { k1_buffer_V_0_we0 mem_we 1 1 }  { k1_buffer_V_0_d0 mem_din 1 64 } } }
	k1_buffer_V_1 { ap_memory {  { k1_buffer_V_1_address0 mem_address 1 11 }  { k1_buffer_V_1_ce0 mem_ce 1 1 }  { k1_buffer_V_1_we0 mem_we 1 1 }  { k1_buffer_V_1_d0 mem_din 1 64 } } }
	k1_buffer_V_2 { ap_memory {  { k1_buffer_V_2_address0 mem_address 1 11 }  { k1_buffer_V_2_ce0 mem_ce 1 1 }  { k1_buffer_V_2_we0 mem_we 1 1 }  { k1_buffer_V_2_d0 mem_din 1 64 } } }
	k1_buffer_V_3 { ap_memory {  { k1_buffer_V_3_address0 mem_address 1 11 }  { k1_buffer_V_3_ce0 mem_ce 1 1 }  { k1_buffer_V_3_we0 mem_we 1 1 }  { k1_buffer_V_3_d0 mem_din 1 64 } } }
	k1_buffer_V_4 { ap_memory {  { k1_buffer_V_4_address0 mem_address 1 11 }  { k1_buffer_V_4_ce0 mem_ce 1 1 }  { k1_buffer_V_4_we0 mem_we 1 1 }  { k1_buffer_V_4_d0 mem_din 1 64 } } }
	k1_buffer_V_5 { ap_memory {  { k1_buffer_V_5_address0 mem_address 1 11 }  { k1_buffer_V_5_ce0 mem_ce 1 1 }  { k1_buffer_V_5_we0 mem_we 1 1 }  { k1_buffer_V_5_d0 mem_din 1 64 } } }
	k1_buffer_V_6 { ap_memory {  { k1_buffer_V_6_address0 mem_address 1 11 }  { k1_buffer_V_6_ce0 mem_ce 1 1 }  { k1_buffer_V_6_we0 mem_we 1 1 }  { k1_buffer_V_6_d0 mem_din 1 64 } } }
	k1_buffer_V_7 { ap_memory {  { k1_buffer_V_7_address0 mem_address 1 11 }  { k1_buffer_V_7_ce0 mem_ce 1 1 }  { k1_buffer_V_7_we0 mem_we 1 1 }  { k1_buffer_V_7_d0 mem_din 1 64 } } }
	k1_buffer_V_8 { ap_memory {  { k1_buffer_V_8_address0 mem_address 1 11 }  { k1_buffer_V_8_ce0 mem_ce 1 1 }  { k1_buffer_V_8_we0 mem_we 1 1 }  { k1_buffer_V_8_d0 mem_din 1 64 } } }
	k1_buffer_V_9 { ap_memory {  { k1_buffer_V_9_address0 mem_address 1 11 }  { k1_buffer_V_9_ce0 mem_ce 1 1 }  { k1_buffer_V_9_we0 mem_we 1 1 }  { k1_buffer_V_9_d0 mem_din 1 64 } } }
	k1_buffer_V_10 { ap_memory {  { k1_buffer_V_10_address0 mem_address 1 11 }  { k1_buffer_V_10_ce0 mem_ce 1 1 }  { k1_buffer_V_10_we0 mem_we 1 1 }  { k1_buffer_V_10_d0 mem_din 1 64 } } }
	k1_buffer_V_11 { ap_memory {  { k1_buffer_V_11_address0 mem_address 1 11 }  { k1_buffer_V_11_ce0 mem_ce 1 1 }  { k1_buffer_V_11_we0 mem_we 1 1 }  { k1_buffer_V_11_d0 mem_din 1 64 } } }
	k1_buffer_V_12 { ap_memory {  { k1_buffer_V_12_address0 mem_address 1 11 }  { k1_buffer_V_12_ce0 mem_ce 1 1 }  { k1_buffer_V_12_we0 mem_we 1 1 }  { k1_buffer_V_12_d0 mem_din 1 64 } } }
	k1_buffer_V_13 { ap_memory {  { k1_buffer_V_13_address0 mem_address 1 11 }  { k1_buffer_V_13_ce0 mem_ce 1 1 }  { k1_buffer_V_13_we0 mem_we 1 1 }  { k1_buffer_V_13_d0 mem_din 1 64 } } }
	k1_buffer_V_14 { ap_memory {  { k1_buffer_V_14_address0 mem_address 1 11 }  { k1_buffer_V_14_ce0 mem_ce 1 1 }  { k1_buffer_V_14_we0 mem_we 1 1 }  { k1_buffer_V_14_d0 mem_din 1 64 } } }
	k1_buffer_V_15 { ap_memory {  { k1_buffer_V_15_address0 mem_address 1 11 }  { k1_buffer_V_15_ce0 mem_ce 1 1 }  { k1_buffer_V_15_we0 mem_we 1 1 }  { k1_buffer_V_15_d0 mem_din 1 64 } } }
	k0_1 { ap_fifo {  { k0_1_dout fifo_data 0 64 }  { k0_1_empty_n fifo_status 0 1 }  { k0_1_read fifo_update 1 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN LEN 1 32 }  { m_axi_gmem2_AWSIZE SIZE 1 3 }  { m_axi_gmem2_AWBURST BURST 1 2 }  { m_axi_gmem2_AWLOCK LOCK 1 2 }  { m_axi_gmem2_AWCACHE CACHE 1 4 }  { m_axi_gmem2_AWPROT PROT 1 3 }  { m_axi_gmem2_AWQOS QOS 1 4 }  { m_axi_gmem2_AWREGION REGION 1 4 }  { m_axi_gmem2_AWUSER USER 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA DATA 1 64 }  { m_axi_gmem2_WSTRB STRB 1 8 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER USER 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN LEN 1 32 }  { m_axi_gmem2_ARSIZE SIZE 1 3 }  { m_axi_gmem2_ARBURST BURST 1 2 }  { m_axi_gmem2_ARLOCK LOCK 1 2 }  { m_axi_gmem2_ARCACHE CACHE 1 4 }  { m_axi_gmem2_ARPROT PROT 1 3 }  { m_axi_gmem2_ARQOS QOS 1 4 }  { m_axi_gmem2_ARREGION REGION 1 4 }  { m_axi_gmem2_ARUSER USER 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA DATA 0 64 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER USER 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER USER 0 1 } } }
}
