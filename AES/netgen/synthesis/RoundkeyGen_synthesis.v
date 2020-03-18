////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: RoundkeyGen_synthesis.v
// /___/   /\     Timestamp: Mon Feb 24 06:24:17 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim RoundkeyGen.ngc RoundkeyGen_synthesis.v 
// Device	: xc7a100t-1-fgg676
// Input file	: RoundkeyGen.ngc
// Output file	: C:\Users\qiuke\Desktop\AES_V1.0\AES\netgen\synthesis\RoundkeyGen_synthesis.v
// # of Modules	: 1
// Design Name	: RoundkeyGen
// Xilinx        : D:\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module RoundkeyGen (
  clk, reset, valid_in, valid_out, RCON, key, round_key
);
  input clk;
  input reset;
  input valid_in;
  output valid_out;
  input [31 : 0] RCON;
  input [127 : 0] key;
  output [127 : 0] round_key;
  wire clk_BUFGP_0;
  wire reset_IBUF_1;
  wire valid_in_IBUF_2;
  wire \SUB_U/valid_out_3 ;
  wire valid_out_OBUF_4;
  wire \SUB_U/reset_inv ;
  FDE   valid_out_1 (
    .C(clk_BUFGP_0),
    .CE(reset_IBUF_1),
    .D(\SUB_U/valid_out_3 ),
    .Q(valid_out_OBUF_4)
  );
  FDC   \SUB_U/valid_out  (
    .C(clk_BUFGP_0),
    .CLR(\SUB_U/reset_inv ),
    .D(valid_in_IBUF_2),
    .Q(\SUB_U/valid_out_3 )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  IBUF   valid_in_IBUF (
    .I(valid_in),
    .O(valid_in_IBUF_2)
  );
  OBUF   valid_out_OBUF (
    .I(valid_out_OBUF_4),
    .O(valid_out)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \SUB_U/reset_inv1_INV_0  (
    .I(reset_IBUF_1),
    .O(\SUB_U/reset_inv )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

