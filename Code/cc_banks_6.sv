// Generated by CIRCT firtool-1.75.0
module cc_banks_6(	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
  input  [11:0] RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [63:0] RW0_wdata,
  output [63:0] RW0_rdata
);

  cc_banks_0_ext cc_banks_0_ext (	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
    .RW0_addr  (RW0_addr),
    .RW0_en    (RW0_en),
    .RW0_clk   (RW0_clk),
    .RW0_wmode (RW0_wmode),
    .RW0_wdata (RW0_wdata),
    .RW0_rdata (RW0_rdata)
  );	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
endmodule

