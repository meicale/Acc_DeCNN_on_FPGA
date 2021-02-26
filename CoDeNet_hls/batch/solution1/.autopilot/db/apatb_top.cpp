#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem0 "../tv/cdatafile/c.top.autotvin_gmem0.dat"
#define AUTOTB_TVOUT_gmem0 "../tv/cdatafile/c.top.autotvout_gmem0.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem1 "../tv/cdatafile/c.top.autotvin_gmem1.dat"
#define AUTOTB_TVOUT_gmem1 "../tv/cdatafile/c.top.autotvout_gmem1.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem2 "../tv/cdatafile/c.top.autotvin_gmem2.dat"
#define AUTOTB_TVOUT_gmem2 "../tv/cdatafile/c.top.autotvout_gmem2.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem3 "../tv/cdatafile/c.top.autotvin_gmem3.dat"
#define AUTOTB_TVOUT_gmem3 "../tv/cdatafile/c.top.autotvout_gmem3.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem4 "../tv/cdatafile/c.top.autotvin_gmem4.dat"
#define AUTOTB_TVOUT_gmem4 "../tv/cdatafile/c.top.autotvout_gmem4.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem5 "../tv/cdatafile/c.top.autotvin_gmem5.dat"
#define AUTOTB_TVOUT_gmem5 "../tv/cdatafile/c.top.autotvout_gmem5.dat"
// wrapc file define:
#define AUTOTB_TVIN_fmap "../tv/cdatafile/c.top.autotvin_fmap.dat"
#define AUTOTB_TVOUT_fmap "../tv/cdatafile/c.top.autotvout_fmap.dat"
// wrapc file define:
#define AUTOTB_TVIN_out "../tv/cdatafile/c.top.autotvin_out_r.dat"
#define AUTOTB_TVOUT_out "../tv/cdatafile/c.top.autotvout_out_r.dat"
// wrapc file define:
#define AUTOTB_TVIN_k0_1 "../tv/cdatafile/c.top.autotvin_k0_1.dat"
#define AUTOTB_TVOUT_k0_1 "../tv/cdatafile/c.top.autotvout_k0_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_k0_3 "../tv/cdatafile/c.top.autotvin_k0_3.dat"
#define AUTOTB_TVOUT_k0_3 "../tv/cdatafile/c.top.autotvout_k0_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_quant "../tv/cdatafile/c.top.autotvin_quant.dat"
#define AUTOTB_TVOUT_quant "../tv/cdatafile/c.top.autotvout_quant.dat"
// wrapc file define:
#define AUTOTB_TVIN_offsets "../tv/cdatafile/c.top.autotvin_offsets.dat"
#define AUTOTB_TVOUT_offsets "../tv/cdatafile/c.top.autotvout_offsets.dat"
// wrapc file define:
#define AUTOTB_TVIN_D "../tv/cdatafile/c.top.autotvin_D.dat"
#define AUTOTB_TVOUT_D "../tv/cdatafile/c.top.autotvout_D.dat"
// wrapc file define:
#define AUTOTB_TVIN_IC "../tv/cdatafile/c.top.autotvin_IC.dat"
#define AUTOTB_TVOUT_IC "../tv/cdatafile/c.top.autotvout_IC.dat"
// wrapc file define:
#define AUTOTB_TVIN_OC "../tv/cdatafile/c.top.autotvin_OC.dat"
#define AUTOTB_TVOUT_OC "../tv/cdatafile/c.top.autotvout_OC.dat"
// wrapc file define:
#define AUTOTB_TVIN_batch "../tv/cdatafile/c.top.autotvin_batch.dat"
#define AUTOTB_TVOUT_batch "../tv/cdatafile/c.top.autotvout_batch.dat"
// wrapc file define:
#define AUTOTB_TVIN_STRIDE_2 "../tv/cdatafile/c.top.autotvin_STRIDE_2.dat"
#define AUTOTB_TVOUT_STRIDE_2 "../tv/cdatafile/c.top.autotvout_STRIDE_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_skip3 "../tv/cdatafile/c.top.autotvin_skip3.dat"
#define AUTOTB_TVOUT_skip3 "../tv/cdatafile/c.top.autotvout_skip3.dat"
// wrapc file define:
#define AUTOTB_TVIN_skip1 "../tv/cdatafile/c.top.autotvin_skip1.dat"
#define AUTOTB_TVOUT_skip1 "../tv/cdatafile/c.top.autotvout_skip1.dat"
// wrapc file define:
#define AUTOTB_TVIN_deform "../tv/cdatafile/c.top.autotvin_deform.dat"
#define AUTOTB_TVOUT_deform "../tv/cdatafile/c.top.autotvout_deform.dat"
// wrapc file define:
#define AUTOTB_TVIN_relu1 "../tv/cdatafile/c.top.autotvin_relu1.dat"
#define AUTOTB_TVOUT_relu1 "../tv/cdatafile/c.top.autotvout_relu1.dat"
// wrapc file define:
#define AUTOTB_TVIN_relu3 "../tv/cdatafile/c.top.autotvin_relu3.dat"
#define AUTOTB_TVOUT_relu3 "../tv/cdatafile/c.top.autotvout_relu3.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem0 "../tv/rtldatafile/rtl.top.autotvout_gmem0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem1 "../tv/rtldatafile/rtl.top.autotvout_gmem1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem2 "../tv/rtldatafile/rtl.top.autotvout_gmem2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem3 "../tv/rtldatafile/rtl.top.autotvout_gmem3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem4 "../tv/rtldatafile/rtl.top.autotvout_gmem4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem5 "../tv/rtldatafile/rtl.top.autotvout_gmem5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_fmap "../tv/rtldatafile/rtl.top.autotvout_fmap.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out "../tv/rtldatafile/rtl.top.autotvout_out_r.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_k0_1 "../tv/rtldatafile/rtl.top.autotvout_k0_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_k0_3 "../tv/rtldatafile/rtl.top.autotvout_k0_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_quant "../tv/rtldatafile/rtl.top.autotvout_quant.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_offsets "../tv/rtldatafile/rtl.top.autotvout_offsets.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_D "../tv/rtldatafile/rtl.top.autotvout_D.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_IC "../tv/rtldatafile/rtl.top.autotvout_IC.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_OC "../tv/rtldatafile/rtl.top.autotvout_OC.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_batch "../tv/rtldatafile/rtl.top.autotvout_batch.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_STRIDE_2 "../tv/rtldatafile/rtl.top.autotvout_STRIDE_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_skip3 "../tv/rtldatafile/rtl.top.autotvout_skip3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_skip1 "../tv/rtldatafile/rtl.top.autotvout_skip1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_deform "../tv/rtldatafile/rtl.top.autotvout_deform.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_relu1 "../tv/rtldatafile/rtl.top.autotvout_relu1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_relu3 "../tv/rtldatafile/rtl.top.autotvout_relu3.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem0_depth = 0;
  gmem1_depth = 0;
  gmem2_depth = 0;
  gmem3_depth = 0;
  gmem4_depth = 0;
  gmem5_depth = 0;
  fmap_depth = 0;
  out_depth = 0;
  k0_1_depth = 0;
  k0_3_depth = 0;
  quant_depth = 0;
  offsets_depth = 0;
  D_depth = 0;
  IC_depth = 0;
  OC_depth = 0;
  batch_depth = 0;
  STRIDE_2_depth = 0;
  skip3_depth = 0;
  skip1_depth = 0;
  deform_depth = 0;
  relu1_depth = 0;
  relu3_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem0 " << gmem0_depth << "}\n";
  total_list << "{gmem1 " << gmem1_depth << "}\n";
  total_list << "{gmem2 " << gmem2_depth << "}\n";
  total_list << "{gmem3 " << gmem3_depth << "}\n";
  total_list << "{gmem4 " << gmem4_depth << "}\n";
  total_list << "{gmem5 " << gmem5_depth << "}\n";
  total_list << "{fmap " << fmap_depth << "}\n";
  total_list << "{out_r " << out_depth << "}\n";
  total_list << "{k0_1 " << k0_1_depth << "}\n";
  total_list << "{k0_3 " << k0_3_depth << "}\n";
  total_list << "{quant " << quant_depth << "}\n";
  total_list << "{offsets " << offsets_depth << "}\n";
  total_list << "{D " << D_depth << "}\n";
  total_list << "{IC " << IC_depth << "}\n";
  total_list << "{OC " << OC_depth << "}\n";
  total_list << "{batch " << batch_depth << "}\n";
  total_list << "{STRIDE_2 " << STRIDE_2_depth << "}\n";
  total_list << "{skip3 " << skip3_depth << "}\n";
  total_list << "{skip1 " << skip1_depth << "}\n";
  total_list << "{deform " << deform_depth << "}\n";
  total_list << "{relu1 " << relu1_depth << "}\n";
  total_list << "{relu3 " << relu3_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int gmem0_depth;
    int gmem1_depth;
    int gmem2_depth;
    int gmem3_depth;
    int gmem4_depth;
    int gmem5_depth;
    int fmap_depth;
    int out_depth;
    int k0_1_depth;
    int k0_3_depth;
    int quant_depth;
    int offsets_depth;
    int D_depth;
    int IC_depth;
    int OC_depth;
    int batch_depth;
    int STRIDE_2_depth;
    int skip3_depth;
    int skip1_depth;
    int deform_depth;
    int relu1_depth;
    int relu3_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s10__ { char data[16]; };
