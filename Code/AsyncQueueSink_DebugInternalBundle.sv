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
module AsyncQueueSink_DebugInternalBundle(	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
  input        clock,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
  input        reset,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
  output       io_deq_valid,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_deq_bits_resumereq,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output [9:0] io_deq_bits_hartsel,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_deq_bits_ackhavereset,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_deq_bits_hasel,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_deq_bits_hamask_0,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_deq_bits_hamask_1,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_deq_bits_hamask_2,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_deq_bits_hamask_3,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_deq_bits_hrmask_0,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_deq_bits_hrmask_1,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_deq_bits_hrmask_2,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_deq_bits_hrmask_3,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_mem_0_resumereq,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input  [9:0] io_async_mem_0_hartsel,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_mem_0_ackhavereset,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_mem_0_hasel,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_mem_0_hamask_0,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_mem_0_hamask_1,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_mem_0_hamask_2,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_mem_0_hamask_3,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_mem_0_hrmask_0,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_mem_0_hrmask_1,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_mem_0_hrmask_2,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_mem_0_hrmask_3,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_async_ridx,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_widx,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_async_safe_ridx_valid,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_safe_widx_valid,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  input        io_async_safe_source_reset_n,	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
  output       io_async_safe_sink_reset_n	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:139:14]
);

  wire        io_deq_valid_0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:166:29]
  wire        _source_valid_io_out;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:176:31]
  wire        _source_extend_io_out;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:175:31]
  wire        _sink_valid_0_io_out;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:172:33]
  wire [20:0] _io_deq_bits_deq_bits_reg_io_q;	// @[generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25]
  wire        _widx_widx_gray_io_q;	// @[generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
  reg         ridx_ridx_bin;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25]
  wire        ridx = _source_valid_io_out & ridx_ridx_bin + io_deq_valid_0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :53:{23,43}, :166:29, :176:31]
  wire        valid = _source_valid_io_out & ridx != _widx_widx_gray_io_q;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:53:23, :150:{28,36}, :176:31, generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
  reg         valid_reg;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:165:56]
  assign io_deq_valid_0 = valid_reg & _source_valid_io_out;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:165:56, :166:29, :176:31]
  reg         ridx_gray;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:168:55]
  always @(posedge clock or posedge reset) begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
    if (reset) begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
      ridx_ridx_bin <= 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :136:7]
      valid_reg <= 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, :165:56]
      ridx_gray <= 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, :168:55]
    end
    else begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
      ridx_ridx_bin <= ridx;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :53:23]
      valid_reg <= valid;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:150:28, :165:56]
      ridx_gray <= ridx;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:53:23, :168:55]
    end
  end // always @(posedge, posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:0];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
    initial begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
        _RANDOM[/*Zero width*/ 1'b0] = `RANDOM;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
        ridx_ridx_bin = _RANDOM[/*Zero width*/ 1'b0][0];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :136:7]
        valid_reg = _RANDOM[/*Zero width*/ 1'b0][1];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :136:7, :165:56]
        ridx_gray = _RANDOM[/*Zero width*/ 1'b0][2];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :136:7, :168:55]
      `endif // RANDOMIZE_REG_INIT
      if (reset) begin	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
        ridx_ridx_bin = 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:52:25, :136:7]
        valid_reg = 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, :165:56]
        ridx_gray = 1'h0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, :168:55]
      end
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  AsyncResetSynchronizerShiftReg_w1_d3_i0 widx_widx_gray (	// @[generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
    .clock (clock),
    .reset (reset),
    .io_d  (io_async_widx),
    .io_q  (_widx_widx_gray_io_q)
  );	// @[generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
  ClockCrossingReg_w21 io_deq_bits_deq_bits_reg (	// @[generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25]
    .clock (clock),
    .io_d  ({io_async_mem_0_resumereq, io_async_mem_0_hartsel, io_async_mem_0_ackhavereset, io_async_mem_0_hasel, io_async_mem_0_hamask_3, io_async_mem_0_hamask_2, io_async_mem_0_hamask_1, io_async_mem_0_hamask_0, io_async_mem_0_hrmask_3, io_async_mem_0_hrmask_2, io_async_mem_0_hrmask_1, io_async_mem_0_hrmask_0}),	// @[generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:209:24]
    .io_q  (_io_deq_bits_deq_bits_reg_io_q),
    .io_en (valid)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:150:28]
  );	// @[generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25]
  AsyncValidSync sink_valid_0 (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:172:33]
    .io_in  (1'h1),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7]
    .io_out (_sink_valid_0_io_out),
    .clock  (clock),
    .reset  (reset | ~io_async_safe_source_reset_n)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:177:{42,45}]
  );	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:172:33]
  AsyncValidSync sink_valid_1 (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:173:33]
    .io_in  (_sink_valid_0_io_out),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:172:33]
    .io_out (io_async_safe_ridx_valid),
    .clock  (clock),
    .reset  (reset | ~io_async_safe_source_reset_n)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:177:45, :178:42]
  );	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:173:33]
  AsyncValidSync source_extend (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:175:31]
    .io_in  (io_async_safe_widx_valid),
    .io_out (_source_extend_io_out),
    .clock  (clock),
    .reset  (reset | ~io_async_safe_source_reset_n)	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:177:45, :179:42]
  );	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:175:31]
  AsyncValidSync source_valid (	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:176:31]
    .io_in  (_source_extend_io_out),	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:175:31]
    .io_out (_source_valid_io_out),
    .clock  (clock),
    .reset  (reset)
  );	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:176:31]
  assign io_deq_valid = io_deq_valid_0;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, :166:29]
  assign io_deq_bits_resumereq = _io_deq_bits_deq_bits_reg_io_q[20];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25, :211:26]
  assign io_deq_bits_hartsel = _io_deq_bits_deq_bits_reg_io_q[19:10];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25, :211:26]
  assign io_deq_bits_ackhavereset = _io_deq_bits_deq_bits_reg_io_q[9];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25, :211:26]
  assign io_deq_bits_hasel = _io_deq_bits_deq_bits_reg_io_q[8];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25, :211:26]
  assign io_deq_bits_hamask_0 = _io_deq_bits_deq_bits_reg_io_q[4];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25, :211:26]
  assign io_deq_bits_hamask_1 = _io_deq_bits_deq_bits_reg_io_q[5];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25, :211:26]
  assign io_deq_bits_hamask_2 = _io_deq_bits_deq_bits_reg_io_q[6];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25, :211:26]
  assign io_deq_bits_hamask_3 = _io_deq_bits_deq_bits_reg_io_q[7];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25, :211:26]
  assign io_deq_bits_hrmask_0 = _io_deq_bits_deq_bits_reg_io_q[0];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25, :211:26]
  assign io_deq_bits_hrmask_1 = _io_deq_bits_deq_bits_reg_io_q[1];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25, :211:26]
  assign io_deq_bits_hrmask_2 = _io_deq_bits_deq_bits_reg_io_q[2];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25, :211:26]
  assign io_deq_bits_hrmask_3 = _io_deq_bits_deq_bits_reg_io_q[3];	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, generators/rocket-chip/src/main/scala/util/SynchronizerReg.scala:207:25, :211:26]
  assign io_async_ridx = ridx_gray;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, :168:55]
  assign io_async_safe_sink_reset_n = ~reset;	// @[generators/rocket-chip/src/main/scala/util/AsyncQueue.scala:136:7, :193:25]
endmodule

