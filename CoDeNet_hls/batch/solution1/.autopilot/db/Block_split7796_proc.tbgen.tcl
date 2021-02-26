set moduleName Block_split7796_proc
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
set C_modelName {Block_.split7796_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ D int 32 regular {fifo 0}  }
	{ IC int 32 regular {fifo 0}  }
	{ OC int 32 regular {fifo 0}  }
	{ batch int 32 regular {fifo 0}  }
	{ batch_out int 32 regular {fifo 1}  }
	{ batch_out1 int 32 regular {fifo 1}  }
	{ D_V_out_out int 16 regular {fifo 1}  }
	{ D_V_out_out2 int 16 regular {fifo 1}  }
	{ IC_V_out_out int 16 regular {fifo 1}  }
	{ OC_V_out_out int 16 regular {fifo 1}  }
	{ OC_V_out_out3 int 16 regular {fifo 1}  }
	{ ret_V_1_out_out int 32 regular {fifo 1}  }
	{ ret_V_1_out_out4 int 32 regular {fifo 1}  }
	{ mul_ln31_1_out_out int 32 regular {fifo 1}  }
	{ mul_ln31_1_out_out5 int 32 regular {fifo 1}  }
	{ mul_ln31_1_out_out6 int 32 regular {fifo 1}  }
	{ ret_V_cast_out_out int 12 regular {fifo 1}  }
	{ ret_V_cast_out_out7 int 12 regular {fifo 1}  }
	{ ret_V_cast_out_out8 int 12 regular {fifo 1}  }
	{ ret_V_cast_out_out9 int 12 regular {fifo 1}  }
	{ ret_V_cast_out_out10 int 12 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "D", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "IC", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OC", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "batch", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "batch_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "batch_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_V_out_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_V_out_out2", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IC_V_out_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OC_V_out_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OC_V_out_out3", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ret_V_1_out_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ret_V_1_out_out4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mul_ln31_1_out_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mul_ln31_1_out_out5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mul_ln31_1_out_out6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ret_V_cast_out_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ret_V_cast_out_out7", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ret_V_cast_out_out8", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ret_V_cast_out_out9", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ret_V_cast_out_out10", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 73
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
	{ D_dout sc_in sc_lv 32 signal 0 } 
	{ D_empty_n sc_in sc_logic 1 signal 0 } 
	{ D_read sc_out sc_logic 1 signal 0 } 
	{ IC_dout sc_in sc_lv 32 signal 1 } 
	{ IC_empty_n sc_in sc_logic 1 signal 1 } 
	{ IC_read sc_out sc_logic 1 signal 1 } 
	{ OC_dout sc_in sc_lv 32 signal 2 } 
	{ OC_empty_n sc_in sc_logic 1 signal 2 } 
	{ OC_read sc_out sc_logic 1 signal 2 } 
	{ batch_dout sc_in sc_lv 32 signal 3 } 
	{ batch_empty_n sc_in sc_logic 1 signal 3 } 
	{ batch_read sc_out sc_logic 1 signal 3 } 
	{ batch_out_din sc_out sc_lv 32 signal 4 } 
	{ batch_out_full_n sc_in sc_logic 1 signal 4 } 
	{ batch_out_write sc_out sc_logic 1 signal 4 } 
	{ batch_out1_din sc_out sc_lv 32 signal 5 } 
	{ batch_out1_full_n sc_in sc_logic 1 signal 5 } 
	{ batch_out1_write sc_out sc_logic 1 signal 5 } 
	{ D_V_out_out_din sc_out sc_lv 16 signal 6 } 
	{ D_V_out_out_full_n sc_in sc_logic 1 signal 6 } 
	{ D_V_out_out_write sc_out sc_logic 1 signal 6 } 
	{ D_V_out_out2_din sc_out sc_lv 16 signal 7 } 
	{ D_V_out_out2_full_n sc_in sc_logic 1 signal 7 } 
	{ D_V_out_out2_write sc_out sc_logic 1 signal 7 } 
	{ IC_V_out_out_din sc_out sc_lv 16 signal 8 } 
	{ IC_V_out_out_full_n sc_in sc_logic 1 signal 8 } 
	{ IC_V_out_out_write sc_out sc_logic 1 signal 8 } 
	{ OC_V_out_out_din sc_out sc_lv 16 signal 9 } 
	{ OC_V_out_out_full_n sc_in sc_logic 1 signal 9 } 
	{ OC_V_out_out_write sc_out sc_logic 1 signal 9 } 
	{ OC_V_out_out3_din sc_out sc_lv 16 signal 10 } 
	{ OC_V_out_out3_full_n sc_in sc_logic 1 signal 10 } 
	{ OC_V_out_out3_write sc_out sc_logic 1 signal 10 } 
	{ ret_V_1_out_out_din sc_out sc_lv 32 signal 11 } 
	{ ret_V_1_out_out_full_n sc_in sc_logic 1 signal 11 } 
	{ ret_V_1_out_out_write sc_out sc_logic 1 signal 11 } 
	{ ret_V_1_out_out4_din sc_out sc_lv 32 signal 12 } 
	{ ret_V_1_out_out4_full_n sc_in sc_logic 1 signal 12 } 
	{ ret_V_1_out_out4_write sc_out sc_logic 1 signal 12 } 
	{ mul_ln31_1_out_out_din sc_out sc_lv 32 signal 13 } 
	{ mul_ln31_1_out_out_full_n sc_in sc_logic 1 signal 13 } 
	{ mul_ln31_1_out_out_write sc_out sc_logic 1 signal 13 } 
	{ mul_ln31_1_out_out5_din sc_out sc_lv 32 signal 14 } 
	{ mul_ln31_1_out_out5_full_n sc_in sc_logic 1 signal 14 } 
	{ mul_ln31_1_out_out5_write sc_out sc_logic 1 signal 14 } 
	{ mul_ln31_1_out_out6_din sc_out sc_lv 32 signal 15 } 
	{ mul_ln31_1_out_out6_full_n sc_in sc_logic 1 signal 15 } 
	{ mul_ln31_1_out_out6_write sc_out sc_logic 1 signal 15 } 
	{ ret_V_cast_out_out_din sc_out sc_lv 12 signal 16 } 
	{ ret_V_cast_out_out_full_n sc_in sc_logic 1 signal 16 } 
	{ ret_V_cast_out_out_write sc_out sc_logic 1 signal 16 } 
	{ ret_V_cast_out_out7_din sc_out sc_lv 12 signal 17 } 
	{ ret_V_cast_out_out7_full_n sc_in sc_logic 1 signal 17 } 
	{ ret_V_cast_out_out7_write sc_out sc_logic 1 signal 17 } 
	{ ret_V_cast_out_out8_din sc_out sc_lv 12 signal 18 } 
	{ ret_V_cast_out_out8_full_n sc_in sc_logic 1 signal 18 } 
	{ ret_V_cast_out_out8_write sc_out sc_logic 1 signal 18 } 
	{ ret_V_cast_out_out9_din sc_out sc_lv 12 signal 19 } 
	{ ret_V_cast_out_out9_full_n sc_in sc_logic 1 signal 19 } 
	{ ret_V_cast_out_out9_write sc_out sc_logic 1 signal 19 } 
	{ ret_V_cast_out_out10_din sc_out sc_lv 12 signal 20 } 
	{ ret_V_cast_out_out10_full_n sc_in sc_logic 1 signal 20 } 
	{ ret_V_cast_out_out10_write sc_out sc_logic 1 signal 20 } 
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
 	{ "name": "D_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D", "role": "dout" }} , 
 	{ "name": "D_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "empty_n" }} , 
 	{ "name": "D_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "read" }} , 
 	{ "name": "IC_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IC", "role": "dout" }} , 
 	{ "name": "IC_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IC", "role": "empty_n" }} , 
 	{ "name": "IC_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IC", "role": "read" }} , 
 	{ "name": "OC_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OC", "role": "dout" }} , 
 	{ "name": "OC_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC", "role": "empty_n" }} , 
 	{ "name": "OC_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC", "role": "read" }} , 
 	{ "name": "batch_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch", "role": "dout" }} , 
 	{ "name": "batch_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "empty_n" }} , 
 	{ "name": "batch_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch", "role": "read" }} , 
 	{ "name": "batch_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_out", "role": "din" }} , 
 	{ "name": "batch_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out", "role": "full_n" }} , 
 	{ "name": "batch_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out", "role": "write" }} , 
 	{ "name": "batch_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_out1", "role": "din" }} , 
 	{ "name": "batch_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out1", "role": "full_n" }} , 
 	{ "name": "batch_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_out1", "role": "write" }} , 
 	{ "name": "D_V_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "D_V_out_out", "role": "din" }} , 
 	{ "name": "D_V_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_V_out_out", "role": "full_n" }} , 
 	{ "name": "D_V_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_V_out_out", "role": "write" }} , 
 	{ "name": "D_V_out_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "D_V_out_out2", "role": "din" }} , 
 	{ "name": "D_V_out_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_V_out_out2", "role": "full_n" }} , 
 	{ "name": "D_V_out_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_V_out_out2", "role": "write" }} , 
 	{ "name": "IC_V_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "IC_V_out_out", "role": "din" }} , 
 	{ "name": "IC_V_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IC_V_out_out", "role": "full_n" }} , 
 	{ "name": "IC_V_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IC_V_out_out", "role": "write" }} , 
 	{ "name": "OC_V_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OC_V_out_out", "role": "din" }} , 
 	{ "name": "OC_V_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_out_out", "role": "full_n" }} , 
 	{ "name": "OC_V_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_out_out", "role": "write" }} , 
 	{ "name": "OC_V_out_out3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OC_V_out_out3", "role": "din" }} , 
 	{ "name": "OC_V_out_out3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_out_out3", "role": "full_n" }} , 
 	{ "name": "OC_V_out_out3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OC_V_out_out3", "role": "write" }} , 
 	{ "name": "ret_V_1_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ret_V_1_out_out", "role": "din" }} , 
 	{ "name": "ret_V_1_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_1_out_out", "role": "full_n" }} , 
 	{ "name": "ret_V_1_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_1_out_out", "role": "write" }} , 
 	{ "name": "ret_V_1_out_out4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ret_V_1_out_out4", "role": "din" }} , 
 	{ "name": "ret_V_1_out_out4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_1_out_out4", "role": "full_n" }} , 
 	{ "name": "ret_V_1_out_out4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_1_out_out4", "role": "write" }} , 
 	{ "name": "mul_ln31_1_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln31_1_out_out", "role": "din" }} , 
 	{ "name": "mul_ln31_1_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_out_out", "role": "full_n" }} , 
 	{ "name": "mul_ln31_1_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_out_out", "role": "write" }} , 
 	{ "name": "mul_ln31_1_out_out5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln31_1_out_out5", "role": "din" }} , 
 	{ "name": "mul_ln31_1_out_out5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_out_out5", "role": "full_n" }} , 
 	{ "name": "mul_ln31_1_out_out5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_out_out5", "role": "write" }} , 
 	{ "name": "mul_ln31_1_out_out6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul_ln31_1_out_out6", "role": "din" }} , 
 	{ "name": "mul_ln31_1_out_out6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_out_out6", "role": "full_n" }} , 
 	{ "name": "mul_ln31_1_out_out6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul_ln31_1_out_out6", "role": "write" }} , 
 	{ "name": "ret_V_cast_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ret_V_cast_out_out", "role": "din" }} , 
 	{ "name": "ret_V_cast_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_out_out", "role": "full_n" }} , 
 	{ "name": "ret_V_cast_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_out_out", "role": "write" }} , 
 	{ "name": "ret_V_cast_out_out7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ret_V_cast_out_out7", "role": "din" }} , 
 	{ "name": "ret_V_cast_out_out7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_out_out7", "role": "full_n" }} , 
 	{ "name": "ret_V_cast_out_out7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_out_out7", "role": "write" }} , 
 	{ "name": "ret_V_cast_out_out8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ret_V_cast_out_out8", "role": "din" }} , 
 	{ "name": "ret_V_cast_out_out8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_out_out8", "role": "full_n" }} , 
 	{ "name": "ret_V_cast_out_out8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_out_out8", "role": "write" }} , 
 	{ "name": "ret_V_cast_out_out9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ret_V_cast_out_out9", "role": "din" }} , 
 	{ "name": "ret_V_cast_out_out9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_out_out9", "role": "full_n" }} , 
 	{ "name": "ret_V_cast_out_out9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_out_out9", "role": "write" }} , 
 	{ "name": "ret_V_cast_out_out10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ret_V_cast_out_out10", "role": "din" }} , 
 	{ "name": "ret_V_cast_out_out10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_out_out10", "role": "full_n" }} , 
 	{ "name": "ret_V_cast_out_out10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ret_V_cast_out_out10", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
		"Port" : [
			{"Name" : "D", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IC", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "IC_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_V_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_V_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "D_V_out_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "D_V_out_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IC_V_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "IC_V_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OC_V_out_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "OC_V_out_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_1_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_1_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_1_out_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_1_out_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_out_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_out_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln31_1_out_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul_ln31_1_out_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_out_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_out_out7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_out_out8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_out_out8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_out_out9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_out_out9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_V_cast_out_out10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ret_V_cast_out_out10_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_5_1_U114", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U115", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U116", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		ret_V_cast_out_out10 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	D { ap_fifo {  { D_dout fifo_data 0 32 }  { D_empty_n fifo_status 0 1 }  { D_read fifo_update 1 1 } } }
	IC { ap_fifo {  { IC_dout fifo_data 0 32 }  { IC_empty_n fifo_status 0 1 }  { IC_read fifo_update 1 1 } } }
	OC { ap_fifo {  { OC_dout fifo_data 0 32 }  { OC_empty_n fifo_status 0 1 }  { OC_read fifo_update 1 1 } } }
	batch { ap_fifo {  { batch_dout fifo_data 0 32 }  { batch_empty_n fifo_status 0 1 }  { batch_read fifo_update 1 1 } } }
	batch_out { ap_fifo {  { batch_out_din fifo_data 1 32 }  { batch_out_full_n fifo_status 0 1 }  { batch_out_write fifo_update 1 1 } } }
	batch_out1 { ap_fifo {  { batch_out1_din fifo_data 1 32 }  { batch_out1_full_n fifo_status 0 1 }  { batch_out1_write fifo_update 1 1 } } }
	D_V_out_out { ap_fifo {  { D_V_out_out_din fifo_data 1 16 }  { D_V_out_out_full_n fifo_status 0 1 }  { D_V_out_out_write fifo_update 1 1 } } }
	D_V_out_out2 { ap_fifo {  { D_V_out_out2_din fifo_data 1 16 }  { D_V_out_out2_full_n fifo_status 0 1 }  { D_V_out_out2_write fifo_update 1 1 } } }
	IC_V_out_out { ap_fifo {  { IC_V_out_out_din fifo_data 1 16 }  { IC_V_out_out_full_n fifo_status 0 1 }  { IC_V_out_out_write fifo_update 1 1 } } }
	OC_V_out_out { ap_fifo {  { OC_V_out_out_din fifo_data 1 16 }  { OC_V_out_out_full_n fifo_status 0 1 }  { OC_V_out_out_write fifo_update 1 1 } } }
	OC_V_out_out3 { ap_fifo {  { OC_V_out_out3_din fifo_data 1 16 }  { OC_V_out_out3_full_n fifo_status 0 1 }  { OC_V_out_out3_write fifo_update 1 1 } } }
	ret_V_1_out_out { ap_fifo {  { ret_V_1_out_out_din fifo_data 1 32 }  { ret_V_1_out_out_full_n fifo_status 0 1 }  { ret_V_1_out_out_write fifo_update 1 1 } } }
	ret_V_1_out_out4 { ap_fifo {  { ret_V_1_out_out4_din fifo_data 1 32 }  { ret_V_1_out_out4_full_n fifo_status 0 1 }  { ret_V_1_out_out4_write fifo_update 1 1 } } }
	mul_ln31_1_out_out { ap_fifo {  { mul_ln31_1_out_out_din fifo_data 1 32 }  { mul_ln31_1_out_out_full_n fifo_status 0 1 }  { mul_ln31_1_out_out_write fifo_update 1 1 } } }
	mul_ln31_1_out_out5 { ap_fifo {  { mul_ln31_1_out_out5_din fifo_data 1 32 }  { mul_ln31_1_out_out5_full_n fifo_status 0 1 }  { mul_ln31_1_out_out5_write fifo_update 1 1 } } }
	mul_ln31_1_out_out6 { ap_fifo {  { mul_ln31_1_out_out6_din fifo_data 1 32 }  { mul_ln31_1_out_out6_full_n fifo_status 0 1 }  { mul_ln31_1_out_out6_write fifo_update 1 1 } } }
	ret_V_cast_out_out { ap_fifo {  { ret_V_cast_out_out_din fifo_data 1 12 }  { ret_V_cast_out_out_full_n fifo_status 0 1 }  { ret_V_cast_out_out_write fifo_update 1 1 } } }
	ret_V_cast_out_out7 { ap_fifo {  { ret_V_cast_out_out7_din fifo_data 1 12 }  { ret_V_cast_out_out7_full_n fifo_status 0 1 }  { ret_V_cast_out_out7_write fifo_update 1 1 } } }
	ret_V_cast_out_out8 { ap_fifo {  { ret_V_cast_out_out8_din fifo_data 1 12 }  { ret_V_cast_out_out8_full_n fifo_status 0 1 }  { ret_V_cast_out_out8_write fifo_update 1 1 } } }
	ret_V_cast_out_out9 { ap_fifo {  { ret_V_cast_out_out9_din fifo_data 1 12 }  { ret_V_cast_out_out9_full_n fifo_status 0 1 }  { ret_V_cast_out_out9_write fifo_update 1 1 } } }
	ret_V_cast_out_out10 { ap_fifo {  { ret_V_cast_out_out10_din fifo_data 1 12 }  { ret_V_cast_out_out10_full_n fifo_status 0 1 }  { ret_V_cast_out_out10_write fifo_update 1 1 } } }
}
