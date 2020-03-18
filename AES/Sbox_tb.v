`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:51:08 02/18/2020
// Design Name:   Sbox
// Module Name:   C:/Users/qiuke/Desktop/AES_V1.0/AES/Sbox_tb.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sbox
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Sbox_tb;

	// Inputs
	reg [7:0] addr;

	// Outputs
	wire [7:0] dout;
	
	parameter FAST_PERIOD = 10;
	parameter SLOW_PERIOD = 24;
	
	integer i;
	// Instantiate the Unit Under Test (UUT)
	Sbox uut (
		.addr(addr), 
		.dout(dout)
	);
	
   initial begin
	
		// Initialize Inputs
		addr = 0;
	
		// Wait 100 ns for global reset to finish
		#100;
		
	//Generate a clock
		forever 
		#(FAST_PERIOD/2) clk = ~clk;
		end
	
	initial begin : ACCESS
		for(i = 8'hff; i>= 0; i = i - 1)
			begin
				# SLOW_PERIOD
				addr = i;
				$display ("Addr: %d -> DataOut : %d", addr, dout);
			end
		$stop;
	end
endmodule

