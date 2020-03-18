`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:29:39 02/19/2020
// Design Name:   Subbytes
// Module Name:   C:/Users/qiuke/Desktop/AES_V1.0/AES/Subbytes_tb.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Subbytes
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Subbytes_tb;

parameter FAST_PERIOD = 10;
parameter SLOW_PERIOD = 24;

	// Inputs
	reg clk;
	reg reset;
	reg valid_in;
	reg [127:0] data_in;

	// Outputs
	wire valid_out;
	wire [127:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Subbytes uut (
		.clk(clk), 
		.reset(reset), 
		.valid_in(valid_in), 
		.data_in(data_in), 
		.valid_out(valid_out), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		valid_in = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
	end
	
	initial begin
	 //Generate a clock
		forever 
		#(FAST_PERIOD/2) clk = ~clk;
	end 
	
	initial begin : ACCESS
				#100
				# SLOW_PERIOD
				data_in = 128'h58cf0bfc4d7c72d958cf0bfc4d7c72d9;
				$display ("Data_in: %c -> DataOut : %d", data_in, data_out);
	end
      
endmodule

