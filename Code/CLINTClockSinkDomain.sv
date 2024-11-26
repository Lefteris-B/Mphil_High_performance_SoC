// Generated by CIRCT firtool-1.75.0
module CLINTClockSinkDomain(	// @[generators/rocket-chip/src/main/scala/prci/ClockDomain.scala:14:9]
  output        auto_clint_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_clint_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_clint_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_clint_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_clint_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [10:0] auto_clint_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [25:0] auto_clint_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_clint_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_clint_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_clint_in_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_clint_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_clint_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_clint_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_clint_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [10:0] auto_clint_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_clint_in_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_int_in_clock_xing_out_3_sync_0,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_int_in_clock_xing_out_3_sync_1,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_int_in_clock_xing_out_2_sync_0,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_int_in_clock_xing_out_2_sync_1,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_int_in_clock_xing_out_1_sync_0,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_int_in_clock_xing_out_1_sync_1,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_int_in_clock_xing_out_0_sync_0,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_int_in_clock_xing_out_0_sync_1,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_clock_in_clock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_clock_in_reset,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         tick,	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:115:20]
  output        clock,	// @[generators/rocket-chip/src/main/scala/prci/ClockDomain.scala:21:19]
  output        reset	// @[generators/rocket-chip/src/main/scala/prci/ClockDomain.scala:22:19]
);

  wire _clint_auto_int_out_3_0;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
  wire _clint_auto_int_out_3_1;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
  wire _clint_auto_int_out_2_0;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
  wire _clint_auto_int_out_2_1;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
  wire _clint_auto_int_out_1_0;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
  wire _clint_auto_int_out_1_1;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
  wire _clint_auto_int_out_0_0;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
  wire _clint_auto_int_out_0_1;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
  CLINT clint (	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
    .clock                  (auto_clock_in_clock),
    .reset                  (auto_clock_in_reset),
    .auto_int_out_3_0       (_clint_auto_int_out_3_0),
    .auto_int_out_3_1       (_clint_auto_int_out_3_1),
    .auto_int_out_2_0       (_clint_auto_int_out_2_0),
    .auto_int_out_2_1       (_clint_auto_int_out_2_1),
    .auto_int_out_1_0       (_clint_auto_int_out_1_0),
    .auto_int_out_1_1       (_clint_auto_int_out_1_1),
    .auto_int_out_0_0       (_clint_auto_int_out_0_0),
    .auto_int_out_0_1       (_clint_auto_int_out_0_1),
    .auto_in_a_ready        (auto_clint_in_a_ready),
    .auto_in_a_valid        (auto_clint_in_a_valid),
    .auto_in_a_bits_opcode  (auto_clint_in_a_bits_opcode),
    .auto_in_a_bits_param   (auto_clint_in_a_bits_param),
    .auto_in_a_bits_size    (auto_clint_in_a_bits_size),
    .auto_in_a_bits_source  (auto_clint_in_a_bits_source),
    .auto_in_a_bits_address (auto_clint_in_a_bits_address),
    .auto_in_a_bits_mask    (auto_clint_in_a_bits_mask),
    .auto_in_a_bits_data    (auto_clint_in_a_bits_data),
    .auto_in_a_bits_corrupt (auto_clint_in_a_bits_corrupt),
    .auto_in_d_ready        (auto_clint_in_d_ready),
    .auto_in_d_valid        (auto_clint_in_d_valid),
    .auto_in_d_bits_opcode  (auto_clint_in_d_bits_opcode),
    .auto_in_d_bits_size    (auto_clint_in_d_bits_size),
    .auto_in_d_bits_source  (auto_clint_in_d_bits_source),
    .auto_in_d_bits_data    (auto_clint_in_d_bits_data),
    .io_rtcTick             (tick)
  );	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
  IntSyncCrossingSource_n1x2 intsource (	// @[generators/rocket-chip/src/main/scala/interrupts/Crossing.scala:29:31]
    .clock           (auto_clock_in_clock),
    .reset           (auto_clock_in_reset),
    .auto_in_0       (_clint_auto_int_out_0_0),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
    .auto_in_1       (_clint_auto_int_out_0_1),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
    .auto_out_sync_0 (auto_int_in_clock_xing_out_0_sync_0),
    .auto_out_sync_1 (auto_int_in_clock_xing_out_0_sync_1)
  );	// @[generators/rocket-chip/src/main/scala/interrupts/Crossing.scala:29:31]
  IntSyncCrossingSource_n1x2 intsource_1 (	// @[generators/rocket-chip/src/main/scala/interrupts/Crossing.scala:29:31]
    .clock           (auto_clock_in_clock),
    .reset           (auto_clock_in_reset),
    .auto_in_0       (_clint_auto_int_out_1_0),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
    .auto_in_1       (_clint_auto_int_out_1_1),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
    .auto_out_sync_0 (auto_int_in_clock_xing_out_1_sync_0),
    .auto_out_sync_1 (auto_int_in_clock_xing_out_1_sync_1)
  );	// @[generators/rocket-chip/src/main/scala/interrupts/Crossing.scala:29:31]
  IntSyncCrossingSource_n1x2 intsource_2 (	// @[generators/rocket-chip/src/main/scala/interrupts/Crossing.scala:29:31]
    .clock           (auto_clock_in_clock),
    .reset           (auto_clock_in_reset),
    .auto_in_0       (_clint_auto_int_out_2_0),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
    .auto_in_1       (_clint_auto_int_out_2_1),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
    .auto_out_sync_0 (auto_int_in_clock_xing_out_2_sync_0),
    .auto_out_sync_1 (auto_int_in_clock_xing_out_2_sync_1)
  );	// @[generators/rocket-chip/src/main/scala/interrupts/Crossing.scala:29:31]
  IntSyncCrossingSource_n1x2 intsource_3 (	// @[generators/rocket-chip/src/main/scala/interrupts/Crossing.scala:29:31]
    .clock           (auto_clock_in_clock),
    .reset           (auto_clock_in_reset),
    .auto_in_0       (_clint_auto_int_out_3_0),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
    .auto_in_1       (_clint_auto_int_out_3_1),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CLINT.scala:112:48]
    .auto_out_sync_0 (auto_int_in_clock_xing_out_3_sync_0),
    .auto_out_sync_1 (auto_int_in_clock_xing_out_3_sync_1)
  );	// @[generators/rocket-chip/src/main/scala/interrupts/Crossing.scala:29:31]
  assign clock = auto_clock_in_clock;	// @[generators/rocket-chip/src/main/scala/prci/ClockDomain.scala:14:9]
  assign reset = auto_clock_in_reset;	// @[generators/rocket-chip/src/main/scala/prci/ClockDomain.scala:14:9]
endmodule

