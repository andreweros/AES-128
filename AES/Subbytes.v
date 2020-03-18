`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:49 02/19/2020 
// Design Name: 
// Module Name:    Subbytes 
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
module Subbytes
(
input clk,                     //system clock
input reset,                   //asynch active low reset
input valid_in,                //input valid signal  
input [127:0] data_in,    //input data
output reg valid_out,          //output valid signal
output [127:0] data_out   //output data
);

genvar i;
generate                      //generating 16 sbox roms for parallel read 128 width data
for (i=0; i< 16 ; i=i+1) begin : ROM
  Sbox u_sbox(data_in[(i*8)+7:(i*8)],data_out[(i*8)+7:(i*8)]);   
end
endgenerate

always@(posedge clk or negedge reset)   //valid out register
if(!reset)begin
    valid_out <= 1'b0;
end else begin 
    valid_out <= valid_in;
  end
endmodule