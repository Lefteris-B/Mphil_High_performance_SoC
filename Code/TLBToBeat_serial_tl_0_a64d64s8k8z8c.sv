// Generated by CIRCT firtool-1.75.0
module TLBToBeat_serial_tl_0_a64d64s8k8z8c(	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:116:7]
  input  clock,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:116:7]
  input  reset,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:116:7]
  output io_beat_bits_head,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:40:14]
  output io_beat_bits_tail	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:40:14]
);

  assign io_beat_bits_head = 1'h1;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:231:25, generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:116:7]
  assign io_beat_bits_tail = 1'h0;	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:116:7]
endmodule
