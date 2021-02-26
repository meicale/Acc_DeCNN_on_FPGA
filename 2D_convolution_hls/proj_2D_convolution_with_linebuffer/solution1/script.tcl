############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_2D_convolution_with_linebuffer
set_top filter11x11_strm
add_files convolution.cpp
add_files -tb convolution_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 6.66 -name default
#source "./proj_2D_convolution_with_linebuffer/solution1/directives.tcl"
csim_design -profile
csynth_design
cosim_design
export_design -format ip_catalog
