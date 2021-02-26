# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__HLS_FPO_v6_1__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

__USE_CLANG__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../convolution_test.cpp ../../../../convolution.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := /usr/vitis/Vitis_HLS/2020.2
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /usr/vitis/Vitis_HLS/2020.2/tps/lnx64/gcc-6.2.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9-csynth/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__HLS_FPO_v6_1__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
IFLAG += -Wno-unknown-pragmas 
IFLAG += -g
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
TOOLCHAIN += 
CCFLAG += -gcc-toolchain /usr/vitis/Vitis_HLS/2020.2/tps/lnx64/gcc-6.2.0
LFLAG += -gcc-toolchain /usr/vitis/Vitis_HLS/2020.2/tps/lnx64/gcc-6.2.0
CCFLAG += -fno-exceptions
LFLAG += -fno-exceptions
CCFLAG += -fprofile-instr-generate="code-%m.profraw"
LFLAG += -fprofile-instr-generate="code-%m.profraw"
CCFLAG += -Wno-c++11-narrowing
CCFLAG += -Werror=uninitialized
CCFLAG += -std=c++11
LFLAG += -std=c++11



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/convolution_test.o: ../../../../convolution_test.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../convolution_test.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/convolution_test.d

$(ObjDir)/convolution.o: ../../../../convolution.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../convolution.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/convolution.d
pObjDir=pobj
POBJECTS := $(basename $(notdir $(HLS_SOURCES)))
POBJECTS := $(POBJECTS:%=$(pObjDir)/%.bc)

$(pObjDir)/convolution_test.bc: ../../../../convolution_test.cpp $(pObjDir)/.dir
	$(Echo) $(CXX)  -gcc-toolchain /usr/vitis/Vitis_HLS/2020.2/tps/lnx64/gcc-6.2.0 -fno-exceptions -fprofile-instr-use=code.profdata -emit-llvm -c -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ;
	$(Verb) $(CXX)  -gcc-toolchain /usr/vitis/Vitis_HLS/2020.2/tps/lnx64/gcc-6.2.0 -fno-exceptions -fprofile-instr-use=code.profdata -emit-llvm -c -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ;

$(pObjDir)/convolution.bc: ../../../../convolution.cpp $(pObjDir)/.dir
	$(Echo) $(CXX)  -gcc-toolchain /usr/vitis/Vitis_HLS/2020.2/tps/lnx64/gcc-6.2.0 -fno-exceptions -fprofile-instr-use=code.profdata -emit-llvm -c  $(IFLAG) $(DFLAG) $< -o $@ ;
	$(Verb) $(CXX)  -gcc-toolchain /usr/vitis/Vitis_HLS/2020.2/tps/lnx64/gcc-6.2.0 -fno-exceptions -fprofile-instr-use=code.profdata -emit-llvm -c  $(IFLAG) $(DFLAG) $< -o $@ ;

profile_data: *.profraw
	${AP_CLANG_PATH}/llvm-profdata merge -output=code.profdata *.profraw

profile_all: profile_data $(POBJECTS)
	${AP_CLANG_PATH}/llvm-link -o LinkFile.bc ${POBJECTS} -f; \
	${MKDIR} /home/bill/workspace/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_2D_convolution_linebuffer/proj_2D_convolution_with_linebuffer/solution1/.autopilot/db/dot ; \
	${CP} -r ${pObjDir} /home/bill/workspace/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_2D_convolution_linebuffer/proj_2D_convolution_with_linebuffer/solution1/.autopilot/db/dot ; \
	${CP} LinkFile.bc /home/bill/workspace/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_2D_convolution_linebuffer/proj_2D_convolution_with_linebuffer/solution1/.autopilot/db/dot ; \
	${CD} /home/bill/workspace/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_2D_convolution_linebuffer/proj_2D_convolution_with_linebuffer/solution1/.autopilot/db/dot ; \
	${AP_CLANG_PATH}/opt -dot-callgraph-hls -cfg-hier-userfilelist "/home/bill/workspace/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_2D_convolution_linebuffer/convolution_test.cpp /home/bill/workspace/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_2D_convolution_linebuffer/convolution.cpp" -csim-top-function-name=filter11x11_strm LinkFile.bc -o LinkFile_fid.bc ; \
	${AP_CLANG_PATH}/opt -dot-cfg-hier-only -cfg-hier-userfilelist "/home/bill/workspace/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_2D_convolution_linebuffer/convolution_test.cpp /home/bill/workspace/vitis_hls_examples/HLS-Tiny-Tutorials/algorithm_2D_convolution_linebuffer/convolution.cpp" -cfg-hier-type csim LinkFile_fid.bc -o LinkFile_pp.bc ; 
