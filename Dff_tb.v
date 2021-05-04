`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////

`include "D_FF.v"

module DFF_tb;

	// Inputs
	reg clk;
	reg clr;
	reg D;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	Dff uut (clk,clr,D,q);

always #20 clk = ~clk;

initial begin
        #2000 $finish; // Finsh execution
end

	initial begin
               $dumpfile("DFF_tb.vcd");
               $dumpvars(0, DFF_tb);
		
                // Initialize Inputs
		clk = 0;
		clr = 1;
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clr =0;
		D=1;
		#40 ;
		D = 0;
                #40
                D = 1;
               $monitor($time," D= %b",D);
               $display ("finish");
	end
      
endmodule

