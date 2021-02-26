set moduleName top_entry39
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {top.entry39}
set C_modelType { void 0 }
set C_modelArgList {
	{ fmap int 64 regular  }
	{ out_r int 64 regular  }
	{ k0_1 int 64 regular  }
	{ k0_3 int 64 regular  }
	{ quant int 64 regular  }
	{ offsets int 64 regular  }
	{ D int 32 regular  }
	{ IC int 32 regular  }
	{ OC int 32 regular  }
	{ batch int 32 regular  }
	{ STRIDE_2 int 1 regular  }
	{ skip3 int 1 regular  }
	{ skip1 int 1 regular  }
	{ deform int 1 regular  }
	{ relu1 int 1 regular  }
	{ relu3 int 1 regular  }
	{ fmap_out int 64 regular {fifo 1}  }
	{ out_out int 64 regular {fifo 1}  }
	{ k0_1_out int 64 regular {fifo 1}  }
	{ k0_3_out int 64 regular {fifo 1}  }
	{ quant_out int 64 regular {fifo 1}  }
	{ offsets_out int 64 regular {fifo 1}  }
	{ D_out int 32 regular {fifo 1}  }
	{ D_out1 int 32 regular {fifo 1}  }
	{ D_out2 int 32 regular {fifo 1}  }
	{ IC_out int 32 regular {fifo 1}  }
	{ IC_out3 int 32 regular {fifo 1}  }
	{ OC_out int 32 regular {fifo 1}  }
	{ OC_out4 int 32 regular {fifo 1}  }
	{ OC_out5 int 32 regular {fifo 1}  }
	{ batch_out int 32 regular {fifo 1}  }
	{ batch_out6 int 32 regular {fifo 1}  }
	{ batch_out7 int 32 regular {fifo 1}  }
	{ batch_out8 int 32 regular {fifo 1}  }
	{ STRIDE_2_out int 1 regular {fifo 1}  }
	{ STRIDE_2_out9 int 1 regular {fifo 1}  }
	{ STRIDE_2_out10 int 1 regular {fifo 1}  }
	{ skip3_out int 1 regular {fifo 1}  }
	{ skip3_out11 int 1 regular {fifo 1}  }
	{ skip3_out12 int 1 regular {fifo 1}  }
	{ skip3_out13 int 1 regular {fifo 1}  }
	{ skip3_out14 int 1 regular {fifo 1}  }
	{ skip3_out15 int 1 regular {fifo 1}  }
	{ skip1_out int 1 regular {fifo 1}  }
	{ skip1_out16 int 1 regular {fifo 1}  }
	{ deform_out int 1 regular {fifo 1}  }
	{ deform_out17 int 1 regular {fifo 1}  }
	{ relu1_out int 1 regular {fifo 1}  }
	{ relu3_out int 1 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fmap", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k0_1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "k0_3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "quant", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "offsets", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "D", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "IC", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OC", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "batch", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "STRIDE_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "skip3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "skip1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "deform", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "relu1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "relu3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "fmap_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k0_1_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k0_3_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "quant_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "offsets_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_out2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IC_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IC_out3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OC_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OC_out4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OC_out5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "batch_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "batch_out6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "batch_out7", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "batch_out8", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "STRIDE_2_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "STRIDE_2_out9", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "STRIDE_2_out10", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip3_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip3_out11", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip3_out12", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip3_out13", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip3_out14", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip3_out15", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip1_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip1_out16", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "deform_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "deform_out17", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "relu1_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "relu3_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 125
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ fmap sc_in sc_lv 64 signal 0 } 
	{ out_r sc_in sc_lv 64 signal 1 } 
	{ k0_1 sc_in sc_lv 64 signal 2 } 
	{ k0_3 sc_in sc_lv 64 signal 3 } 
	{ quant sc_in sc_lv 64 signal 4 } 
	{ offsets sc_in sc_lv 64 signal 5 } 
	{ D sc_in sc_lv 32 signal 6 } 
	{ IC sc_in sc_lv 32 signal 7 } 
	{ OC sc_in sc_lv 32 signal 8 } 
	{ batch sc_in sc_lv 32 signal 9 } 
	{ STRIDE_2 sc_in sc_lv 1 signal 10 } 
	{ skip3 sc_in sc_lv 1 signal 11 } 
	{ skip1 sc_in sc_lv 1 signal 12 } 
	{ deform sc_in sc_lv 1 signal 13 } 
	{ relu1 sc_in sc_lv 1 signal 14 } 
	{ relu3 sc_in sc_lv 1 signal 15 } 
	{ fmap_out_din sc_out sc_lv 64 signal 16 } 
	{ fmap_out_full_n sc_in sc_logic 1 signal 16 } 
	{ fmap_out_write sc_out sc_logic 1 signal 16 } 
	{ out_out_din sc_out sc_lv 64 signal 17 } 
	{ out_out_full_n sc_in sc_logic 1 signal 17 } 
	{ out_out_write sc_out sc_logic 1 signal 17 } 
	{ k0_1_out_din sc_out sc_lv 64 signal 18 } 
	{ k0_1_out_full_n sc_in sc_logic 1 signal 18 } 
	{ k0_1_out_write sc_out sc_logic 1 signal 18 } 
	{ k0_3_out_din sc_out sc_lv 64 signal 19 } 
	{ k0_3_out_full_n sc_in sc_logic 1 signal 19 } 
	{ k0_3_out_write sc_out sc_logic 1 signal 19 } 
	{ quant_out_din sc_out sc_lv 64 signal 20 } 
	{ quant_out_full_n sc_in sc_logic 1 signal 20 } 
	{ quant_out_write sc_out sc_logic 1 signal 20 } 
	{ offsets_out_din sc_out sc_lv 64 signal 21 } 
	{ offsets_out_full_n sc_in sc_logic 1 signal 21 } 
	{ offsets_out_write sc_out sc_logic 1 signal 21 } 
	{ D_out_din sc_out sc_lv 32 signal 22 } 
	{ D_out_full_n sc_in sc_logic 1 signal 22 } 
	{ D_out_write sc_out sc_logic 1 signal 22 } 
	{ D_out1_din sc_out sc_lv 32 signal 23 } 
	{ D_out1_full_n sc_in sc_logic 1 signal 23 } 
	{ D_out1_write sc_out sc_logic 1 signal 23 } 
	{ D_out2_din sc_out sc_lv 32 signal 24 } 
	{ D_out2_full_n sc_in sc_logic 1 signal 24 } 
	{ D_out2_write sc_out sc_logic 1 signal 24 } 
	{ IC_out_din sc_out sc_lv 32 signal 25 } 
	{ IC_out_full_n sc_in sc_logic 1 signal 25 } 
	{ IC_out_write sc_out sc_logic 1 signal 25 } 
	{ IC_out3_din sc_out sc_lv 32 signal 26 } 
	{ IC_out3_full_n sc_in sc_logic 1 signal 26 } 
	{ IC_out3_write sc_out sc_logic 1 signal 26 } 
	{ OC_out_din sc_out sc_lv 32 signal 27 } 
	{ OC_out_full_n sc_in sc_logic 1 signal 27 } 
	{ OC_out_write sc_out sc_logic 1 signal 27 } 
	{ OC_out4_din sc_out sc_lv 32 signal 28 } 
	{ OC_out4_full_n sc_in sc_logic 1 signal 28 } 
	{ OC_out4_write sc_out sc_logic 1 signal 28 } 
	{ OC_out5_din sc_out sc_lv 32 signal 29 } 
	{ OC_out5_full_n sc_in sc_logic 1 signal 29 } 
	{ OC_out5_write sc_out sc_logic 1 signal 29 } 
	{ batch_out_din sc_out sc_lv 32 signal 30 } 
	{ batch_out_full_n sc_in sc_logic 1 signal 30 } 
	{ batch_out_write sc_out sc_logic 1 signal 30 } 
	{ batch_out6_din sc_out sc_lv 32 signal 31 } 
	{ batch_out6_full_n sc_in sc_logic 1 signal 31 } 
	{ batch_out6_write sc_out sc_logic 1 signal 31 } 
	{ batch_out7_din sc_out sc_lv 32 signal 32 } 
	{ batch_out7_full_n sc_in sc_logic 1 signal 32 } 
	{ batch_out7_write sc_out sc_logic 1 signal 32 } 
	{ batch_out8_din sc_out sc_lv 32 signal 33 } 
	{ batch_out8_full_n sc_in sc_logic 1 signal 33 } 
	{ batch_out8_write sc_out sc_logic 1 signal 33 } 
	{ STRIDE_2_out_din sc_out sc_lv 1 signal 34 } 
	{ STRIDE_2_out_full_n sc_in sc_logic 1 signal 34 } 
	{ STRIDE_2_out_write sc_out sc_logic 1 signal 34 } 
	{ STRIDE_2_out9_din sc_out sc_lv 1 signal 35 } 
	{ STRIDE_2_out9_full_n sc_in sc_logic 1 signal 35 } 
	{ STRIDE_2_out9_write sc_out sc_logic 1 signal 35 } 
	{ STRIDE_2_out10_din sc_out sc_lv 1 signal 36 } 
	{ STRIDE_2_out10_full_n sc_in sc_logic 1 signal 36 } 
	{ STRIDE_2_out10_write sc_out sc_logic 1 signal 36 } 
	{ skip3_out_din sc_out sc_lv 1 signal 37 } 
	{ skip3_out_full_n sc_in sc_logic 1 signal 37 } 
	{ skip3_out_write sc_out sc_logic 1 signal 37 } 
	{ skip3_out11_din sc_out sc_lv 1 signal 38 } 
	{ skip3_out11_full_n sc_in sc_logic 1 signal 38 } 
	{ skip3_out11_write sc_out sc_logic 1 signal 38 } 
	{ skip3_out12_din sc_out sc_lv 1 signal 39 } 
	{ skip3_out12_full_n sc_in sc_logic 1 signal 39 } 
	{ skip3_out12_write sc_out sc_logic 1 signal 39 } 
	{ skip3_out13_din sc_out sc_lv 1 signal 40 } 
	{ skip3_out13_full_n sc_in sc_logic 1 signal 40 } 
	{ skip3_out13_write sc_out sc_logic 1 signal 40 } 
	{ skip3_out14_din sc_out sc_lv 1 signal 41 } 
	{ skip3_out14_full_n sc_in sc_logic 1 signal 41 } 
	{ skip3_out14_write sc_out sc_logic 1 signal 41 } 
	{ skip3_out15_din sc_out sc_lv 1 signal 42 } 
	{ skip3_out15_full_n sc_in sc_logic 1 signal 42 } 
	{ skip3_out15_write sc_out sc_logic 1 signal 42 } 
	{ skip1_out_din sc_out sc_lv 1 signal 43 } 
	{ skip1_out_full_n sc_in sc_logic 1 signal 43 } 
	{ skip1_out_write sc_out sc_logic 1 signal 43 } 
	{ skip1_out16_din sc_out sc_lv 1 signal 44 } 
	{ skip1_out16_full_n sc_in sc_logic 1 signal 44 } 
	{ skip1_out16_write sc_out sc_logic 1 signal 44 } 
	{ deform_out_din sc_out sc_lv 1 signal 45 } 
	{ deform_out_full_n sc_in sc_logic 1 signal 45 } 
	{ deform_out_write sc_out sc_logic 1 signal 45 } 
	{ deform_out17_din sc_out sc_lv 1 signal 46 } 
	{ deform_out17_full_n sc_in sc_logic 1 signal 46 } 
	{ deform_out17_write sc_out sc_logic 1 signal 46 } 
	{ relu1_out_din sc_out sc_lv 1 signal 47 } 
	{ relu1_out_full_n sc_in sc_logic 1 signal 47 } 
	{ relu1_out_write sc_out sc_logic 1 signal 47 } 
	{ relu3_out_din sc_out sc_lv 1 signal 48 } 
	{ relu3_out_full_n sc_in sc_logic 1 signal 48 } 
	{ relu3_out_write sc_out sc_logic 1 signal 48 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "fmap", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fmap", "role": "default" }} , 
 	{ "name": "out_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
 	{ "name": "k0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k0_1", "role": "default" }} , 
 	{ "name": "k0_3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k0_3", "role": "default" }} , 
 	{ "name": "quant", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "quant", "role": "default" }} , 
 	{ "name": "offsets", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "offsets", "role": "default" }} , 
 	{ "name": "D", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D", "role": "default" }} , 
 	{ "name": "IC", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IC", "role": "default" }} , 
 	{ "name": "OC", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OC", "role": "default" }} , 
 	{ "name": "batch", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch", "role": "default" }} , 
 	{ "name": "STRIDE_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2", "role": "default" }} , 
 	{ "name": "skip3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3", "role": "default" }} , 
 	{ "name": "skip1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1", "role": "default" }} , 
 	{ "name": "deform", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "deform", "role": "default" }} , 
 	{ "name": "relu1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "relu1", "role": "default" }} , 
 	{ "name": "relu3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "relu3", "role": "default" }} , 
 	{ "name": "fmap_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fmap_out", "role": "din" }} , 
 	{ "name": "fmap_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fmap_out", "role": "full_n" }} , 
 	{ "name": "fmap_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fmap_out", "role": "write" }} , 
 	{ "name": "out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_out", "role": "din" }} , 
 	{ "name": "out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_out", "role": "full_n" }} , 
 	{ "name": "out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_out", "role": "write" }} , 
 	{ "name": "k0_1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k0_1_out", "role": "din" }} , 
 	{ "name": "k0_1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k0_1_out", "role": "full_n" }} , 
 	{ "name": "k0_1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k0_1_out", "role": "write" }} , 
 	{ "name": "k0_3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "k0_3_out", "role": "din" }} , 
 	{ "name": "k0_3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k0_3_out", "role": "full_n" }} , 
 	{ "name": "k0_3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k0_3_out", "role": "write" }} , 
 	{ "name": "quant_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "quant_out", "role": "din" }} , 
 	{ "name": "quant_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_out", "role": "full_n" }} , 
 	{ "name": "quant_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_out", "role": "write" }} , 
 	{ "name": "offsets_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "offsets_out", "role": "din" }} , 
 	{ "name": "offsets_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offsets_out", "role": "full_n" }} , 
 	{ "name": "offsets_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offsets_out", "role": "write" }} , 
 	{ "name": "D_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_out", "role": "din" }} , 
 	{ "name": "D_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_out", "role": "full_n" }} , 
 	{ "name": "D_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_out", "role": "write" }} , 
 	{ "name": "D_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_out1", "role": "din" }} , 
 	{ "name": "D_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_out1", "role": "full_n" }} , 
 	{ "name": "D_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_out1", "role": "write" }} , 
 	{ "name": "D_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_out2", "role": "din" }} , 
 	{ "name": "D_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_out2", "role": "full_n" }} , 
 	{ "name": "D_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_out2", "role": "write" }} , 
 	{ "name": "IC_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IC_out", "role": "din" }} , 
 	{ "name": "IC_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IC_out", "role": "full_n" }} , 
 	{ "name": "IC_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IC_out", "role": "write" }} , 
 	{ "name": "IC_out3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IC_out3", "role": "din" }} , 
 	{ "name": "IC_out3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IC_out3", "role": "full_n" }} , 
 	{ "name": "IC_out3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IC_out3", "role": "write" }} , 
 	{ "name": "OC_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OC_out", "role": "din" }} , 
 	{ "name": "OC_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_out", "role": "full_n" }} , 
 	{ "name": "OC_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_out", "role": "write" }} , 
 	{ "name": "OC_out4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OC_out4", "role": "din" }} , 
 	{ "name": "OC_out4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_out4", "role": "full_n" }} , 
 	{ "name": "OC_out4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_out4", "role": "write" }} , 
 	{ "name": "OC_out5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OC_out5", "role": "din" }} , 
 	{ "name": "OC_out5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_out5", "role": "full_n" }} , 
 	{ "name": "OC_out5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_out5", "role": "write" }} , 
 	{ "name": "batch_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_out", "role": "din" }} , 
 	{ "name": "batch_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out", "role": "full_n" }} , 
 	{ "name": "batch_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out", "role": "write" }} , 
 	{ "name": "batch_out6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_out6", "role": "din" }} , 
 	{ "name": "batch_out6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out6", "role": "full_n" }} , 
 	{ "name": "batch_out6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out6", "role": "write" }} , 
 	{ "name": "batch_out7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_out7", "role": "din" }} , 
 	{ "name": "batch_out7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out7", "role": "full_n" }} , 
 	{ "name": "batch_out7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out7", "role": "write" }} , 
 	{ "name": "batch_out8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_out8", "role": "din" }} , 
 	{ "name": "batch_out8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out8", "role": "full_n" }} , 
 	{ "name": "batch_out8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out8", "role": "write" }} , 
 	{ "name": "STRIDE_2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2_out", "role": "din" }} , 
 	{ "name": "STRIDE_2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2_out", "role": "full_n" }} , 
 	{ "name": "STRIDE_2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2_out", "role": "write" }} , 
 	{ "name": "STRIDE_2_out9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2_out9", "role": "din" }} , 
 	{ "name": "STRIDE_2_out9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2_out9", "role": "full_n" }} , 
 	{ "name": "STRIDE_2_out9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2_out9", "role": "write" }} , 
 	{ "name": "STRIDE_2_out10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2_out10", "role": "din" }} , 
 	{ "name": "STRIDE_2_out10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2_out10", "role": "full_n" }} , 
 	{ "name": "STRIDE_2_out10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "STRIDE_2_out10", "role": "write" }} , 
 	{ "name": "skip3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out", "role": "din" }} , 
 	{ "name": "skip3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out", "role": "full_n" }} , 
 	{ "name": "skip3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out", "role": "write" }} , 
 	{ "name": "skip3_out11_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out11", "role": "din" }} , 
 	{ "name": "skip3_out11_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out11", "role": "full_n" }} , 
 	{ "name": "skip3_out11_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out11", "role": "write" }} , 
 	{ "name": "skip3_out12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out12", "role": "din" }} , 
 	{ "name": "skip3_out12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out12", "role": "full_n" }} , 
 	{ "name": "skip3_out12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out12", "role": "write" }} , 
 	{ "name": "skip3_out13_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out13", "role": "din" }} , 
 	{ "name": "skip3_out13_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out13", "role": "full_n" }} , 
 	{ "name": "skip3_out13_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out13", "role": "write" }} , 
 	{ "name": "skip3_out14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out14", "role": "din" }} , 
 	{ "name": "skip3_out14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out14", "role": "full_n" }} , 
 	{ "name": "skip3_out14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out14", "role": "write" }} , 
 	{ "name": "skip3_out15_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out15", "role": "din" }} , 
 	{ "name": "skip3_out15_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out15", "role": "full_n" }} , 
 	{ "name": "skip3_out15_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip3_out15", "role": "write" }} , 
 	{ "name": "skip1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out", "role": "din" }} , 
 	{ "name": "skip1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out", "role": "full_n" }} , 
 	{ "name": "skip1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out", "role": "write" }} , 
 	{ "name": "skip1_out16_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out16", "role": "din" }} , 
 	{ "name": "skip1_out16_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out16", "role": "full_n" }} , 
 	{ "name": "skip1_out16_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip1_out16", "role": "write" }} , 
 	{ "name": "deform_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "deform_out", "role": "din" }} , 
 	{ "name": "deform_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "deform_out", "role": "full_n" }} , 
 	{ "name": "deform_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "deform_out", "role": "write" }} , 
 	{ "name": "deform_out17_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "deform_out17", "role": "din" }} , 
 	{ "name": "deform_out17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "deform_out17", "role": "full_n" }} , 
 	{ "name": "deform_out17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "deform_out17", "role": "write" }} , 
 	{ "name": "relu1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "relu1_out", "role": "din" }} , 
 	{ "name": "relu1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "relu1_out", "role": "full_n" }} , 
 	{ "name": "relu1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "relu1_out", "role": "write" }} , 
 	{ "name": "relu3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "relu3_out", "role": "din" }} , 
 	{ "name": "relu3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "relu3_out", "role": "full_n" }} , 
 	{ "name": "relu3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "relu3_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "fmap_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fmap_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k0_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k0_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k0_3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k0_3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "quant_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "quant_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "offsets_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "offsets_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IC_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "IC_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IC_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "IC_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2_out9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_out9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "STRIDE_2_out10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "STRIDE_2_out10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip3_out15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip3_out15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip1_out16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip1_out16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "deform_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "deform_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "deform_out17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "deform_out17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "relu1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "relu1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "relu3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "relu3_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
		relu3_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fmap { ap_none {  { fmap in_data 0 64 } } }
	out_r { ap_none {  { out_r in_data 0 64 } } }
	k0_1 { ap_none {  { k0_1 in_data 0 64 } } }
	k0_3 { ap_none {  { k0_3 in_data 0 64 } } }
	quant { ap_none {  { quant in_data 0 64 } } }
	offsets { ap_none {  { offsets in_data 0 64 } } }
	D { ap_none {  { D in_data 0 32 } } }
	IC { ap_none {  { IC in_data 0 32 } } }
	OC { ap_none {  { OC in_data 0 32 } } }
	batch { ap_none {  { batch in_data 0 32 } } }
	STRIDE_2 { ap_none {  { STRIDE_2 in_data 0 1 } } }
	skip3 { ap_none {  { skip3 in_data 0 1 } } }
	skip1 { ap_none {  { skip1 in_data 0 1 } } }
	deform { ap_none {  { deform in_data 0 1 } } }
	relu1 { ap_none {  { relu1 in_data 0 1 } } }
	relu3 { ap_none {  { relu3 in_data 0 1 } } }
	fmap_out { ap_fifo {  { fmap_out_din fifo_data 1 64 }  { fmap_out_full_n fifo_status 0 1 }  { fmap_out_write fifo_update 1 1 } } }
	out_out { ap_fifo {  { out_out_din fifo_data 1 64 }  { out_out_full_n fifo_status 0 1 }  { out_out_write fifo_update 1 1 } } }
	k0_1_out { ap_fifo {  { k0_1_out_din fifo_data 1 64 }  { k0_1_out_full_n fifo_status 0 1 }  { k0_1_out_write fifo_update 1 1 } } }
	k0_3_out { ap_fifo {  { k0_3_out_din fifo_data 1 64 }  { k0_3_out_full_n fifo_status 0 1 }  { k0_3_out_write fifo_update 1 1 } } }
	quant_out { ap_fifo {  { quant_out_din fifo_data 1 64 }  { quant_out_full_n fifo_status 0 1 }  { quant_out_write fifo_update 1 1 } } }
	offsets_out { ap_fifo {  { offsets_out_din fifo_data 1 64 }  { offsets_out_full_n fifo_status 0 1 }  { offsets_out_write fifo_update 1 1 } } }
	D_out { ap_fifo {  { D_out_din fifo_data 1 32 }  { D_out_full_n fifo_status 0 1 }  { D_out_write fifo_update 1 1 } } }
	D_out1 { ap_fifo {  { D_out1_din fifo_data 1 32 }  { D_out1_full_n fifo_status 0 1 }  { D_out1_write fifo_update 1 1 } } }
	D_out2 { ap_fifo {  { D_out2_din fifo_data 1 32 }  { D_out2_full_n fifo_status 0 1 }  { D_out2_write fifo_update 1 1 } } }
	IC_out { ap_fifo {  { IC_out_din fifo_data 1 32 }  { IC_out_full_n fifo_status 0 1 }  { IC_out_write fifo_update 1 1 } } }
	IC_out3 { ap_fifo {  { IC_out3_din fifo_data 1 32 }  { IC_out3_full_n fifo_status 0 1 }  { IC_out3_write fifo_update 1 1 } } }
	OC_out { ap_fifo {  { OC_out_din fifo_data 1 32 }  { OC_out_full_n fifo_status 0 1 }  { OC_out_write fifo_update 1 1 } } }
	OC_out4 { ap_fifo {  { OC_out4_din fifo_data 1 32 }  { OC_out4_full_n fifo_status 0 1 }  { OC_out4_write fifo_update 1 1 } } }
	OC_out5 { ap_fifo {  { OC_out5_din fifo_data 1 32 }  { OC_out5_full_n fifo_status 0 1 }  { OC_out5_write fifo_update 1 1 } } }
	batch_out { ap_fifo {  { batch_out_din fifo_data 1 32 }  { batch_out_full_n fifo_status 0 1 }  { batch_out_write fifo_update 1 1 } } }
	batch_out6 { ap_fifo {  { batch_out6_din fifo_data 1 32 }  { batch_out6_full_n fifo_status 0 1 }  { batch_out6_write fifo_update 1 1 } } }
	batch_out7 { ap_fifo {  { batch_out7_din fifo_data 1 32 }  { batch_out7_full_n fifo_status 0 1 }  { batch_out7_write fifo_update 1 1 } } }
	batch_out8 { ap_fifo {  { batch_out8_din fifo_data 1 32 }  { batch_out8_full_n fifo_status 0 1 }  { batch_out8_write fifo_update 1 1 } } }
	STRIDE_2_out { ap_fifo {  { STRIDE_2_out_din fifo_data 1 1 }  { STRIDE_2_out_full_n fifo_status 0 1 }  { STRIDE_2_out_write fifo_update 1 1 } } }
	STRIDE_2_out9 { ap_fifo {  { STRIDE_2_out9_din fifo_data 1 1 }  { STRIDE_2_out9_full_n fifo_status 0 1 }  { STRIDE_2_out9_write fifo_update 1 1 } } }
	STRIDE_2_out10 { ap_fifo {  { STRIDE_2_out10_din fifo_data 1 1 }  { STRIDE_2_out10_full_n fifo_status 0 1 }  { STRIDE_2_out10_write fifo_update 1 1 } } }
	skip3_out { ap_fifo {  { skip3_out_din fifo_data 1 1 }  { skip3_out_full_n fifo_status 0 1 }  { skip3_out_write fifo_update 1 1 } } }
	skip3_out11 { ap_fifo {  { skip3_out11_din fifo_data 1 1 }  { skip3_out11_full_n fifo_status 0 1 }  { skip3_out11_write fifo_update 1 1 } } }
	skip3_out12 { ap_fifo {  { skip3_out12_din fifo_data 1 1 }  { skip3_out12_full_n fifo_status 0 1 }  { skip3_out12_write fifo_update 1 1 } } }
	skip3_out13 { ap_fifo {  { skip3_out13_din fifo_data 1 1 }  { skip3_out13_full_n fifo_status 0 1 }  { skip3_out13_write fifo_update 1 1 } } }
	skip3_out14 { ap_fifo {  { skip3_out14_din fifo_data 1 1 }  { skip3_out14_full_n fifo_status 0 1 }  { skip3_out14_write fifo_update 1 1 } } }
	skip3_out15 { ap_fifo {  { skip3_out15_din fifo_data 1 1 }  { skip3_out15_full_n fifo_status 0 1 }  { skip3_out15_write fifo_update 1 1 } } }
	skip1_out { ap_fifo {  { skip1_out_din fifo_data 1 1 }  { skip1_out_full_n fifo_status 0 1 }  { skip1_out_write fifo_update 1 1 } } }
	skip1_out16 { ap_fifo {  { skip1_out16_din fifo_data 1 1 }  { skip1_out16_full_n fifo_status 0 1 }  { skip1_out16_write fifo_update 1 1 } } }
	deform_out { ap_fifo {  { deform_out_din fifo_data 1 1 }  { deform_out_full_n fifo_status 0 1 }  { deform_out_write fifo_update 1 1 } } }
	deform_out17 { ap_fifo {  { deform_out17_din fifo_data 1 1 }  { deform_out17_full_n fifo_status 0 1 }  { deform_out17_write fifo_update 1 1 } } }
	relu1_out { ap_fifo {  { relu1_out_din fifo_data 1 1 }  { relu1_out_full_n fifo_status 0 1 }  { relu1_out_write fifo_update 1 1 } } }
	relu3_out { ap_fifo {  { relu3_out_din fifo_data 1 1 }  { relu3_out_full_n fifo_status 0 1 }  { relu3_out_write fifo_update 1 1 } } }
}
