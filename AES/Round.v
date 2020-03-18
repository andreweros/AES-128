`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:41 03/06/2020 
// Design Name: 
// Module Name:    Round 
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

module AddroundKey(
input clk,
input reset,
input data_valid_in,
input key_valid_in,
input data_in[127:0],
input round_key[127:0],
output key_out[127:0],
output data_out
);



module Round(
input clk,
input reset,
input data_valid_in,
input key_valid_in,
input data_in[127:0],
input key_in[127:0],
output key_out[127:0],
output valid_out
);

wire [127:0] data_sub_out;
wire [127:0] data_shift_out;
wire [127:0] data_mix_out;

wire sub_valid;
wire shift_valid;
wire mix_valid;

AddRoundKey U_ADD(clk, reset, mix_valid, key_valid_in, data_mix_out, 

endmodule
