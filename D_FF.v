`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module Dff(

    input wire clk ,
    input wire clr,
    input wire D,
    output reg q
    );

always @(posedge clk or posedge clr)
		if (clr == 1)
				q <= 0;
		else 
				q<= D;

endmodule

