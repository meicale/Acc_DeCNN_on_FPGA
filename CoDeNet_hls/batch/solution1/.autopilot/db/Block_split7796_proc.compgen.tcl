# This script segment is generated automatically by AutoPilot

set id 115
set name top_mul_mul_16ns_16ns_32_4_1
set corename simcore_mul
set op mul
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 0
set in1_width 16
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
set exp i0*i1
set arg_lists {i0 {16 0 +} i1 {16 0 +} p {32 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name D \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_D \
    op interface \
    ports { D_dout { I 32 vector } D_empty_n { I 1 bit } D_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name IC \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_IC \
    op interface \
    ports { IC_dout { I 32 vector } IC_empty_n { I 1 bit } IC_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name OC \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_OC \
    op interface \
    ports { OC_dout { I 32 vector } OC_empty_n { I 1 bit } OC_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name batch \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_batch \
    op interface \
    ports { batch_dout { I 32 vector } batch_empty_n { I 1 bit } batch_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name batch_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_batch_out \
    op interface \
    ports { batch_out_din { O 32 vector } batch_out_full_n { I 1 bit } batch_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name batch_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_batch_out1 \
    op interface \
    ports { batch_out1_din { O 32 vector } batch_out1_full_n { I 1 bit } batch_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name D_V_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_V_out_out \
    op interface \
    ports { D_V_out_out_din { O 16 vector } D_V_out_out_full_n { I 1 bit } D_V_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name D_V_out_out2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_V_out_out2 \
    op interface \
    ports { D_V_out_out2_din { O 16 vector } D_V_out_out2_full_n { I 1 bit } D_V_out_out2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name IC_V_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_IC_V_out_out \
    op interface \
    ports { IC_V_out_out_din { O 16 vector } IC_V_out_out_full_n { I 1 bit } IC_V_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name OC_V_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_OC_V_out_out \
    op interface \
    ports { OC_V_out_out_din { O 16 vector } OC_V_out_out_full_n { I 1 bit } OC_V_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name OC_V_out_out3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_OC_V_out_out3 \
    op interface \
    ports { OC_V_out_out3_din { O 16 vector } OC_V_out_out3_full_n { I 1 bit } OC_V_out_out3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name ret_V_1_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ret_V_1_out_out \
    op interface \
    ports { ret_V_1_out_out_din { O 32 vector } ret_V_1_out_out_full_n { I 1 bit } ret_V_1_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name ret_V_1_out_out4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ret_V_1_out_out4 \
    op interface \
    ports { ret_V_1_out_out4_din { O 32 vector } ret_V_1_out_out4_full_n { I 1 bit } ret_V_1_out_out4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name mul_ln31_1_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln31_1_out_out \
    op interface \
    ports { mul_ln31_1_out_out_din { O 32 vector } mul_ln31_1_out_out_full_n { I 1 bit } mul_ln31_1_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name mul_ln31_1_out_out5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln31_1_out_out5 \
    op interface \
    ports { mul_ln31_1_out_out5_din { O 32 vector } mul_ln31_1_out_out5_full_n { I 1 bit } mul_ln31_1_out_out5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name mul_ln31_1_out_out6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln31_1_out_out6 \
    op interface \
    ports { mul_ln31_1_out_out6_din { O 32 vector } mul_ln31_1_out_out6_full_n { I 1 bit } mul_ln31_1_out_out6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name ret_V_cast_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ret_V_cast_out_out \
    op interface \
    ports { ret_V_cast_out_out_din { O 12 vector } ret_V_cast_out_out_full_n { I 1 bit } ret_V_cast_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name ret_V_cast_out_out7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ret_V_cast_out_out7 \
    op interface \
    ports { ret_V_cast_out_out7_din { O 12 vector } ret_V_cast_out_out7_full_n { I 1 bit } ret_V_cast_out_out7_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name ret_V_cast_out_out8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ret_V_cast_out_out8 \
    op interface \
    ports { ret_V_cast_out_out8_din { O 12 vector } ret_V_cast_out_out8_full_n { I 1 bit } ret_V_cast_out_out8_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name ret_V_cast_out_out9 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ret_V_cast_out_out9 \
    op interface \
    ports { ret_V_cast_out_out9_din { O 12 vector } ret_V_cast_out_out9_full_n { I 1 bit } ret_V_cast_out_out9_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name ret_V_cast_out_out10 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ret_V_cast_out_out10 \
    op interface \
    ports { ret_V_cast_out_out10_din { O 12 vector } ret_V_cast_out_out10_full_n { I 1 bit } ret_V_cast_out_out10_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


