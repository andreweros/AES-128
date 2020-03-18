`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:44:23 02/24/2020
// Design Name:   Keyexpantion
// Module Name:   C:/Users/qiuke/Desktop/AES_V1.0/AES/Keyexpantion_tb.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Keyexpantion
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Keyexpantion_tb;

parameter FAST_PERIOD = 10;
parameter SLOW_PERIOD = 24;
	// Inputs
	reg clk;
	reg reset;
	reg valid_in;
	reg [127:0] cipher_key;

	// Outputs
	wire [127:0] W;
	wire [9:0] valid_out;

	// Instantiate the Unit Under Test (UUT)
	Keyexpantion uut (
		.clk(clk), 
		.reset(reset), 
		.valid_in(valid_in), 
		.cipher_key(cipher_key), 
		.W(W), 
		.valid_out(valid_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		valid_in = 0;
		cipher_key = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		forever
		#(FAST_PERIOD/2) clk = ~clk;
		end
		
	initial begin : Access
		#200
		#SLOW_PERIOD;
		cipher_key  <= 128'h2b7e151628aed2a6abf7158809cf4f3c;
		valid_in <= 1;
	end
		
		
		
endmodule

