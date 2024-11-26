// Generated by CIRCT firtool-1.75.0
module TLInterconnectCoupler_sbus_from_bus_named_fbus(	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:138:7]
  input          clock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:138:7]
  input          reset,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:138:7]
  input          auto_widget_anon_out_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output         auto_widget_anon_out_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]   auto_widget_anon_out_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]   auto_widget_anon_out_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]   auto_widget_anon_out_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [4:0]   auto_widget_anon_out_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [31:0]  auto_widget_anon_out_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [31:0]  auto_widget_anon_out_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [255:0] auto_widget_anon_out_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output         auto_widget_anon_out_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output         auto_widget_anon_out_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input          auto_widget_anon_out_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]   auto_widget_anon_out_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]   auto_widget_anon_out_d_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]   auto_widget_anon_out_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [4:0]   auto_widget_anon_out_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [4:0]   auto_widget_anon_out_d_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input          auto_widget_anon_out_d_bits_denied,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [255:0] auto_widget_anon_out_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input          auto_widget_anon_out_d_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output         auto_bus_xing_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input          auto_bus_xing_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]   auto_bus_xing_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]   auto_bus_xing_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]   auto_bus_xing_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [4:0]   auto_bus_xing_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [31:0]  auto_bus_xing_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]   auto_bus_xing_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0]  auto_bus_xing_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input          auto_bus_xing_in_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input          auto_bus_xing_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output         auto_bus_xing_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]   auto_bus_xing_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]   auto_bus_xing_in_d_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]   auto_bus_xing_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [4:0]   auto_bus_xing_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [4:0]   auto_bus_xing_in_d_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output         auto_bus_xing_in_d_bits_denied,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0]  auto_bus_xing_in_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output         auto_bus_xing_in_d_bits_corrupt	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
);

  TLWidthWidget8 widget (	// @[generators/rocket-chip/src/main/scala/tilelink/WidthWidget.scala:230:28]
    .clock                        (clock),
    .reset                        (reset),
    .auto_anon_in_a_ready         (auto_bus_xing_in_a_ready),
    .auto_anon_in_a_valid         (auto_bus_xing_in_a_valid),
    .auto_anon_in_a_bits_opcode   (auto_bus_xing_in_a_bits_opcode),
    .auto_anon_in_a_bits_param    (auto_bus_xing_in_a_bits_param),
    .auto_anon_in_a_bits_size     (auto_bus_xing_in_a_bits_size),
    .auto_anon_in_a_bits_source   (auto_bus_xing_in_a_bits_source),
    .auto_anon_in_a_bits_address  (auto_bus_xing_in_a_bits_address),
    .auto_anon_in_a_bits_mask     (auto_bus_xing_in_a_bits_mask),
    .auto_anon_in_a_bits_data     (auto_bus_xing_in_a_bits_data),
    .auto_anon_in_a_bits_corrupt  (auto_bus_xing_in_a_bits_corrupt),
    .auto_anon_in_d_ready         (auto_bus_xing_in_d_ready),
    .auto_anon_in_d_valid         (auto_bus_xing_in_d_valid),
    .auto_anon_in_d_bits_opcode   (auto_bus_xing_in_d_bits_opcode),
    .auto_anon_in_d_bits_param    (auto_bus_xing_in_d_bits_param),
    .auto_anon_in_d_bits_size     (auto_bus_xing_in_d_bits_size),
    .auto_anon_in_d_bits_source   (auto_bus_xing_in_d_bits_source),
    .auto_anon_in_d_bits_sink     (auto_bus_xing_in_d_bits_sink),
    .auto_anon_in_d_bits_denied   (auto_bus_xing_in_d_bits_denied),
    .auto_anon_in_d_bits_data     (auto_bus_xing_in_d_bits_data),
    .auto_anon_in_d_bits_corrupt  (auto_bus_xing_in_d_bits_corrupt),
    .auto_anon_out_a_ready        (auto_widget_anon_out_a_ready),
    .auto_anon_out_a_valid        (auto_widget_anon_out_a_valid),
    .auto_anon_out_a_bits_opcode  (auto_widget_anon_out_a_bits_opcode),
    .auto_anon_out_a_bits_param   (auto_widget_anon_out_a_bits_param),
    .auto_anon_out_a_bits_size    (auto_widget_anon_out_a_bits_size),
    .auto_anon_out_a_bits_source  (auto_widget_anon_out_a_bits_source),
    .auto_anon_out_a_bits_address (auto_widget_anon_out_a_bits_address),
    .auto_anon_out_a_bits_mask    (auto_widget_anon_out_a_bits_mask),
    .auto_anon_out_a_bits_data    (auto_widget_anon_out_a_bits_data),
    .auto_anon_out_a_bits_corrupt (auto_widget_anon_out_a_bits_corrupt),
    .auto_anon_out_d_ready        (auto_widget_anon_out_d_ready),
    .auto_anon_out_d_valid        (auto_widget_anon_out_d_valid),
    .auto_anon_out_d_bits_opcode  (auto_widget_anon_out_d_bits_opcode),
    .auto_anon_out_d_bits_param   (auto_widget_anon_out_d_bits_param),
    .auto_anon_out_d_bits_size    (auto_widget_anon_out_d_bits_size),
    .auto_anon_out_d_bits_source  (auto_widget_anon_out_d_bits_source),
    .auto_anon_out_d_bits_sink    (auto_widget_anon_out_d_bits_sink),
    .auto_anon_out_d_bits_denied  (auto_widget_anon_out_d_bits_denied),
    .auto_anon_out_d_bits_data    (auto_widget_anon_out_d_bits_data),
    .auto_anon_out_d_bits_corrupt (auto_widget_anon_out_d_bits_corrupt)
  );	// @[generators/rocket-chip/src/main/scala/tilelink/WidthWidget.scala:230:28]
endmodule

