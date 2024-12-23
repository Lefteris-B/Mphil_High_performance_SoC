// Generated by CIRCT firtool-1.75.0
// VCS coverage exclude_file
module next_4x2(	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
  input  [1:0] R0_addr,
  input        R0_en,
  input        R0_clk,
  output [1:0] R0_data,
  input  [1:0] W0_addr,
  input        W0_en,
  input        W0_clk,
  input  [1:0] W0_data
);

  reg [1:0] Memory[0:3];	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
  always @(posedge W0_clk) begin	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
    if (W0_en & 1'h1)	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
      Memory[W0_addr] <= W0_data;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_MEM_	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
    reg [31:0] _RANDOM_MEM;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
    initial begin	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
      `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
      `ifdef RANDOMIZE_MEM_INIT	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
        for (logic [2:0] i = 3'h0; i < 3'h4; i += 3'h1) begin
          _RANDOM_MEM = `RANDOM;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
          Memory[i[1:0]] = _RANDOM_MEM[1:0];	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
        end
      `endif // RANDOMIZE_MEM_INIT
    end // initial
  `endif // ENABLE_INITIAL_MEM_
  assign R0_data = R0_en ? Memory[R0_addr] : 2'bx;	// @[generators/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18]
endmodule

