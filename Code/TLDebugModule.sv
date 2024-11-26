// Generated by CIRCT firtool-1.75.0
module TLDebugModule(	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1959:9]
  input         auto_dmInner_dmInner_sb2tlOpt_out_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_dmInner_dmInner_sb2tlOpt_out_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_dmInner_dmInner_sb2tlOpt_out_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_dmInner_dmInner_sb2tlOpt_out_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [31:0] auto_dmInner_dmInner_sb2tlOpt_out_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [7:0]  auto_dmInner_dmInner_sb2tlOpt_out_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_dmInner_dmInner_sb2tlOpt_out_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_dmInner_dmInner_sb2tlOpt_out_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_dmInner_dmInner_sb2tlOpt_out_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_dmInner_dmInner_sb2tlOpt_out_d_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_dmInner_dmInner_sb2tlOpt_out_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [4:0]  auto_dmInner_dmInner_sb2tlOpt_out_d_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_dmInner_dmInner_sb2tlOpt_out_d_bits_denied,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_dmInner_dmInner_sb2tlOpt_out_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_dmInner_dmInner_sb2tlOpt_out_d_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_dmInner_dmInner_tl_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_dmInner_dmInner_tl_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_dmInner_dmInner_tl_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_dmInner_dmInner_tl_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_dmInner_dmInner_tl_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [10:0] auto_dmInner_dmInner_tl_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [11:0] auto_dmInner_dmInner_tl_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_dmInner_dmInner_tl_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_dmInner_dmInner_tl_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_dmInner_dmInner_tl_in_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_dmInner_dmInner_tl_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_dmInner_dmInner_tl_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_dmInner_dmInner_tl_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_dmInner_dmInner_tl_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [10:0] auto_dmInner_dmInner_tl_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_dmInner_dmInner_tl_in_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_dmOuter_int_out_3_sync_0,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_dmOuter_int_out_2_sync_0,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_dmOuter_int_out_1_sync_0,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_dmOuter_int_out_0_sync_0,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         io_debug_clock,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input         io_debug_reset,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input         io_tl_clock,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input         io_tl_reset,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  output        io_ctrl_dmactive,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input         io_ctrl_dmactiveAck,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  output        io_dmi_dmi_req_ready,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input         io_dmi_dmi_req_valid,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input  [6:0]  io_dmi_dmi_req_bits_addr,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input  [31:0] io_dmi_dmi_req_bits_data,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input  [1:0]  io_dmi_dmi_req_bits_op,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input         io_dmi_dmi_resp_ready,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  output        io_dmi_dmi_resp_valid,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  output [31:0] io_dmi_dmi_resp_bits_data,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  output [1:0]  io_dmi_dmi_resp_bits_resp,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input         io_dmi_dmiClock,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input         io_dmi_dmiReset,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input         io_hartIsInReset_0,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input         io_hartIsInReset_1,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input         io_hartIsInReset_2,	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
  input         io_hartIsInReset_3	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1968:16]
);

  wire        _dmInner_auto_dmiXing_in_a_ridx;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_auto_dmiXing_in_a_safe_ridx_valid;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_auto_dmiXing_in_a_safe_sink_reset_n;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire [2:0]  _dmInner_auto_dmiXing_in_d_mem_0_opcode;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire [1:0]  _dmInner_auto_dmiXing_in_d_mem_0_size;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_auto_dmiXing_in_d_mem_0_source;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire [31:0] _dmInner_auto_dmiXing_in_d_mem_0_data;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_auto_dmiXing_in_d_widx;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_auto_dmiXing_in_d_safe_widx_valid;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_auto_dmiXing_in_d_safe_source_reset_n;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_io_innerCtrl_ridx;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_io_innerCtrl_safe_ridx_valid;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_io_innerCtrl_safe_sink_reset_n;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_io_hgDebugInt_0;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_io_hgDebugInt_1;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_io_hgDebugInt_2;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire        _dmInner_io_hgDebugInt_3;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  wire [2:0]  _dmOuter_auto_asource_out_a_mem_0_opcode;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire [8:0]  _dmOuter_auto_asource_out_a_mem_0_address;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire [31:0] _dmOuter_auto_asource_out_a_mem_0_data;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_auto_asource_out_a_widx;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_auto_asource_out_a_safe_widx_valid;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_auto_asource_out_a_safe_source_reset_n;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_auto_asource_out_d_ridx;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_auto_asource_out_d_safe_ridx_valid;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_auto_asource_out_d_safe_sink_reset_n;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_ctrl_dmactive;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_mem_0_resumereq;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire [9:0]  _dmOuter_io_innerCtrl_mem_0_hartsel;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_mem_0_ackhavereset;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_mem_0_hasel;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_mem_0_hamask_0;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_mem_0_hamask_1;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_mem_0_hamask_2;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_mem_0_hamask_3;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_mem_0_hrmask_0;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_mem_0_hrmask_1;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_mem_0_hrmask_2;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_mem_0_hrmask_3;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_widx;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_safe_widx_valid;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  wire        _dmOuter_io_innerCtrl_safe_source_reset_n;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  TLDebugModuleOuterAsync dmOuter (	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .auto_asource_out_a_mem_0_opcode        (_dmOuter_auto_asource_out_a_mem_0_opcode),
    .auto_asource_out_a_mem_0_address       (_dmOuter_auto_asource_out_a_mem_0_address),
    .auto_asource_out_a_mem_0_data          (_dmOuter_auto_asource_out_a_mem_0_data),
    .auto_asource_out_a_ridx                (_dmInner_auto_dmiXing_in_a_ridx),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .auto_asource_out_a_widx                (_dmOuter_auto_asource_out_a_widx),
    .auto_asource_out_a_safe_ridx_valid     (_dmInner_auto_dmiXing_in_a_safe_ridx_valid),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .auto_asource_out_a_safe_widx_valid     (_dmOuter_auto_asource_out_a_safe_widx_valid),
    .auto_asource_out_a_safe_source_reset_n (_dmOuter_auto_asource_out_a_safe_source_reset_n),
    .auto_asource_out_a_safe_sink_reset_n   (_dmInner_auto_dmiXing_in_a_safe_sink_reset_n),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .auto_asource_out_d_mem_0_opcode        (_dmInner_auto_dmiXing_in_d_mem_0_opcode),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .auto_asource_out_d_mem_0_size          (_dmInner_auto_dmiXing_in_d_mem_0_size),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .auto_asource_out_d_mem_0_source        (_dmInner_auto_dmiXing_in_d_mem_0_source),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .auto_asource_out_d_mem_0_data          (_dmInner_auto_dmiXing_in_d_mem_0_data),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .auto_asource_out_d_ridx                (_dmOuter_auto_asource_out_d_ridx),
    .auto_asource_out_d_widx                (_dmInner_auto_dmiXing_in_d_widx),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .auto_asource_out_d_safe_ridx_valid     (_dmOuter_auto_asource_out_d_safe_ridx_valid),
    .auto_asource_out_d_safe_widx_valid     (_dmInner_auto_dmiXing_in_d_safe_widx_valid),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .auto_asource_out_d_safe_source_reset_n (_dmInner_auto_dmiXing_in_d_safe_source_reset_n),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .auto_asource_out_d_safe_sink_reset_n   (_dmOuter_auto_asource_out_d_safe_sink_reset_n),
    .auto_int_out_3_sync_0                  (auto_dmOuter_int_out_3_sync_0),
    .auto_int_out_2_sync_0                  (auto_dmOuter_int_out_2_sync_0),
    .auto_int_out_1_sync_0                  (auto_dmOuter_int_out_1_sync_0),
    .auto_int_out_0_sync_0                  (auto_dmOuter_int_out_0_sync_0),
    .io_dmi_clock                           (io_dmi_dmiClock),
    .io_dmi_reset                           (io_dmi_dmiReset),
    .io_dmi_req_ready                       (io_dmi_dmi_req_ready),
    .io_dmi_req_valid                       (io_dmi_dmi_req_valid),
    .io_dmi_req_bits_addr                   (io_dmi_dmi_req_bits_addr),
    .io_dmi_req_bits_data                   (io_dmi_dmi_req_bits_data),
    .io_dmi_req_bits_op                     (io_dmi_dmi_req_bits_op),
    .io_dmi_resp_ready                      (io_dmi_dmi_resp_ready),
    .io_dmi_resp_valid                      (io_dmi_dmi_resp_valid),
    .io_dmi_resp_bits_data                  (io_dmi_dmi_resp_bits_data),
    .io_dmi_resp_bits_resp                  (io_dmi_dmi_resp_bits_resp),
    .io_ctrl_dmactive                       (_dmOuter_io_ctrl_dmactive),
    .io_ctrl_dmactiveAck                    (io_ctrl_dmactiveAck),
    .io_innerCtrl_mem_0_resumereq           (_dmOuter_io_innerCtrl_mem_0_resumereq),
    .io_innerCtrl_mem_0_hartsel             (_dmOuter_io_innerCtrl_mem_0_hartsel),
    .io_innerCtrl_mem_0_ackhavereset        (_dmOuter_io_innerCtrl_mem_0_ackhavereset),
    .io_innerCtrl_mem_0_hasel               (_dmOuter_io_innerCtrl_mem_0_hasel),
    .io_innerCtrl_mem_0_hamask_0            (_dmOuter_io_innerCtrl_mem_0_hamask_0),
    .io_innerCtrl_mem_0_hamask_1            (_dmOuter_io_innerCtrl_mem_0_hamask_1),
    .io_innerCtrl_mem_0_hamask_2            (_dmOuter_io_innerCtrl_mem_0_hamask_2),
    .io_innerCtrl_mem_0_hamask_3            (_dmOuter_io_innerCtrl_mem_0_hamask_3),
    .io_innerCtrl_mem_0_hrmask_0            (_dmOuter_io_innerCtrl_mem_0_hrmask_0),
    .io_innerCtrl_mem_0_hrmask_1            (_dmOuter_io_innerCtrl_mem_0_hrmask_1),
    .io_innerCtrl_mem_0_hrmask_2            (_dmOuter_io_innerCtrl_mem_0_hrmask_2),
    .io_innerCtrl_mem_0_hrmask_3            (_dmOuter_io_innerCtrl_mem_0_hrmask_3),
    .io_innerCtrl_ridx                      (_dmInner_io_innerCtrl_ridx),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .io_innerCtrl_widx                      (_dmOuter_io_innerCtrl_widx),
    .io_innerCtrl_safe_ridx_valid           (_dmInner_io_innerCtrl_safe_ridx_valid),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .io_innerCtrl_safe_widx_valid           (_dmOuter_io_innerCtrl_safe_widx_valid),
    .io_innerCtrl_safe_source_reset_n       (_dmOuter_io_innerCtrl_safe_source_reset_n),
    .io_innerCtrl_safe_sink_reset_n         (_dmInner_io_innerCtrl_safe_sink_reset_n),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .io_hgDebugInt_0                        (_dmInner_io_hgDebugInt_0),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .io_hgDebugInt_1                        (_dmInner_io_hgDebugInt_1),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .io_hgDebugInt_2                        (_dmInner_io_hgDebugInt_2),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .io_hgDebugInt_3                        (_dmInner_io_hgDebugInt_3)	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  );	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
  TLDebugModuleInnerAsync dmInner (	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
    .auto_dmiXing_in_a_mem_0_opcode           (_dmOuter_auto_asource_out_a_mem_0_opcode),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .auto_dmiXing_in_a_mem_0_address          (_dmOuter_auto_asource_out_a_mem_0_address),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .auto_dmiXing_in_a_mem_0_data             (_dmOuter_auto_asource_out_a_mem_0_data),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .auto_dmiXing_in_a_ridx                   (_dmInner_auto_dmiXing_in_a_ridx),
    .auto_dmiXing_in_a_widx                   (_dmOuter_auto_asource_out_a_widx),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .auto_dmiXing_in_a_safe_ridx_valid        (_dmInner_auto_dmiXing_in_a_safe_ridx_valid),
    .auto_dmiXing_in_a_safe_widx_valid        (_dmOuter_auto_asource_out_a_safe_widx_valid),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .auto_dmiXing_in_a_safe_source_reset_n    (_dmOuter_auto_asource_out_a_safe_source_reset_n),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .auto_dmiXing_in_a_safe_sink_reset_n      (_dmInner_auto_dmiXing_in_a_safe_sink_reset_n),
    .auto_dmiXing_in_d_mem_0_opcode           (_dmInner_auto_dmiXing_in_d_mem_0_opcode),
    .auto_dmiXing_in_d_mem_0_size             (_dmInner_auto_dmiXing_in_d_mem_0_size),
    .auto_dmiXing_in_d_mem_0_source           (_dmInner_auto_dmiXing_in_d_mem_0_source),
    .auto_dmiXing_in_d_mem_0_data             (_dmInner_auto_dmiXing_in_d_mem_0_data),
    .auto_dmiXing_in_d_ridx                   (_dmOuter_auto_asource_out_d_ridx),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .auto_dmiXing_in_d_widx                   (_dmInner_auto_dmiXing_in_d_widx),
    .auto_dmiXing_in_d_safe_ridx_valid        (_dmOuter_auto_asource_out_d_safe_ridx_valid),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .auto_dmiXing_in_d_safe_widx_valid        (_dmInner_auto_dmiXing_in_d_safe_widx_valid),
    .auto_dmiXing_in_d_safe_source_reset_n    (_dmInner_auto_dmiXing_in_d_safe_source_reset_n),
    .auto_dmiXing_in_d_safe_sink_reset_n      (_dmOuter_auto_asource_out_d_safe_sink_reset_n),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .auto_dmInner_sb2tlOpt_out_a_ready        (auto_dmInner_dmInner_sb2tlOpt_out_a_ready),
    .auto_dmInner_sb2tlOpt_out_a_valid        (auto_dmInner_dmInner_sb2tlOpt_out_a_valid),
    .auto_dmInner_sb2tlOpt_out_a_bits_opcode  (auto_dmInner_dmInner_sb2tlOpt_out_a_bits_opcode),
    .auto_dmInner_sb2tlOpt_out_a_bits_size    (auto_dmInner_dmInner_sb2tlOpt_out_a_bits_size),
    .auto_dmInner_sb2tlOpt_out_a_bits_address (auto_dmInner_dmInner_sb2tlOpt_out_a_bits_address),
    .auto_dmInner_sb2tlOpt_out_a_bits_data    (auto_dmInner_dmInner_sb2tlOpt_out_a_bits_data),
    .auto_dmInner_sb2tlOpt_out_d_ready        (auto_dmInner_dmInner_sb2tlOpt_out_d_ready),
    .auto_dmInner_sb2tlOpt_out_d_valid        (auto_dmInner_dmInner_sb2tlOpt_out_d_valid),
    .auto_dmInner_sb2tlOpt_out_d_bits_opcode  (auto_dmInner_dmInner_sb2tlOpt_out_d_bits_opcode),
    .auto_dmInner_sb2tlOpt_out_d_bits_param   (auto_dmInner_dmInner_sb2tlOpt_out_d_bits_param),
    .auto_dmInner_sb2tlOpt_out_d_bits_size    (auto_dmInner_dmInner_sb2tlOpt_out_d_bits_size),
    .auto_dmInner_sb2tlOpt_out_d_bits_sink    (auto_dmInner_dmInner_sb2tlOpt_out_d_bits_sink),
    .auto_dmInner_sb2tlOpt_out_d_bits_denied  (auto_dmInner_dmInner_sb2tlOpt_out_d_bits_denied),
    .auto_dmInner_sb2tlOpt_out_d_bits_data    (auto_dmInner_dmInner_sb2tlOpt_out_d_bits_data),
    .auto_dmInner_sb2tlOpt_out_d_bits_corrupt (auto_dmInner_dmInner_sb2tlOpt_out_d_bits_corrupt),
    .auto_dmInner_tl_in_a_ready               (auto_dmInner_dmInner_tl_in_a_ready),
    .auto_dmInner_tl_in_a_valid               (auto_dmInner_dmInner_tl_in_a_valid),
    .auto_dmInner_tl_in_a_bits_opcode         (auto_dmInner_dmInner_tl_in_a_bits_opcode),
    .auto_dmInner_tl_in_a_bits_param          (auto_dmInner_dmInner_tl_in_a_bits_param),
    .auto_dmInner_tl_in_a_bits_size           (auto_dmInner_dmInner_tl_in_a_bits_size),
    .auto_dmInner_tl_in_a_bits_source         (auto_dmInner_dmInner_tl_in_a_bits_source),
    .auto_dmInner_tl_in_a_bits_address        (auto_dmInner_dmInner_tl_in_a_bits_address),
    .auto_dmInner_tl_in_a_bits_mask           (auto_dmInner_dmInner_tl_in_a_bits_mask),
    .auto_dmInner_tl_in_a_bits_data           (auto_dmInner_dmInner_tl_in_a_bits_data),
    .auto_dmInner_tl_in_a_bits_corrupt        (auto_dmInner_dmInner_tl_in_a_bits_corrupt),
    .auto_dmInner_tl_in_d_ready               (auto_dmInner_dmInner_tl_in_d_ready),
    .auto_dmInner_tl_in_d_valid               (auto_dmInner_dmInner_tl_in_d_valid),
    .auto_dmInner_tl_in_d_bits_opcode         (auto_dmInner_dmInner_tl_in_d_bits_opcode),
    .auto_dmInner_tl_in_d_bits_size           (auto_dmInner_dmInner_tl_in_d_bits_size),
    .auto_dmInner_tl_in_d_bits_source         (auto_dmInner_dmInner_tl_in_d_bits_source),
    .auto_dmInner_tl_in_d_bits_data           (auto_dmInner_dmInner_tl_in_d_bits_data),
    .io_debug_clock                           (io_debug_clock),
    .io_debug_reset                           (io_debug_reset),
    .io_tl_clock                              (io_tl_clock),
    .io_tl_reset                              (io_tl_reset),
    .io_dmactive                              (_dmOuter_io_ctrl_dmactive),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_mem_0_resumereq             (_dmOuter_io_innerCtrl_mem_0_resumereq),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_mem_0_hartsel               (_dmOuter_io_innerCtrl_mem_0_hartsel),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_mem_0_ackhavereset          (_dmOuter_io_innerCtrl_mem_0_ackhavereset),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_mem_0_hasel                 (_dmOuter_io_innerCtrl_mem_0_hasel),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_mem_0_hamask_0              (_dmOuter_io_innerCtrl_mem_0_hamask_0),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_mem_0_hamask_1              (_dmOuter_io_innerCtrl_mem_0_hamask_1),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_mem_0_hamask_2              (_dmOuter_io_innerCtrl_mem_0_hamask_2),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_mem_0_hamask_3              (_dmOuter_io_innerCtrl_mem_0_hamask_3),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_mem_0_hrmask_0              (_dmOuter_io_innerCtrl_mem_0_hrmask_0),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_mem_0_hrmask_1              (_dmOuter_io_innerCtrl_mem_0_hrmask_1),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_mem_0_hrmask_2              (_dmOuter_io_innerCtrl_mem_0_hrmask_2),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_mem_0_hrmask_3              (_dmOuter_io_innerCtrl_mem_0_hrmask_3),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_ridx                        (_dmInner_io_innerCtrl_ridx),
    .io_innerCtrl_widx                        (_dmOuter_io_innerCtrl_widx),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_safe_ridx_valid             (_dmInner_io_innerCtrl_safe_ridx_valid),
    .io_innerCtrl_safe_widx_valid             (_dmOuter_io_innerCtrl_safe_widx_valid),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_safe_source_reset_n         (_dmOuter_io_innerCtrl_safe_source_reset_n),	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53]
    .io_innerCtrl_safe_sink_reset_n           (_dmInner_io_innerCtrl_safe_sink_reset_n),
    .io_hgDebugInt_0                          (_dmInner_io_hgDebugInt_0),
    .io_hgDebugInt_1                          (_dmInner_io_hgDebugInt_1),
    .io_hgDebugInt_2                          (_dmInner_io_hgDebugInt_2),
    .io_hgDebugInt_3                          (_dmInner_io_hgDebugInt_3),
    .io_hartIsInReset_0                       (io_hartIsInReset_0),
    .io_hartIsInReset_1                       (io_hartIsInReset_1),
    .io_hartIsInReset_2                       (io_hartIsInReset_2),
    .io_hartIsInReset_3                       (io_hartIsInReset_3)
  );	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1950:53]
  assign io_ctrl_dmactive = _dmOuter_io_ctrl_dmactive;	// @[generators/rocket-chip/src/main/scala/devices/debug/Debug.scala:1949:53, :1959:9]
endmodule
