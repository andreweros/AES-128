`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:44:40 02/23/2020
// Design Name:   RoundkeyGen
// Module Name:   C:/Users/qiuke/Desktop/AES_V1.0/AES/RoundkeyGen_tb.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RoundkeyGen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RoundkeyGen_tb;

parameter FAST_PERIOD = 10;
parameter SLOW_PERIOD = 24;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] RCON;
	reg valid_in;
	reg [127:0] key;

	// Outputs
	wire [127:0] round_key;
	wire valid_out;

	// Instantiate the Unit Under Test (UUT)
	RoundkeyGen uut (
		.clk(clk), 
		.reset(reset), 
		.RCON(RCON), 
		.valid_in(valid_in), 
		.key(key), 
		.round_key(round_key), 
		.valid_out(valid_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		RCON = 0;
		valid_in = 0;
		key = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		forever 
		#(FAST_PERIOD/2) clk = ~clk;  // clock 
		
	end

	initial begin : ACCESS
				#100
				# SLOW_PERIOD
				valid_in <= 1;
				key  <= 128'h2b7e151628aed2a6abf7158809cf4f3c;
				RCON <= 32'h02000000;
				$display ("DataOut : %d",  round_key);
			
	end
      
endmodule

