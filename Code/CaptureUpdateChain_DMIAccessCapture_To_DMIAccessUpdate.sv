// Generated by CIRCT firtool-1.75.0

// Users can define 'STOP_COND' to add an extra gate to stop conditions.
`ifndef STOP_COND_
  `ifdef STOP_COND
    `define STOP_COND_ (`STOP_COND)
  `else  // STOP_COND
    `define STOP_COND_ 1
  `endif // STOP_COND
`endif // not def STOP_COND_

// Users can define 'ASSERT_VERBOSE_COND' to add an extra gate to assert error printing.
`ifndef ASSERT_VERBOSE_COND_
  `ifdef ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ (`ASSERT_VERBOSE_COND)
  `else  // ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ 1
  `endif // ASSERT_VERBOSE_COND
`endif // not def ASSERT_VERBOSE_COND_

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
module CaptureUpdateChain_DMIAccessCapture_To_DMIAccessUpdate(	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
  input         clock,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
  input         reset,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
  input         io_chainIn_shift,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
  input         io_chainIn_data,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
  input         io_chainIn_capture,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
  input         io_chainIn_update,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
  output        io_chainOut_data,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
  input  [6:0]  io_capture_bits_addr,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
  input  [31:0] io_capture_bits_data,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
  input  [1:0]  io_capture_bits_resp,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
  output        io_capture_capture,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
  output        io_update_valid,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
  output [6:0]  io_update_bits_addr,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
  output [31:0] io_update_bits_data,	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
  output [1:0]  io_update_bits_op	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
);

  reg regs_0;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_1;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_2;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_3;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_4;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_5;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_6;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_7;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_8;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_9;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_10;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_11;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_12;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_13;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_14;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_15;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_16;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_17;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_18;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_19;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_20;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_21;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_22;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_23;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_24;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_25;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_26;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_27;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_28;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_29;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_30;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_31;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_32;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_33;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_34;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_35;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_36;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_37;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_38;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_39;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  reg regs_40;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
  `ifndef SYNTHESIS	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:185:9]
    always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:185:9]
      if (~reset & ~(~(io_chainIn_capture & io_chainIn_update) & ~(io_chainIn_capture & io_chainIn_shift) & ~(io_chainIn_update & io_chainIn_shift))) begin	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:185:{9,10,31}, :186:{7,10,31}, :187:{7,10,30}]
        if (`ASSERT_VERBOSE_COND_)	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:185:9]
          $error("Assertion failed\n    at JtagShifter.scala:185 assert(!(io.chainIn.capture && io.chainIn.update)\n");	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:185:9]
        if (`STOP_COND_)	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:185:9]
          $fatal;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:185:9]
      end
    end // always @(posedge)
  `endif // not def SYNTHESIS
  always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
    if (io_chainIn_capture) begin	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:143:14]
      regs_0 <= io_capture_bits_resp[0];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_1 <= io_capture_bits_resp[1];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_2 <= io_capture_bits_data[0];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_3 <= io_capture_bits_data[1];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_4 <= io_capture_bits_data[2];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_5 <= io_capture_bits_data[3];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_6 <= io_capture_bits_data[4];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_7 <= io_capture_bits_data[5];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_8 <= io_capture_bits_data[6];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_9 <= io_capture_bits_data[7];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_10 <= io_capture_bits_data[8];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_11 <= io_capture_bits_data[9];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_12 <= io_capture_bits_data[10];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_13 <= io_capture_bits_data[11];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_14 <= io_capture_bits_data[12];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_15 <= io_capture_bits_data[13];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_16 <= io_capture_bits_data[14];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_17 <= io_capture_bits_data[15];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_18 <= io_capture_bits_data[16];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_19 <= io_capture_bits_data[17];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_20 <= io_capture_bits_data[18];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_21 <= io_capture_bits_data[19];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_22 <= io_capture_bits_data[20];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_23 <= io_capture_bits_data[21];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_24 <= io_capture_bits_data[22];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_25 <= io_capture_bits_data[23];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_26 <= io_capture_bits_data[24];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_27 <= io_capture_bits_data[25];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_28 <= io_capture_bits_data[26];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_29 <= io_capture_bits_data[27];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_30 <= io_capture_bits_data[28];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_31 <= io_capture_bits_data[29];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_32 <= io_capture_bits_data[30];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_33 <= io_capture_bits_data[31];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_34 <= io_capture_bits_addr[0];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_35 <= io_capture_bits_addr[1];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_36 <= io_capture_bits_addr[2];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_37 <= io_capture_bits_addr[3];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_38 <= io_capture_bits_addr[4];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_39 <= io_capture_bits_addr[5];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
      regs_40 <= io_capture_bits_addr[6];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :169:73]
    end
    else if (io_chainIn_update | ~io_chainIn_shift) begin	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :173:35, :176:34]
    end
    else begin	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39, :173:35, :176:34]
      regs_0 <= regs_1;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_1 <= regs_2;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_2 <= regs_3;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_3 <= regs_4;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_4 <= regs_5;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_5 <= regs_6;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_6 <= regs_7;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_7 <= regs_8;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_8 <= regs_9;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_9 <= regs_10;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_10 <= regs_11;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_11 <= regs_12;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_12 <= regs_13;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_13 <= regs_14;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_14 <= regs_15;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_15 <= regs_16;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_16 <= regs_17;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_17 <= regs_18;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_18 <= regs_19;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_19 <= regs_20;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_20 <= regs_21;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_21 <= regs_22;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_22 <= regs_23;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_23 <= regs_24;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_24 <= regs_25;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_25 <= regs_26;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_26 <= regs_27;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_27 <= regs_28;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_28 <= regs_29;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_29 <= regs_30;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_30 <= regs_31;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_31 <= regs_32;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_32 <= regs_33;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_33 <= regs_34;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_34 <= regs_35;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_35 <= regs_36;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_36 <= regs_37;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_37 <= regs_38;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_38 <= regs_39;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_39 <= regs_40;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
      regs_40 <= io_chainIn_data;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:156:39]
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:1];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
    initial begin	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
        for (logic [1:0] i = 2'h0; i < 2'h2; i += 2'h1) begin
          _RANDOM[i[0]] = `RANDOM;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
        end	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
        regs_0 = _RANDOM[1'h0][0];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_1 = _RANDOM[1'h0][1];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_2 = _RANDOM[1'h0][2];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_3 = _RANDOM[1'h0][3];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_4 = _RANDOM[1'h0][4];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_5 = _RANDOM[1'h0][5];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_6 = _RANDOM[1'h0][6];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_7 = _RANDOM[1'h0][7];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_8 = _RANDOM[1'h0][8];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_9 = _RANDOM[1'h0][9];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_10 = _RANDOM[1'h0][10];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_11 = _RANDOM[1'h0][11];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_12 = _RANDOM[1'h0][12];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_13 = _RANDOM[1'h0][13];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_14 = _RANDOM[1'h0][14];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_15 = _RANDOM[1'h0][15];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_16 = _RANDOM[1'h0][16];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_17 = _RANDOM[1'h0][17];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_18 = _RANDOM[1'h0][18];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_19 = _RANDOM[1'h0][19];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_20 = _RANDOM[1'h0][20];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_21 = _RANDOM[1'h0][21];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_22 = _RANDOM[1'h0][22];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_23 = _RANDOM[1'h0][23];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_24 = _RANDOM[1'h0][24];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_25 = _RANDOM[1'h0][25];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_26 = _RANDOM[1'h0][26];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_27 = _RANDOM[1'h0][27];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_28 = _RANDOM[1'h0][28];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_29 = _RANDOM[1'h0][29];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_30 = _RANDOM[1'h0][30];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_31 = _RANDOM[1'h0][31];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_32 = _RANDOM[1'h1][0];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_33 = _RANDOM[1'h1][1];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_34 = _RANDOM[1'h1][2];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_35 = _RANDOM[1'h1][3];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_36 = _RANDOM[1'h1][4];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_37 = _RANDOM[1'h1][5];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_38 = _RANDOM[1'h1][6];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_39 = _RANDOM[1'h1][7];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
        regs_40 = _RANDOM[1'h1][8];	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_chainOut_data = regs_0;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39]
  assign io_capture_capture = io_chainIn_capture;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7]
  assign io_update_valid = ~io_chainIn_capture & io_chainIn_update;	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :168:29, :172:21, :173:35]
  assign io_update_bits_addr = {regs_40, regs_39, regs_38, regs_37, regs_36, regs_35, regs_34};	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39, :161:40]
  assign io_update_bits_data = {regs_33, regs_32, regs_31, regs_30, regs_29, regs_28, regs_27, regs_26, regs_25, regs_24, regs_23, regs_22, regs_21, regs_20, regs_19, regs_18, regs_17, regs_16, regs_15, regs_14, regs_13, regs_12, regs_11, regs_10, regs_9, regs_8, regs_7, regs_6, regs_5, regs_4, regs_3, regs_2};	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39, :161:40]
  assign io_update_bits_op = {regs_1, regs_0};	// @[generators/rocket-chip/src/main/scala/jtag/JtagShifter.scala:137:7, :156:39, :161:40]
endmodule

