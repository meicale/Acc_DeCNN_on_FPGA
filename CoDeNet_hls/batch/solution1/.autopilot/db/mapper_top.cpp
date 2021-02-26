#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
struct __cosim_s10__ { char data[16]; };
extern "C" void top(__cosim_s10__*, __cosim_s10__*, long long*, long long*, short*, char*, int, int, int, int, int, int, int, int, int, int, char, char, char, char, char, char);
extern "C" void apatb_top_hw(volatile void * __xlx_apatb_param_fmap, volatile void * __xlx_apatb_param_out, volatile void * __xlx_apatb_param_k0_1, volatile void * __xlx_apatb_param_k0_3, volatile void * __xlx_apatb_param_quant, volatile void * __xlx_apatb_param_offsets, int __xlx_apatb_param_D, int __xlx_apatb_param_IC, int __xlx_apatb_param_OC, int __xlx_apatb_param_batch, char __xlx_apatb_param_STRIDE_2, char __xlx_apatb_param_skip3, char __xlx_apatb_param_skip1, char __xlx_apatb_param_deform, char __xlx_apatb_param_relu1, char __xlx_apatb_param_relu3) {
  // Collect __xlx_fmap__tmp_vec
  vector<sc_bv<128> >__xlx_fmap__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_fmap)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_fmap)[j*2+1];
    __xlx_fmap__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_fmap = 2;
  int __xlx_offset_param_fmap = 0;
  int __xlx_offset_byte_param_fmap = 0*16;
  __cosim_s10__* __xlx_fmap__input_buffer= new __cosim_s10__[__xlx_fmap__tmp_vec.size()];
  for (int i = 0; i < __xlx_fmap__tmp_vec.size(); ++i) {
    ((long long*)__xlx_fmap__input_buffer)[i*2+0] = __xlx_fmap__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_fmap__input_buffer)[i*2+1] = __xlx_fmap__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_out__tmp_vec
  vector<sc_bv<128> >__xlx_out__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_out)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_out)[j*2+1];
    __xlx_out__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_out = 2;
  int __xlx_offset_param_out = 0;
  int __xlx_offset_byte_param_out = 0*16;
  __cosim_s10__* __xlx_out__input_buffer= new __cosim_s10__[__xlx_out__tmp_vec.size()];
  for (int i = 0; i < __xlx_out__tmp_vec.size(); ++i) {
    ((long long*)__xlx_out__input_buffer)[i*2+0] = __xlx_out__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_out__input_buffer)[i*2+1] = __xlx_out__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_k0_1__tmp_vec
  vector<sc_bv<64> >__xlx_k0_1__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    __xlx_k0_1__tmp_vec.push_back(((long long*)__xlx_apatb_param_k0_1)[j]);
  }
  int __xlx_size_param_k0_1 = 2;
  int __xlx_offset_param_k0_1 = 0;
  int __xlx_offset_byte_param_k0_1 = 0*8;
  long long* __xlx_k0_1__input_buffer= new long long[__xlx_k0_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_k0_1__tmp_vec.size(); ++i) {
    __xlx_k0_1__input_buffer[i] = __xlx_k0_1__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_k0_3__tmp_vec
  vector<sc_bv<64> >__xlx_k0_3__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    __xlx_k0_3__tmp_vec.push_back(((long long*)__xlx_apatb_param_k0_3)[j]);
  }
  int __xlx_size_param_k0_3 = 2;
  int __xlx_offset_param_k0_3 = 0;
  int __xlx_offset_byte_param_k0_3 = 0*8;
  long long* __xlx_k0_3__input_buffer= new long long[__xlx_k0_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_k0_3__tmp_vec.size(); ++i) {
    __xlx_k0_3__input_buffer[i] = __xlx_k0_3__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_quant__tmp_vec
  vector<sc_bv<16> >__xlx_quant__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    __xlx_quant__tmp_vec.push_back(((short*)__xlx_apatb_param_quant)[j]);
  }
  int __xlx_size_param_quant = 2;
  int __xlx_offset_param_quant = 0;
  int __xlx_offset_byte_param_quant = 0*2;
  short* __xlx_quant__input_buffer= new short[__xlx_quant__tmp_vec.size()];
  for (int i = 0; i < __xlx_quant__tmp_vec.size(); ++i) {
    __xlx_quant__input_buffer[i] = __xlx_quant__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_offsets__tmp_vec
  vector<sc_bv<8> >__xlx_offsets__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    __xlx_offsets__tmp_vec.push_back(((char*)__xlx_apatb_param_offsets)[j]);
  }
  int __xlx_size_param_offsets = 2;
  int __xlx_offset_param_offsets = 0;
  int __xlx_offset_byte_param_offsets = 0*1;
  char* __xlx_offsets__input_buffer= new char[__xlx_offsets__tmp_vec.size()];
  for (int i = 0; i < __xlx_offsets__tmp_vec.size(); ++i) {
    __xlx_offsets__input_buffer[i] = __xlx_offsets__tmp_vec[i].range(7, 0).to_uint64();
  }
  // DUT call
  top(__xlx_fmap__input_buffer, __xlx_out__input_buffer, __xlx_k0_1__input_buffer, __xlx_k0_3__input_buffer, __xlx_quant__input_buffer, __xlx_offsets__input_buffer, __xlx_offset_byte_param_fmap, __xlx_offset_byte_param_out, __xlx_offset_byte_param_k0_1, __xlx_offset_byte_param_k0_3, __xlx_offset_byte_param_quant, __xlx_offset_byte_param_offsets, __xlx_apatb_param_D, __xlx_apatb_param_IC, __xlx_apatb_param_OC, __xlx_apatb_param_batch, __xlx_apatb_param_STRIDE_2, __xlx_apatb_param_skip3, __xlx_apatb_param_skip1, __xlx_apatb_param_deform, __xlx_apatb_param_relu1, __xlx_apatb_param_relu3);
