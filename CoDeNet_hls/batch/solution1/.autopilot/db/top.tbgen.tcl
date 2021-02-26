set moduleName top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {top}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 128 regular {axi_master 0}  }
	{ gmem1 int 128 regular {axi_master 1}  }
	{ gmem2 int 64 regular {axi_master 0}  }
	{ gmem3 int 64 regular {axi_master 0}  }
	{ gmem4 int 16 regular {axi_master 0}  }
	{ gmem5 int 8 regular {axi_master 0}  }
	{ fmap int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
	{ k0_1 int 64 regular {axi_slave 0}  }
	{ k0_3 int 64 regular {axi_slave 0}  }
	{ quant int 64 regular {axi_slave 0}  }
	{ offsets int 64 regular {axi_slave 0}  }
	{ D int 32 regular {axi_slave 0}  }
	{ IC int 32 regular {axi_slave 0}  }
	{ OC int 32 regular {axi_slave 0}  }
	{ batch int 32 regular {axi_slave 0}  }
	{ STRIDE_2 uint 1 regular {axi_slave 0}  }
	{ skip3 uint 1 regular {axi_slave 0}  }
	{ skip1 uint 1 regular {axi_slave 0}  }
	{ deform uint 1 regular {axi_slave 0}  }
	{ relu1 uint 1 regular {axi_slave 0}  }
	{ relu3 uint 1 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "fmap","cData": "int128","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "fmap","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out","cData": "int128","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "k0_1","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "k0_1","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "k0_3","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "k0_3","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gmem4", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "quant","cData": "short","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "quant","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gmem5", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "offsets","cData": "char","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "offsets","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "fmap", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "k0_1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "k0_3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "quant", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "offsets", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "D", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "D","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "IC", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "IC","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "OC", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OC","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "batch", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "batch","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "STRIDE_2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "STRIDE_2","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "skip3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "skip3","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "skip1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "skip1","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "deform", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "deform","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "relu1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "relu1","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":152}, "offset_end" : {"in":159}} , 
 	{ "Name" : "relu3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "relu3","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":160}, "offset_end" : {"in":167}} ]}
# RTL Port declarations: 
set portNum 290
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 128 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 16 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 128 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 64 signal 2 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WDATA sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem3_WSTRB sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RDATA sc_in sc_lv 64 signal 3 } 
	{ m_axi_gmem3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem4_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem4_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem4_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem4_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem4_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem4_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem4_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem4_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem4_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem4_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem4_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem4_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem4_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem4_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem4_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem4_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_gmem4_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem4_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem4_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem4_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem4_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem4_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem4_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem4_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem5_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem5_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem5_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem5_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem5_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem5_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem5_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem5_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem5_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem5_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem5_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem5_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem5_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_gmem5_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem5_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem5_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem5_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem5_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem5_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem5_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem5_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem5_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem5_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem5_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem5_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem5_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem5_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem5_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem5_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem5_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_gmem5_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem5_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem5_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem5_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem5_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem5_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem5_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem5_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem5_BUSER sc_in sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"top","role":"start","value":"0","valid_bit":"0"},{"name":"top","role":"continue","value":"0","valid_bit":"4"},{"name":"top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"fmap","role":"data","value":"16"},{"name":"out_r","role":"data","value":"28"},{"name":"k0_1","role":"data","value":"40"},{"name":"k0_3","role":"data","value":"52"},{"name":"quant","role":"data","value":"64"},{"name":"offsets","role":"data","value":"76"},{"name":"D","role":"data","value":"88"},{"name":"IC","role":"data","value":"96"},{"name":"OC","role":"data","value":"104"},{"name":"batch","role":"data","value":"112"},{"name":"STRIDE_2","role":"data","value":"120"},{"name":"skip3","role":"data","value":"128"},{"name":"skip1","role":"data","value":"136"},{"name":"deform","role":"data","value":"144"},{"name":"relu1","role":"data","value":"152"},{"name":"relu3","role":"data","value":"160"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"top","role":"start","value":"0","valid_bit":"0"},{"name":"top","role":"done","value":"0","valid_bit":"1"},{"name":"top","role":"idle","value":"0","valid_bit":"2"},{"name":"top","role":"ready","value":"0","valid_bit":"3"},{"name":"top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem4", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WID" }} , 
 	{ "name": "m_axi_gmem4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem4", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem4", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RID" }} , 
 	{ "name": "m_axi_gmem4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem4", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BID" }} , 
 	{ "name": "m_axi_gmem4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem4", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem5_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem5_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem5_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem5_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem5_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem5", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem5_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem5", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem5_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem5", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem5_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem5_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WID" }} , 
 	{ "name": "m_axi_gmem5_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem5_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem5_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem5_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem5", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem5_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem5_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem5", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem5_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem5", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem5_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem5_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RID" }} , 
 	{ "name": "m_axi_gmem5_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem5_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem5_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem5_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem5_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem5", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem5_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BID" }} , 
 	{ "name": "m_axi_gmem5_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem5", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "70", "74", "75", "76", "80", "98", "116", "117", "118", "136", "394", "412", "413", "416", "434", "452", "473", "510", "657", "675", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778"],
		"CDFG" : "top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "65", "Name" : "top_entry39_U0"},
			{"ID" : "67", "Name" : "M2S_addr_ap_uint_8_ap_uint_8_U0"},
			{"ID" : "74", "Name" : "M2S_16_8_8_ap_int_128_ap_int_128_U0"},
			{"ID" : "75", "Name" : "PackReadBuffer_ap_int_16_U0"},
			{"ID" : "116", "Name" : "Loop_VITIS_LOOP_38_1_proc_U0"},
			{"ID" : "412", "Name" : "Loop_VITIS_LOOP_88_1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "679", "Name" : "S2M_16_8_8_ap_int_128_ap_int_128_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "M2S_16_8_8_ap_int_128_ap_int_128_U0", "Port" : "gmem0"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "679", "SubInstance" : "S2M_16_8_8_ap_int_128_ap_int_128_U0", "Port" : "gmem1"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "Loop_VITIS_LOOP_38_1_proc_U0", "Port" : "gmem2"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "412", "SubInstance" : "Loop_VITIS_LOOP_88_1_proc_U0", "Port" : "gmem3"}]},
			{"Name" : "gmem4", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "PackReadBuffer_ap_int_16_U0", "Port" : "gmem4"}]},
			{"Name" : "gmem5", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "M2S_addr_ap_uint_8_ap_uint_8_U0", "Port" : "gmem5"}]},
			{"Name" : "fmap", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "k0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "k0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant", "Type" : "None", "Direction" : "I"},
			{"Name" : "offsets", "Type" : "None", "Direction" : "I"},
			{"Name" : "D", "Type" : "None", "Direction" : "I"},
			{"Name" : "IC", "Type" : "None", "Direction" : "I"},
			{"Name" : "OC", "Type" : "None", "Direction" : "I"},
			{"Name" : "batch", "Type" : "None", "Direction" : "I"},
			{"Name" : "STRIDE_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "skip3", "Type" : "None", "Direction" : "I"},
			{"Name" : "skip1", "Type" : "None", "Direction" : "I"},
			{"Name" : "deform", "Type" : "None", "Direction" : "I"},
			{"Name" : "relu1", "Type" : "None", "Direction" : "I"},
			{"Name" : "relu3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem3_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem4_m_axi_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem5_m_axi_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_0_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_1_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_2_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_3_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_4_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_5_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_6_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_7_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_8_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_9_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_10_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_11_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_12_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_13_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_14_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_buffer_V_15_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k3_buffer_V_0_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k3_buffer_V_1_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k3_buffer_V_2_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k3_buffer_V_3_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k3_buffer_V_4_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k3_buffer_V_5_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k3_buffer_V_6_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k3_buffer_V_7_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k3_buffer_V_8_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer3_V_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer3_V_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer3_V_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer3_V_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer3_V_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer3_V_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer3_V_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer3_V_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer3_V_0_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer3_V_1_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer3_V_2_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer3_V_3_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer3_V_4_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer3_V_5_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer3_V_6_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer3_V_7_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer1_V_0_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer1_V_1_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer1_V_2_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer1_V_3_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer1_V_4_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer1_V_5_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer1_V_6_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_buffer1_V_7_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer1_V_0_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer1_V_1_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer1_V_2_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer1_V_3_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer1_V_4_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer1_V_5_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer1_V_6_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buffer1_V_7_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_entry39_U0", "Parent" : "0",
		"CDFG" : "top_entry39",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fmap", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "k0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "k0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant", "Type" : "None", "Direction" : "I"},
			{"Name" : "offsets", "Type" : "None", "Direction" : "I"},
			{"Name" : "D", "Type" : "None", "Direction" : "I"},
			{"Name" : "IC", "Type" : "None", "Direction" : "I"},
			{"Name" : "OC", "Type" : "None", "Direction" : "I"},
			{"Name" : "batch", "Type" : "None", "Direction" : "I"},
			{"Name" : "STRIDE_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "skip3", "Type" : "None", "Direction" : "I"},
			{"Name" : "skip1", "Type" : "None", "Direction" : "I"},
			{"Name" : "deform", "Type" : "None", "Direction" : "I"},
			{"Name" : "relu1", "Type" : "None", "Direction" : "I"},
			{"Name" : "relu3", "Type" : "None", "Direction" : "I"},
			{"Name" : "fmap_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "680", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fmap_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "679", "DependentChan" : "681", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k0_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "682", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k0_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k0_3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "412", "DependentChan" : "683", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k0_3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "quant_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "quant_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "offsets_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "685", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "offsets_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IC_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "IC_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IC_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "IC_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "675", "DependentChan" : "693", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "694", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "675", "DependentChan" : "697", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2_out9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "413", "DependentChan" : "699", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_out9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2_out10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "700", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_out10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "701", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "703", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "704", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "705", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "706", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1_out16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "708", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_out16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "deform_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "709", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "deform_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "deform_out17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "710", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "deform_out17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "relu1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "711", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "relu1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "relu3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "657", "DependentChan" : "712", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "relu3_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_split77_proc_U0", "Parent" : "0",
		"CDFG" : "Block_split77_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "65",
		"StartFifo" : "start_for_Block_split77_proc_U0_U",
		"Port" : [
			{"Name" : "D", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "686", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "698", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CONV_D_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "CONV_D_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CONV_D_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "675", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "CONV_D_out_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M2S_addr_ap_uint_8_ap_uint_8_U0", "Parent" : "0", "Child" : ["68", "69"],
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
			{"Name" : "s_mem", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_mem_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "offsets", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "685", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "offsets_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "694", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CONV_D_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "713", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "CONV_D_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "deform", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "709", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "deform_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "701", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_addr_ap_uint_8_ap_uint_8_U0.mul_32s_32s_32_5_1_U54", "Parent" : "67"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_addr_ap_uint_8_ap_uint_8_U0.mul_32ns_32ns_64_5_1_U55", "Parent" : "67"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_split7793_proc_U0", "Parent" : "0", "Child" : ["71", "72", "73"],
		"CDFG" : "Block_split7793_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "65",
		"StartFifo" : "start_for_Block_split7793_proc_U0_U",
		"Port" : [
			{"Name" : "D", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "687", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IC", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "689", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "IC_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "695", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_split7793_proc_U0.mul_32s_32s_32_5_1_U65", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_split7793_proc_U0.mul_32s_32s_32_5_1_U66", "Parent" : "70"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_split7793_proc_U0.mul_32s_32s_32_5_1_U67", "Parent" : "70"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M2S_16_8_8_ap_int_128_ap_int_128_U0", "Parent" : "0",
		"CDFG" : "M2S_16_8_8_ap_int_128_ap_int_128_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "s_mem", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_mem_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fmap", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "680", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fmap_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "REP", "Type" : "None", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "716", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PackReadBuffer_ap_int_16_U0", "Parent" : "0",
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
			{"Name" : "mem", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "684", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mem_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "scale1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "49"},
			{"Name" : "scale11", "Type" : "Memory", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "50"},
			{"Name" : "scale12", "Type" : "Memory", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "51"},
			{"Name" : "scale13", "Type" : "Memory", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "52"},
			{"Name" : "scale14", "Type" : "Memory", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "53"},
			{"Name" : "scale15", "Type" : "Memory", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "54"},
			{"Name" : "scale16", "Type" : "Memory", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "55"},
			{"Name" : "scale17", "Type" : "Memory", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "56"},
			{"Name" : "bias1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "57"},
			{"Name" : "bias18", "Type" : "Memory", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "58"},
			{"Name" : "bias19", "Type" : "Memory", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "59"},
			{"Name" : "bias110", "Type" : "Memory", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "60"},
			{"Name" : "bias111", "Type" : "Memory", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "61"},
			{"Name" : "bias112", "Type" : "Memory", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "62"},
			{"Name" : "bias113", "Type" : "Memory", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "63"},
			{"Name" : "bias114", "Type" : "Memory", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "64"},
			{"Name" : "scale3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "33"},
			{"Name" : "scale315", "Type" : "Memory", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "34"},
			{"Name" : "scale316", "Type" : "Memory", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "35"},
			{"Name" : "scale317", "Type" : "Memory", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "36"},
			{"Name" : "scale318", "Type" : "Memory", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "37"},
			{"Name" : "scale319", "Type" : "Memory", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "38"},
			{"Name" : "scale320", "Type" : "Memory", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "39"},
			{"Name" : "scale321", "Type" : "Memory", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "40"},
			{"Name" : "bias3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "41"},
			{"Name" : "bias322", "Type" : "Memory", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "42"},
			{"Name" : "bias323", "Type" : "Memory", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "43"},
			{"Name" : "bias324", "Type" : "Memory", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "44"},
			{"Name" : "bias325", "Type" : "Memory", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "45"},
			{"Name" : "bias326", "Type" : "Memory", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "46"},
			{"Name" : "bias327", "Type" : "Memory", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "47"},
			{"Name" : "bias328", "Type" : "Memory", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "48"},
			{"Name" : "OC", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "691", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "702", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "707", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_split7796_proc_U0", "Parent" : "0", "Child" : ["77", "78", "79"],
		"CDFG" : "Block_split7796_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "65",
		"StartFifo" : "start_for_Block_split7796_proc_U0_U",
		"Port" : [
			{"Name" : "D", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "688", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IC", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "690", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "IC_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "692", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "696", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "413", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "721", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_V_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "413", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_V_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_V_out_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "723", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_V_out_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IC_V_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "724", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "IC_V_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "725", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_out_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "412", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_out_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_1_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_1_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_1_out_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_1_out_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_out_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_out_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_out_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "731", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_out_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_out_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_out_out7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_out_out8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "734", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_out_out8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_out_out9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "735", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_out_out9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_out_out10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "736", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_out_out10_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_split7796_proc_U0.mul_32s_32s_32_5_1_U114", "Parent" : "76"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_split7796_proc_U0.mul_mul_16ns_16ns_32_4_1_U115", "Parent" : "76"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_split7796_proc_U0.mul_mul_16ns_16ns_32_4_1_U116", "Parent" : "76"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0", "Parent" : "0", "Child" : ["81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97"],
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
			{"Name" : "s_scale", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_scale_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "scale_buffer1_V_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "49"},
			{"Name" : "scale_buffer1_V_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "50"},
			{"Name" : "scale_buffer1_V_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "51"},
			{"Name" : "scale_buffer1_V_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "52"},
			{"Name" : "scale_buffer1_V_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "53"},
			{"Name" : "scale_buffer1_V_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "54"},
			{"Name" : "scale_buffer1_V_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "55"},
			{"Name" : "scale_buffer1_V_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "56"},
			{"Name" : "mul_ln31_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "729", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "732", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "718", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mul_32ns_12ns_44_5_1_U139", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U140", "Parent" : "80"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U141", "Parent" : "80"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U142", "Parent" : "80"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U143", "Parent" : "80"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U144", "Parent" : "80"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U145", "Parent" : "80"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U146", "Parent" : "80"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U147", "Parent" : "80"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U148", "Parent" : "80"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U149", "Parent" : "80"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U150", "Parent" : "80"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U151", "Parent" : "80"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U152", "Parent" : "80"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U153", "Parent" : "80"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U154", "Parent" : "80"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_21_U0.mux_864_16_1_1_U155", "Parent" : "80"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0", "Parent" : "0", "Child" : ["99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115"],
		"CDFG" : "M2S_repeat_16_16_ap_int_16_ap_int_256_22",
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
			{"Name" : "s_bias", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_bias_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buffer1_V_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "57"},
			{"Name" : "bias_buffer1_V_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "58"},
			{"Name" : "bias_buffer1_V_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "59"},
			{"Name" : "bias_buffer1_V_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "60"},
			{"Name" : "bias_buffer1_V_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "61"},
			{"Name" : "bias_buffer1_V_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "62"},
			{"Name" : "bias_buffer1_V_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "63"},
			{"Name" : "bias_buffer1_V_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "64"},
			{"Name" : "mul_ln31_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "730", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "733", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "719", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mul_32ns_12ns_44_5_1_U170", "Parent" : "98"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U171", "Parent" : "98"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U172", "Parent" : "98"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U173", "Parent" : "98"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U174", "Parent" : "98"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U175", "Parent" : "98"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U176", "Parent" : "98"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U177", "Parent" : "98"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U178", "Parent" : "98"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U179", "Parent" : "98"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U180", "Parent" : "98"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U181", "Parent" : "98"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U182", "Parent" : "98"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U183", "Parent" : "98"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U184", "Parent" : "98"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U185", "Parent" : "98"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_22_U0.mux_864_16_1_1_U186", "Parent" : "98"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_38_1_proc_U0", "Parent" : "0",
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
			{"Name" : "ret_V_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "727", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k1_buffer_V_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "8"},
			{"Name" : "k1_buffer_V_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "9"},
			{"Name" : "k1_buffer_V_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "10"},
			{"Name" : "k1_buffer_V_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "11"},
			{"Name" : "k1_buffer_V_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "12"},
			{"Name" : "k1_buffer_V_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "13"},
			{"Name" : "k1_buffer_V_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "14"},
			{"Name" : "k1_buffer_V_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "15"},
			{"Name" : "k1_buffer_V_8", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "16"},
			{"Name" : "k1_buffer_V_9", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "17"},
			{"Name" : "k1_buffer_V_10", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "18"},
			{"Name" : "k1_buffer_V_11", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "19"},
			{"Name" : "k1_buffer_V_12", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "20"},
			{"Name" : "k1_buffer_V_13", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "21"},
			{"Name" : "k1_buffer_V_14", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "22"},
			{"Name" : "k1_buffer_V_15", "Type" : "Memory", "Direction" : "O", "DependentProc" : "118", "DependentChan" : "23"},
			{"Name" : "k0_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "682", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k0_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_R", "Type" : "RtlSignal"}]}]},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_Z12conv1x1_packILi16ELi16ELi512ELi1024ELi512ELi8ELi24ELi4ELi16ELi16EEvRN3hls6streamI6ap_intIXmlT4_T_EELi0EEERNS1_IS2_IXmlT4_T0_EELi0EEEPS2_IXmlT6_T_EEPS2_IXT7_EEPS2_IXT8_EE7ap_uintILi16EESG_SG_ibb_exit_i_proc_U0", "Parent" : "0",
		"CDFG" : "Block_Z12conv1x1_packILi16ELi16ELi512ELi1024ELi512ELi8ELi24ELi4ELi16ELi16EEvRN3hls6streamI6ap_intIXmlT4_T_EELi0EEERNS1_IS2_IXmlT4_T0_EELi0EEEPS2_IXmlT6_T_EEPS2_IXT7_EEPS2_IXT8_EE7ap_uintILi16EESG_SG_ibb_exit_i_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "76",
		"StartFifo" : "start_for_Block_Z12conv1x1_packILi16ELi16ELi512ELi1024ELi512ELi8ELi24ELi4ELi1tde_U",
		"Port" : [
			{"Name" : "ret_V_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "728", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_1_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0", "Parent" : "0", "Child" : ["119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135"],
		"CDFG" : "M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_s",
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
			{"Name" : "k1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k1_buffer_V_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "8"},
			{"Name" : "k1_buffer_V_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "9"},
			{"Name" : "k1_buffer_V_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "10"},
			{"Name" : "k1_buffer_V_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "11"},
			{"Name" : "k1_buffer_V_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "12"},
			{"Name" : "k1_buffer_V_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "13"},
			{"Name" : "k1_buffer_V_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "14"},
			{"Name" : "k1_buffer_V_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "15"},
			{"Name" : "k1_buffer_V_8", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "16"},
			{"Name" : "k1_buffer_V_9", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "17"},
			{"Name" : "k1_buffer_V_10", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "18"},
			{"Name" : "k1_buffer_V_11", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "19"},
			{"Name" : "k1_buffer_V_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "20"},
			{"Name" : "k1_buffer_V_13", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "21"},
			{"Name" : "k1_buffer_V_14", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "22"},
			{"Name" : "k1_buffer_V_15", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "23"},
			{"Name" : "mul_ln31_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "731", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "117", "DependentChan" : "739", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "skip1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "708", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mul_32ns_24ns_56_5_1_U219", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U220", "Parent" : "118"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U221", "Parent" : "118"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U222", "Parent" : "118"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U223", "Parent" : "118"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U224", "Parent" : "118"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U225", "Parent" : "118"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U226", "Parent" : "118"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U227", "Parent" : "118"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U228", "Parent" : "118"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U229", "Parent" : "118"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U230", "Parent" : "118"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U231", "Parent" : "118"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U232", "Parent" : "118"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U233", "Parent" : "118"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U234", "Parent" : "118"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_U0.mux_1664_64_1_1_U235", "Parent" : "118"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0", "Parent" : "0", "Child" : ["137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393"],
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
		"StartSource" : "74",
		"StartFifo" : "start_for_conv1x1_v4_512_512_1024_16_16_24_8_4_U0_U",
		"Port" : [
			{"Name" : "fin", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "717", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fin_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_conv1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_conv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "118", "DependentChan" : "740", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "118", "DependentChan" : "741", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "724", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "IC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "725", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "118", "DependentChan" : "742", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "394", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.in_value_V_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U260", "Parent" : "136"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U261", "Parent" : "136"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U262", "Parent" : "136"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U263", "Parent" : "136"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U264", "Parent" : "136"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U265", "Parent" : "136"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U266", "Parent" : "136"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U267", "Parent" : "136"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U268", "Parent" : "136"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U269", "Parent" : "136"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U270", "Parent" : "136"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U271", "Parent" : "136"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U272", "Parent" : "136"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U273", "Parent" : "136"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U274", "Parent" : "136"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U275", "Parent" : "136"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U276", "Parent" : "136"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U277", "Parent" : "136"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U278", "Parent" : "136"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U279", "Parent" : "136"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U280", "Parent" : "136"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U281", "Parent" : "136"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U282", "Parent" : "136"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U283", "Parent" : "136"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U284", "Parent" : "136"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U285", "Parent" : "136"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U286", "Parent" : "136"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U287", "Parent" : "136"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U288", "Parent" : "136"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U289", "Parent" : "136"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U290", "Parent" : "136"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U291", "Parent" : "136"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U292", "Parent" : "136"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U293", "Parent" : "136"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U294", "Parent" : "136"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U295", "Parent" : "136"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U296", "Parent" : "136"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U297", "Parent" : "136"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U298", "Parent" : "136"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U299", "Parent" : "136"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U300", "Parent" : "136"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U301", "Parent" : "136"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U302", "Parent" : "136"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U303", "Parent" : "136"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U304", "Parent" : "136"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U305", "Parent" : "136"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U306", "Parent" : "136"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U307", "Parent" : "136"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U308", "Parent" : "136"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U309", "Parent" : "136"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U310", "Parent" : "136"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U311", "Parent" : "136"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U312", "Parent" : "136"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U313", "Parent" : "136"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U314", "Parent" : "136"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U315", "Parent" : "136"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U316", "Parent" : "136"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U317", "Parent" : "136"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U318", "Parent" : "136"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U319", "Parent" : "136"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U320", "Parent" : "136"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U321", "Parent" : "136"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U322", "Parent" : "136"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U323", "Parent" : "136"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U324", "Parent" : "136"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U325", "Parent" : "136"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U326", "Parent" : "136"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U327", "Parent" : "136"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U328", "Parent" : "136"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U329", "Parent" : "136"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U330", "Parent" : "136"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U331", "Parent" : "136"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U332", "Parent" : "136"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U333", "Parent" : "136"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U334", "Parent" : "136"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U335", "Parent" : "136"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U336", "Parent" : "136"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U337", "Parent" : "136"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U338", "Parent" : "136"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U339", "Parent" : "136"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U340", "Parent" : "136"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U341", "Parent" : "136"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U342", "Parent" : "136"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U343", "Parent" : "136"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U344", "Parent" : "136"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U345", "Parent" : "136"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U346", "Parent" : "136"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U347", "Parent" : "136"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U348", "Parent" : "136"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U349", "Parent" : "136"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U350", "Parent" : "136"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U351", "Parent" : "136"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U352", "Parent" : "136"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U353", "Parent" : "136"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U354", "Parent" : "136"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U355", "Parent" : "136"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U356", "Parent" : "136"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U357", "Parent" : "136"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U358", "Parent" : "136"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U359", "Parent" : "136"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U360", "Parent" : "136"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U361", "Parent" : "136"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U362", "Parent" : "136"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U363", "Parent" : "136"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U364", "Parent" : "136"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U365", "Parent" : "136"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U366", "Parent" : "136"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U367", "Parent" : "136"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U368", "Parent" : "136"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U369", "Parent" : "136"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U370", "Parent" : "136"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U371", "Parent" : "136"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U372", "Parent" : "136"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U373", "Parent" : "136"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U374", "Parent" : "136"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U375", "Parent" : "136"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U376", "Parent" : "136"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U377", "Parent" : "136"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U378", "Parent" : "136"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U379", "Parent" : "136"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U380", "Parent" : "136"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U381", "Parent" : "136"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U382", "Parent" : "136"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U383", "Parent" : "136"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U384", "Parent" : "136"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U385", "Parent" : "136"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U386", "Parent" : "136"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mul_8s_4s_12_1_1_U387", "Parent" : "136"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U388", "Parent" : "136"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U389", "Parent" : "136"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U390", "Parent" : "136"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U391", "Parent" : "136"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U392", "Parent" : "136"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U393", "Parent" : "136"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U394", "Parent" : "136"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U395", "Parent" : "136"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U396", "Parent" : "136"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U397", "Parent" : "136"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U398", "Parent" : "136"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U399", "Parent" : "136"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U400", "Parent" : "136"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U401", "Parent" : "136"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U402", "Parent" : "136"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U403", "Parent" : "136"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U404", "Parent" : "136"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U405", "Parent" : "136"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U406", "Parent" : "136"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U407", "Parent" : "136"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U408", "Parent" : "136"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U409", "Parent" : "136"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U410", "Parent" : "136"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U411", "Parent" : "136"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U412", "Parent" : "136"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U413", "Parent" : "136"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U414", "Parent" : "136"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U415", "Parent" : "136"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U416", "Parent" : "136"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U417", "Parent" : "136"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U418", "Parent" : "136"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U419", "Parent" : "136"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U420", "Parent" : "136"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U421", "Parent" : "136"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U422", "Parent" : "136"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U423", "Parent" : "136"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U424", "Parent" : "136"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U425", "Parent" : "136"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U426", "Parent" : "136"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U427", "Parent" : "136"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U428", "Parent" : "136"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U429", "Parent" : "136"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U430", "Parent" : "136"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U431", "Parent" : "136"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U432", "Parent" : "136"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U433", "Parent" : "136"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U434", "Parent" : "136"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U435", "Parent" : "136"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U436", "Parent" : "136"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U437", "Parent" : "136"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U438", "Parent" : "136"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U439", "Parent" : "136"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U440", "Parent" : "136"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U441", "Parent" : "136"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U442", "Parent" : "136"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U443", "Parent" : "136"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U444", "Parent" : "136"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U445", "Parent" : "136"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U446", "Parent" : "136"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U447", "Parent" : "136"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U448", "Parent" : "136"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U449", "Parent" : "136"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U450", "Parent" : "136"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U451", "Parent" : "136"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U452", "Parent" : "136"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U453", "Parent" : "136"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U454", "Parent" : "136"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U455", "Parent" : "136"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U456", "Parent" : "136"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U457", "Parent" : "136"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U458", "Parent" : "136"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U459", "Parent" : "136"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U460", "Parent" : "136"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U461", "Parent" : "136"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U462", "Parent" : "136"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U463", "Parent" : "136"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U464", "Parent" : "136"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U465", "Parent" : "136"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U466", "Parent" : "136"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U467", "Parent" : "136"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U468", "Parent" : "136"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U469", "Parent" : "136"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U470", "Parent" : "136"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U471", "Parent" : "136"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U472", "Parent" : "136"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U473", "Parent" : "136"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U474", "Parent" : "136"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U475", "Parent" : "136"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U476", "Parent" : "136"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U477", "Parent" : "136"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U478", "Parent" : "136"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U479", "Parent" : "136"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U480", "Parent" : "136"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U481", "Parent" : "136"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U482", "Parent" : "136"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U483", "Parent" : "136"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U484", "Parent" : "136"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U485", "Parent" : "136"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U486", "Parent" : "136"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U487", "Parent" : "136"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U488", "Parent" : "136"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U489", "Parent" : "136"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U490", "Parent" : "136"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U491", "Parent" : "136"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U492", "Parent" : "136"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U493", "Parent" : "136"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U494", "Parent" : "136"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U495", "Parent" : "136"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U496", "Parent" : "136"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U497", "Parent" : "136"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U498", "Parent" : "136"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U499", "Parent" : "136"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U500", "Parent" : "136"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U501", "Parent" : "136"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U502", "Parent" : "136"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U503", "Parent" : "136"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U504", "Parent" : "136"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U505", "Parent" : "136"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U506", "Parent" : "136"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U507", "Parent" : "136"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U508", "Parent" : "136"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U509", "Parent" : "136"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U510", "Parent" : "136"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U511", "Parent" : "136"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U512", "Parent" : "136"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U513", "Parent" : "136"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U514", "Parent" : "136"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv1x1_v4_512_512_1024_16_16_24_8_4_U0.mac_muladd_8s_4s_12s_13_4_1_U515", "Parent" : "136"},
	{"ID" : "394", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0", "Parent" : "0", "Child" : ["395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411"],
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
		"StartSource" : "65",
		"StartFifo" : "start_for_quantize_mul_shift_24_8_16_16_16_16_23_U0_U",
		"Port" : [
			{"Name" : "s_conv1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "743", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_conv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "f1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "f1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_scale", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "737", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_scale_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_bias", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "98", "DependentChan" : "738", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_bias_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "744", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "745", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "746", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "relu1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "711", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "relu1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "473", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mul_32ns_12ns_44_5_1_U529", "Parent" : "394"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U530", "Parent" : "394"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U531", "Parent" : "394"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U532", "Parent" : "394"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U533", "Parent" : "394"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U534", "Parent" : "394"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U535", "Parent" : "394"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U536", "Parent" : "394"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U537", "Parent" : "394"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U538", "Parent" : "394"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U539", "Parent" : "394"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U540", "Parent" : "394"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U541", "Parent" : "394"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U542", "Parent" : "394"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U543", "Parent" : "394"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U544", "Parent" : "394"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_23_U0.mac_muladd_24s_16s_17ns_40_4_1_U545", "Parent" : "394"},
	{"ID" : "412", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_88_1_proc_U0", "Parent" : "0",
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
			{"Name" : "OC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "726", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k3_buffer_V_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "24"},
			{"Name" : "k3_buffer_V_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "25"},
			{"Name" : "k3_buffer_V_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "26"},
			{"Name" : "k3_buffer_V_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "27"},
			{"Name" : "k3_buffer_V_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "28"},
			{"Name" : "k3_buffer_V_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "29"},
			{"Name" : "k3_buffer_V_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "30"},
			{"Name" : "k3_buffer_V_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "31"},
			{"Name" : "k3_buffer_V_8", "Type" : "Memory", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "32"},
			{"Name" : "k0_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "683", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k0_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_R", "Type" : "RtlSignal"}]}]},
	{"ID" : "413", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit_proc_U0", "Parent" : "0", "Child" : ["414", "415"],
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
		"StartSource" : "65",
		"StartFifo" : "start_for_Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintIqcK_U",
		"Port" : [
			{"Name" : "D_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "722", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "699", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "720", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln93_1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "416", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln93_1_loc_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "434", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln93_1_loc_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "452", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln93_1_loc_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "657", "DependentChan" : "752", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_out3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit_proc_U0.mul_32s_32s_32_5_1_U568", "Parent" : "413"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit_proc_U0.mul_mul_16ns_16ns_32_4_1_U569", "Parent" : "413"},
	{"ID" : "416", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0", "Parent" : "0", "Child" : ["417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433"],
		"CDFG" : "M2S_repeat_16_16_ap_int_16_ap_int_256_24",
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
			{"Name" : "s_scale_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "657", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_scale_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "scale_buffer3_V_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "33"},
			{"Name" : "scale_buffer3_V_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "34"},
			{"Name" : "scale_buffer3_V_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "35"},
			{"Name" : "scale_buffer3_V_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "36"},
			{"Name" : "scale_buffer3_V_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "37"},
			{"Name" : "scale_buffer3_V_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "38"},
			{"Name" : "scale_buffer3_V_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "39"},
			{"Name" : "scale_buffer3_V_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "40"},
			{"Name" : "mul_ln93_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "413", "DependentChan" : "749", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "734", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "703", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mul_32ns_12ns_44_5_1_U577", "Parent" : "416"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U578", "Parent" : "416"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U579", "Parent" : "416"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U580", "Parent" : "416"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U581", "Parent" : "416"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U582", "Parent" : "416"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U583", "Parent" : "416"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U584", "Parent" : "416"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U585", "Parent" : "416"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U586", "Parent" : "416"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U587", "Parent" : "416"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U588", "Parent" : "416"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U589", "Parent" : "416"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U590", "Parent" : "416"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U591", "Parent" : "416"},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U592", "Parent" : "416"},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_24_U0.mux_864_16_1_1_U593", "Parent" : "416"},
	{"ID" : "434", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0", "Parent" : "0", "Child" : ["435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451"],
		"CDFG" : "M2S_repeat_16_16_ap_int_16_ap_int_256_s",
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
			{"Name" : "s_bias_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "657", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_bias_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buffer3_V_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "41"},
			{"Name" : "bias_buffer3_V_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "42"},
			{"Name" : "bias_buffer3_V_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "43"},
			{"Name" : "bias_buffer3_V_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "44"},
			{"Name" : "bias_buffer3_V_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "45"},
			{"Name" : "bias_buffer3_V_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "46"},
			{"Name" : "bias_buffer3_V_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "47"},
			{"Name" : "bias_buffer3_V_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "48"},
			{"Name" : "mul_ln93_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "413", "DependentChan" : "750", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "735", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "704", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mul_32ns_12ns_44_5_1_U606", "Parent" : "434"},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U607", "Parent" : "434"},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U608", "Parent" : "434"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U609", "Parent" : "434"},
	{"ID" : "439", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U610", "Parent" : "434"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U611", "Parent" : "434"},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U612", "Parent" : "434"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U613", "Parent" : "434"},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U614", "Parent" : "434"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U615", "Parent" : "434"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U616", "Parent" : "434"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U617", "Parent" : "434"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U618", "Parent" : "434"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U619", "Parent" : "434"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U620", "Parent" : "434"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U621", "Parent" : "434"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_16_16_ap_int_16_ap_int_256_U0.mux_864_16_1_1_U622", "Parent" : "434"},
	{"ID" : "452", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0", "Parent" : "0", "Child" : ["453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472"],
		"CDFG" : "M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "k3s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "510", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k3s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k3_buffer_V_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "412", "DependentChan" : "24"},
			{"Name" : "k3_buffer_V_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "412", "DependentChan" : "25"},
			{"Name" : "k3_buffer_V_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "412", "DependentChan" : "26"},
			{"Name" : "k3_buffer_V_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "412", "DependentChan" : "27"},
			{"Name" : "k3_buffer_V_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : "412", "DependentChan" : "28"},
			{"Name" : "k3_buffer_V_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : "412", "DependentChan" : "29"},
			{"Name" : "k3_buffer_V_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : "412", "DependentChan" : "30"},
			{"Name" : "k3_buffer_V_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : "412", "DependentChan" : "31"},
			{"Name" : "k3_buffer_V_8", "Type" : "Memory", "Direction" : "I", "DependentProc" : "412", "DependentChan" : "32"},
			{"Name" : "mul_ln93_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "413", "DependentChan" : "751", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "736", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "705", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mul_32ns_12ns_44_5_1_U635", "Parent" : "452"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.urem_16ns_5ns_16_20_1_U636", "Parent" : "452"},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mux_964_64_1_1_U637", "Parent" : "452"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mux_964_64_1_1_U638", "Parent" : "452"},
	{"ID" : "457", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mux_964_64_1_1_U639", "Parent" : "452"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mux_964_64_1_1_U640", "Parent" : "452"},
	{"ID" : "459", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mux_964_64_1_1_U641", "Parent" : "452"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mux_964_64_1_1_U642", "Parent" : "452"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mux_964_64_1_1_U643", "Parent" : "452"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mux_964_64_1_1_U644", "Parent" : "452"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mux_964_64_1_1_U645", "Parent" : "452"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mul_mul_16ns_18ns_33_4_1_U646", "Parent" : "452"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mul_mul_16ns_18ns_33_4_1_U647", "Parent" : "452"},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mul_mul_16ns_18ns_33_4_1_U648", "Parent" : "452"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mul_mul_16ns_18ns_33_4_1_U649", "Parent" : "452"},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mul_mul_16ns_18ns_33_4_1_U650", "Parent" : "452"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mul_mul_16ns_18ns_33_4_1_U651", "Parent" : "452"},
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mul_mul_16ns_18ns_33_4_1_U652", "Parent" : "452"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mul_mul_16ns_18ns_33_4_1_U653", "Parent" : "452"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_U0.mul_mul_16ns_18ns_33_4_1_U654", "Parent" : "452"},
	{"ID" : "473", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0", "Parent" : "0", "Child" : ["474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509"],
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
		"StartSource" : "65",
		"StartFifo" : "start_for_conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanDatrcU_U",
		"Port" : [
			{"Name" : "f1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "394", "DependentChan" : "747", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "f1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "offset_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "715", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "offset_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_layer", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "510", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_layer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "723", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "394", "DependentChan" : "748", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "721", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "700", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "706", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "deform", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "710", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "deform_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_V_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "510", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_V_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "510", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "510", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "510", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "510", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_0_U", "Parent" : "473"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_1_U", "Parent" : "473"},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_2_U", "Parent" : "473"},
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_3_U", "Parent" : "473"},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_4_U", "Parent" : "473"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_5_U", "Parent" : "473"},
	{"ID" : "480", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_6_U", "Parent" : "473"},
	{"ID" : "481", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_7_U", "Parent" : "473"},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_8_U", "Parent" : "473"},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_9_U", "Parent" : "473"},
	{"ID" : "484", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_10_U", "Parent" : "473"},
	{"ID" : "485", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_11_U", "Parent" : "473"},
	{"ID" : "486", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_12_U", "Parent" : "473"},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_13_U", "Parent" : "473"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.line_buff_V_14_U", "Parent" : "473"},
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mul_32ns_33ns_65_5_1_U671", "Parent" : "473"},
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.urem_32s_5ns_4_36_seq_1_U672", "Parent" : "473"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.srem_17ns_3ns_2_21_seq_1_U673", "Parent" : "473"},
	{"ID" : "492", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.srem_17ns_3ns_2_21_seq_1_U674", "Parent" : "473"},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.urem_32s_5ns_4_36_seq_1_U675", "Parent" : "473"},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mul_10s_10s_10_1_1_U676", "Parent" : "473"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.urem_32s_5ns_4_36_seq_1_U677", "Parent" : "473"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.urem_32s_5ns_4_36_seq_1_U678", "Parent" : "473"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mul_10s_10s_10_1_1_U679", "Parent" : "473"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mul_10s_10s_10_1_1_U680", "Parent" : "473"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mul_10s_10s_10_1_1_U681", "Parent" : "473"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mux_154_128_1_1_U682", "Parent" : "473"},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mux_154_128_1_1_U683", "Parent" : "473"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mux_154_128_1_1_U684", "Parent" : "473"},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mux_154_128_1_1_U685", "Parent" : "473"},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mux_154_128_1_1_U686", "Parent" : "473"},
	{"ID" : "505", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mux_154_128_1_1_U687", "Parent" : "473"},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mux_154_128_1_1_U688", "Parent" : "473"},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mux_154_128_1_1_U689", "Parent" : "473"},
	{"ID" : "508", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.mux_154_128_1_1_U690", "Parent" : "473"},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanData_9u_128u_U0.am_addmul_16ns_5ns_16ns_33_4_1_U691", "Parent" : "473"},
	{"ID" : "510", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0", "Parent" : "0", "Child" : ["511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656"],
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
		"StartSource" : "452",
		"StartFifo" : "start_for_dw_deform_M_512_1024_16_24_8_4_1_U0_U",
		"Port" : [
			{"Name" : "in_layer", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "756", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_layer_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_conv3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "657", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_conv3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k3s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "452", "DependentChan" : "755", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "k3s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "757", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "758", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "759", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "760", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "473", "DependentChan" : "761", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "657", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "657", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_32ns_32ns_64_5_1_U713", "Parent" : "510"},
	{"ID" : "512", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U714", "Parent" : "510"},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U715", "Parent" : "510"},
	{"ID" : "514", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U716", "Parent" : "510"},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U717", "Parent" : "510"},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U718", "Parent" : "510"},
	{"ID" : "517", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U719", "Parent" : "510"},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U720", "Parent" : "510"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U721", "Parent" : "510"},
	{"ID" : "520", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U722", "Parent" : "510"},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U723", "Parent" : "510"},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U724", "Parent" : "510"},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U725", "Parent" : "510"},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U726", "Parent" : "510"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U727", "Parent" : "510"},
	{"ID" : "526", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U728", "Parent" : "510"},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U729", "Parent" : "510"},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U730", "Parent" : "510"},
	{"ID" : "529", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U731", "Parent" : "510"},
	{"ID" : "530", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U732", "Parent" : "510"},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U733", "Parent" : "510"},
	{"ID" : "532", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U734", "Parent" : "510"},
	{"ID" : "533", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U735", "Parent" : "510"},
	{"ID" : "534", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U736", "Parent" : "510"},
	{"ID" : "535", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U737", "Parent" : "510"},
	{"ID" : "536", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U738", "Parent" : "510"},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U739", "Parent" : "510"},
	{"ID" : "538", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U740", "Parent" : "510"},
	{"ID" : "539", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U741", "Parent" : "510"},
	{"ID" : "540", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U742", "Parent" : "510"},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U743", "Parent" : "510"},
	{"ID" : "542", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U744", "Parent" : "510"},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U745", "Parent" : "510"},
	{"ID" : "544", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U746", "Parent" : "510"},
	{"ID" : "545", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U747", "Parent" : "510"},
	{"ID" : "546", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U748", "Parent" : "510"},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U749", "Parent" : "510"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U750", "Parent" : "510"},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U751", "Parent" : "510"},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U752", "Parent" : "510"},
	{"ID" : "551", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U753", "Parent" : "510"},
	{"ID" : "552", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U754", "Parent" : "510"},
	{"ID" : "553", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U755", "Parent" : "510"},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U756", "Parent" : "510"},
	{"ID" : "555", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U757", "Parent" : "510"},
	{"ID" : "556", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U758", "Parent" : "510"},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U759", "Parent" : "510"},
	{"ID" : "558", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U760", "Parent" : "510"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_8s_4s_12_1_1_U761", "Parent" : "510"},
	{"ID" : "560", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mul_mul_16ns_16ns_32_4_1_U762", "Parent" : "510"},
	{"ID" : "561", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U763", "Parent" : "510"},
	{"ID" : "562", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U764", "Parent" : "510"},
	{"ID" : "563", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U765", "Parent" : "510"},
	{"ID" : "564", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U766", "Parent" : "510"},
	{"ID" : "565", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U767", "Parent" : "510"},
	{"ID" : "566", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U768", "Parent" : "510"},
	{"ID" : "567", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U769", "Parent" : "510"},
	{"ID" : "568", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U770", "Parent" : "510"},
	{"ID" : "569", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U771", "Parent" : "510"},
	{"ID" : "570", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U772", "Parent" : "510"},
	{"ID" : "571", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U773", "Parent" : "510"},
	{"ID" : "572", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U774", "Parent" : "510"},
	{"ID" : "573", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U775", "Parent" : "510"},
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U776", "Parent" : "510"},
	{"ID" : "575", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U777", "Parent" : "510"},
	{"ID" : "576", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U778", "Parent" : "510"},
	{"ID" : "577", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U779", "Parent" : "510"},
	{"ID" : "578", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U780", "Parent" : "510"},
	{"ID" : "579", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U781", "Parent" : "510"},
	{"ID" : "580", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U782", "Parent" : "510"},
	{"ID" : "581", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U783", "Parent" : "510"},
	{"ID" : "582", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U784", "Parent" : "510"},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U785", "Parent" : "510"},
	{"ID" : "584", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U786", "Parent" : "510"},
	{"ID" : "585", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U787", "Parent" : "510"},
	{"ID" : "586", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U788", "Parent" : "510"},
	{"ID" : "587", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U789", "Parent" : "510"},
	{"ID" : "588", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U790", "Parent" : "510"},
	{"ID" : "589", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U791", "Parent" : "510"},
	{"ID" : "590", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U792", "Parent" : "510"},
	{"ID" : "591", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U793", "Parent" : "510"},
	{"ID" : "592", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U794", "Parent" : "510"},
	{"ID" : "593", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U795", "Parent" : "510"},
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U796", "Parent" : "510"},
	{"ID" : "595", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U797", "Parent" : "510"},
	{"ID" : "596", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U798", "Parent" : "510"},
	{"ID" : "597", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U799", "Parent" : "510"},
	{"ID" : "598", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U800", "Parent" : "510"},
	{"ID" : "599", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U801", "Parent" : "510"},
	{"ID" : "600", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U802", "Parent" : "510"},
	{"ID" : "601", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U803", "Parent" : "510"},
	{"ID" : "602", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U804", "Parent" : "510"},
	{"ID" : "603", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U805", "Parent" : "510"},
	{"ID" : "604", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U806", "Parent" : "510"},
	{"ID" : "605", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U807", "Parent" : "510"},
	{"ID" : "606", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U808", "Parent" : "510"},
	{"ID" : "607", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U809", "Parent" : "510"},
	{"ID" : "608", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_12s_13_4_1_U810", "Parent" : "510"},
	{"ID" : "609", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U811", "Parent" : "510"},
	{"ID" : "610", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U812", "Parent" : "510"},
	{"ID" : "611", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U813", "Parent" : "510"},
	{"ID" : "612", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U814", "Parent" : "510"},
	{"ID" : "613", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U815", "Parent" : "510"},
	{"ID" : "614", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U816", "Parent" : "510"},
	{"ID" : "615", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U817", "Parent" : "510"},
	{"ID" : "616", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U818", "Parent" : "510"},
	{"ID" : "617", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U819", "Parent" : "510"},
	{"ID" : "618", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U820", "Parent" : "510"},
	{"ID" : "619", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U821", "Parent" : "510"},
	{"ID" : "620", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U822", "Parent" : "510"},
	{"ID" : "621", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U823", "Parent" : "510"},
	{"ID" : "622", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U824", "Parent" : "510"},
	{"ID" : "623", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U825", "Parent" : "510"},
	{"ID" : "624", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U826", "Parent" : "510"},
	{"ID" : "625", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U827", "Parent" : "510"},
	{"ID" : "626", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U828", "Parent" : "510"},
	{"ID" : "627", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U829", "Parent" : "510"},
	{"ID" : "628", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U830", "Parent" : "510"},
	{"ID" : "629", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U831", "Parent" : "510"},
	{"ID" : "630", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U832", "Parent" : "510"},
	{"ID" : "631", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U833", "Parent" : "510"},
	{"ID" : "632", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U834", "Parent" : "510"},
	{"ID" : "633", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U835", "Parent" : "510"},
	{"ID" : "634", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U836", "Parent" : "510"},
	{"ID" : "635", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U837", "Parent" : "510"},
	{"ID" : "636", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U838", "Parent" : "510"},
	{"ID" : "637", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U839", "Parent" : "510"},
	{"ID" : "638", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U840", "Parent" : "510"},
	{"ID" : "639", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U841", "Parent" : "510"},
	{"ID" : "640", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_13_4_1_U842", "Parent" : "510"},
	{"ID" : "641", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U843", "Parent" : "510"},
	{"ID" : "642", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U844", "Parent" : "510"},
	{"ID" : "643", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U845", "Parent" : "510"},
	{"ID" : "644", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U846", "Parent" : "510"},
	{"ID" : "645", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U847", "Parent" : "510"},
	{"ID" : "646", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U848", "Parent" : "510"},
	{"ID" : "647", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U849", "Parent" : "510"},
	{"ID" : "648", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U850", "Parent" : "510"},
	{"ID" : "649", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U851", "Parent" : "510"},
	{"ID" : "650", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U852", "Parent" : "510"},
	{"ID" : "651", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U853", "Parent" : "510"},
	{"ID" : "652", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U854", "Parent" : "510"},
	{"ID" : "653", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U855", "Parent" : "510"},
	{"ID" : "654", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U856", "Parent" : "510"},
	{"ID" : "655", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U857", "Parent" : "510"},
	{"ID" : "656", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dw_deform_M_512_1024_16_24_8_4_1_U0.mac_muladd_8s_4s_13s_14_4_1_U858", "Parent" : "510"},
	{"ID" : "657", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0", "Parent" : "0", "Child" : ["658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674"],
		"CDFG" : "quantize_mul_shift_24_8_16_16_16_16_s",
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
		"StartSource" : "65",
		"StartFifo" : "start_for_quantize_mul_shift_24_8_16_16_16_16_U0_U",
		"Port" : [
			{"Name" : "s_conv3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "510", "DependentChan" : "762", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_conv3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "f3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "679", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "f3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_scale_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "416", "DependentChan" : "753", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_scale_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_bias_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "434", "DependentChan" : "754", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_bias_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln93_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "413", "DependentChan" : "752", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln93_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "510", "DependentChan" : "763", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "510", "DependentChan" : "764", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "relu3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "712", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "relu3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "658", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mul_32ns_12ns_44_5_1_U871", "Parent" : "657"},
	{"ID" : "659", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U872", "Parent" : "657"},
	{"ID" : "660", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U873", "Parent" : "657"},
	{"ID" : "661", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U874", "Parent" : "657"},
	{"ID" : "662", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U875", "Parent" : "657"},
	{"ID" : "663", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U876", "Parent" : "657"},
	{"ID" : "664", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U877", "Parent" : "657"},
	{"ID" : "665", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U878", "Parent" : "657"},
	{"ID" : "666", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U879", "Parent" : "657"},
	{"ID" : "667", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U880", "Parent" : "657"},
	{"ID" : "668", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U881", "Parent" : "657"},
	{"ID" : "669", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U882", "Parent" : "657"},
	{"ID" : "670", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U883", "Parent" : "657"},
	{"ID" : "671", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U884", "Parent" : "657"},
	{"ID" : "672", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U885", "Parent" : "657"},
	{"ID" : "673", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U886", "Parent" : "657"},
	{"ID" : "674", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.quantize_mul_shift_24_8_16_16_16_16_U0.mac_muladd_24s_16s_17ns_40_4_1_U887", "Parent" : "657"},
	{"ID" : "675", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit89_proc_U0", "Parent" : "0", "Child" : ["676", "677", "678"],
		"CDFG" : "Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit89_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "65",
		"StartFifo" : "start_for_Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintIsc4_U",
		"Port" : [
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "697", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "693", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "CONV_D_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "714", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "CONV_D_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "select_ln169_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "679", "DependentChan" : "766", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "select_ln169_loc_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "676", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit89_proc_U0.mul_32s_32s_32_5_1_U896", "Parent" : "675"},
	{"ID" : "677", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit89_proc_U0.mul_32s_32s_32_5_1_U897", "Parent" : "675"},
	{"ID" : "678", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit89_proc_U0.mul_32s_32s_32_5_1_U898", "Parent" : "675"},
	{"ID" : "679", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.S2M_16_8_8_ap_int_128_ap_int_128_U0", "Parent" : "0",
		"CDFG" : "S2M_16_8_8_ap_int_128_ap_int_128_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "65",
		"StartFifo" : "start_for_S2M_16_8_8_ap_int_128_ap_int_128_U0_U",
		"Port" : [
			{"Name" : "s_mem", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "657", "DependentChan" : "765", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "s_mem_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "681", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "select_ln169_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "675", "DependentChan" : "766", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "select_ln169_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "680", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmap_c_U", "Parent" : "0"},
	{"ID" : "681", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_c_U", "Parent" : "0"},
	{"ID" : "682", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k0_1_c_U", "Parent" : "0"},
	{"ID" : "683", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k0_3_c_U", "Parent" : "0"},
	{"ID" : "684", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.quant_c_U", "Parent" : "0"},
	{"ID" : "685", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.offsets_c_U", "Parent" : "0"},
	{"ID" : "686", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_c_U", "Parent" : "0"},
	{"ID" : "687", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_c123_U", "Parent" : "0"},
	{"ID" : "688", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_c124_U", "Parent" : "0"},
	{"ID" : "689", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.IC_c_U", "Parent" : "0"},
	{"ID" : "690", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.IC_c125_U", "Parent" : "0"},
	{"ID" : "691", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OC_c_U", "Parent" : "0"},
	{"ID" : "692", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OC_c126_U", "Parent" : "0"},
	{"ID" : "693", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OC_c127_U", "Parent" : "0"},
	{"ID" : "694", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_c_U", "Parent" : "0"},
	{"ID" : "695", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_c128_U", "Parent" : "0"},
	{"ID" : "696", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_c129_U", "Parent" : "0"},
	{"ID" : "697", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_c130_U", "Parent" : "0"},
	{"ID" : "698", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.STRIDE_2_c_U", "Parent" : "0"},
	{"ID" : "699", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.STRIDE_2_c131_U", "Parent" : "0"},
	{"ID" : "700", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.STRIDE_2_c132_U", "Parent" : "0"},
	{"ID" : "701", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip3_c_U", "Parent" : "0"},
	{"ID" : "702", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip3_c133_U", "Parent" : "0"},
	{"ID" : "703", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip3_c134_U", "Parent" : "0"},
	{"ID" : "704", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip3_c135_U", "Parent" : "0"},
	{"ID" : "705", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip3_c136_U", "Parent" : "0"},
	{"ID" : "706", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip3_c137_U", "Parent" : "0"},
	{"ID" : "707", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip1_c_U", "Parent" : "0"},
	{"ID" : "708", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip1_c138_U", "Parent" : "0"},
	{"ID" : "709", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.deform_c_U", "Parent" : "0"},
	{"ID" : "710", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.deform_c139_U", "Parent" : "0"},
	{"ID" : "711", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu1_c_U", "Parent" : "0"},
	{"ID" : "712", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu3_c_U", "Parent" : "0"},
	{"ID" : "713", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CONV_D_loc_c_U", "Parent" : "0"},
	{"ID" : "714", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CONV_D_loc_c140_U", "Parent" : "0"},
	{"ID" : "715", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.offset_s_U", "Parent" : "0"},
	{"ID" : "716", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.select_ln160_loc_channel_U", "Parent" : "0"},
	{"ID" : "717", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fin_U", "Parent" : "0"},
	{"ID" : "718", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip1_c141_U", "Parent" : "0"},
	{"ID" : "719", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip1_c142_U", "Parent" : "0"},
	{"ID" : "720", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_c143_U", "Parent" : "0"},
	{"ID" : "721", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_c144_U", "Parent" : "0"},
	{"ID" : "722", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_V_loc_c_U", "Parent" : "0"},
	{"ID" : "723", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_V_loc_c145_U", "Parent" : "0"},
	{"ID" : "724", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.IC_V_loc_c_U", "Parent" : "0"},
	{"ID" : "725", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OC_V_loc_c_U", "Parent" : "0"},
	{"ID" : "726", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OC_V_loc_c146_U", "Parent" : "0"},
	{"ID" : "727", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ret_V_1_loc_c_U", "Parent" : "0"},
	{"ID" : "728", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ret_V_1_loc_c147_U", "Parent" : "0"},
	{"ID" : "729", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_ln31_1_loc_c_U", "Parent" : "0"},
	{"ID" : "730", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_ln31_1_loc_c148_U", "Parent" : "0"},
	{"ID" : "731", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_ln31_1_loc_c149_U", "Parent" : "0"},
	{"ID" : "732", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ret_V_cast_loc_c_U", "Parent" : "0"},
	{"ID" : "733", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ret_V_cast_loc_c150_U", "Parent" : "0"},
	{"ID" : "734", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ret_V_cast_loc_c151_U", "Parent" : "0"},
	{"ID" : "735", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ret_V_cast_loc_c152_U", "Parent" : "0"},
	{"ID" : "736", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ret_V_cast_loc_c153_U", "Parent" : "0"},
	{"ID" : "737", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_scale_U", "Parent" : "0"},
	{"ID" : "738", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_bias_U", "Parent" : "0"},
	{"ID" : "739", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lshr_ln44_cast_loc_channel_U", "Parent" : "0"},
	{"ID" : "740", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k1_U", "Parent" : "0"},
	{"ID" : "741", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_ln31_1_loc_c154_U", "Parent" : "0"},
	{"ID" : "742", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip1_c155_U", "Parent" : "0"},
	{"ID" : "743", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_conv1_U", "Parent" : "0"},
	{"ID" : "744", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_ln31_1_loc_c156_U", "Parent" : "0"},
	{"ID" : "745", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OC_V_loc_c157_U", "Parent" : "0"},
	{"ID" : "746", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip1_c158_U", "Parent" : "0"},
	{"ID" : "747", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.f1_U", "Parent" : "0"},
	{"ID" : "748", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OC_V_loc_c159_U", "Parent" : "0"},
	{"ID" : "749", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_ln93_1_loc_c_U", "Parent" : "0"},
	{"ID" : "750", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_ln93_1_loc_c160_U", "Parent" : "0"},
	{"ID" : "751", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_ln93_1_loc_c161_U", "Parent" : "0"},
	{"ID" : "752", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_ln93_1_loc_c162_U", "Parent" : "0"},
	{"ID" : "753", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_scale_1_U", "Parent" : "0"},
	{"ID" : "754", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_bias_1_U", "Parent" : "0"},
	{"ID" : "755", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k3s_U", "Parent" : "0"},
	{"ID" : "756", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_layer_U", "Parent" : "0"},
	{"ID" : "757", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.D_V_loc_c163_U", "Parent" : "0"},
	{"ID" : "758", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OC_V_loc_c164_U", "Parent" : "0"},
	{"ID" : "759", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.batch_c165_U", "Parent" : "0"},
	{"ID" : "760", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.STRIDE_2_c166_U", "Parent" : "0"},
	{"ID" : "761", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip3_c167_U", "Parent" : "0"},
	{"ID" : "762", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_conv3_U", "Parent" : "0"},
	{"ID" : "763", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OC_V_loc_c168_U", "Parent" : "0"},
	{"ID" : "764", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skip3_c169_U", "Parent" : "0"},
	{"ID" : "765", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.f3_U", "Parent" : "0"},
	{"ID" : "766", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.select_ln169_loc_c_U", "Parent" : "0"},
	{"ID" : "767", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_split77_proc_U0_U", "Parent" : "0"},
	{"ID" : "768", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_split7793_proc_U0_U", "Parent" : "0"},
	{"ID" : "769", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_split7796_proc_U0_U", "Parent" : "0"},
	{"ID" : "770", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_quantize_mul_shift_24_8_16_16_16_16_23_U0_U", "Parent" : "0"},
	{"ID" : "771", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintIqcK_U", "Parent" : "0"},
	{"ID" : "772", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_3x3_linebuffer_512_1024_1024_16_8_1024_ap_int_128_MultiChanDatrcU_U", "Parent" : "0"},
	{"ID" : "773", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_quantize_mul_shift_24_8_16_16_16_16_U0_U", "Parent" : "0"},
	{"ID" : "774", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintIsc4_U", "Parent" : "0"},
	{"ID" : "775", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_S2M_16_8_8_ap_int_128_ap_int_128_U0_U", "Parent" : "0"},
	{"ID" : "776", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv1x1_v4_512_512_1024_16_16_24_8_4_U0_U", "Parent" : "0"},
	{"ID" : "777", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_Z12conv1x1_packILi16ELi16ELi512ELi1024ELi512ELi8ELi24ELi4ELi1tde_U", "Parent" : "0"},
	{"ID" : "778", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dw_deform_M_512_1024_16_24_8_4_1_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	top {
		gmem0 {Type I LastRead 9 FirstWrite -1}
		gmem1 {Type O LastRead 3 FirstWrite 4}
		gmem2 {Type I LastRead 9 FirstWrite -1}
		gmem3 {Type I LastRead 9 FirstWrite -1}
		gmem4 {Type I LastRead 38 FirstWrite -1}
		gmem5 {Type I LastRead 20 FirstWrite -1}
		fmap {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		k0_1 {Type I LastRead 0 FirstWrite -1}
		k0_3 {Type I LastRead 0 FirstWrite -1}
		quant {Type I LastRead 0 FirstWrite -1}
		offsets {Type I LastRead 0 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}
		IC {Type I LastRead 0 FirstWrite -1}
		OC {Type I LastRead 0 FirstWrite -1}
		batch {Type I LastRead 0 FirstWrite -1}
		STRIDE_2 {Type I LastRead 0 FirstWrite -1}
		skip3 {Type I LastRead 0 FirstWrite -1}
		skip1 {Type I LastRead 0 FirstWrite -1}
		deform {Type I LastRead 0 FirstWrite -1}
		relu1 {Type I LastRead 0 FirstWrite -1}
		relu3 {Type I LastRead 0 FirstWrite -1}}
	top_entry39 {
		fmap {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		k0_1 {Type I LastRead 0 FirstWrite -1}
		k0_3 {Type I LastRead 0 FirstWrite -1}
		quant {Type I LastRead 0 FirstWrite -1}
		offsets {Type I LastRead 0 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}
		IC {Type I LastRead 0 FirstWrite -1}
		OC {Type I LastRead 0 FirstWrite -1}
		batch {Type I LastRead 0 FirstWrite -1}
		STRIDE_2 {Type I LastRead 0 FirstWrite -1}
		skip3 {Type I LastRead 0 FirstWrite -1}
		skip1 {Type I LastRead 0 FirstWrite -1}
		deform {Type I LastRead 0 FirstWrite -1}
		relu1 {Type I LastRead 0 FirstWrite -1}
		relu3 {Type I LastRead 0 FirstWrite -1}
		fmap_out {Type O LastRead -1 FirstWrite 0}
		out_out {Type O LastRead -1 FirstWrite 0}
		k0_1_out {Type O LastRead -1 FirstWrite 0}
		k0_3_out {Type O LastRead -1 FirstWrite 0}
		quant_out {Type O LastRead -1 FirstWrite 0}
		offsets_out {Type O LastRead -1 FirstWrite 0}
		D_out {Type O LastRead -1 FirstWrite 0}
		D_out1 {Type O LastRead -1 FirstWrite 0}
		D_out2 {Type O LastRead -1 FirstWrite 0}
		IC_out {Type O LastRead -1 FirstWrite 0}
		IC_out3 {Type O LastRead -1 FirstWrite 0}
		OC_out {Type O LastRead -1 FirstWrite 0}
		OC_out4 {Type O LastRead -1 FirstWrite 0}
		OC_out5 {Type O LastRead -1 FirstWrite 0}
		batch_out {Type O LastRead -1 FirstWrite 0}
		batch_out6 {Type O LastRead -1 FirstWrite 0}
		batch_out7 {Type O LastRead -1 FirstWrite 0}
		batch_out8 {Type O LastRead -1 FirstWrite 0}
		STRIDE_2_out {Type O LastRead -1 FirstWrite 0}
		STRIDE_2_out9 {Type O LastRead -1 FirstWrite 0}
		STRIDE_2_out10 {Type O LastRead -1 FirstWrite 0}
		skip3_out {Type O LastRead -1 FirstWrite 0}
		skip3_out11 {Type O LastRead -1 FirstWrite 0}
		skip3_out12 {Type O LastRead -1 FirstWrite 0}
		skip3_out13 {Type O LastRead -1 FirstWrite 0}
		skip3_out14 {Type O LastRead -1 FirstWrite 0}
		skip3_out15 {Type O LastRead -1 FirstWrite 0}
		skip1_out {Type O LastRead -1 FirstWrite 0}
		skip1_out16 {Type O LastRead -1 FirstWrite 0}
		deform_out {Type O LastRead -1 FirstWrite 0}
		deform_out17 {Type O LastRead -1 FirstWrite 0}
		relu1_out {Type O LastRead -1 FirstWrite 0}
		relu3_out {Type O LastRead -1 FirstWrite 0}}
	Block_split77_proc {
		D {Type I LastRead 0 FirstWrite -1}
		STRIDE_2 {Type I LastRead 0 FirstWrite -1}
		CONV_D_out_out {Type O LastRead -1 FirstWrite 1}
		CONV_D_out_out1 {Type O LastRead -1 FirstWrite 1}}
	M2S_addr_ap_uint_8_ap_uint_8_s {
		gmem5 {Type I LastRead 20 FirstWrite -1}
		s_mem {Type O LastRead -1 FirstWrite 21}
		offsets {Type I LastRead 0 FirstWrite -1}
		batch {Type I LastRead 0 FirstWrite -1}
		CONV_D_loc {Type I LastRead 0 FirstWrite -1}
		deform {Type I LastRead 0 FirstWrite -1}
		skip3 {Type I LastRead 0 FirstWrite -1}}
	Block_split7793_proc {
		D {Type I LastRead 0 FirstWrite -1}
		IC {Type I LastRead 0 FirstWrite -1}
		batch {Type I LastRead 0 FirstWrite -1}}
	M2S_16_8_8_ap_int_128_ap_int_128_s {
		gmem0 {Type I LastRead 9 FirstWrite -1}
		s_mem {Type O LastRead -1 FirstWrite 10}
		fmap {Type I LastRead 0 FirstWrite -1}
		REP {Type I LastRead 0 FirstWrite -1}}
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
		skip1_out1 {Type O LastRead -1 FirstWrite 0}}
	Block_split7796_proc {
		D {Type I LastRead 0 FirstWrite -1}
		IC {Type I LastRead 0 FirstWrite -1}
		OC {Type I LastRead 0 FirstWrite -1}
		batch {Type I LastRead 0 FirstWrite -1}
		batch_out {Type O LastRead -1 FirstWrite 9}
		batch_out1 {Type O LastRead -1 FirstWrite 9}
		D_V_out_out {Type O LastRead -1 FirstWrite 9}
		D_V_out_out2 {Type O LastRead -1 FirstWrite 9}
		IC_V_out_out {Type O LastRead -1 FirstWrite 9}
		OC_V_out_out {Type O LastRead -1 FirstWrite 9}
		OC_V_out_out3 {Type O LastRead -1 FirstWrite 9}
		ret_V_1_out_out {Type O LastRead -1 FirstWrite 9}
		ret_V_1_out_out4 {Type O LastRead -1 FirstWrite 9}
		mul_ln31_1_out_out {Type O LastRead -1 FirstWrite 9}
		mul_ln31_1_out_out5 {Type O LastRead -1 FirstWrite 9}
		mul_ln31_1_out_out6 {Type O LastRead -1 FirstWrite 9}
		ret_V_cast_out_out {Type O LastRead -1 FirstWrite 9}
		ret_V_cast_out_out7 {Type O LastRead -1 FirstWrite 9}
		ret_V_cast_out_out8 {Type O LastRead -1 FirstWrite 9}
		ret_V_cast_out_out9 {Type O LastRead -1 FirstWrite 9}
		ret_V_cast_out_out10 {Type O LastRead -1 FirstWrite 9}}
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
		skip1 {Type I LastRead 0 FirstWrite -1}}
	M2S_repeat_16_16_ap_int_16_ap_int_256_22 {
		s_bias {Type O LastRead -1 FirstWrite 9}
		bias_buffer1_V_0 {Type I LastRead 8 FirstWrite -1}
		bias_buffer1_V_1 {Type I LastRead 8 FirstWrite -1}
		bias_buffer1_V_2 {Type I LastRead 8 FirstWrite -1}
		bias_buffer1_V_3 {Type I LastRead 8 FirstWrite -1}
		bias_buffer1_V_4 {Type I LastRead 8 FirstWrite -1}
		bias_buffer1_V_5 {Type I LastRead 8 FirstWrite -1}
		bias_buffer1_V_6 {Type I LastRead 8 FirstWrite -1}
		bias_buffer1_V_7 {Type I LastRead 8 FirstWrite -1}
		mul_ln31_1_loc {Type I LastRead 0 FirstWrite -1}
		ret_V_cast_loc {Type I LastRead 0 FirstWrite -1}
		skip1 {Type I LastRead 0 FirstWrite -1}}
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
		gmem2 {Type I LastRead 9 FirstWrite -1}}
	Block_Z12conv1x1_packILi16ELi16ELi512ELi1024ELi512ELi8ELi24ELi4ELi16ELi16EEvRN3hls6streamI6ap_intIXmlT4_T_EELi0EEERNS1_IS2_IXmlT4_T0_EELi0EEEPS2_IXmlT6_T_EEPS2_IXT7_EEPS2_IXT8_EE7ap_uintILi16EESG_SG_ibb_exit_i_proc {
		ret_V_1_loc {Type I LastRead 0 FirstWrite -1}}
	M2S_repeat_merge_1x1_v2_4_16_16_ap_int_64_MultiChanData_16u_64u_s {
		k1 {Type O LastRead -1 FirstWrite 9}
		k1_buffer_V_0 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_1 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_2 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_3 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_4 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_5 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_6 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_7 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_8 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_9 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_10 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_11 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_12 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_13 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_14 {Type I LastRead 7 FirstWrite -1}
		k1_buffer_V_15 {Type I LastRead 7 FirstWrite -1}
		mul_ln31_1_loc {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 1 FirstWrite -1}
		skip1 {Type I LastRead 0 FirstWrite -1}
		mul_ln31_1_loc_out {Type O LastRead -1 FirstWrite 0}
		skip1_out {Type O LastRead -1 FirstWrite 0}}
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
		skip1_out {Type O LastRead -1 FirstWrite 0}}
	quantize_mul_shift_24_8_16_16_16_16_23 {
		s_conv1 {Type I LastRead 7 FirstWrite -1}
		f1 {Type O LastRead -1 FirstWrite 7}
		s_scale {Type I LastRead 7 FirstWrite -1}
		s_bias {Type I LastRead 7 FirstWrite -1}
		mul_ln31_1_loc {Type I LastRead 0 FirstWrite -1}
		OC_V_loc {Type I LastRead 0 FirstWrite -1}
		skip1 {Type I LastRead 0 FirstWrite -1}
		relu1 {Type I LastRead 0 FirstWrite -1}
		OC_V_loc_out {Type O LastRead -1 FirstWrite 0}}
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
		gmem3 {Type I LastRead 9 FirstWrite -1}}
	Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit_proc {
		D_V_loc {Type I LastRead 0 FirstWrite -1}
		STRIDE_2 {Type I LastRead 0 FirstWrite -1}
		batch {Type I LastRead 0 FirstWrite -1}
		mul_ln93_1_loc_out {Type O LastRead -1 FirstWrite 10}
		mul_ln93_1_loc_out1 {Type O LastRead -1 FirstWrite 10}
		mul_ln93_1_loc_out2 {Type O LastRead -1 FirstWrite 10}
		mul_ln93_1_loc_out3 {Type O LastRead -1 FirstWrite 10}}
	M2S_repeat_16_16_ap_int_16_ap_int_256_24 {
		s_scale_1 {Type O LastRead -1 FirstWrite 9}
		scale_buffer3_V_0 {Type I LastRead 8 FirstWrite -1}
		scale_buffer3_V_1 {Type I LastRead 8 FirstWrite -1}
		scale_buffer3_V_2 {Type I LastRead 8 FirstWrite -1}
		scale_buffer3_V_3 {Type I LastRead 8 FirstWrite -1}
		scale_buffer3_V_4 {Type I LastRead 8 FirstWrite -1}
		scale_buffer3_V_5 {Type I LastRead 8 FirstWrite -1}
		scale_buffer3_V_6 {Type I LastRead 8 FirstWrite -1}
		scale_buffer3_V_7 {Type I LastRead 8 FirstWrite -1}
		mul_ln93_1_loc {Type I LastRead 0 FirstWrite -1}
		ret_V_cast_loc {Type I LastRead 0 FirstWrite -1}
		skip3 {Type I LastRead 0 FirstWrite -1}}
	M2S_repeat_16_16_ap_int_16_ap_int_256_s {
		s_bias_1 {Type O LastRead -1 FirstWrite 9}
		bias_buffer3_V_0 {Type I LastRead 8 FirstWrite -1}
		bias_buffer3_V_1 {Type I LastRead 8 FirstWrite -1}
		bias_buffer3_V_2 {Type I LastRead 8 FirstWrite -1}
		bias_buffer3_V_3 {Type I LastRead 8 FirstWrite -1}
		bias_buffer3_V_4 {Type I LastRead 8 FirstWrite -1}
		bias_buffer3_V_5 {Type I LastRead 8 FirstWrite -1}
		bias_buffer3_V_6 {Type I LastRead 8 FirstWrite -1}
		bias_buffer3_V_7 {Type I LastRead 8 FirstWrite -1}
		mul_ln93_1_loc {Type I LastRead 0 FirstWrite -1}
		ret_V_cast_loc {Type I LastRead 0 FirstWrite -1}
		skip3 {Type I LastRead 0 FirstWrite -1}}
	M2S_repeat_merge_3x3_4_1_16_ap_int_64_MultiChanData_9u_64u_s {
		k3s {Type O LastRead -1 FirstWrite 28}
		k3_buffer_V_0 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_1 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_2 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_3 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_4 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_5 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_6 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_7 {Type I LastRead 27 FirstWrite -1}
		k3_buffer_V_8 {Type I LastRead 27 FirstWrite -1}
		mul_ln93_1_loc {Type I LastRead 0 FirstWrite -1}
		ret_V_cast_loc {Type I LastRead 0 FirstWrite -1}
		skip3 {Type I LastRead 0 FirstWrite -1}}
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
		skip3_out {Type O LastRead -1 FirstWrite 0}}
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
		skip3_out {Type O LastRead -1 FirstWrite 0}}
	quantize_mul_shift_24_8_16_16_16_16_s {
		s_conv3 {Type I LastRead 7 FirstWrite -1}
		f3 {Type O LastRead -1 FirstWrite 7}
		s_scale_1 {Type I LastRead 7 FirstWrite -1}
		s_bias_1 {Type I LastRead 7 FirstWrite -1}
		mul_ln93_1_loc {Type I LastRead 0 FirstWrite -1}
		OC_V_loc {Type I LastRead 0 FirstWrite -1}
		skip3 {Type I LastRead 0 FirstWrite -1}
		relu3 {Type I LastRead 0 FirstWrite -1}}
	Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit89_proc {
		batch {Type I LastRead 0 FirstWrite -1}
		OC {Type I LastRead 0 FirstWrite -1}
		CONV_D_loc {Type I LastRead 0 FirstWrite -1}
		select_ln169_loc_out {Type O LastRead -1 FirstWrite 13}}
	S2M_16_8_8_ap_int_128_ap_int_128_s {
		s_mem {Type I LastRead 3 FirstWrite -1}
		gmem1 {Type O LastRead 3 FirstWrite 4}
		out_r {Type I LastRead 0 FirstWrite -1}
		select_ln169_loc {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN LEN 1 8 }  { m_axi_gmem0_AWSIZE SIZE 1 3 }  { m_axi_gmem0_AWBURST BURST 1 2 }  { m_axi_gmem0_AWLOCK LOCK 1 2 }  { m_axi_gmem0_AWCACHE CACHE 1 4 }  { m_axi_gmem0_AWPROT PROT 1 3 }  { m_axi_gmem0_AWQOS QOS 1 4 }  { m_axi_gmem0_AWREGION REGION 1 4 }  { m_axi_gmem0_AWUSER USER 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA DATA 1 128 }  { m_axi_gmem0_WSTRB STRB 1 16 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER USER 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN LEN 1 8 }  { m_axi_gmem0_ARSIZE SIZE 1 3 }  { m_axi_gmem0_ARBURST BURST 1 2 }  { m_axi_gmem0_ARLOCK LOCK 1 2 }  { m_axi_gmem0_ARCACHE CACHE 1 4 }  { m_axi_gmem0_ARPROT PROT 1 3 }  { m_axi_gmem0_ARQOS QOS 1 4 }  { m_axi_gmem0_ARREGION REGION 1 4 }  { m_axi_gmem0_ARUSER USER 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA DATA 0 128 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER USER 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER USER 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN LEN 1 8 }  { m_axi_gmem1_AWSIZE SIZE 1 3 }  { m_axi_gmem1_AWBURST BURST 1 2 }  { m_axi_gmem1_AWLOCK LOCK 1 2 }  { m_axi_gmem1_AWCACHE CACHE 1 4 }  { m_axi_gmem1_AWPROT PROT 1 3 }  { m_axi_gmem1_AWQOS QOS 1 4 }  { m_axi_gmem1_AWREGION REGION 1 4 }  { m_axi_gmem1_AWUSER USER 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA DATA 1 128 }  { m_axi_gmem1_WSTRB STRB 1 16 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER USER 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN LEN 1 8 }  { m_axi_gmem1_ARSIZE SIZE 1 3 }  { m_axi_gmem1_ARBURST BURST 1 2 }  { m_axi_gmem1_ARLOCK LOCK 1 2 }  { m_axi_gmem1_ARCACHE CACHE 1 4 }  { m_axi_gmem1_ARPROT PROT 1 3 }  { m_axi_gmem1_ARQOS QOS 1 4 }  { m_axi_gmem1_ARREGION REGION 1 4 }  { m_axi_gmem1_ARUSER USER 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA DATA 0 128 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER USER 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER USER 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN LEN 1 8 }  { m_axi_gmem2_AWSIZE SIZE 1 3 }  { m_axi_gmem2_AWBURST BURST 1 2 }  { m_axi_gmem2_AWLOCK LOCK 1 2 }  { m_axi_gmem2_AWCACHE CACHE 1 4 }  { m_axi_gmem2_AWPROT PROT 1 3 }  { m_axi_gmem2_AWQOS QOS 1 4 }  { m_axi_gmem2_AWREGION REGION 1 4 }  { m_axi_gmem2_AWUSER USER 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA DATA 1 64 }  { m_axi_gmem2_WSTRB STRB 1 8 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER USER 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN LEN 1 8 }  { m_axi_gmem2_ARSIZE SIZE 1 3 }  { m_axi_gmem2_ARBURST BURST 1 2 }  { m_axi_gmem2_ARLOCK LOCK 1 2 }  { m_axi_gmem2_ARCACHE CACHE 1 4 }  { m_axi_gmem2_ARPROT PROT 1 3 }  { m_axi_gmem2_ARQOS QOS 1 4 }  { m_axi_gmem2_ARREGION REGION 1 4 }  { m_axi_gmem2_ARUSER USER 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA DATA 0 64 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER USER 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER USER 0 1 } } }
	gmem3 { m_axi {  { m_axi_gmem3_AWVALID VALID 1 1 }  { m_axi_gmem3_AWREADY READY 0 1 }  { m_axi_gmem3_AWADDR ADDR 1 64 }  { m_axi_gmem3_AWID ID 1 1 }  { m_axi_gmem3_AWLEN LEN 1 8 }  { m_axi_gmem3_AWSIZE SIZE 1 3 }  { m_axi_gmem3_AWBURST BURST 1 2 }  { m_axi_gmem3_AWLOCK LOCK 1 2 }  { m_axi_gmem3_AWCACHE CACHE 1 4 }  { m_axi_gmem3_AWPROT PROT 1 3 }  { m_axi_gmem3_AWQOS QOS 1 4 }  { m_axi_gmem3_AWREGION REGION 1 4 }  { m_axi_gmem3_AWUSER USER 1 1 }  { m_axi_gmem3_WVALID VALID 1 1 }  { m_axi_gmem3_WREADY READY 0 1 }  { m_axi_gmem3_WDATA DATA 1 64 }  { m_axi_gmem3_WSTRB STRB 1 8 }  { m_axi_gmem3_WLAST LAST 1 1 }  { m_axi_gmem3_WID ID 1 1 }  { m_axi_gmem3_WUSER USER 1 1 }  { m_axi_gmem3_ARVALID VALID 1 1 }  { m_axi_gmem3_ARREADY READY 0 1 }  { m_axi_gmem3_ARADDR ADDR 1 64 }  { m_axi_gmem3_ARID ID 1 1 }  { m_axi_gmem3_ARLEN LEN 1 8 }  { m_axi_gmem3_ARSIZE SIZE 1 3 }  { m_axi_gmem3_ARBURST BURST 1 2 }  { m_axi_gmem3_ARLOCK LOCK 1 2 }  { m_axi_gmem3_ARCACHE CACHE 1 4 }  { m_axi_gmem3_ARPROT PROT 1 3 }  { m_axi_gmem3_ARQOS QOS 1 4 }  { m_axi_gmem3_ARREGION REGION 1 4 }  { m_axi_gmem3_ARUSER USER 1 1 }  { m_axi_gmem3_RVALID VALID 0 1 }  { m_axi_gmem3_RREADY READY 1 1 }  { m_axi_gmem3_RDATA DATA 0 64 }  { m_axi_gmem3_RLAST LAST 0 1 }  { m_axi_gmem3_RID ID 0 1 }  { m_axi_gmem3_RUSER USER 0 1 }  { m_axi_gmem3_RRESP RESP 0 2 }  { m_axi_gmem3_BVALID VALID 0 1 }  { m_axi_gmem3_BREADY READY 1 1 }  { m_axi_gmem3_BRESP RESP 0 2 }  { m_axi_gmem3_BID ID 0 1 }  { m_axi_gmem3_BUSER USER 0 1 } } }
	gmem4 { m_axi {  { m_axi_gmem4_AWVALID VALID 1 1 }  { m_axi_gmem4_AWREADY READY 0 1 }  { m_axi_gmem4_AWADDR ADDR 1 64 }  { m_axi_gmem4_AWID ID 1 1 }  { m_axi_gmem4_AWLEN LEN 1 8 }  { m_axi_gmem4_AWSIZE SIZE 1 3 }  { m_axi_gmem4_AWBURST BURST 1 2 }  { m_axi_gmem4_AWLOCK LOCK 1 2 }  { m_axi_gmem4_AWCACHE CACHE 1 4 }  { m_axi_gmem4_AWPROT PROT 1 3 }  { m_axi_gmem4_AWQOS QOS 1 4 }  { m_axi_gmem4_AWREGION REGION 1 4 }  { m_axi_gmem4_AWUSER USER 1 1 }  { m_axi_gmem4_WVALID VALID 1 1 }  { m_axi_gmem4_WREADY READY 0 1 }  { m_axi_gmem4_WDATA DATA 1 32 }  { m_axi_gmem4_WSTRB STRB 1 4 }  { m_axi_gmem4_WLAST LAST 1 1 }  { m_axi_gmem4_WID ID 1 1 }  { m_axi_gmem4_WUSER USER 1 1 }  { m_axi_gmem4_ARVALID VALID 1 1 }  { m_axi_gmem4_ARREADY READY 0 1 }  { m_axi_gmem4_ARADDR ADDR 1 64 }  { m_axi_gmem4_ARID ID 1 1 }  { m_axi_gmem4_ARLEN LEN 1 8 }  { m_axi_gmem4_ARSIZE SIZE 1 3 }  { m_axi_gmem4_ARBURST BURST 1 2 }  { m_axi_gmem4_ARLOCK LOCK 1 2 }  { m_axi_gmem4_ARCACHE CACHE 1 4 }  { m_axi_gmem4_ARPROT PROT 1 3 }  { m_axi_gmem4_ARQOS QOS 1 4 }  { m_axi_gmem4_ARREGION REGION 1 4 }  { m_axi_gmem4_ARUSER USER 1 1 }  { m_axi_gmem4_RVALID VALID 0 1 }  { m_axi_gmem4_RREADY READY 1 1 }  { m_axi_gmem4_RDATA DATA 0 32 }  { m_axi_gmem4_RLAST LAST 0 1 }  { m_axi_gmem4_RID ID 0 1 }  { m_axi_gmem4_RUSER USER 0 1 }  { m_axi_gmem4_RRESP RESP 0 2 }  { m_axi_gmem4_BVALID VALID 0 1 }  { m_axi_gmem4_BREADY READY 1 1 }  { m_axi_gmem4_BRESP RESP 0 2 }  { m_axi_gmem4_BID ID 0 1 }  { m_axi_gmem4_BUSER USER 0 1 } } }
	gmem5 { m_axi {  { m_axi_gmem5_AWVALID VALID 1 1 }  { m_axi_gmem5_AWREADY READY 0 1 }  { m_axi_gmem5_AWADDR ADDR 1 64 }  { m_axi_gmem5_AWID ID 1 1 }  { m_axi_gmem5_AWLEN LEN 1 8 }  { m_axi_gmem5_AWSIZE SIZE 1 3 }  { m_axi_gmem5_AWBURST BURST 1 2 }  { m_axi_gmem5_AWLOCK LOCK 1 2 }  { m_axi_gmem5_AWCACHE CACHE 1 4 }  { m_axi_gmem5_AWPROT PROT 1 3 }  { m_axi_gmem5_AWQOS QOS 1 4 }  { m_axi_gmem5_AWREGION REGION 1 4 }  { m_axi_gmem5_AWUSER USER 1 1 }  { m_axi_gmem5_WVALID VALID 1 1 }  { m_axi_gmem5_WREADY READY 0 1 }  { m_axi_gmem5_WDATA DATA 1 32 }  { m_axi_gmem5_WSTRB STRB 1 4 }  { m_axi_gmem5_WLAST LAST 1 1 }  { m_axi_gmem5_WID ID 1 1 }  { m_axi_gmem5_WUSER USER 1 1 }  { m_axi_gmem5_ARVALID VALID 1 1 }  { m_axi_gmem5_ARREADY READY 0 1 }  { m_axi_gmem5_ARADDR ADDR 1 64 }  { m_axi_gmem5_ARID ID 1 1 }  { m_axi_gmem5_ARLEN LEN 1 8 }  { m_axi_gmem5_ARSIZE SIZE 1 3 }  { m_axi_gmem5_ARBURST BURST 1 2 }  { m_axi_gmem5_ARLOCK LOCK 1 2 }  { m_axi_gmem5_ARCACHE CACHE 1 4 }  { m_axi_gmem5_ARPROT PROT 1 3 }  { m_axi_gmem5_ARQOS QOS 1 4 }  { m_axi_gmem5_ARREGION REGION 1 4 }  { m_axi_gmem5_ARUSER USER 1 1 }  { m_axi_gmem5_RVALID VALID 0 1 }  { m_axi_gmem5_RREADY READY 1 1 }  { m_axi_gmem5_RDATA DATA 0 32 }  { m_axi_gmem5_RLAST LAST 0 1 }  { m_axi_gmem5_RID ID 0 1 }  { m_axi_gmem5_RUSER USER 0 1 }  { m_axi_gmem5_RRESP RESP 0 2 }  { m_axi_gmem5_BVALID VALID 0 1 }  { m_axi_gmem5_BREADY READY 1 1 }  { m_axi_gmem5_BRESP RESP 0 2 }  { m_axi_gmem5_BID ID 0 1 }  { m_axi_gmem5_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem0 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ gmem1 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ gmem2 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ gmem3 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ gmem4 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ gmem5 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
	{ gmem2 1 }
	{ gmem3 1 }
	{ gmem4 1 }
	{ gmem5 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
	{ gmem2 1 }
	{ gmem3 1 }
	{ gmem4 1 }
	{ gmem5 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
