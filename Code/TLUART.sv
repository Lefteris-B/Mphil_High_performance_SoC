// Generated by CIRCT firtool-1.75.0

// Include register initializers in init blocks unless synthesis is set
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_REG_
    `define ENABLE_INITIAL_REG_
  `endif // not def ENABLE_INITIAL_REG_
`endif // not def SYNTHESIS

// Standard header to adapt well known macros for register randomization.

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_
module TLUART(	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
  input         clock,	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
  input         reset,	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
  output        auto_int_xing_out_sync_0,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_control_xing_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_control_xing_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_control_xing_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_control_xing_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_control_xing_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [10:0] auto_control_xing_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [28:0] auto_control_xing_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_control_xing_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_control_xing_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_control_xing_in_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_control_xing_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_control_xing_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_control_xing_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_control_xing_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [10:0] auto_control_xing_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_control_xing_in_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_io_out_txd,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_io_out_rxd	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
);

  wire             out_woready_2;	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  wire             _out_wofireMux_T;	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  wire             out_backSel_0;	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  wire             quash;	// @[generators/rocket-chip-blocks/src/main/scala/util/RegMapFIFO.scala:26:26, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  wire             _rxq_io_deq_valid;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:133:19]
  wire [7:0]       _rxq_io_deq_bits;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:133:19]
  wire [3:0]       _rxq_io_count;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:133:19]
  wire             _rxm_io_out_valid;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:132:19]
  wire [7:0]       _rxm_io_out_bits;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:132:19]
  wire             _txq_io_enq_ready;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:130:19]
  wire             _txq_io_deq_valid;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:130:19]
  wire [7:0]       _txq_io_deq_bits;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:130:19]
  wire [3:0]       _txq_io_count;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:130:19]
  wire             _txm_io_in_ready;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:129:19]
  reg  [15:0]      div;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:135:20]
  reg              txen;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:141:21]
  reg              rxen;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:142:21]
  reg  [3:0]       txwm;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:149:21]
  reg  [3:0]       rxwm;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:150:21]
  reg              nstop;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:151:22]
  reg              ie_rxwm;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:186:19]
  reg              ie_txwm;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:186:19]
  wire             ip_txwm = _txq_io_count < txwm;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:130:19, :149:21, :189:28]
  wire             ip_rxwm = _rxq_io_count > rxwm;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:133:19, :150:21, :190:28]
  wire             in_bits_read = auto_control_xing_in_a_bits_opcode == 3'h4;	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:74:36]
  wire             _out_T_7 = auto_control_xing_in_a_bits_address[11:5] == 7'h0;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:192:34, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:75:19, :87:24]
  assign quash = out_woready_2 & auto_control_xing_in_a_bits_mask[3] & auto_control_xing_in_a_bits_data[31];	// @[generators/rocket-chip-blocks/src/main/scala/util/RegMapFIFO.scala:26:26, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  assign out_backSel_0 = auto_control_xing_in_a_bits_address[4:3] == 2'h0;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  assign _out_wofireMux_T = auto_control_xing_in_a_valid & auto_control_xing_in_d_ready;	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  wire             _out_wofireMux_T_2 = _out_wofireMux_T & ~in_bits_read;	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:74:36, :87:24]
  assign out_woready_2 = _out_wofireMux_T_2 & out_backSel_0 & _out_T_7;	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  wire             out_woready_9 = _out_wofireMux_T_2 & auto_control_xing_in_a_bits_address[4:3] == 2'h1 & _out_T_7;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  wire             out_woready_12 = _out_wofireMux_T_2 & auto_control_xing_in_a_bits_address[4:3] == 2'h2 & _out_T_7;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  wire [3:0][63:0] _GEN = {{{48'h0, div}}, {{30'h0, ip_rxwm, ip_txwm, 30'h0, ie_rxwm, ie_txwm}}, {{12'h0, rxwm, 15'h0, rxen, 12'h0, txwm, 14'h0, nstop, txen}}, {{~_rxq_io_deq_valid, 23'h0, _rxq_io_deq_bits, ~_txq_io_enq_ready, 31'h0}}};	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:130:19, :133:19, :135:20, :141:21, :142:21, :149:21, :150:21, :151:22, :186:19, :189:28, :190:28, generators/rocket-chip-blocks/src/main/scala/util/RegMapFIFO.scala:24:9, :45:21, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24, generators/rocket-chip/src/main/scala/util/MuxLiteral.scala:49:{10,48}]
  wire [2:0]       controlXingIn_d_bits_opcode = {2'h0, in_bits_read};	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:74:36, :105:19]
  always @(posedge clock) begin	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
    if (reset) begin	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
      div <= 16'h10F4;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:135:20]
      txen <= 1'h0;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :141:21]
      rxen <= 1'h0;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :142:21]
      txwm <= 4'h0;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:149:21]
      rxwm <= 4'h0;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:150:21]
      nstop <= 1'h0;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :151:22]
      ie_rxwm <= 1'h0;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :186:19]
      ie_txwm <= 1'h0;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :186:19]
    end
    else begin	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
      if (_out_wofireMux_T_2 & (&(auto_control_xing_in_a_bits_address[4:3])) & _out_T_7 & (&{{8{auto_control_xing_in_a_bits_mask[1]}}, {8{auto_control_xing_in_a_bits_mask[0]}}}))	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
        div <= auto_control_xing_in_a_bits_data[15:0];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:135:20, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
      if (out_woready_9 & auto_control_xing_in_a_bits_mask[0])	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
        txen <= auto_control_xing_in_a_bits_data[0];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:141:21, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
      if (out_woready_9 & auto_control_xing_in_a_bits_mask[4])	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
        rxen <= auto_control_xing_in_a_bits_data[32];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:142:21, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
      if (out_woready_9 & auto_control_xing_in_a_bits_mask[2])	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
        txwm <= auto_control_xing_in_a_bits_data[19:16];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:149:21, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
      if (out_woready_9 & auto_control_xing_in_a_bits_mask[6])	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
        rxwm <= auto_control_xing_in_a_bits_data[51:48];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:150:21, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
      if (out_woready_9 & auto_control_xing_in_a_bits_mask[0])	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
        nstop <= auto_control_xing_in_a_bits_data[1];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:151:22, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
      if (out_woready_12 & auto_control_xing_in_a_bits_mask[0])	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
        ie_rxwm <= auto_control_xing_in_a_bits_data[1];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:186:19, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
      if (out_woready_12 & auto_control_xing_in_a_bits_mask[0])	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
        ie_txwm <= auto_control_xing_in_a_bits_data[0];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:186:19, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:1];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
    initial begin	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
        for (logic [1:0] i = 2'h0; i < 2'h2; i += 2'h1) begin
          _RANDOM[i[0]] = `RANDOM;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
        end	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
        div = _RANDOM[1'h0][15:0];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :135:20]
        txen = _RANDOM[1'h0][16];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :135:20, :141:21]
        rxen = _RANDOM[1'h0][17];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :135:20, :142:21]
        txwm = _RANDOM[1'h0][27:24];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :135:20, :149:21]
        rxwm = _RANDOM[1'h0][31:28];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :135:20, :150:21]
        nstop = _RANDOM[1'h1][0];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :151:22]
        ie_rxwm = _RANDOM[1'h1][2];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :151:22, :186:19]
        ie_txwm = _RANDOM[1'h1][3];	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, :151:22, :186:19]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  IntSyncCrossingSource_n1x1 intsource (	// @[generators/rocket-chip/src/main/scala/interrupts/Crossing.scala:29:31]
    .clock           (clock),
    .reset           (reset),
    .auto_in_0       (ip_txwm & ie_txwm | ip_rxwm & ie_rxwm),	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:186:19, :189:28, :190:28, :191:{29,41,53}]
    .auto_out_sync_0 (auto_int_xing_out_sync_0)
  );	// @[generators/rocket-chip/src/main/scala/interrupts/Crossing.scala:29:31]
  TLMonitor_68 monitor (	// @[generators/rocket-chip/src/main/scala/tilelink/Nodes.scala:27:25]
    .clock                (clock),
    .reset                (reset),
    .io_in_a_ready        (auto_control_xing_in_d_ready),
    .io_in_a_valid        (auto_control_xing_in_a_valid),
    .io_in_a_bits_opcode  (auto_control_xing_in_a_bits_opcode),
    .io_in_a_bits_param   (auto_control_xing_in_a_bits_param),
    .io_in_a_bits_size    (auto_control_xing_in_a_bits_size),
    .io_in_a_bits_source  (auto_control_xing_in_a_bits_source),
    .io_in_a_bits_address (auto_control_xing_in_a_bits_address),
    .io_in_a_bits_mask    (auto_control_xing_in_a_bits_mask),
    .io_in_a_bits_corrupt (auto_control_xing_in_a_bits_corrupt),
    .io_in_d_ready        (auto_control_xing_in_d_ready),
    .io_in_d_valid        (auto_control_xing_in_a_valid),
    .io_in_d_bits_opcode  (controlXingIn_d_bits_opcode),	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:105:19]
    .io_in_d_bits_size    (auto_control_xing_in_a_bits_size),
    .io_in_d_bits_source  (auto_control_xing_in_a_bits_source)
  );	// @[generators/rocket-chip/src/main/scala/tilelink/Nodes.scala:27:25]
  UARTTx txm (	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:129:19]
    .clock       (clock),
    .reset       (reset),
    .io_en       (txen),	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:141:21]
    .io_in_ready (_txm_io_in_ready),
    .io_in_valid (_txq_io_deq_valid),	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:130:19]
    .io_in_bits  (_txq_io_deq_bits),	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:130:19]
    .io_out      (auto_io_out_txd),
    .io_div      (div),	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:135:20]
    .io_nstop    (nstop)	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:151:22]
  );	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:129:19]
  Queue8_UInt8 txq (	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:130:19]
    .clock        (clock),
    .reset        (reset),
    .io_enq_ready (_txq_io_enq_ready),
    .io_enq_valid (out_woready_2 & auto_control_xing_in_a_bits_mask[0] & ~quash),	// @[generators/rocket-chip-blocks/src/main/scala/util/RegMapFIFO.scala:18:{30,33}, :26:26, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
    .io_enq_bits  (auto_control_xing_in_a_bits_data[7:0]),	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
    .io_deq_ready (_txm_io_in_ready),	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:129:19]
    .io_deq_valid (_txq_io_deq_valid),
    .io_deq_bits  (_txq_io_deq_bits),
    .io_count     (_txq_io_count)
  );	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:130:19]
  UARTRx rxm (	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:132:19]
    .clock        (clock),
    .reset        (reset),
    .io_en        (rxen),	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:142:21]
    .io_in        (auto_io_out_rxd),
    .io_out_valid (_rxm_io_out_valid),
    .io_out_bits  (_rxm_io_out_bits),
    .io_div       (div)	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:135:20]
  );	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:132:19]
  Queue8_UInt8 rxq (	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:133:19]
    .clock        (clock),
    .reset        (reset),
    .io_enq_ready (/* unused */),
    .io_enq_valid (_rxm_io_out_valid),	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:132:19]
    .io_enq_bits  (_rxm_io_out_bits),	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:132:19]
    .io_deq_ready (_out_wofireMux_T & in_bits_read & out_backSel_0 & _out_T_7 & auto_control_xing_in_a_bits_mask[4]),	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:74:36, :87:24]
    .io_deq_valid (_rxq_io_deq_valid),
    .io_deq_bits  (_rxq_io_deq_bits),
    .io_count     (_rxq_io_count)
  );	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:133:19]
  assign auto_control_xing_in_a_ready = auto_control_xing_in_d_ready;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
  assign auto_control_xing_in_d_valid = auto_control_xing_in_a_valid;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
  assign auto_control_xing_in_d_bits_opcode = controlXingIn_d_bits_opcode;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:105:19]
  assign auto_control_xing_in_d_bits_size = auto_control_xing_in_a_bits_size;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
  assign auto_control_xing_in_d_bits_source = auto_control_xing_in_a_bits_source;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25]
  assign auto_control_xing_in_d_bits_data = _out_T_7 ? _GEN[auto_control_xing_in_a_bits_address[4:3]] : 64'h0;	// @[generators/rocket-chip-blocks/src/main/scala/devices/uart/UART.scala:127:25, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24, generators/rocket-chip/src/main/scala/util/MuxLiteral.scala:49:10]
endmodule

