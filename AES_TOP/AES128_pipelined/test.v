`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:36 02/18/2020 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
  module test               
(
input clk,                     //system clock
input valid_in,
input data_in,    //input data
output reg[127:0] data_out,   //output data
output valid_out
);

always @ (posedge clk) 
	begin
		if(valid_in)begin
		data_out <= 128'h58cf0bfc4d7c72d958cf0bfc4d7c72d9; 
		end else begin
		data_out <= 128'hafffffffffffffffffffffffffffffff;
		end
		valid_out <= valid_in;
  end
  
endmodule  

