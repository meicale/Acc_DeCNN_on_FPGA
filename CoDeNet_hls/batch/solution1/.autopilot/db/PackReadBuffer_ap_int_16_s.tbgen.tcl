set moduleName PackReadBuffer_ap_int_16_s
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
set C_modelName {PackReadBuffer<ap_int<16> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem4 int 16 regular {axi_master 0}  }
	{ mem int 64 regular {fifo 0}  }
	{ scale1 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale11 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale12 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale13 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale14 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale15 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale16 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale17 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias1 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias18 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias19 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias110 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias111 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias112 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias113 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias114 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale3 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale315 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale316 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale317 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale318 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale319 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale320 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ scale321 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias3 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias322 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias323 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias324 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias325 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias326 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias327 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ bias328 int 16 regular {array 128 { 0 3 } 0 1 }  }
	{ OC int 32 regular {fifo 0}  }
	{ skip3 int 1 regular {fifo 0}  }
	{ skip1 int 1 regular {fifo 0}  }
	{ skip1_out int 1 regular {fifo 1}  }
	{ skip1_out1 int 1 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem4", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mem", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "scale1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale11", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale12", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale13", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale14", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale15", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale16", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale17", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias18", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias19", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias110", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias111", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias112", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias113", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias114", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale315", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale316", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale317", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale318", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale319", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale320", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scale321", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias322", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias323", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias324", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias325", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias326", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias327", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias328", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OC", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "skip3", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "skip1", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "skip1_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip1_out1", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 198
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem4_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem4_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem4_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem4_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem4_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem4_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem4_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem4_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem4_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem4_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem4_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem4_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem4_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem4_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem4_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem4_WDATA sc_out sc_lv 16 signal 0 } 
	{ m_axi_gmem4_WSTRB sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem4_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem4_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem4_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem4_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem4_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem4_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem4_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem4_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem4_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem4_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem4_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem4_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem4_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem4_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem4_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem4_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem4_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem4_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem4_RDATA sc_in sc_lv 16 signal 0 } 
	{ m_axi_gmem4_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem4_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem4_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem4_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem4_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem4_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem4_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem4_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem4_BUSER sc_in sc_lv 1 signal 0 } 
	{ mem_dout sc_in sc_lv 64 signal 1 } 
	{ mem_empty_n sc_in sc_logic 1 signal 1 } 
	{ mem_read sc_out sc_logic 1 signal 1 } 
	{ scale1_address0 sc_out sc_lv 7 signal 2 } 
	{ scale1_ce0 sc_out sc_logic 1 signal 2 } 
	{ scale1_we0 sc_out sc_logic 1 signal 2 } 
	{ scale1_d0 sc_out sc_lv 16 signal 2 } 
	{ scale11_address0 sc_out sc_lv 7 signal 3 } 
	{ scale11_ce0 sc_out sc_logic 1 signal 3 } 
	{ scale11_we0 sc_out sc_logic 1 signal 3 } 
	{ scale11_d0 sc_out sc_lv 16 signal 3 } 
	{ scale12_address0 sc_out sc_lv 7 signal 4 } 
	{ scale12_ce0 sc_out sc_logic 1 signal 4 } 
	{ scale12_we0 sc_out sc_logic 1 signal 4 } 
	{ scale12_d0 sc_out sc_lv 16 signal 4 } 
	{ scale13_address0 sc_out sc_lv 7 signal 5 } 
	{ scale13_ce0 sc_out sc_logic 1 signal 5 } 
	{ scale13_we0 sc_out sc_logic 1 signal 5 } 
	{ scale13_d0 sc_out sc_lv 16 signal 5 } 
	{ scale14_address0 sc_out sc_lv 7 signal 6 } 
	{ scale14_ce0 sc_out sc_logic 1 signal 6 } 
	{ scale14_we0 sc_out sc_logic 1 signal 6 } 
	{ scale14_d0 sc_out sc_lv 16 signal 6 } 
	{ scale15_address0 sc_out sc_lv 7 signal 7 } 
	{ scale15_ce0 sc_out sc_logic 1 signal 7 } 
	{ scale15_we0 sc_out sc_logic 1 signal 7 } 
	{ scale15_d0 sc_out sc_lv 16 signal 7 } 
	{ scale16_address0 sc_out sc_lv 7 signal 8 } 
	{ scale16_ce0 sc_out sc_logic 1 signal 8 } 
	{ scale16_we0 sc_out sc_logic 1 signal 8 } 
	{ scale16_d0 sc_out sc_lv 16 signal 8 } 
	{ scale17_address0 sc_out sc_lv 7 signal 9 } 
	{ scale17_ce0 sc_out sc_logic 1 signal 9 } 
	{ scale17_we0 sc_out sc_logic 1 signal 9 } 
	{ scale17_d0 sc_out sc_lv 16 signal 9 } 
	{ bias1_address0 sc_out sc_lv 7 signal 10 } 
	{ bias1_ce0 sc_out sc_logic 1 signal 10 } 
	{ bias1_we0 sc_out sc_logic 1 signal 10 } 
	{ bias1_d0 sc_out sc_lv 16 signal 10 } 
	{ bias18_address0 sc_out sc_lv 7 signal 11 } 
	{ bias18_ce0 sc_out sc_logic 1 signal 11 } 
	{ bias18_we0 sc_out sc_logic 1 signal 11 } 
	{ bias18_d0 sc_out sc_lv 16 signal 11 } 
	{ bias19_address0 sc_out sc_lv 7 signal 12 } 
	{ bias19_ce0 sc_out sc_logic 1 signal 12 } 
	{ bias19_we0 sc_out sc_logic 1 signal 12 } 
	{ bias19_d0 sc_out sc_lv 16 signal 12 } 
	{ bias110_address0 sc_out sc_lv 7 signal 13 } 
	{ bias110_ce0 sc_out sc_logic 1 signal 13 } 
	{ bias110_we0 sc_out sc_logic 1 signal 13 } 
	{ bias110_d0 sc_out sc_lv 16 signal 13 } 
	{ bias111_address0 sc_out sc_lv 7 signal 14 } 
	{ bias111_ce0 sc_out sc_logic 1 signal 14 } 
	{ bias111_we0 sc_out sc_logic 1 signal 14 } 
	{ bias111_d0 sc_out sc_lv 16 signal 14 } 
	{ bias112_address0 sc_out sc_lv 7 signal 15 } 
	{ bias112_ce0 sc_out sc_logic 1 signal 15 } 
	{ bias112_we0 sc_out sc_logic 1 signal 15 } 
	{ bias112_d0 sc_out sc_lv 16 signal 15 } 
	{ bias113_address0 sc_out sc_lv 7 signal 16 } 
	{ bias113_ce0 sc_out sc_logic 1 signal 16 } 
	{ bias113_we0 sc_out sc_logic 1 signal 16 } 
	{ bias113_d0 sc_out sc_lv 16 signal 16 } 
	{ bias114_address0 sc_out sc_lv 7 signal 17 } 
	{ bias114_ce0 sc_out sc_logic 1 signal 17 } 
	{ bias114_we0 sc_out sc_logic 1 signal 17 } 
	{ bias114_d0 sc_out sc_lv 16 signal 17 } 
	{ scale3_address0 sc_out sc_lv 7 signal 18 } 
	{ scale3_ce0 sc_out sc_logic 1 signal 18 } 
	{ scale3_we0 sc_out sc_logic 1 signal 18 } 
	{ scale3_d0 sc_out sc_lv 16 signal 18 } 
	{ scale315_address0 sc_out sc_lv 7 signal 19 } 
	{ scale315_ce0 sc_out sc_logic 1 signal 19 } 
	{ scale315_we0 sc_out sc_logic 1 signal 19 } 
	{ scale315_d0 sc_out sc_lv 16 signal 19 } 
	{ scale316_address0 sc_out sc_lv 7 signal 20 } 
	{ scale316_ce0 sc_out sc_logic 1 signal 20 } 
	{ scale316_we0 sc_out sc_logic 1 signal 20 } 
	{ scale316_d0 sc_out sc_lv 16 signal 20 } 
	{ scale317_address0 sc_out sc_lv 7 signal 21 } 
	{ scale317_ce0 sc_out sc_logic 1 signal 21 } 
	{ scale317_we0 sc_out sc_logic 1 signal 21 } 
	{ scale317_d0 sc_out sc_lv 16 signal 21 } 
	{ scale318_address0 sc_out sc_lv 7 signal 22 } 
	{ scale318_ce0 sc_out sc_logic 1 signal 22 } 
	{ scale318_we0 sc_out sc_logic 1 signal 22 } 
	{ scale318_d0 sc_out sc_lv 16 signal 22 } 
	{ scale319_address0 sc_out sc_lv 7 signal 23 } 
	{ scale319_ce0 sc_out sc_logic 1 signal 23 } 
	{ scale319_we0 sc_out sc_logic 1 signal 23 } 
	{ scale319_d0 sc_out sc_lv 16 signal 23 } 
	{ scale320_address0 sc_out sc_lv 7 signal 24 } 
	{ scale320_ce0 sc_out sc_logic 1 signal 24 } 
	{ scale320_we0 sc_out sc_logic 1 signal 24 } 
	{ scale320_d0 sc_out sc_lv 16 signal 24 } 
	{ scale321_address0 sc_out sc_lv 7 signal 25 } 
	{ scale321_ce0 sc_out sc_logic 1 signal 25 } 
	{ scale321_we0 sc_out sc_logic 1 signal 25 } 
	{ scale321_d0 sc_out sc_lv 16 signal 25 } 
	{ bias3_address0 sc_out sc_lv 7 signal 26 } 
	{ bias3_ce0 sc_out sc_logic 1 signal 26 } 
	{ bias3_we0 sc_out sc_logic 1 signal 26 } 
	{ bias3_d0 sc_out sc_lv 16 signal 26 } 
	{ bias322_address0 sc_out sc_lv 7 signal 27 } 
	{ bias322_ce0 sc_out sc_logic 1 signal 27 } 
	{ bias322_we0 sc_out sc_logic 1 signal 27 } 
	{ bias322_d0 sc_out sc_lv 16 signal 27 } 
	{ bias323_address0 sc_out sc_lv 7 signal 28 } 
	{ bias323_ce0 sc_out sc_logic 1 signal 28 } 
	{ bias323_we0 sc_out sc_logic 1 signal 28 } 
	{ bias323_d0 sc_out sc_lv 16 signal 28 } 
	{ bias324_address0 sc_out sc_lv 7 signal 29 } 
	{ bias324_ce0 sc_out sc_logic 1 signal 29 } 
	{ bias324_we0 sc_out sc_logic 1 signal 29 } 
	{ bias324_d0 sc_out sc_lv 16 signal 29 } 
	{ bias325_address0 sc_out sc_lv 7 signal 30 } 
	{ bias325_ce0 sc_out sc_logic 1 signal 30 } 
	{ bias325_we0 sc_out sc_logic 1 signal 30 } 
	{ bias325_d0 sc_out sc_lv 16 signal 30 } 
	{ bias326_address0 sc_out sc_lv 7 signal 31 } 
	{ bias326_ce0 sc_out sc_logic 1 signal 31 } 
	{ bias326_we0 sc_out sc_logic 1 signal 31 } 
	{ bias326_d0 sc_out sc_lv 16 signal 31 } 
	{ bias327_address0 sc_out sc_lv 7 signal 32 } 
	{ bias327_ce0 sc_out sc_logic 1 signal 32 } 
	{ bias327_we0 sc_out sc_logic 1 signal 32 } 
	{ bias327_d0 sc_out sc_lv 16 signal 32 } 
	{ bias328_address0 sc_out sc_lv 7 signal 33 } 
	{ bias328_ce0 sc_out sc_logic 1 signal 33 } 
	{ bias328_we0 sc_out sc_logic 1 signal 33 } 
	{ bias328_d0 sc_out sc_lv 16 signal 33 } 
	{ OC_dout sc_in sc_lv 32 signal 34 } 
	{ OC_empty_n sc_in sc_logic 1 signal 34 } 
	{ OC_read sc_out sc_logic 1 signal 34 } 
	{ skip3_dout sc_in sc_lv 1 signal 35 } 
	{ skip3_empty_n sc_in sc_logic 1 signal 35 } 
	{ skip3_read sc_out sc_logic 1 signal 35 } 
	{ skip1_dout sc_in sc_lv 1 signal 36 } 
	{ skip1_empty_n sc_in sc_logic 1 signal 36 } 
	{ skip1_read sc_out sc_logic 1 signal 36 } 
	{ skip1_out_din sc_out sc_lv 1 signal 37 } 
	{ skip1_out_full_n sc_in sc_logic 1 signal 37 } 
	{ skip1_out_write sc_out sc_logic 1 signal 37 } 
	{ skip1_out1_din sc_out sc_lv 1 signal 38 } 
	{ skip1_out1_full_n sc_in sc_logic 1 signal 38 } 
	{ skip1_out1_write sc_out sc_logic 1 signal 38 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem4", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WID" }} , 
 	{ "name": "m_axi_gmem4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem4", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RID" }} , 
 	{ "name": "m_axi_gmem4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BID" }} , 
 	{ "name": "m_axi_gmem4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BUSER" }} , 
 	{ "name": "mem_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem", "role": "dout" }} , 
 	{ "name": "mem_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "empty_n" }} , 
 	{ "name": "mem_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "read" }} , 
 	{ "name": "scale1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale1", "role": "address0" }} , 
 	{ "name": "scale1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale1", "role": "ce0" }} , 
 	{ "name": "scale1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale1", "role": "we0" }} , 
 	{ "name": "scale1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale1", "role": "d0" }} , 
 	{ "name": "scale11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale11", "role": "address0" }} , 
 	{ "name": "scale11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale11", "role": "ce0" }} , 
 	{ "name": "scale11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale11", "role": "we0" }} , 
 	{ "name": "scale11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale11", "role": "d0" }} , 
 	{ "name": "scale12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale12", "role": "address0" }} , 
 	{ "name": "scale12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale12", "role": "ce0" }} , 
 	{ "name": "scale12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale12", "role": "we0" }} , 
 	{ "name": "scale12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale12", "role": "d0" }} , 
 	{ "name": "scale13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale13", "role": "address0" }} , 
 	{ "name": "scale13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale13", "role": "ce0" }} , 
 	{ "name": "scale13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale13", "role": "we0" }} , 
 	{ "name": "scale13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale13", "role": "d0" }} , 
 	{ "name": "scale14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale14", "role": "address0" }} , 
 	{ "name": "scale14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale14", "role": "ce0" }} , 
 	{ "name": "scale14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale14", "role": "we0" }} , 
 	{ "name": "scale14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale14", "role": "d0" }} , 
 	{ "name": "scale15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale15", "role": "address0" }} , 
 	{ "name": "scale15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale15", "role": "ce0" }} , 
 	{ "name": "scale15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale15", "role": "we0" }} , 
 	{ "name": "scale15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale15", "role": "d0" }} , 
 	{ "name": "scale16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale16", "role": "address0" }} , 
 	{ "name": "scale16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale16", "role": "ce0" }} , 
 	{ "name": "scale16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale16", "role": "we0" }} , 
 	{ "name": "scale16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale16", "role": "d0" }} , 
 	{ "name": "scale17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale17", "role": "address0" }} , 
 	{ "name": "scale17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale17", "role": "ce0" }} , 
 	{ "name": "scale17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale17", "role": "we0" }} , 
 	{ "name": "scale17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale17", "role": "d0" }} , 
 	{ "name": "bias1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias1", "role": "address0" }} , 
 	{ "name": "bias1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias1", "role": "ce0" }} , 
 	{ "name": "bias1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias1", "role": "we0" }} , 
 	{ "name": "bias1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias1", "role": "d0" }} , 
 	{ "name": "bias18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias18", "role": "address0" }} , 
 	{ "name": "bias18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias18", "role": "ce0" }} , 
 	{ "name": "bias18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias18", "role": "we0" }} , 
 	{ "name": "bias18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias18", "role": "d0" }} , 
 	{ "name": "bias19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias19", "role": "address0" }} , 
 	{ "name": "bias19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias19", "role": "ce0" }} , 
 	{ "name": "bias19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias19", "role": "we0" }} , 
 	{ "name": "bias19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias19", "role": "d0" }} , 
 	{ "name": "bias110_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias110", "role": "address0" }} , 
 	{ "name": "bias110_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias110", "role": "ce0" }} , 
 	{ "name": "bias110_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias110", "role": "we0" }} , 
 	{ "name": "bias110_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias110", "role": "d0" }} , 
 	{ "name": "bias111_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias111", "role": "address0" }} , 
 	{ "name": "bias111_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias111", "role": "ce0" }} , 
 	{ "name": "bias111_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias111", "role": "we0" }} , 
 	{ "name": "bias111_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias111", "role": "d0" }} , 
 	{ "name": "bias112_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias112", "role": "address0" }} , 
 	{ "name": "bias112_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias112", "role": "ce0" }} , 
 	{ "name": "bias112_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias112", "role": "we0" }} , 
 	{ "name": "bias112_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias112", "role": "d0" }} , 
 	{ "name": "bias113_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias113", "role": "address0" }} , 
 	{ "name": "bias113_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias113", "role": "ce0" }} , 
 	{ "name": "bias113_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias113", "role": "we0" }} , 
 	{ "name": "bias113_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias113", "role": "d0" }} , 
 	{ "name": "bias114_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias114", "role": "address0" }} , 
 	{ "name": "bias114_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias114", "role": "ce0" }} , 
 	{ "name": "bias114_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias114", "role": "we0" }} , 
 	{ "name": "bias114_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias114", "role": "d0" }} , 
 	{ "name": "scale3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale3", "role": "address0" }} , 
 	{ "name": "scale3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale3", "role": "ce0" }} , 
 	{ "name": "scale3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale3", "role": "we0" }} , 
 	{ "name": "scale3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale3", "role": "d0" }} , 
 	{ "name": "scale315_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale315", "role": "address0" }} , 
 	{ "name": "scale315_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale315", "role": "ce0" }} , 
 	{ "name": "scale315_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale315", "role": "we0" }} , 
 	{ "name": "scale315_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale315", "role": "d0" }} , 
 	{ "name": "scale316_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale316", "role": "address0" }} , 
 	{ "name": "scale316_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale316", "role": "ce0" }} , 
 	{ "name": "scale316_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale316", "role": "we0" }} , 
 	{ "name": "scale316_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale316", "role": "d0" }} , 
 	{ "name": "scale317_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale317", "role": "address0" }} , 
 	{ "name": "scale317_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale317", "role": "ce0" }} , 
 	{ "name": "scale317_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale317", "role": "we0" }} , 
 	{ "name": "scale317_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale317", "role": "d0" }} , 
 	{ "name": "scale318_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale318", "role": "address0" }} , 
 	{ "name": "scale318_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale318", "role": "ce0" }} , 
 	{ "name": "scale318_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale318", "role": "we0" }} , 
 	{ "name": "scale318_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale318", "role": "d0" }} , 
 	{ "name": "scale319_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale319", "role": "address0" }} , 
 	{ "name": "scale319_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale319", "role": "ce0" }} , 
 	{ "name": "scale319_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale319", "role": "we0" }} , 
 	{ "name": "scale319_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale319", "role": "d0" }} , 
 	{ "name": "scale320_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale320", "role": "address0" }} , 
 	{ "name": "scale320_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale320", "role": "ce0" }} , 
 	{ "name": "scale320_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale320", "role": "we0" }} , 
 	{ "name": "scale320_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale320", "role": "d0" }} , 
 	{ "name": "scale321_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scale321", "role": "address0" }} , 
 	{ "name": "scale321_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale321", "role": "ce0" }} , 
 	{ "name": "scale321_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scale321", "role": "we0" }} , 
 	{ "name": "scale321_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "scale321", "role": "d0" }} , 
 	{ "name": "bias3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias3", "role": "address0" }} , 
 	{ "name": "bias3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias3", "role": "ce0" }} , 
 	{ "name": "bias3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias3", "role": "we0" }} , 
 	{ "name": "bias3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias3", "role": "d0" }} , 
 	{ "name": "bias322_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias322", "role": "address0" }} , 
 	{ "name": "bias322_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias322", "role": "ce0" }} , 
 	{ "name": "bias322_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias322", "role": "we0" }} , 
 	{ "name": "bias322_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias322", "role": "d0" }} , 
 	{ "name": "bias323_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias323", "role": "address0" }} , 
 	{ "name": "bias323_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias323", "role": "ce0" }} , 
 	{ "name": "bias323_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias323", "role": "we0" }} , 
 	{ "name": "bias323_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias323", "role": "d0" }} , 
 	{ "name": "bias324_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias324", "role": "address0" }} , 
 	{ "name": "bias324_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias324", "role": "ce0" }} , 
 	{ "name": "bias324_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias324", "role": "we0" }} , 
 	{ "name": "bias324_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias324", "role": "d0" }} , 
 	{ "name": "bias325_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias325", "role": "address0" }} , 
 	{ "name": "bias325_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias325", "role": "ce0" }} , 
 	{ "name": "bias325_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias325", "role": "we0" }} , 
 	{ "name": "bias325_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias325", "role": "d0" }} , 
 	{ "name": "bias326_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias326", "role": "address0" }} , 
 	{ "name": "bias326_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias326", "role": "ce0" }} , 
 	{ "name": "bias326_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias326", "role": "we0" }} , 
 	{ "name": "bias326_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias326", "role": "d0" }} , 
 	{ "name": "bias327_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias327", "role": "address0" }} , 
 	{ "name": "bias327_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias327", "role": "ce0" }} , 
 	{ "name": "bias327_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias327", "role": "we0" }} , 
 	{ "name": "bias327_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias327", "role": "d0" }} , 
 	{ "name": "bias328_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bias328", "role": "address0" }} , 
 	{ "name": "bias328_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias328", "role": "ce0" }} , 
 	{ "name": "bias328_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias328", "role": "we0" }} , 
 	{ "name": "bias328_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias328", "role": "d0" }} , 
 	{ "name": "OC_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OC", "role": "dout" }} , 
 	{ "name": "OC_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC", "role": "empty_n" }} , 
 	{ "name": "OC_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC", "role": "read" }} , 
 	{ "name": "skip3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "dout" }} , 
 	{ "name": "skip3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "empty_n" }} , 
 	{ "name": "skip3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "read" }} , 
 	{ "name": "skip1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "dout" }} , 
 	{ "name": "skip1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "empty_n" }} , 
 	{ "name": "skip1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "read" }} , 
 	{ "name": "skip1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out", "role": "din" }} , 
 	{ "name": "skip1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out", "role": "full_n" }} , 
 	{ "name": "skip1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out", "role": "write" }} , 
 	{ "name": "skip1_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out1", "role": "din" }} , 
 	{ "name": "skip1_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out1", "role": "full_n" }} , 
 	{ "name": "skip1_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "PackReadBuffer_ap_int_16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem4_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem4_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "mem", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mem_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "scale1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale11", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale12", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale13", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale14", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale15", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale16", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale17", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias18", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias19", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias110", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias111", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias112", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias113", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias114", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale315", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale316", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale317", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale318", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale319", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale320", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "scale321", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias322", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias323", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias324", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias325", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias326", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias327", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias328", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "OC", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_out1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	PackReadBuffer_ap_int_16_s {
		gmem4 {Type I LastRead 38 FirstWrite -1}
		mem {Type I LastRead 0 FirstWrite -1}
		scale1 {Type O LastRead -1 FirstWrite 11}
		scale11 {Type O LastRead -1 FirstWrite 11}
		scale12 {Type O LastRead -1 FirstWrite 11}
		scale13 {Type O LastRead -1 FirstWrite 11}
		scale14 {Type O LastRead -1 FirstWrite 11}
		scale15 {Type O LastRead -1 FirstWrite 11}
		scale16 {Type O LastRead -1 FirstWrite 11}
		scale17 {Type O LastRead -1 FirstWrite 11}
		bias1 {Type O LastRead -1 FirstWrite 20}
		bias18 {Type O LastRead -1 FirstWrite 20}
		bias19 {Type O LastRead -1 FirstWrite 20}
		bias110 {Type O LastRead -1 FirstWrite 20}
		bias111 {Type O LastRead -1 FirstWrite 20}
		bias112 {Type O LastRead -1 FirstWrite 20}
		bias113 {Type O LastRead -1 FirstWrite 20}
		bias114 {Type O LastRead -1 FirstWrite 20}
		scale3 {Type O LastRead -1 FirstWrite 29}
		scale315 {Type O LastRead -1 FirstWrite 29}
		scale316 {Type O LastRead -1 FirstWrite 29}
		scale317 {Type O LastRead -1 FirstWrite 29}
		scale318 {Type O LastRead -1 FirstWrite 29}
		scale319 {Type O LastRead -1 FirstWrite 29}
		scale320 {Type O LastRead -1 FirstWrite 29}
		scale321 {Type O LastRead -1 FirstWrite 29}
		bias3 {Type O LastRead -1 FirstWrite 39}
		bias322 {Type O LastRead -1 FirstWrite 39}
		bias323 {Type O LastRead -1 FirstWrite 39}
		bias324 {Type O LastRead -1 FirstWrite 39}
		bias325 {Type O LastRead -1 FirstWrite 39}
		bias326 {Type O LastRead -1 FirstWrite 39}
		bias327 {Type O LastRead -1 FirstWrite 39}
		bias328 {Type O LastRead -1 FirstWrite 39}
		OC {Type I LastRead 0 FirstWrite -1}
		skip3 {Type I LastRead 0 FirstWrite -1}
		skip1 {Type I LastRead 0 FirstWrite -1}
		skip1_out {Type O LastRead -1 FirstWrite 0}
		skip1_out1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	gmem4 { m_axi {  { m_axi_gmem4_AWVALID VALID 1 1 }  { m_axi_gmem4_AWREADY READY 0 1 }  { m_axi_gmem4_AWADDR ADDR 1 64 }  { m_axi_gmem4_AWID ID 1 1 }  { m_axi_gmem4_AWLEN LEN 1 32 }  { m_axi_gmem4_AWSIZE SIZE 1 3 }  { m_axi_gmem4_AWBURST BURST 1 2 }  { m_axi_gmem4_AWLOCK LOCK 1 2 }  { m_axi_gmem4_AWCACHE CACHE 1 4 }  { m_axi_gmem4_AWPROT PROT 1 3 }  { m_axi_gmem4_AWQOS QOS 1 4 }  { m_axi_gmem4_AWREGION REGION 1 4 }  { m_axi_gmem4_AWUSER USER 1 1 }  { m_axi_gmem4_WVALID VALID 1 1 }  { m_axi_gmem4_WREADY READY 0 1 }  { m_axi_gmem4_WDATA DATA 1 16 }  { m_axi_gmem4_WSTRB STRB 1 2 }  { m_axi_gmem4_WLAST LAST 1 1 }  { m_axi_gmem4_WID ID 1 1 }  { m_axi_gmem4_WUSER USER 1 1 }  { m_axi_gmem4_ARVALID VALID 1 1 }  { m_axi_gmem4_ARREADY READY 0 1 }  { m_axi_gmem4_ARADDR ADDR 1 64 }  { m_axi_gmem4_ARID ID 1 1 }  { m_axi_gmem4_ARLEN LEN 1 32 }  { m_axi_gmem4_ARSIZE SIZE 1 3 }  { m_axi_gmem4_ARBURST BURST 1 2 }  { m_axi_gmem4_ARLOCK LOCK 1 2 }  { m_axi_gmem4_ARCACHE CACHE 1 4 }  { m_axi_gmem4_ARPROT PROT 1 3 }  { m_axi_gmem4_ARQOS QOS 1 4 }  { m_axi_gmem4_ARREGION REGION 1 4 }  { m_axi_gmem4_ARUSER USER 1 1 }  { m_axi_gmem4_RVALID VALID 0 1 }  { m_axi_gmem4_RREADY READY 1 1 }  { m_axi_gmem4_RDATA DATA 0 16 }  { m_axi_gmem4_RLAST LAST 0 1 }  { m_axi_gmem4_RID ID 0 1 }  { m_axi_gmem4_RUSER USER 0 1 }  { m_axi_gmem4_RRESP RESP 0 2 }  { m_axi_gmem4_BVALID VALID 0 1 }  { m_axi_gmem4_BREADY READY 1 1 }  { m_axi_gmem4_BRESP RESP 0 2 }  { m_axi_gmem4_BID ID 0 1 }  { m_axi_gmem4_BUSER USER 0 1 } } }
	mem { ap_fifo {  { mem_dout fifo_data 0 64 }  { mem_empty_n fifo_status 0 1 }  { mem_read fifo_update 1 1 } } }
	scale1 { ap_memory {  { scale1_address0 mem_address 1 7 }  { scale1_ce0 mem_ce 1 1 }  { scale1_we0 mem_we 1 1 }  { scale1_d0 mem_din 1 16 } } }
	scale11 { ap_memory {  { scale11_address0 mem_address 1 7 }  { scale11_ce0 mem_ce 1 1 }  { scale11_we0 mem_we 1 1 }  { scale11_d0 mem_din 1 16 } } }
	scale12 { ap_memory {  { scale12_address0 mem_address 1 7 }  { scale12_ce0 mem_ce 1 1 }  { scale12_we0 mem_we 1 1 }  { scale12_d0 mem_din 1 16 } } }
	scale13 { ap_memory {  { scale13_address0 mem_address 1 7 }  { scale13_ce0 mem_ce 1 1 }  { scale13_we0 mem_we 1 1 }  { scale13_d0 mem_din 1 16 } } }
	scale14 { ap_memory {  { scale14_address0 mem_address 1 7 }  { scale14_ce0 mem_ce 1 1 }  { scale14_we0 mem_we 1 1 }  { scale14_d0 mem_din 1 16 } } }
	scale15 { ap_memory {  { scale15_address0 mem_address 1 7 }  { scale15_ce0 mem_ce 1 1 }  { scale15_we0 mem_we 1 1 }  { scale15_d0 mem_din 1 16 } } }
	scale16 { ap_memory {  { scale16_address0 mem_address 1 7 }  { scale16_ce0 mem_ce 1 1 }  { scale16_we0 mem_we 1 1 }  { scale16_d0 mem_din 1 16 } } }
	scale17 { ap_memory {  { scale17_address0 mem_address 1 7 }  { scale17_ce0 mem_ce 1 1 }  { scale17_we0 mem_we 1 1 }  { scale17_d0 mem_din 1 16 } } }
	bias1 { ap_memory {  { bias1_address0 mem_address 1 7 }  { bias1_ce0 mem_ce 1 1 }  { bias1_we0 mem_we 1 1 }  { bias1_d0 mem_din 1 16 } } }
	bias18 { ap_memory {  { bias18_address0 mem_address 1 7 }  { bias18_ce0 mem_ce 1 1 }  { bias18_we0 mem_we 1 1 }  { bias18_d0 mem_din 1 16 } } }
	bias19 { ap_memory {  { bias19_address0 mem_address 1 7 }  { bias19_ce0 mem_ce 1 1 }  { bias19_we0 mem_we 1 1 }  { bias19_d0 mem_din 1 16 } } }
	bias110 { ap_memory {  { bias110_address0 mem_address 1 7 }  { bias110_ce0 mem_ce 1 1 }  { bias110_we0 mem_we 1 1 }  { bias110_d0 mem_din 1 16 } } }
	bias111 { ap_memory {  { bias111_address0 mem_address 1 7 }  { bias111_ce0 mem_ce 1 1 }  { bias111_we0 mem_we 1 1 }  { bias111_d0 mem_din 1 16 } } }
	bias112 { ap_memory {  { bias112_address0 mem_address 1 7 }  { bias112_ce0 mem_ce 1 1 }  { bias112_we0 mem_we 1 1 }  { bias112_d0 mem_din 1 16 } } }
	bias113 { ap_memory {  { bias113_address0 mem_address 1 7 }  { bias113_ce0 mem_ce 1 1 }  { bias113_we0 mem_we 1 1 }  { bias113_d0 mem_din 1 16 } } }
	bias114 { ap_memory {  { bias114_address0 mem_address 1 7 }  { bias114_ce0 mem_ce 1 1 }  { bias114_we0 mem_we 1 1 }  { bias114_d0 mem_din 1 16 } } }
	scale3 { ap_memory {  { scale3_address0 mem_address 1 7 }  { scale3_ce0 mem_ce 1 1 }  { scale3_we0 mem_we 1 1 }  { scale3_d0 mem_din 1 16 } } }
	scale315 { ap_memory {  { scale315_address0 mem_address 1 7 }  { scale315_ce0 mem_ce 1 1 }  { scale315_we0 mem_we 1 1 }  { scale315_d0 mem_din 1 16 } } }
	scale316 { ap_memory {  { scale316_address0 mem_address 1 7 }  { scale316_ce0 mem_ce 1 1 }  { scale316_we0 mem_we 1 1 }  { scale316_d0 mem_din 1 16 } } }
	scale317 { ap_memory {  { scale317_address0 mem_address 1 7 }  { scale317_ce0 mem_ce 1 1 }  { scale317_we0 mem_we 1 1 }  { scale317_d0 mem_din 1 16 } } }
	scale318 { ap_memory {  { scale318_address0 mem_address 1 7 }  { scale318_ce0 mem_ce 1 1 }  { scale318_we0 mem_we 1 1 }  { scale318_d0 mem_din 1 16 } } }
	scale319 { ap_memory {  { scale319_address0 mem_address 1 7 }  { scale319_ce0 mem_ce 1 1 }  { scale319_we0 mem_we 1 1 }  { scale319_d0 mem_din 1 16 } } }
	scale320 { ap_memory {  { scale320_address0 mem_address 1 7 }  { scale320_ce0 mem_ce 1 1 }  { scale320_we0 mem_we 1 1 }  { scale320_d0 mem_din 1 16 } } }
	scale321 { ap_memory {  { scale321_address0 mem_address 1 7 }  { scale321_ce0 mem_ce 1 1 }  { scale321_we0 mem_we 1 1 }  { scale321_d0 mem_din 1 16 } } }
	bias3 { ap_memory {  { bias3_address0 mem_address 1 7 }  { bias3_ce0 mem_ce 1 1 }  { bias3_we0 mem_we 1 1 }  { bias3_d0 mem_din 1 16 } } }
	bias322 { ap_memory {  { bias322_address0 mem_address 1 7 }  { bias322_ce0 mem_ce 1 1 }  { bias322_we0 mem_we 1 1 }  { bias322_d0 mem_din 1 16 } } }
	bias323 { ap_memory {  { bias323_address0 mem_address 1 7 }  { bias323_ce0 mem_ce 1 1 }  { bias323_we0 mem_we 1 1 }  { bias323_d0 mem_din 1 16 } } }
	bias324 { ap_memory {  { bias324_address0 mem_address 1 7 }  { bias324_ce0 mem_ce 1 1 }  { bias324_we0 mem_we 1 1 }  { bias324_d0 mem_din 1 16 } } }
	bias325 { ap_memory {  { bias325_address0 mem_address 1 7 }  { bias325_ce0 mem_ce 1 1 }  { bias325_we0 mem_we 1 1 }  { bias325_d0 mem_din 1 16 } } }
	bias326 { ap_memory {  { bias326_address0 mem_address 1 7 }  { bias326_ce0 mem_ce 1 1 }  { bias326_we0 mem_we 1 1 }  { bias326_d0 mem_din 1 16 } } }
	bias327 { ap_memory {  { bias327_address0 mem_address 1 7 }  { bias327_ce0 mem_ce 1 1 }  { bias327_we0 mem_we 1 1 }  { bias327_d0 mem_din 1 16 } } }
	bias328 { ap_memory {  { bias328_address0 mem_address 1 7 }  { bias328_ce0 mem_ce 1 1 }  { bias328_we0 mem_we 1 1 }  { bias328_d0 mem_din 1 16 } } }
	OC { ap_fifo {  { OC_dout fifo_data 0 32 }  { OC_empty_n fifo_status 0 1 }  { OC_read fifo_update 1 1 } } }
	skip3 { ap_fifo {  { skip3_dout fifo_data 0 1 }  { skip3_empty_n fifo_status 0 1 }  { skip3_read fifo_update 1 1 } } }
	skip1 { ap_fifo {  { skip1_dout fifo_data 0 1 }  { skip1_empty_n fifo_status 0 1 }  { skip1_read fifo_update 1 1 } } }
	skip1_out { ap_fifo {  { skip1_out_din fifo_data 1 1 }  { skip1_out_full_n fifo_status 0 1 }  { skip1_out_write fifo_update 1 1 } } }
	skip1_out1 { ap_fifo {  { skip1_out1_din fifo_data 1 1 }  { skip1_out1_full_n fifo_status 0 1 }  { skip1_out1_write fifo_update 1 1 } } }
}
