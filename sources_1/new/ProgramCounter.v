`timescale 1ns / 1ps
`default_nettype none

module ProgramCounter(inner_new_PC, PC, Reset, Clk);

	input [31:0] inner_new_PC;
	input wire Reset, Clk;

	//(* mark_debug = "true" *)
	output reg [31:0] PC;
	
	always @(posedge Clk) begin
      if(Reset)begin
         PC <= 32'b0;
      end
      else begin
        PC <= inner_new_PC;
      end
   end

endmodule

