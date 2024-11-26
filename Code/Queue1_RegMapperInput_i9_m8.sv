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
module Queue1_RegMapperInput_i9_m8(	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
  input         clock,	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
  input         reset,	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
  output        io_enq_ready,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input         io_enq_valid,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input         io_enq_bits_read,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [8:0]  io_enq_bits_index,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [63:0] io_enq_bits_data,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [7:0]  io_enq_bits_mask,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [10:0] io_enq_bits_extra_tlrr_extra_source,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [1:0]  io_enq_bits_extra_tlrr_extra_size,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input         io_deq_ready,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output        io_deq_valid,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output        io_deq_bits_read,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [8:0]  io_deq_bits_index,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [7:0]  io_deq_bits_mask,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [10:0] io_deq_bits_extra_tlrr_extra_source,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [1:0]  io_deq_bits_extra_tlrr_extra_size	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
);

  reg  [94:0] ram;	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
  reg         full;	// @[src/main/scala/chisel3/util/Decoupled.scala:259:27]
  wire        do_enq = ~full & io_enq_valid;	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35, :259:27, :286:19]
  always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
    if (do_enq)	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35]
      ram <= {io_enq_bits_extra_tlrr_extra_size, io_enq_bits_extra_tlrr_extra_source, io_enq_bits_mask, io_enq_bits_data, io_enq_bits_index, io_enq_bits_read};	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
    if (reset)	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
      full <= 1'h0;	// @[src/main/scala/chisel3/util/Decoupled.scala:259:27]
    else if (~(do_enq == (io_deq_ready & full)))	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35, :259:27, :276:{15,27}, :277:16]
      full <= do_enq;	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35, :259:27]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:2];	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
    initial begin	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
        for (logic [1:0] i = 2'h0; i < 2'h3; i += 2'h1) begin
          _RANDOM[i] = `RANDOM;	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
        end	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
        ram = {_RANDOM[2'h0][31:1], _RANDOM[2'h1], _RANDOM[2'h2]};	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32, src/main/scala/chisel3/util/Decoupled.scala:256:91]
        full = _RANDOM[2'h0][0];	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32, src/main/scala/chisel3/util/Decoupled.scala:256:91, :259:27]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_enq_ready = ~full;	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32, src/main/scala/chisel3/util/Decoupled.scala:259:27, :286:19]
  assign io_deq_valid = full;	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32, src/main/scala/chisel3/util/Decoupled.scala:259:27]
  assign io_deq_bits_read = ram[0];	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32, src/main/scala/chisel3/util/Decoupled.scala:256:91]
  assign io_deq_bits_index = ram[9:1];	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32, src/main/scala/chisel3/util/Decoupled.scala:256:91]
  assign io_deq_bits_mask = ram[81:74];	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32, src/main/scala/chisel3/util/Decoupled.scala:256:91]
  assign io_deq_bits_extra_tlrr_extra_source = ram[92:82];	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32, src/main/scala/chisel3/util/Decoupled.scala:256:91]
  assign io_deq_bits_extra_tlrr_extra_size = ram[94:93];	// @[generators/rocket-chip/src/main/scala/regmapper/RegMapper.scala:71:32, src/main/scala/chisel3/util/Decoupled.scala:256:91]
endmodule