// print __xlx_apatb_param_fmap
  sc_bv<128>*__xlx_fmap_output_buffer = new sc_bv<128>[__xlx_size_param_fmap];
  for (int i = 0; i < __xlx_size_param_fmap; ++i) {
    char* start = (char*)(&(__xlx_fmap__input_buffer[__xlx_offset_param_fmap]));
    __xlx_fmap_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_fmap_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_fmap; ++i) {
    ((long long*)__xlx_apatb_param_fmap)[i*2+0] = __xlx_fmap_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_fmap)[i*2+1] = __xlx_fmap_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_out
  sc_bv<128>*__xlx_out_output_buffer = new sc_bv<128>[__xlx_size_param_out];
  for (int i = 0; i < __xlx_size_param_out; ++i) {
    char* start = (char*)(&(__xlx_out__input_buffer[__xlx_offset_param_out]));
    __xlx_out_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_out_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_out; ++i) {
    ((long long*)__xlx_apatb_param_out)[i*2+0] = __xlx_out_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_out)[i*2+1] = __xlx_out_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_k0_1
  sc_bv<64>*__xlx_k0_1_output_buffer = new sc_bv<64>[__xlx_size_param_k0_1];
  for (int i = 0; i < __xlx_size_param_k0_1; ++i) {
    __xlx_k0_1_output_buffer[i] = __xlx_k0_1__input_buffer[i+__xlx_offset_param_k0_1];
  }
  for (int i = 0; i < __xlx_size_param_k0_1; ++i) {
    ((long long*)__xlx_apatb_param_k0_1)[i] = __xlx_k0_1_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_k0_3
  sc_bv<64>*__xlx_k0_3_output_buffer = new sc_bv<64>[__xlx_size_param_k0_3];
  for (int i = 0; i < __xlx_size_param_k0_3; ++i) {
    __xlx_k0_3_output_buffer[i] = __xlx_k0_3__input_buffer[i+__xlx_offset_param_k0_3];
  }
  for (int i = 0; i < __xlx_size_param_k0_3; ++i) {
    ((long long*)__xlx_apatb_param_k0_3)[i] = __xlx_k0_3_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_quant
  sc_bv<16>*__xlx_quant_output_buffer = new sc_bv<16>[__xlx_size_param_quant];
  for (int i = 0; i < __xlx_size_param_quant; ++i) {
    __xlx_quant_output_buffer[i] = __xlx_quant__input_buffer[i+__xlx_offset_param_quant];
  }
  for (int i = 0; i < __xlx_size_param_quant; ++i) {
    ((short*)__xlx_apatb_param_quant)[i] = __xlx_quant_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_offsets
  sc_bv<8>*__xlx_offsets_output_buffer = new sc_bv<8>[__xlx_size_param_offsets];
  for (int i = 0; i < __xlx_size_param_offsets; ++i) {
    __xlx_offsets_output_buffer[i] = __xlx_offsets__input_buffer[i+__xlx_offset_param_offsets];
  }
  for (int i = 0; i < __xlx_size_param_offsets; ++i) {
    ((char*)__xlx_apatb_param_offsets)[i] = __xlx_offsets_output_buffer[i].to_uint64();
  }
}