extern "C" void top_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, int, int, int, int, char, char, char, char, char, char);

extern "C" void apatb_top_hw(volatile void * __xlx_apatb_param_fmap, volatile void * __xlx_apatb_param_out, volatile void * __xlx_apatb_param_k0_1, volatile void * __xlx_apatb_param_k0_3, volatile void * __xlx_apatb_param_quant, volatile void * __xlx_apatb_param_offsets, int __xlx_apatb_param_D, int __xlx_apatb_param_IC, int __xlx_apatb_param_OC, int __xlx_apatb_param_batch, char __xlx_apatb_param_STRIDE_2, char __xlx_apatb_param_skip3, char __xlx_apatb_param_skip1, char __xlx_apatb_param_deform, char __xlx_apatb_param_relu1, char __xlx_apatb_param_relu3) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > gmem1_pc_buffer(2);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "gmem1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 2; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_out)[j*2+0] = gmem1_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_out)[j*2+1] = gmem1_pc_buffer[i].range(127,64).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//gmem0
aesl_fh.touch(AUTOTB_TVIN_gmem0);
aesl_fh.touch(AUTOTB_TVOUT_gmem0);
//gmem1
aesl_fh.touch(AUTOTB_TVIN_gmem1);
aesl_fh.touch(AUTOTB_TVOUT_gmem1);
//gmem2
aesl_fh.touch(AUTOTB_TVIN_gmem2);
aesl_fh.touch(AUTOTB_TVOUT_gmem2);
//gmem3
aesl_fh.touch(AUTOTB_TVIN_gmem3);
aesl_fh.touch(AUTOTB_TVOUT_gmem3);
//gmem4
aesl_fh.touch(AUTOTB_TVIN_gmem4);
aesl_fh.touch(AUTOTB_TVOUT_gmem4);
//gmem5
aesl_fh.touch(AUTOTB_TVIN_gmem5);
aesl_fh.touch(AUTOTB_TVOUT_gmem5);
//fmap
aesl_fh.touch(AUTOTB_TVIN_fmap);
aesl_fh.touch(AUTOTB_TVOUT_fmap);
//out
aesl_fh.touch(AUTOTB_TVIN_out);
aesl_fh.touch(AUTOTB_TVOUT_out);
//k0_1
aesl_fh.touch(AUTOTB_TVIN_k0_1);
aesl_fh.touch(AUTOTB_TVOUT_k0_1);
//k0_3
aesl_fh.touch(AUTOTB_TVIN_k0_3);
aesl_fh.touch(AUTOTB_TVOUT_k0_3);
//quant
aesl_fh.touch(AUTOTB_TVIN_quant);
aesl_fh.touch(AUTOTB_TVOUT_quant);
//offsets
aesl_fh.touch(AUTOTB_TVIN_offsets);
aesl_fh.touch(AUTOTB_TVOUT_offsets);
//D
aesl_fh.touch(AUTOTB_TVIN_D);
aesl_fh.touch(AUTOTB_TVOUT_D);
//IC
aesl_fh.touch(AUTOTB_TVIN_IC);
aesl_fh.touch(AUTOTB_TVOUT_IC);
//OC
aesl_fh.touch(AUTOTB_TVIN_OC);
aesl_fh.touch(AUTOTB_TVOUT_OC);
//batch
aesl_fh.touch(AUTOTB_TVIN_batch);
aesl_fh.touch(AUTOTB_TVOUT_batch);
//STRIDE_2
aesl_fh.touch(AUTOTB_TVIN_STRIDE_2);
aesl_fh.touch(AUTOTB_TVOUT_STRIDE_2);
//skip3
aesl_fh.touch(AUTOTB_TVIN_skip3);
aesl_fh.touch(AUTOTB_TVOUT_skip3);
//skip1
aesl_fh.touch(AUTOTB_TVIN_skip1);
aesl_fh.touch(AUTOTB_TVOUT_skip1);
//deform
aesl_fh.touch(AUTOTB_TVIN_deform);
aesl_fh.touch(AUTOTB_TVOUT_deform);
//relu1
aesl_fh.touch(AUTOTB_TVIN_relu1);
aesl_fh.touch(AUTOTB_TVOUT_relu1);
//relu3
aesl_fh.touch(AUTOTB_TVIN_relu3);
aesl_fh.touch(AUTOTB_TVOUT_relu3);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_fmap = 0;
// print gmem0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_fmap = 0*16;
  if (__xlx_apatb_param_fmap) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_fmap)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_fmap)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.gmem0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_out = 0;
