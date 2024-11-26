// Generated by CIRCT firtool-1.75.0
module ResetCatchAndSync_d3(	// @[generators/rocket-chip/src/main/scala/util/ResetCatchAndSync.scala:13:7]
  input  clock,	// @[generators/rocket-chip/src/main/scala/util/ResetCatchAndSync.scala:13:7]
  input  reset,	// @[generators/rocket-chip/src/main/scala/util/ResetCatchAndSync.scala:13:7]
  output io_sync_reset	// @[generators/rocket-chip/src/main/scala/util/ResetCatchAndSync.scala:17:14]
);

  wire _io_sync_reset_chain_io_q;	// @[generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
  AsyncResetSynchronizerShiftReg_w1_d3_i0 io_sync_reset_chain (	// @[generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
    .clock (clock),
    .reset (reset),
    .io_d  (1'h1),
    .io_q  (_io_sync_reset_chain_io_q)
  );	// @[generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
  assign io_sync_reset = ~_io_sync_reset_chain_io_q;	// @[generators/rocket-chip/src/main/scala/util/ResetCatchAndSync.scala:13:7, :29:7, generators/rocket-chip/src/main/scala/util/ShiftReg.scala:45:23]
endmodule

