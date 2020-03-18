`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:30 02/21/2020 
// Design Name: 
// Module Name:    Roundkeygen 
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
module RoundkeyGen
(
input clk,              
input reset,                
input [31:0] RCON,
input valid_in,               
input [127:0] key,          
output reg [127:0]round_key,
output reg valid_out
);

wire [31:0] Key_RotWord;                 
reg [127:0] Key_SecondStage;     
reg [127:0] round_key_delay;
reg  valid_round_key;
wire [31:0] Key_SubBytes;
wire [127:0] temp_round_key;
  

assign Key_RotWord = {key[23:0],key[31:24]}; 
assign temp_round_key[127:96] =  key[127:96]  ^ Key_SubBytes ^ RCON;
assign temp_round_key[95:64] = key[95:64] ^ temp_round_key[127:96] ;
assign temp_round_key[63:32] =  key[63:32] ^ temp_round_key[95:64];
assign temp_round_key[31:0] = key[31:0] ^ temp_round_key[63:32];

Subbytes SUB_U (clk,reset,valid_in,Key_RotWord,subbytes_valid_out,Key_SubBytes);

/* Wait for subbytes */
always @(posedge clk or negedge reset)
if(!reset)begin
    round_key_delay <= 'b0;
    valid_round_key <= 1'b0;
end else begin
 if(subbytes_valid_out)begin
    round_key_delay <= temp_round_key;
 end
    valid_round_key <= subbytes_valid_out;
end

/* Delay for pipeline */
always @(posedge clk or negedge reset)
if(!reset)begin
   valid_out <= 1'b0;
   round_key <= 'b0;
end else begin
 if(valid_round_key)begin
   round_key <= round_key_delay;
 end
   valid_out <= valid_round_key;
end

//always @(posedge clk or negedge reset)
//if(!reset)begin
//    valid_round_key <= 1'b0;
//end else begin
// if(subbytes_valid_out)begin
//    valid_out <= temp_round_key;
// end
//    valid_out<= subbytes_valid_out;
//end
endmodule