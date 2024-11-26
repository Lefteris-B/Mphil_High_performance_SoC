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
module MulAddRecFNPipe_l2_e11_s53(	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
  input         clock,	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
  input         reset,	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
  input         io_validin,	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:638:16]
  input  [1:0]  io_op,	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:638:16]
  input  [64:0] io_a,	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:638:16]
  input  [64:0] io_b,	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:638:16]
  input  [64:0] io_c,	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:638:16]
  input  [2:0]  io_roundingMode,	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:638:16]
  output [64:0] io_out,	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:638:16]
  output [4:0]  io_exceptionFlags,	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:638:16]
  output        io_validout	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:638:16]
);

  wire         _mulAddRecFNToRaw_postMul_io_invalidExc;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42]
  wire         _mulAddRecFNToRaw_postMul_io_rawOut_isNaN;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42]
  wire         _mulAddRecFNToRaw_postMul_io_rawOut_isInf;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42]
  wire         _mulAddRecFNToRaw_postMul_io_rawOut_isZero;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42]
  wire         _mulAddRecFNToRaw_postMul_io_rawOut_sign;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42]
  wire [12:0]  _mulAddRecFNToRaw_postMul_io_rawOut_sExp;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42]
  wire [55:0]  _mulAddRecFNToRaw_postMul_io_rawOut_sig;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42]
  wire [52:0]  _mulAddRecFNToRaw_preMul_io_mulAddA;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire [52:0]  _mulAddRecFNToRaw_preMul_io_mulAddB;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire [105:0] _mulAddRecFNToRaw_preMul_io_mulAddC;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_isInfA;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_isInfB;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_signProd;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_isInfC;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire [12:0]  _mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire [5:0]   _mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire [54:0]  _mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  wire         _mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isSigNaNAny;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNAOrB;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfA;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroA;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfB;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroB;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_signProd;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNC;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfC;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroC;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg  [12:0]  mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_sExpSum;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_doSubMags;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CIsDominant;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg  [5:0]   mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CDom_CAlignDist;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg  [54:0]  mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_highAlignedSigC;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_bit0AlignedSigC;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg  [106:0] mulAddRecFNToRaw_postMul_io_mulAddResult_pipe_b;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg  [2:0]   mulAddRecFNToRaw_postMul_io_roundingMode_pipe_b;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg  [2:0]   roundingMode_stage0_pipe_b;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          valid_stage0_pipe_v;	// @[src/main/scala/chisel3/util/Valid.scala:141:24]
  reg          roundRawFNToRecFN_io_invalidExc_pipe_b;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          roundRawFNToRecFN_io_in_pipe_b_isNaN;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          roundRawFNToRecFN_io_in_pipe_b_isInf;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          roundRawFNToRecFN_io_in_pipe_b_isZero;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          roundRawFNToRecFN_io_in_pipe_b_sign;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg  [12:0]  roundRawFNToRecFN_io_in_pipe_b_sExp;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg  [55:0]  roundRawFNToRecFN_io_in_pipe_b_sig;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg  [2:0]   roundRawFNToRecFN_io_roundingMode_pipe_b;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
  reg          io_validout_pipe_v;	// @[src/main/scala/chisel3/util/Valid.scala:141:24]
  always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
    if (io_validin) begin	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:638:16]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isSigNaNAny <= _mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNAOrB <= _mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfA <= _mulAddRecFNToRaw_preMul_io_toPostMul_isInfA;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroA <= _mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfB <= _mulAddRecFNToRaw_preMul_io_toPostMul_isInfB;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroB <= _mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_signProd <= _mulAddRecFNToRaw_preMul_io_toPostMul_signProd;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNC <= _mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfC <= _mulAddRecFNToRaw_preMul_io_toPostMul_isInfC;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroC <= _mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_sExpSum <= _mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_doSubMags <= _mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CIsDominant <= _mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CDom_CAlignDist <= _mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_highAlignedSigC <= _mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_bit0AlignedSigC <= _mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_mulAddResult_pipe_b <= {1'h0, {53'h0, _mulAddRecFNToRaw_preMul_io_mulAddA} * {53'h0, _mulAddRecFNToRaw_preMul_io_mulAddB}} + {1'h0, _mulAddRecFNToRaw_preMul_io_mulAddC};	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41, :663:45, :664:50, src/main/scala/chisel3/util/Valid.scala:142:26]
      mulAddRecFNToRaw_postMul_io_roundingMode_pipe_b <= io_roundingMode;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
      roundingMode_stage0_pipe_b <= io_roundingMode;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    end
    if (valid_stage0_pipe_v) begin	// @[src/main/scala/chisel3/util/Valid.scala:141:24]
      roundRawFNToRecFN_io_invalidExc_pipe_b <= _mulAddRecFNToRaw_postMul_io_invalidExc;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42, src/main/scala/chisel3/util/Valid.scala:142:26]
      roundRawFNToRecFN_io_in_pipe_b_isNaN <= _mulAddRecFNToRaw_postMul_io_rawOut_isNaN;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42, src/main/scala/chisel3/util/Valid.scala:142:26]
      roundRawFNToRecFN_io_in_pipe_b_isInf <= _mulAddRecFNToRaw_postMul_io_rawOut_isInf;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42, src/main/scala/chisel3/util/Valid.scala:142:26]
      roundRawFNToRecFN_io_in_pipe_b_isZero <= _mulAddRecFNToRaw_postMul_io_rawOut_isZero;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42, src/main/scala/chisel3/util/Valid.scala:142:26]
      roundRawFNToRecFN_io_in_pipe_b_sign <= _mulAddRecFNToRaw_postMul_io_rawOut_sign;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42, src/main/scala/chisel3/util/Valid.scala:142:26]
      roundRawFNToRecFN_io_in_pipe_b_sExp <= _mulAddRecFNToRaw_postMul_io_rawOut_sExp;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42, src/main/scala/chisel3/util/Valid.scala:142:26]
      roundRawFNToRecFN_io_in_pipe_b_sig <= _mulAddRecFNToRaw_postMul_io_rawOut_sig;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42, src/main/scala/chisel3/util/Valid.scala:142:26]
      roundRawFNToRecFN_io_roundingMode_pipe_b <= roundingMode_stage0_pipe_b;	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    end
    if (reset) begin	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
      valid_stage0_pipe_v <= 1'h0;	// @[src/main/scala/chisel3/util/Valid.scala:141:24]
      io_validout_pipe_v <= 1'h0;	// @[src/main/scala/chisel3/util/Valid.scala:141:24]
    end
    else begin	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
      valid_stage0_pipe_v <= io_validin;	// @[src/main/scala/chisel3/util/Valid.scala:141:24]
      io_validout_pipe_v <= valid_stage0_pipe_v;	// @[src/main/scala/chisel3/util/Valid.scala:141:24]
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:9];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
    initial begin	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
        for (logic [3:0] i = 4'h0; i < 4'hA; i += 4'h1) begin
          _RANDOM[i] = `RANDOM;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
        end	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isSigNaNAny = _RANDOM[4'h0][1];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNAOrB = _RANDOM[4'h0][2];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfA = _RANDOM[4'h0][3];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroA = _RANDOM[4'h0][4];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfB = _RANDOM[4'h0][5];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroB = _RANDOM[4'h0][6];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_signProd = _RANDOM[4'h0][7];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNC = _RANDOM[4'h0][8];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfC = _RANDOM[4'h0][9];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroC = _RANDOM[4'h0][10];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_sExpSum = _RANDOM[4'h0][23:11];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_doSubMags = _RANDOM[4'h0][24];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CIsDominant = _RANDOM[4'h0][25];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CDom_CAlignDist = _RANDOM[4'h0][31:26];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_highAlignedSigC = {_RANDOM[4'h1], _RANDOM[4'h2][22:0]};	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_bit0AlignedSigC = _RANDOM[4'h2][23];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_mulAddResult_pipe_b = {_RANDOM[4'h2][31:25], _RANDOM[4'h3], _RANDOM[4'h4], _RANDOM[4'h5], _RANDOM[4'h6][3:0]};	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        mulAddRecFNToRaw_postMul_io_roundingMode_pipe_b = _RANDOM[4'h6][7:5];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        roundingMode_stage0_pipe_b = _RANDOM[4'h6][11:9];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        valid_stage0_pipe_v = _RANDOM[4'h6][14];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:141:24, :142:26]
        roundRawFNToRecFN_io_invalidExc_pipe_b = _RANDOM[4'h6][17];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        roundRawFNToRecFN_io_in_pipe_b_isNaN = _RANDOM[4'h6][19];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        roundRawFNToRecFN_io_in_pipe_b_isInf = _RANDOM[4'h6][20];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        roundRawFNToRecFN_io_in_pipe_b_isZero = _RANDOM[4'h6][21];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        roundRawFNToRecFN_io_in_pipe_b_sign = _RANDOM[4'h6][22];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        roundRawFNToRecFN_io_in_pipe_b_sExp = {_RANDOM[4'h6][31:23], _RANDOM[4'h7][3:0]};	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        roundRawFNToRecFN_io_in_pipe_b_sig = {_RANDOM[4'h7][31:4], _RANDOM[4'h8][27:0]};	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        roundRawFNToRecFN_io_roundingMode_pipe_b = _RANDOM[4'h8][31:29];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:142:26]
        io_validout_pipe_v = _RANDOM[4'h9][2];	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:141:24]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  MulAddRecFNToRaw_preMul_e11_s53 mulAddRecFNToRaw_preMul (	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
    .io_op                        (io_op),
    .io_a                         (io_a),
    .io_b                         (io_b),
    .io_c                         (io_c),
    .io_mulAddA                   (_mulAddRecFNToRaw_preMul_io_mulAddA),
    .io_mulAddB                   (_mulAddRecFNToRaw_preMul_io_mulAddB),
    .io_mulAddC                   (_mulAddRecFNToRaw_preMul_io_mulAddC),
    .io_toPostMul_isSigNaNAny     (_mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny),
    .io_toPostMul_isNaNAOrB       (_mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB),
    .io_toPostMul_isInfA          (_mulAddRecFNToRaw_preMul_io_toPostMul_isInfA),
    .io_toPostMul_isZeroA         (_mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA),
    .io_toPostMul_isInfB          (_mulAddRecFNToRaw_preMul_io_toPostMul_isInfB),
    .io_toPostMul_isZeroB         (_mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB),
    .io_toPostMul_signProd        (_mulAddRecFNToRaw_preMul_io_toPostMul_signProd),
    .io_toPostMul_isNaNC          (_mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC),
    .io_toPostMul_isInfC          (_mulAddRecFNToRaw_preMul_io_toPostMul_isInfC),
    .io_toPostMul_isZeroC         (_mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC),
    .io_toPostMul_sExpSum         (_mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum),
    .io_toPostMul_doSubMags       (_mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags),
    .io_toPostMul_CIsDominant     (_mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant),
    .io_toPostMul_CDom_CAlignDist (_mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist),
    .io_toPostMul_highAlignedSigC (_mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC),
    .io_toPostMul_bit0AlignedSigC (_mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC)
  );	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:654:41]
  MulAddRecFNToRaw_postMul_e11_s53 mulAddRecFNToRaw_postMul (	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42]
    .io_fromPreMul_isSigNaNAny     (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isSigNaNAny),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_isNaNAOrB       (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNAOrB),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_isInfA          (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfA),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_isZeroA         (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroA),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_isInfB          (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfB),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_isZeroB         (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroB),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_signProd        (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_signProd),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_isNaNC          (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNC),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_isInfC          (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfC),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_isZeroC         (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroC),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_sExpSum         (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_sExpSum),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_doSubMags       (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_doSubMags),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_CIsDominant     (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CIsDominant),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_CDom_CAlignDist (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CDom_CAlignDist),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_highAlignedSigC (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_highAlignedSigC),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_fromPreMul_bit0AlignedSigC (mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_bit0AlignedSigC),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_mulAddResult               (mulAddRecFNToRaw_postMul_io_mulAddResult_pipe_b),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_roundingMode               (mulAddRecFNToRaw_postMul_io_roundingMode_pipe_b),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_invalidExc                 (_mulAddRecFNToRaw_postMul_io_invalidExc),
    .io_rawOut_isNaN               (_mulAddRecFNToRaw_postMul_io_rawOut_isNaN),
    .io_rawOut_isInf               (_mulAddRecFNToRaw_postMul_io_rawOut_isInf),
    .io_rawOut_isZero              (_mulAddRecFNToRaw_postMul_io_rawOut_isZero),
    .io_rawOut_sign                (_mulAddRecFNToRaw_postMul_io_rawOut_sign),
    .io_rawOut_sExp                (_mulAddRecFNToRaw_postMul_io_rawOut_sExp),
    .io_rawOut_sig                 (_mulAddRecFNToRaw_postMul_io_rawOut_sig)
  );	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:655:42]
  RoundRawFNToRecFN_e11_s53 roundRawFNToRecFN (	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:682:35]
    .io_invalidExc     (roundRawFNToRecFN_io_invalidExc_pipe_b),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_infiniteExc    (1'h0),
    .io_in_isNaN       (roundRawFNToRecFN_io_in_pipe_b_isNaN),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_in_isInf       (roundRawFNToRecFN_io_in_pipe_b_isInf),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_in_isZero      (roundRawFNToRecFN_io_in_pipe_b_isZero),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_in_sign        (roundRawFNToRecFN_io_in_pipe_b_sign),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_in_sExp        (roundRawFNToRecFN_io_in_pipe_b_sExp),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_in_sig         (roundRawFNToRecFN_io_in_pipe_b_sig),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_roundingMode   (roundRawFNToRecFN_io_roundingMode_pipe_b),	// @[src/main/scala/chisel3/util/Valid.scala:142:26]
    .io_out            (io_out),
    .io_exceptionFlags (io_exceptionFlags)
  );	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:682:35]
  assign io_validout = io_validout_pipe_v;	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:633:7, src/main/scala/chisel3/util/Valid.scala:141:24]
endmodule

