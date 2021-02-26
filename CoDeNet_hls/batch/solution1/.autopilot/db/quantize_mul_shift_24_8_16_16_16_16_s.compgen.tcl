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
    id 888 \
    name s_conv3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_conv3 \
    op interface \
    ports { s_conv3_dout { I 512 vector } s_conv3_empty_n { I 1 bit } s_conv3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 889 \
    name f3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_f3 \
    op interface \
    ports { f3_din { O 128 vector } f3_full_n { I 1 bit } f3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 890 \
    name s_scale_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_scale_1 \
    op interface \
    ports { s_scale_1_dout { I 256 vector } s_scale_1_empty_n { I 1 bit } s_scale_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 891 \
    name s_bias_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_bias_1 \
    op interface \
    ports { s_bias_1_dout { I 256 vector } s_bias_1_empty_n { I 1 bit } s_bias_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 892 \
    name mul_ln93_1_loc \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln93_1_loc \
    op interface \
    ports { mul_ln93_1_loc_dout { I 32 vector } mul_ln93_1_loc_empty_n { I 1 bit } mul_ln93_1_loc_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 893 \
    name OC_V_loc \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_OC_V_loc \
    op interface \
    ports { OC_V_loc_dout { I 16 vector } OC_V_loc_empty_n { I 1 bit } OC_V_loc_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 894 \
    name skip3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_skip3 \
    op interface \
    ports { skip3_dout { I 1 vector } skip3_empty_n { I 1 bit } skip3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 895 \
    name relu3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_relu3 \
    op interface \
    ports { relu3_dout { I 1 vector } relu3_empty_n { I 1 bit } relu3_read { O 1 bit } } \
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


