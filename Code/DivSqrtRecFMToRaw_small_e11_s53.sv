// Generated by CIRCT firtool-1.75.0
module DivSqrtRecFMToRaw_small_e11_s53(	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:422:5]
  input         clock,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:422:5]
  input         reset,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:422:5]
  output        io_inReady,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  input         io_inValid,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  input         io_sqrtOp,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  input  [64:0] io_a,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  input  [64:0] io_b,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  input  [2:0]  io_roundingMode,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  output        io_rawOutValid_div,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  output        io_rawOutValid_sqrt,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  output [2:0]  io_roundingModeOut,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  output        io_invalidExc,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  output        io_infiniteExc,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  output        io_rawOut_isNaN,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  output        io_rawOut_isInf,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  output        io_rawOut_isZero,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  output        io_rawOut_sign,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  output [12:0] io_rawOut_sExp,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
  output [55:0] io_rawOut_sig	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:426:16]
);

  DivSqrtRawFN_small_e11_s53 divSqrtRawFN (	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:446:15]
    .clock               (clock),
    .reset               (reset),
    .io_inReady          (io_inReady),
    .io_inValid          (io_inValid),
    .io_sqrtOp           (io_sqrtOp),
    .io_a_isNaN          ((&(io_a[63:62])) & io_a[61]),	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:{28,53}, :56:{33,41}]
    .io_a_isInf          ((&(io_a[63:62])) & ~(io_a[61])),	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:{28,53}, :56:41, :57:{33,36}]
    .io_a_isZero         (~(|(io_a[63:61]))),	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :52:{28,53}]
    .io_a_sign           (io_a[64]),	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:59:25]
    .io_a_sExp           ({1'h0, io_a[63:52]}),	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :60:27]
    .io_a_sig            ({1'h0, |(io_a[63:61]), io_a[51:0]}),	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :52:{28,53}, :61:{44,49}]
    .io_b_isNaN          ((&(io_b[63:62])) & io_b[61]),	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:{28,53}, :56:{33,41}]
    .io_b_isInf          ((&(io_b[63:62])) & ~(io_b[61])),	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:{28,53}, :56:41, :57:{33,36}]
    .io_b_isZero         (~(|(io_b[63:61]))),	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :52:{28,53}]
    .io_b_sign           (io_b[64]),	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:59:25]
    .io_b_sExp           ({1'h0, io_b[63:52]}),	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :60:27]
    .io_b_sig            ({1'h0, |(io_b[63:61]), io_b[51:0]}),	// @[generators/hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :52:{28,53}, :61:{44,49}]
    .io_roundingMode     (io_roundingMode),
    .io_rawOutValid_div  (io_rawOutValid_div),
    .io_rawOutValid_sqrt (io_rawOutValid_sqrt),
    .io_roundingModeOut  (io_roundingModeOut),
    .io_invalidExc       (io_invalidExc),
    .io_infiniteExc      (io_infiniteExc),
    .io_rawOut_isNaN     (io_rawOut_isNaN),
    .io_rawOut_isInf     (io_rawOut_isInf),
    .io_rawOut_isZero    (io_rawOut_isZero),
    .io_rawOut_sign      (io_rawOut_sign),
    .io_rawOut_sExp      (io_rawOut_sExp),
    .io_rawOut_sig       (io_rawOut_sig)
  );	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:446:15]
endmodule

