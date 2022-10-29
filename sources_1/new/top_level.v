// Aeris El Asslouj 100%
// Group 26


`timescale 1ns / 1ps


module top_module(Clk, Reset, out7, en_out);


input Clk;
input Reset;
output [6:0] out7;
output [7:0] en_out;

wire [31:0] out_PC;
wire [31:0] out_write_data;
wire ClkOut;

ClkDiv aaa(Clk, 1'b0, ClkOut);
Processor bbb(ClkOut, Reset, out_PC, out_write_data);
Two4DigitDisplay ccc(Clk, out_PC[15:0], out_write_data[15:0], out7, en_out);


endmodule
