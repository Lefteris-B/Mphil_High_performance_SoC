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
module PlusArgTimeout(	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:58:7]
  input        clock,	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:58:7]
  input        reset,	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:58:7]
  input [31:0] io_count	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:59:14]
);

  wire [31:0] _plusarg_reader_out;	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:62:19]
  `ifndef SYNTHESIS	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:64:12]
    always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:64:12]
      if ((|_plusarg_reader_out) & ~reset & io_count >= _plusarg_reader_out) begin	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:62:19, :63:13, :64:{12,22}]
        if (`ASSERT_VERBOSE_COND_)	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:64:12]
          $error("Assertion failed: Timeout exceeded: Kill the emulation after INT rdtime cycles. Off if 0.\n    at PlusArg.scala:64 assert (io.count < max, s\"Timeout exceeded: $docstring\")\n");	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:64:12]
        if (`STOP_COND_)	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:64:12]
          $fatal;	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:64:12]
      end
    end // always @(posedge)
  `endif // not def SYNTHESIS
  plusarg_reader #(
    .DEFAULT(0),
    .FORMAT("max_core_cycles=%d"),
    .WIDTH(32)
  ) plusarg_reader (	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:62:19]
    .out (_plusarg_reader_out)
  );	// @[generators/rocket-chip/src/main/scala/util/PlusArg.scala:62:19]
endmodule

