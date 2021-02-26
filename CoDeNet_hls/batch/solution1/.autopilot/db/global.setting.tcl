
set TopModule "top"
set ClockPeriod 3
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix top_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xczu3eg:-sbva484:-1-i
set SourceFiles {sc {} c ../../deform.cpp}
set SourceFlags {sc {} c {{ } {}}}
set DirectiveFile /home/bill/workspace/CoDeNet/CoDeNet_hls/batch/solution1/solution1.directive
set TBFiles {verilog {../../tb.cpp ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16weight1.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16scale.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16quant.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16partial.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16output.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16input.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16bias.txt ../../D_32_C_64_k_3_PA_16_PE_16weight3.txt ../../D_32_C_64_k_3_PA_16_PE_16scale.txt ../../D_32_C_64_k_3_PA_16_PE_16quant.txt ../../D_32_C_64_k_3_PA_16_PE_16partial.txt ../../D_32_C_64_k_3_PA_16_PE_16output.txt ../../D_32_C_64_k_3_PA_16_PE_16input.txt ../../D_32_C_64_k_3_PA_16_PE_16bias.txt} bc {../../tb.cpp ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16weight1.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16scale.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16quant.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16partial.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16output.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16input.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16bias.txt ../../D_32_C_64_k_3_PA_16_PE_16weight3.txt ../../D_32_C_64_k_3_PA_16_PE_16scale.txt ../../D_32_C_64_k_3_PA_16_PE_16quant.txt ../../D_32_C_64_k_3_PA_16_PE_16partial.txt ../../D_32_C_64_k_3_PA_16_PE_16output.txt ../../D_32_C_64_k_3_PA_16_PE_16input.txt ../../D_32_C_64_k_3_PA_16_PE_16bias.txt} sc {../../tb.cpp ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16weight1.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16scale.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16quant.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16partial.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16output.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16input.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16bias.txt ../../D_32_C_64_k_3_PA_16_PE_16weight3.txt ../../D_32_C_64_k_3_PA_16_PE_16scale.txt ../../D_32_C_64_k_3_PA_16_PE_16quant.txt ../../D_32_C_64_k_3_PA_16_PE_16partial.txt ../../D_32_C_64_k_3_PA_16_PE_16output.txt ../../D_32_C_64_k_3_PA_16_PE_16input.txt ../../D_32_C_64_k_3_PA_16_PE_16bias.txt} vhdl {../../tb.cpp ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16weight1.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16scale.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16quant.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16partial.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16output.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16input.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16bias.txt ../../D_32_C_64_k_3_PA_16_PE_16weight3.txt ../../D_32_C_64_k_3_PA_16_PE_16scale.txt ../../D_32_C_64_k_3_PA_16_PE_16quant.txt ../../D_32_C_64_k_3_PA_16_PE_16partial.txt ../../D_32_C_64_k_3_PA_16_PE_16output.txt ../../D_32_C_64_k_3_PA_16_PE_16input.txt ../../D_32_C_64_k_3_PA_16_PE_16bias.txt} c {} cas {../../tb.cpp ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16weight1.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16scale.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16quant.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16partial.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16output.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16input.txt ../../D_32_IC_64_OC_16_k_1_PA_16_PE_16bias.txt ../../D_32_C_64_k_3_PA_16_PE_16weight3.txt ../../D_32_C_64_k_3_PA_16_PE_16scale.txt ../../D_32_C_64_k_3_PA_16_PE_16quant.txt ../../D_32_C_64_k_3_PA_16_PE_16partial.txt ../../D_32_C_64_k_3_PA_16_PE_16output.txt ../../D_32_C_64_k_3_PA_16_PE_16input.txt ../../D_32_C_64_k_3_PA_16_PE_16bias.txt}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus}}}
set HPFPO 0