// print gmem1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_out = 0*16;
  if (__xlx_apatb_param_out) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_out)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_out)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.gmem1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_k0_1 = 0;
// print gmem2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem2, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_k0_1 = 0*8;
  if (__xlx_apatb_param_k0_1) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_k0_1)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem2, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.gmem2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem2, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_k0_3 = 0;
// print gmem3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem3, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_k0_3 = 0*8;
  if (__xlx_apatb_param_k0_3) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_k0_3)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem3, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.gmem3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem3, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_quant = 0;
// print gmem4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem4, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_quant = 0*2;
  if (__xlx_apatb_param_quant) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_quant)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem4, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.gmem4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem4, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_offsets = 0;
// print gmem5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem5, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_offsets = 0*1;
  if (__xlx_apatb_param_offsets) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_offsets)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem5, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.gmem5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem5, __xlx_sprintf_buffer.data());
}
// print fmap Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_fmap, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_fmap;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_fmap, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.fmap_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_fmap, __xlx_sprintf_buffer.data());
}
// print out Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_out, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_out;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_out, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.out_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_out, __xlx_sprintf_buffer.data());
}
// print k0_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_k0_1, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_k0_1;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_k0_1, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.k0_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_k0_1, __xlx_sprintf_buffer.data());
}
// print k0_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_k0_3, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_k0_3;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_k0_3, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.k0_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_k0_3, __xlx_sprintf_buffer.data());
}
// print quant Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_quant, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_quant;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_quant, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.quant_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_quant, __xlx_sprintf_buffer.data());
}
// print offsets Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_offsets, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_offsets;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_offsets, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.offsets_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_offsets, __xlx_sprintf_buffer.data());
}
// print D Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_D, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_D);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_D, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.D_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_D, __xlx_sprintf_buffer.data());
}
// print IC Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_IC, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_IC);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_IC, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.IC_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_IC, __xlx_sprintf_buffer.data());
}
// print OC Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_OC, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_OC);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_OC, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.OC_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_OC, __xlx_sprintf_buffer.data());
}
// print batch Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_batch, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_batch);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_batch, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.batch_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_batch, __xlx_sprintf_buffer.data());
}
// print STRIDE_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_STRIDE_2, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)&__xlx_apatb_param_STRIDE_2);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_STRIDE_2, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.STRIDE_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_STRIDE_2, __xlx_sprintf_buffer.data());
}
// print skip3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_skip3, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)&__xlx_apatb_param_skip3);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_skip3, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.skip3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_skip3, __xlx_sprintf_buffer.data());
}
// print skip1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_skip1, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)&__xlx_apatb_param_skip1);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_skip1, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.skip1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_skip1, __xlx_sprintf_buffer.data());
}
// print deform Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_deform, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)&__xlx_apatb_param_deform);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_deform, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.deform_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_deform, __xlx_sprintf_buffer.data());
}
// print relu1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_relu1, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)&__xlx_apatb_param_relu1);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_relu1, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.relu1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_relu1, __xlx_sprintf_buffer.data());
}
// print relu3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_relu3, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)&__xlx_apatb_param_relu3);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_relu3, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.relu3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_relu3, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
top_hw_stub_wrapper(__xlx_apatb_param_fmap, __xlx_apatb_param_out, __xlx_apatb_param_k0_1, __xlx_apatb_param_k0_3, __xlx_apatb_param_quant, __xlx_apatb_param_offsets, __xlx_apatb_param_D, __xlx_apatb_param_IC, __xlx_apatb_param_OC, __xlx_apatb_param_batch, __xlx_apatb_param_STRIDE_2, __xlx_apatb_param_skip3, __xlx_apatb_param_skip1, __xlx_apatb_param_deform, __xlx_apatb_param_relu1, __xlx_apatb_param_relu3);
CodeState = DUMP_OUTPUTS;
// print gmem1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_gmem1, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_out = 0*16;
  if (__xlx_apatb_param_out) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_out)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_out)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.gmem1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_gmem1, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
