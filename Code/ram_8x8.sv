// Generated by CIRCT firtool-1.75.0
// VCS coverage exclude_file
module ram_8x8(	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
  input  [2:0] R0_addr,
  input        R0_en,
  input        R0_clk,
  output [7:0] R0_data,
  input  [2:0] W0_addr,
  input        W0_en,
  input        W0_clk,
  input  [7:0] W0_data
);

  reg [7:0] Memory[0:7];	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
  always @(posedge W0_clk) begin	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
    if (W0_en & 1'h1)	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
      Memory[W0_addr] <= W0_data;	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_MEM_	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
    reg [31:0] _RANDOM_MEM;	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
    initial begin	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
      `INIT_RANDOM_PROLOG_	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
      `ifdef RANDOMIZE_MEM_INIT	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
        for (logic [3:0] i = 4'h0; i < 4'h8; i += 4'h1) begin
          _RANDOM_MEM = `RANDOM;	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
          Memory[i[2:0]] = _RANDOM_MEM[7:0];	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
        end
      `endif // RANDOMIZE_MEM_INIT
    end // initial
  `endif // ENABLE_INITIAL_MEM_
  assign R0_data = R0_en ? Memory[R0_addr] : 8'bx;	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
endmodule
