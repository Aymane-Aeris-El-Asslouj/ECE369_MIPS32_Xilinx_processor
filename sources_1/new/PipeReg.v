`timescale 1ns / 1ps


module PipeReg #(parameter WIDTH=1)(Clk, Reset, in, out);
    
    input wire Clk, Reset;
    input [WIDTH-1:0] in;
    
    output reg [WIDTH-1:0] out;
    
    
     always@(posedge Clk) begin
        if(Reset) begin
            out <= {WIDTH{1'b0}};
        end else begin 
            out <= in; 
        end
	      
	end
	
	
endmodule
