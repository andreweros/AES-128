`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:58:57 02/20/2020 
// Design Name: 
// Module Name:    Keyexpantion 
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

module Keyexpantion

(
input clk,                           
input reset,                                     
input valid_in,                     
input [127:0] cipher_key,         
output [(10*128)-1:0] W,    
output [9:0] valid_out      
);

wire [31:0] RCON [0:9];                      
wire [9:0] keygen_valid_out;         
wire [127:0] W_array  [0:9];   

assign RCON[0] = 32'h01000000;
assign RCON[1] = 32'h02000000;
assign RCON[2] = 32'h04000000;
assign RCON[3] = 32'h08000000;
assign RCON[4] = 32'h10000000;
assign RCON[5] = 32'h20000000;
assign RCON[6] = 32'h40000000;
assign RCON[7] = 32'h80000000;
assign RCON[8] = 32'h1b000000;
assign RCON[9] = 32'h36000000;


RoundkeyGen RKGEN_U0(clk,reset,RCON[0],valid_in,cipher_key,W_array[0],keygen_valid_out[0]);

genvar i;
generate
for (i=1 ;i<10;i=i+1) begin : ROUND_KEY_GEN
RoundkeyGen RKGEN_U(clk,reset,RCON[i],keygen_valid_out[i-1],W_array[i-1],W_array[i],keygen_valid_out[i]);
end
endgenerate

                         
assign W = {  W_array[0],
              W_array[1],
              W_array[2],
              W_array[3],
              W_array[4],
              W_array[5],
              W_array[6],
              W_array[7],
              W_array[8],
              W_array[9]};
				  
assign valid_out = keygen_valid_out; 
              
                        
endmodule
