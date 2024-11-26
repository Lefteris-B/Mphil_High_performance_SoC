// Generated by CIRCT firtool-1.75.0
module AMOALU(	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:54:7]
  input  [7:0]  io_mask,	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:58:14]
  input  [4:0]  io_cmd,	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:58:14]
  input  [63:0] io_lhs,	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:58:14]
  input  [63:0] io_rhs,	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:58:14]
  output [63:0] io_out	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:58:14]
);

  wire        _logic_xor_T_1 = io_cmd == 5'hA;	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:70:26]
  wire        logic_and = _logic_xor_T_1 | io_cmd == 5'hB;	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:70:{26,38,48}]
  wire        logic_xor = io_cmd == 5'h9 | _logic_xor_T_1;	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:70:26, :71:{26,39}]
  wire [63:0] adder_out_mask = {32'hFFFFFFFF, io_mask[3], 31'h7FFFFFFF};	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:75:{69,96}]
  wire [63:0] wmask = {{8{io_mask[7]}}, {8{io_mask[6]}}, {8{io_mask[5]}}, {8{io_mask[4]}}, {8{io_mask[3]}}, {8{io_mask[2]}}, {8{io_mask[1]}}, {8{io_mask[0]}}};	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:75:69, :94:49, :106:30]
  assign io_out = wmask & (io_cmd == 5'h8 ? (io_lhs & adder_out_mask) + (io_rhs & adder_out_mask) : logic_and | logic_xor ? (logic_and ? io_lhs & io_rhs : 64'h0) | (logic_xor ? io_lhs ^ io_rhs : 64'h0) : ((io_mask[4] ? (io_lhs[63] == io_rhs[63] ? io_lhs[63:32] < io_rhs[63:32] | io_lhs[63:32] == io_rhs[63:32] & io_lhs[31:0] < io_rhs[31:0] : io_cmd[1] ? io_rhs[63] : io_lhs[63]) : io_lhs[31] == io_rhs[31] ? io_lhs[31:0] < io_rhs[31:0] : io_cmd[1] ? io_rhs[31] : io_lhs[31]) ? io_cmd == 5'hC | io_cmd == 5'hE : io_cmd == 5'hD | io_cmd == 5'hF) ? io_lhs : io_rhs) | ~wmask & io_lhs;	// @[generators/rocket-chip/src/main/scala/rocket/AMOALU.scala:54:7, :67:{20,33,43}, :68:{20,33,43}, :69:20, :70:38, :71:39, :75:96, :76:{13,21,31}, :82:{26,35,38}, :83:{13,24,27,38,53,69}, :89:17, :91:{10,12,18,23,58}, :94:49, :97:{19,23}, :99:{8,27,42}, :100:{8,27}, :102:8, :103:{8,19}, :106:30, :107:{19,25,27,34}, src/main/scala/chisel3/util/Mux.scala:50:70]
endmodule
