`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:31 03/01/2020 
// Design Name: 
// Module Name:    test1 
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
module test1(
	input clk,                     //system clock
output [127:0] data_out   //output data
    );
	 wire clk1;
always @(*) 
begin
assign clk1 = clk;
end

endmodule
