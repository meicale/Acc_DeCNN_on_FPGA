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
    id 570 \
    name D_V_loc \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_D_V_loc \
    op interface \
    ports { D_V_loc_dout { I 16 vector } D_V_loc_empty_n { I 1 bit } D_V_loc_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
    name STRIDE_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_STRIDE_2 \
    op interface \
    ports { STRIDE_2_dout { I 1 vector } STRIDE_2_empty_n { I 1 bit } STRIDE_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 572 \
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
    id 573 \
    name mul_ln93_1_loc_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln93_1_loc_out \
    op interface \
    ports { mul_ln93_1_loc_out_din { O 32 vector } mul_ln93_1_loc_out_full_n { I 1 bit } mul_ln93_1_loc_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 574 \
    name mul_ln93_1_loc_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln93_1_loc_out1 \
    op interface \
    ports { mul_ln93_1_loc_out1_din { O 32 vector } mul_ln93_1_loc_out1_full_n { I 1 bit } mul_ln93_1_loc_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 575 \
    name mul_ln93_1_loc_out2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln93_1_loc_out2 \
    op interface \
    ports { mul_ln93_1_loc_out2_din { O 32 vector } mul_ln93_1_loc_out2_full_n { I 1 bit } mul_ln93_1_loc_out2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 576 \
    name mul_ln93_1_loc_out3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln93_1_loc_out3 \
    op interface \
    ports { mul_ln93_1_loc_out3_din { O 32 vector } mul_ln93_1_loc_out3_full_n { I 1 bit } mul_ln93_1_loc_out3_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


