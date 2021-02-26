# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name fmap \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fmap \
    op interface \
    ports { fmap { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name out_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_r \
    op interface \
    ports { out_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name k0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_k0_1 \
    op interface \
    ports { k0_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name k0_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_k0_3 \
    op interface \
    ports { k0_3 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name quant \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_quant \
    op interface \
    ports { quant { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name offsets \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_offsets \
    op interface \
    ports { offsets { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name D \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_D \
    op interface \
    ports { D { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name IC \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_IC \
    op interface \
    ports { IC { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name OC \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_OC \
    op interface \
    ports { OC { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name batch \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_batch \
    op interface \
    ports { batch { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name STRIDE_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_STRIDE_2 \
    op interface \
    ports { STRIDE_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name skip3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_skip3 \
    op interface \
    ports { skip3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name skip1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_skip1 \
    op interface \
    ports { skip1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name deform \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_deform \
    op interface \
    ports { deform { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name relu1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_relu1 \
    op interface \
    ports { relu1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name relu3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_relu3 \
    op interface \
    ports { relu3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name fmap_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmap_out \
    op interface \
    ports { fmap_out_din { O 64 vector } fmap_out_full_n { I 1 bit } fmap_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_out \
    op interface \
    ports { out_out_din { O 64 vector } out_out_full_n { I 1 bit } out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name k0_1_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_k0_1_out \
    op interface \
    ports { k0_1_out_din { O 64 vector } k0_1_out_full_n { I 1 bit } k0_1_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name k0_3_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_k0_3_out \
    op interface \
    ports { k0_3_out_din { O 64 vector } k0_3_out_full_n { I 1 bit } k0_3_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name quant_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_quant_out \
    op interface \
    ports { quant_out_din { O 64 vector } quant_out_full_n { I 1 bit } quant_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name offsets_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_offsets_out \
    op interface \
    ports { offsets_out_din { O 64 vector } offsets_out_full_n { I 1 bit } offsets_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name D_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_out \
    op interface \
    ports { D_out_din { O 32 vector } D_out_full_n { I 1 bit } D_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name D_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_out1 \
    op interface \
    ports { D_out1_din { O 32 vector } D_out1_full_n { I 1 bit } D_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name D_out2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_D_out2 \
    op interface \
    ports { D_out2_din { O 32 vector } D_out2_full_n { I 1 bit } D_out2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name IC_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_IC_out \
    op interface \
    ports { IC_out_din { O 32 vector } IC_out_full_n { I 1 bit } IC_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name IC_out3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_IC_out3 \
    op interface \
    ports { IC_out3_din { O 32 vector } IC_out3_full_n { I 1 bit } IC_out3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name OC_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_OC_out \
    op interface \
    ports { OC_out_din { O 32 vector } OC_out_full_n { I 1 bit } OC_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name OC_out4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_OC_out4 \
    op interface \
    ports { OC_out4_din { O 32 vector } OC_out4_full_n { I 1 bit } OC_out4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name OC_out5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_OC_out5 \
    op interface \
    ports { OC_out5_din { O 32 vector } OC_out5_full_n { I 1 bit } OC_out5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
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
    id 32 \
    name batch_out6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_batch_out6 \
    op interface \
    ports { batch_out6_din { O 32 vector } batch_out6_full_n { I 1 bit } batch_out6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name batch_out7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_batch_out7 \
    op interface \
    ports { batch_out7_din { O 32 vector } batch_out7_full_n { I 1 bit } batch_out7_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name batch_out8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_batch_out8 \
    op interface \
    ports { batch_out8_din { O 32 vector } batch_out8_full_n { I 1 bit } batch_out8_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name STRIDE_2_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_STRIDE_2_out \
    op interface \
    ports { STRIDE_2_out_din { O 1 vector } STRIDE_2_out_full_n { I 1 bit } STRIDE_2_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name STRIDE_2_out9 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_STRIDE_2_out9 \
    op interface \
    ports { STRIDE_2_out9_din { O 1 vector } STRIDE_2_out9_full_n { I 1 bit } STRIDE_2_out9_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name STRIDE_2_out10 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_STRIDE_2_out10 \
    op interface \
    ports { STRIDE_2_out10_din { O 1 vector } STRIDE_2_out10_full_n { I 1 bit } STRIDE_2_out10_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name skip3_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_skip3_out \
    op interface \
    ports { skip3_out_din { O 1 vector } skip3_out_full_n { I 1 bit } skip3_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name skip3_out11 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_skip3_out11 \
    op interface \
    ports { skip3_out11_din { O 1 vector } skip3_out11_full_n { I 1 bit } skip3_out11_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name skip3_out12 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_skip3_out12 \
    op interface \
    ports { skip3_out12_din { O 1 vector } skip3_out12_full_n { I 1 bit } skip3_out12_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name skip3_out13 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_skip3_out13 \
    op interface \
    ports { skip3_out13_din { O 1 vector } skip3_out13_full_n { I 1 bit } skip3_out13_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name skip3_out14 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_skip3_out14 \
    op interface \
    ports { skip3_out14_din { O 1 vector } skip3_out14_full_n { I 1 bit } skip3_out14_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name skip3_out15 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_skip3_out15 \
    op interface \
    ports { skip3_out15_din { O 1 vector } skip3_out15_full_n { I 1 bit } skip3_out15_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name skip1_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_skip1_out \
    op interface \
    ports { skip1_out_din { O 1 vector } skip1_out_full_n { I 1 bit } skip1_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name skip1_out16 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_skip1_out16 \
    op interface \
    ports { skip1_out16_din { O 1 vector } skip1_out16_full_n { I 1 bit } skip1_out16_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name deform_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_deform_out \
    op interface \
    ports { deform_out_din { O 1 vector } deform_out_full_n { I 1 bit } deform_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name deform_out17 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_deform_out17 \
    op interface \
    ports { deform_out17_din { O 1 vector } deform_out17_full_n { I 1 bit } deform_out17_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name relu1_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_relu1_out \
    op interface \
    ports { relu1_out_din { O 1 vector } relu1_out_full_n { I 1 bit } relu1_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name relu3_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_relu3_out \
    op interface \
    ports { relu3_out_din { O 1 vector } relu3_out_full_n { I 1 bit } relu3_out_write { O 1 bit } } \
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


