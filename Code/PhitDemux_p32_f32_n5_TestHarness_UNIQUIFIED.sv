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
module PhitDemux_p32_f32_n5_TestHarness_UNIQUIFIED(	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
  input         clock,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
  input         reset,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
  output        io_in_ready,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  input         io_in_valid,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  input  [31:0] io_in_bits_phit,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  input         io_out_0_ready,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  output        io_out_0_valid,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  output [31:0] io_out_0_bits_phit,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  input         io_out_1_ready,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  output        io_out_1_valid,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  output [31:0] io_out_1_bits_phit,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  input         io_out_2_ready,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  output        io_out_2_valid,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  output [31:0] io_out_2_bits_phit,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  input         io_out_3_ready,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  output        io_out_3_valid,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  output [31:0] io_out_3_bits_phit,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  input         io_out_4_ready,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  output        io_out_4_valid,	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
  output [31:0] io_out_4_bits_phit	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:185:14]
);

  reg         beat;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:196:23]
  reg  [31:0] channel_vec_0;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:197:26]
  wire [7:0]  _GEN = {{io_out_0_ready}, {io_out_0_ready}, {io_out_0_ready}, {io_out_4_ready}, {io_out_3_ready}, {io_out_2_ready}, {io_out_1_ready}, {io_out_0_ready}};	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:201:41]
  wire        io_in_ready_0 = ~beat | _GEN[channel_vec_0[2:0]];	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:196:23, :197:26, :198:37, :201:{25,41}]
  wire        _GEN_0 = io_in_ready_0 & io_in_valid;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:201:41, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  always @(posedge clock) begin	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
    if (reset)	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
      beat <= 1'h0;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7, :196:23]
    else if (_GEN_0)	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35]
      beat <= ~beat & beat - 1'h1;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:196:23, :208:{18,51}]
    if (_GEN_0 & ~beat)	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:196:23, :197:26, :201:25, :207:23, :209:35, :210:33, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      channel_vec_0 <= io_in_bits_phit;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:197:26]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:1];	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
    initial begin	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
        `INIT_RANDOM_PROLOG_	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
        for (logic [1:0] i = 2'h0; i < 2'h2; i += 2'h1) begin
          _RANDOM[i[0]] = `RANDOM;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
        end	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
        beat = _RANDOM[1'h0][0];	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7, :196:23]
        channel_vec_0 = {_RANDOM[1'h0][31:1], _RANDOM[1'h1][0]};	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7, :196:23, :197:26]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_in_ready = io_in_ready_0;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7, :201:41]
  assign io_out_0_valid = io_in_valid & beat & channel_vec_0[2:0] == 3'h0;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7, :196:23, :197:26, :198:37, :201:41, :203:{38,63,74}]
  assign io_out_0_bits_phit = io_in_bits_phit;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
  assign io_out_1_valid = io_in_valid & beat & channel_vec_0[2:0] == 3'h1;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7, :196:23, :197:26, :198:37, :203:{38,63,74}]
  assign io_out_1_bits_phit = io_in_bits_phit;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
  assign io_out_2_valid = io_in_valid & beat & channel_vec_0[2:0] == 3'h2;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7, :196:23, :197:26, :198:37, :203:{38,63,74}]
  assign io_out_2_bits_phit = io_in_bits_phit;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
  assign io_out_3_valid = io_in_valid & beat & channel_vec_0[2:0] == 3'h3;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7, :196:23, :197:26, :198:37, :203:{38,63,74}]
  assign io_out_3_bits_phit = io_in_bits_phit;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
  assign io_out_4_valid = io_in_valid & beat & channel_vec_0[2:0] == 3'h4;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7, :196:23, :197:26, :198:37, :203:{38,63,74}]
  assign io_out_4_bits_phit = io_in_bits_phit;	// @[generators/testchipip/src/main/scala/serdes/Serdes.scala:183:7]
endmodule
