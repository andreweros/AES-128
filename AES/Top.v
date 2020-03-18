`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:16 02/19/2020 
// Design Name: 
// Module Name:    Top 
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
module Top(
input clk,                       //system clock
input reset,                     //asynch reset
input data_valid_in,             //data valid signal
input data_in,  
output valid_out,                //output valid signal
output [127:0] cipher_text  //cipher text
    );

wire [127:0] data_trans;

test u_test(clk,data_in,data_trans);

Subbytes u_Sub(clk,reset,valid_in,data_trans,valid_out,cipher_text);

endmodule
