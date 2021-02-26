open_project batch
set_top top 
add_files deform.cpp
add_files -tb D_32_C_64_k_3_PA_16_PE_16bias.txt
add_files -tb D_32_C_64_k_3_PA_16_PE_16input.txt
add_files -tb D_32_C_64_k_3_PA_16_PE_16output.txt
add_files -tb D_32_C_64_k_3_PA_16_PE_16partial.txt
add_files -tb D_32_C_64_k_3_PA_16_PE_16quant.txt
add_files -tb D_32_C_64_k_3_PA_16_PE_16scale.txt
add_files -tb D_32_C_64_k_3_PA_16_PE_16weight3.txt
add_files -tb D_32_IC_64_OC_16_k_1_PA_16_PE_16bias.txt
add_files -tb D_32_IC_64_OC_16_k_1_PA_16_PE_16input.txt
add_files -tb D_32_IC_64_OC_16_k_1_PA_16_PE_16output.txt
add_files -tb D_32_IC_64_OC_16_k_1_PA_16_PE_16partial.txt
add_files -tb D_32_IC_64_OC_16_k_1_PA_16_PE_16quant.txt
add_files -tb D_32_IC_64_OC_16_k_1_PA_16_PE_16scale.txt
add_files -tb D_32_IC_64_OC_16_k_1_PA_16_PE_16weight1.txt
add_files -tb tb.cpp
open_solution "solution1"
set_part {xczu3eg-sbva484-1-i} 
create_clock -period 3 -name default
#config_export -format ip_catalog -rtl verilog
#source "./batch/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
