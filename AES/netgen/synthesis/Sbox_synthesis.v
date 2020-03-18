////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Sbox_synthesis.v
// /___/   /\     Timestamp: Tue Feb 18 16:24:55 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Sbox.ngc Sbox_synthesis.v 
// Device	: xc7a100t-1-csg324
// Input file	: Sbox.ngc
// Output file	: C:\Users\qiuke\Desktop\AES_V1.0\AES\netgen\synthesis\Sbox_synthesis.v
// # of Modules	: 1
// Design Name	: Sbox
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

module Sbox (
addr, dout
);
  input [7 : 0] addr;
  output [7 : 0] dout;
  wire addr_7_IBUF_0;
  wire addr_6_IBUF_1;
  wire addr_5_IBUF_2;
  wire addr_4_IBUF_3;
  wire addr_3_IBUF_4;
  wire addr_2_IBUF_5;
  wire addr_1_IBUF_6;
  wire addr_0_IBUF_7;
  wire dout_7_OBUF_8;
  wire dout_6_OBUF_9;
  wire dout_5_OBUF_10;
  wire dout_4_OBUF_11;
  wire dout_3_OBUF_12;
  wire dout_2_OBUF_13;
  wire dout_1_OBUF_14;
  wire dout_0_OBUF_15;
  wire Mram_dout14_f71;
  wire Mram_dout143_33;
  wire Mram_dout142_34;
  wire Mram_dout14_f7_35;
  wire Mram_dout141_36;
  wire Mram_dout14_37;
  wire Mram_dout12_f71;
  wire Mram_dout123_39;
  wire Mram_dout122_40;
  wire Mram_dout12_f7_41;
  wire Mram_dout121_42;
  wire Mram_dout12_43;
  wire Mram_dout10_f71;
  wire Mram_dout103_45;
  wire Mram_dout102_46;
  wire Mram_dout10_f7_47;
  wire Mram_dout101_48;
  wire Mram_dout10_49;
  wire Mram_dout8_f71;
  wire Mram_dout83_51;
  wire Mram_dout82_52;
  wire Mram_dout8_f7_53;
  wire Mram_dout81_54;
  wire Mram_dout8_55;
  wire Mram_dout6_f71;
  wire Mram_dout63_57;
  wire Mram_dout62_58;
  wire Mram_dout6_f7_59;
  wire Mram_dout61_60;
  wire Mram_dout6_61;
  wire Mram_dout4_f71;
  wire Mram_dout43_63;
  wire Mram_dout42_64;
  wire Mram_dout4_f7_65;
  wire Mram_dout41_66;
  wire Mram_dout4_67;
  wire Mram_dout2_f71;
  wire Mram_dout24_69;
  wire Mram_dout23_70;
  wire Mram_dout2_f7_71;
  wire Mram_dout22_72;
  wire Mram_dout21_73;
  wire Mram_dout_f71;
  wire Mram_dout3_75;
  wire Mram_dout2_76;
  wire Mram_dout_f7_77;
  wire Mram_dout1_78;
  wire Mram_dout;
  IBUF   addr_7_IBUF (
    .I(addr[7]),
    .O(addr_7_IBUF_0)
  );
  IBUF   addr_6_IBUF (
    .I(addr[6]),
    .O(addr_6_IBUF_1)
  );
  IBUF   addr_5_IBUF (
    .I(addr[5]),
    .O(addr_5_IBUF_2)
  );
  IBUF   addr_4_IBUF (
    .I(addr[4]),
    .O(addr_4_IBUF_3)
  );
  IBUF   addr_3_IBUF (
    .I(addr[3]),
    .O(addr_3_IBUF_4)
  );
  IBUF   addr_2_IBUF (
    .I(addr[2]),
    .O(addr_2_IBUF_5)
  );
  IBUF   addr_1_IBUF (
    .I(addr[1]),
    .O(addr_1_IBUF_6)
  );
  IBUF   addr_0_IBUF (
    .I(addr[0]),
    .O(addr_0_IBUF_7)
  );
  OBUF   dout_7_OBUF (
    .I(dout_7_OBUF_8),
    .O(dout[7])
  );
  OBUF   dout_6_OBUF (
    .I(dout_6_OBUF_9),
    .O(dout[6])
  );
  OBUF   dout_5_OBUF (
    .I(dout_5_OBUF_10),
    .O(dout[5])
  );
  OBUF   dout_4_OBUF (
    .I(dout_4_OBUF_11),
    .O(dout[4])
  );
  OBUF   dout_3_OBUF (
    .I(dout_3_OBUF_12),
    .O(dout[3])
  );
  OBUF   dout_2_OBUF (
    .I(dout_2_OBUF_13),
    .O(dout[2])
  );
  OBUF   dout_1_OBUF (
    .I(dout_1_OBUF_14),
    .O(dout[1])
  );
  OBUF   dout_0_OBUF (
    .I(dout_0_OBUF_15),
    .O(dout[0])
  );
  MUXF8   Mram_dout14_f8 (
    .I0(Mram_dout14_f71),
    .I1(Mram_dout14_f7_35),
    .S(addr_7_IBUF_0),
    .O(dout_7_OBUF_8)
  );
  MUXF7   Mram_dout14_f7_0 (
    .I0(Mram_dout143_33),
    .I1(Mram_dout142_34),
    .S(addr_6_IBUF_1),
    .O(Mram_dout14_f71)
  );
  LUT6 #(
    .INIT ( 64'h7D3B46E2E1D3AC46 ))
  Mram_dout143 (
    .I0(addr_2_IBUF_5),
    .I1(addr_5_IBUF_2),
    .I2(addr_0_IBUF_7),
    .I3(addr_1_IBUF_6),
    .I4(addr_4_IBUF_3),
    .I5(addr_3_IBUF_4),
    .O(Mram_dout143_33)
  );
  LUT6 #(
    .INIT ( 64'hF8A2AC684E78BB8A ))
  Mram_dout142 (
    .I0(addr_0_IBUF_7),
    .I1(addr_4_IBUF_3),
    .I2(addr_1_IBUF_6),
    .I3(addr_5_IBUF_2),
    .I4(addr_3_IBUF_4),
    .I5(addr_2_IBUF_5),
    .O(Mram_dout142_34)
  );
  MUXF7   Mram_dout14_f7 (
    .I0(Mram_dout141_36),
    .I1(Mram_dout14_37),
    .S(addr_6_IBUF_1),
    .O(Mram_dout14_f7_35)
  );
  LUT6 #(
    .INIT ( 64'h28538BA6F25908B1 ))
  Mram_dout141 (
    .I0(addr_4_IBUF_3),
    .I1(addr_2_IBUF_5),
    .I2(addr_5_IBUF_2),
    .I3(addr_1_IBUF_6),
    .I4(addr_3_IBUF_4),
    .I5(addr_0_IBUF_7),
    .O(Mram_dout141_36)
  );
  LUT6 #(
    .INIT ( 64'h65D839E55372EF41 ))
  Mram_dout14 (
    .I0(addr_4_IBUF_3),
    .I1(addr_0_IBUF_7),
    .I2(addr_2_IBUF_5),
    .I3(addr_5_IBUF_2),
    .I4(addr_1_IBUF_6),
    .I5(addr_3_IBUF_4),
    .O(Mram_dout14_37)
  );
  MUXF8   Mram_dout12_f8 (
    .I0(Mram_dout12_f71),
    .I1(Mram_dout12_f7_41),
    .S(addr_7_IBUF_0),
    .O(dout_6_OBUF_9)
  );
  MUXF7   Mram_dout12_f7_0 (
    .I0(Mram_dout123_39),
    .I1(Mram_dout122_40),
    .S(addr_6_IBUF_1),
    .O(Mram_dout12_f71)
  );
  LUT6 #(
    .INIT ( 64'hD753B91D1D9D6311 ))
  Mram_dout123 (
    .I0(addr_5_IBUF_2),
    .I1(addr_3_IBUF_4),
    .I2(addr_4_IBUF_3),
    .I3(addr_0_IBUF_7),
    .I4(addr_2_IBUF_5),
    .I5(addr_1_IBUF_6),
    .O(Mram_dout123_39)
  );
  LUT6 #(
    .INIT ( 64'h99A28A949557EEB2 ))
  Mram_dout122 (
    .I0(addr_4_IBUF_3),
    .I1(addr_2_IBUF_5),
    .I2(addr_3_IBUF_4),
    .I3(addr_0_IBUF_7),
    .I4(addr_5_IBUF_2),
    .I5(addr_1_IBUF_6),
    .O(Mram_dout122_40)
  );
  MUXF7   Mram_dout12_f7 (
    .I0(Mram_dout121_42),
    .I1(Mram_dout12_43),
    .S(addr_6_IBUF_1),
    .O(Mram_dout12_f7_41)
  );
  LUT6 #(
    .INIT ( 64'h7ADE2D8829DF943F ))
  Mram_dout121 (
    .I0(addr_5_IBUF_2),
    .I1(addr_4_IBUF_3),
    .I2(addr_2_IBUF_5),
    .I3(addr_1_IBUF_6),
    .I4(addr_3_IBUF_4),
    .I5(addr_0_IBUF_7),
    .O(Mram_dout121_42)
  );
  LUT6 #(
    .INIT ( 64'h6214F183404A396E ))
  Mram_dout12 (
    .I0(addr_3_IBUF_4),
    .I1(addr_4_IBUF_3),
    .I2(addr_2_IBUF_5),
    .I3(addr_5_IBUF_2),
    .I4(addr_1_IBUF_6),
    .I5(addr_0_IBUF_7),
    .O(Mram_dout12_43)
  );
  MUXF8   Mram_dout10_f8 (
    .I0(Mram_dout10_f71),
    .I1(Mram_dout10_f7_47),
    .S(addr_7_IBUF_0),
    .O(dout_5_OBUF_10)
  );
  MUXF7   Mram_dout10_f7_0 (
    .I0(Mram_dout103_45),
    .I1(Mram_dout102_46),
    .S(addr_6_IBUF_1),
    .O(Mram_dout10_f71)
  );
  LUT6 #(
    .INIT ( 64'hDEA321282FEF5FF7 ))
  Mram_dout103 (
    .I0(addr_1_IBUF_6),
    .I1(addr_5_IBUF_2),
    .I2(addr_0_IBUF_7),
    .I3(addr_2_IBUF_5),
    .I4(addr_3_IBUF_4),
    .I5(addr_4_IBUF_3),
    .O(Mram_dout103_45)
  );
  LUT6 #(
    .INIT ( 64'h6DA316E9A0EA3E60 ))
  Mram_dout102 (
    .I0(addr_0_IBUF_7),
    .I1(addr_4_IBUF_3),
    .I2(addr_3_IBUF_4),
    .I3(addr_2_IBUF_5),
    .I4(addr_5_IBUF_2),
    .I5(addr_1_IBUF_6),
    .O(Mram_dout102_46)
  );
  MUXF7   Mram_dout10_f7 (
    .I0(Mram_dout101_48),
    .I1(Mram_dout10_49),
    .S(addr_6_IBUF_1),
    .O(Mram_dout10_f7_47)
  );
  LUT6 #(
    .INIT ( 64'h38A2B9FA8494528E ))
  Mram_dout101 (
    .I0(addr_5_IBUF_2),
    .I1(addr_4_IBUF_3),
    .I2(addr_3_IBUF_4),
    .I3(addr_0_IBUF_7),
    .I4(addr_2_IBUF_5),
    .I5(addr_1_IBUF_6),
    .O(Mram_dout101_48)
  );
  LUT6 #(
    .INIT ( 64'h0685149FA95585A7 ))
  Mram_dout10 (
    .I0(addr_5_IBUF_2),
    .I1(addr_4_IBUF_3),
    .I2(addr_2_IBUF_5),
    .I3(addr_3_IBUF_4),
    .I4(addr_1_IBUF_6),
    .I5(addr_0_IBUF_7),
    .O(Mram_dout10_49)
  );
  MUXF8   Mram_dout8_f8 (
    .I0(Mram_dout8_f71),
    .I1(Mram_dout8_f7_53),
    .S(addr_7_IBUF_0),
    .O(dout_4_OBUF_11)
  );
  MUXF7   Mram_dout8_f7_0 (
    .I0(Mram_dout83_51),
    .I1(Mram_dout82_52),
    .S(addr_6_IBUF_1),
    .O(Mram_dout8_f71)
  );
  LUT6 #(
    .INIT ( 64'hE265B181796973F2 ))
  Mram_dout83 (
    .I0(addr_3_IBUF_4),
    .I1(addr_4_IBUF_3),
    .I2(addr_2_IBUF_5),
    .I3(addr_5_IBUF_2),
    .I4(addr_0_IBUF_7),
    .I5(addr_1_IBUF_6),
    .O(Mram_dout83_51)
  );
  LUT6 #(
    .INIT ( 64'hA5EAECF965E63416 ))
  Mram_dout82 (
    .I0(addr_2_IBUF_5),
    .I1(addr_3_IBUF_4),
    .I2(addr_4_IBUF_3),
    .I3(addr_0_IBUF_7),
    .I4(addr_1_IBUF_6),
    .I5(addr_5_IBUF_2),
    .O(Mram_dout82_52)
  );
  MUXF7   Mram_dout8_f7 (
    .I0(Mram_dout81_54),
    .I1(Mram_dout8_55),
    .S(addr_6_IBUF_1),
    .O(Mram_dout8_f7_53)
  );
  LUT6 #(
    .INIT ( 64'h761CF6642448D21C ))
  Mram_dout81 (
    .I0(addr_5_IBUF_2),
    .I1(addr_1_IBUF_6),
    .I2(addr_2_IBUF_5),
    .I3(addr_0_IBUF_7),
    .I4(addr_4_IBUF_3),
    .I5(addr_3_IBUF_4),
    .O(Mram_dout81_54)
  );
  LUT6 #(
    .INIT ( 64'hEC55B8F225262975 ))
  Mram_dout8 (
    .I0(addr_5_IBUF_2),
    .I1(addr_4_IBUF_3),
    .I2(addr_0_IBUF_7),
    .I3(addr_2_IBUF_5),
    .I4(addr_1_IBUF_6),
    .I5(addr_3_IBUF_4),
    .O(Mram_dout8_55)
  );
  MUXF8   Mram_dout6_f8 (
    .I0(Mram_dout6_f71),
    .I1(Mram_dout6_f7_59),
    .S(addr_7_IBUF_0),
    .O(dout_3_OBUF_12)
  );
  MUXF7   Mram_dout6_f7_0 (
    .I0(Mram_dout63_57),
    .I1(Mram_dout62_58),
    .S(addr_6_IBUF_1),
    .O(Mram_dout6_f71)
  );
  LUT6 #(
    .INIT ( 64'h0502208EA5063B8C ))
  Mram_dout63 (
    .I0(addr_2_IBUF_5),
    .I1(addr_4_IBUF_3),
    .I2(addr_5_IBUF_2),
    .I3(addr_0_IBUF_7),
    .I4(addr_1_IBUF_6),
    .I5(addr_3_IBUF_4),
    .O(Mram_dout63_57)
  );
  LUT6 #(
    .INIT ( 64'h3C6EBD4E5D93BA03 ))
  Mram_dout62 (
    .I0(addr_2_IBUF_5),
    .I1(addr_4_IBUF_3),
    .I2(addr_5_IBUF_2),
    .I3(addr_0_IBUF_7),
    .I4(addr_1_IBUF_6),
    .I5(addr_3_IBUF_4),
    .O(Mram_dout62_58)
  );
  MUXF7   Mram_dout6_f7 (
    .I0(Mram_dout61_60),
    .I1(Mram_dout6_61),
    .S(addr_6_IBUF_1),
    .O(Mram_dout6_f7_59)
  );
  LUT6 #(
    .INIT ( 64'hE9B7ED8E82E83895 ))
  Mram_dout61 (
    .I0(addr_4_IBUF_3),
    .I1(addr_0_IBUF_7),
    .I2(addr_2_IBUF_5),
    .I3(addr_5_IBUF_2),
    .I4(addr_3_IBUF_4),
    .I5(addr_1_IBUF_6),
    .O(Mram_dout61_60)
  );
  LUT6 #(
    .INIT ( 64'h7FEC98B415D5736D ))
  Mram_dout6 (
    .I0(addr_4_IBUF_3),
    .I1(addr_0_IBUF_7),
    .I2(addr_5_IBUF_2),
    .I3(addr_2_IBUF_5),
    .I4(addr_3_IBUF_4),
    .I5(addr_1_IBUF_6),
    .O(Mram_dout6_61)
  );
  MUXF8   Mram_dout4_f8 (
    .I0(Mram_dout4_f71),
    .I1(Mram_dout4_f7_65),
    .S(addr_7_IBUF_0),
    .O(dout_2_OBUF_13)
  );
  MUXF7   Mram_dout4_f7_0 (
    .I0(Mram_dout43_63),
    .I1(Mram_dout42_64),
    .S(addr_6_IBUF_1),
    .O(Mram_dout4_f71)
  );
  LUT6 #(
    .INIT ( 64'hB513D21E26C2EBE6 ))
  Mram_dout44 (
    .I0(addr_5_IBUF_2),
    .I1(addr_1_IBUF_6),
    .I2(addr_2_IBUF_5),
    .I3(addr_0_IBUF_7),
    .I4(addr_4_IBUF_3),
    .I5(addr_3_IBUF_4),
    .O(Mram_dout43_63)
  );
  LUT6 #(
    .INIT ( 64'h59EC022068D48B20 ))
  Mram_dout43 (
    .I0(addr_3_IBUF_4),
    .I1(addr_2_IBUF_5),
    .I2(addr_5_IBUF_2),
    .I3(addr_1_IBUF_6),
    .I4(addr_0_IBUF_7),
    .I5(addr_4_IBUF_3),
    .O(Mram_dout42_64)
  );
  MUXF7   Mram_dout4_f7 (
    .I0(Mram_dout41_66),
    .I1(Mram_dout4_67),
    .S(addr_6_IBUF_1),
    .O(Mram_dout4_f7_65)
  );
  LUT6 #(
    .INIT ( 64'h164C727FFFA8527D ))
  Mram_dout42 (
    .I0(addr_1_IBUF_6),
    .I1(addr_2_IBUF_5),
    .I2(addr_3_IBUF_4),
    .I3(addr_4_IBUF_3),
    .I4(addr_5_IBUF_2),
    .I5(addr_0_IBUF_7),
    .O(Mram_dout41_66)
  );
  LUT6 #(
    .INIT ( 64'hDBA7A5CE4F673882 ))
  Mram_dout41 (
    .I0(addr_2_IBUF_5),
    .I1(addr_3_IBUF_4),
    .I2(addr_5_IBUF_2),
    .I3(addr_4_IBUF_3),
    .I4(addr_1_IBUF_6),
    .I5(addr_0_IBUF_7),
    .O(Mram_dout4_67)
  );
  MUXF8   Mram_dout2_f8 (
    .I0(Mram_dout2_f71),
    .I1(Mram_dout2_f7_71),
    .S(addr_7_IBUF_0),
    .O(dout_1_OBUF_14)
  );
  MUXF7   Mram_dout2_f7_0 (
    .I0(Mram_dout24_69),
    .I1(Mram_dout23_70),
    .S(addr_6_IBUF_1),
    .O(Mram_dout2_f71)
  );
  LUT6 #(
    .INIT ( 64'h2EAB543CE65954FF ))
  Mram_dout24 (
    .I0(addr_5_IBUF_2),
    .I1(addr_1_IBUF_6),
    .I2(addr_2_IBUF_5),
    .I3(addr_3_IBUF_4),
    .I4(addr_4_IBUF_3),
    .I5(addr_0_IBUF_7),
    .O(Mram_dout24_69)
  );
  LUT6 #(
    .INIT ( 64'hC951A45B6AF24DEE ))
  Mram_dout23 (
    .I0(addr_0_IBUF_7),
    .I1(addr_3_IBUF_4),
    .I2(addr_1_IBUF_6),
    .I3(addr_4_IBUF_3),
    .I4(addr_5_IBUF_2),
    .I5(addr_2_IBUF_5),
    .O(Mram_dout23_70)
  );
  MUXF7   Mram_dout2_f7 (
    .I0(Mram_dout22_72),
    .I1(Mram_dout21_73),
    .S(addr_6_IBUF_1),
    .O(Mram_dout2_f7_71)
  );
  LUT6 #(
    .INIT ( 64'h6A610D65F35426E2 ))
  Mram_dout22 (
    .I0(addr_2_IBUF_5),
    .I1(addr_5_IBUF_2),
    .I2(addr_0_IBUF_7),
    .I3(addr_4_IBUF_3),
    .I4(addr_3_IBUF_4),
    .I5(addr_1_IBUF_6),
    .O(Mram_dout22_72)
  );
  LUT6 #(
    .INIT ( 64'hD9BE846A34660C21 ))
  Mram_dout21 (
    .I0(addr_0_IBUF_7),
    .I1(addr_3_IBUF_4),
    .I2(addr_4_IBUF_3),
    .I3(addr_5_IBUF_2),
    .I4(addr_2_IBUF_5),
    .I5(addr_1_IBUF_6),
    .O(Mram_dout21_73)
  );
  MUXF8   Mram_dout_f8 (
    .I0(Mram_dout_f71),
    .I1(Mram_dout_f7_77),
    .S(addr_7_IBUF_0),
    .O(dout_0_OBUF_15)
  );
  MUXF7   Mram_dout_f7_0 (
    .I0(Mram_dout3_75),
    .I1(Mram_dout2_76),
    .S(addr_6_IBUF_1),
    .O(Mram_dout_f71)
  );
  LUT6 #(
    .INIT ( 64'hC7179C7067F77949 ))
  Mram_dout4 (
    .I0(addr_4_IBUF_3),
    .I1(addr_3_IBUF_4),
    .I2(addr_0_IBUF_7),
    .I3(addr_5_IBUF_2),
    .I4(addr_1_IBUF_6),
    .I5(addr_2_IBUF_5),
    .O(Mram_dout3_75)
  );
  LUT6 #(
    .INIT ( 64'h6DCC884F3AC85BED ))
  Mram_dout3 (
    .I0(addr_5_IBUF_2),
    .I1(addr_0_IBUF_7),
    .I2(addr_3_IBUF_4),
    .I3(addr_2_IBUF_5),
    .I4(addr_1_IBUF_6),
    .I5(addr_4_IBUF_3),
    .O(Mram_dout2_76)
  );
  MUXF7   Mram_dout_f7 (
    .I0(Mram_dout1_78),
    .I1(Mram_dout),
    .S(addr_6_IBUF_1),
    .O(Mram_dout_f7_77)
  );
  LUT6 #(
    .INIT ( 64'h581941D08E09AEC5 ))
  Mram_dout2 (
    .I0(addr_3_IBUF_4),
    .I1(addr_2_IBUF_5),
    .I2(addr_5_IBUF_2),
    .I3(addr_0_IBUF_7),
    .I4(addr_1_IBUF_6),
    .I5(addr_4_IBUF_3),
    .O(Mram_dout1_78)
  );
  LUT6 #(
    .INIT ( 64'h3F73B6D62368218A ))
  Mram_dout1 (
    .I0(addr_5_IBUF_2),
    .I1(addr_2_IBUF_5),
    .I2(addr_0_IBUF_7),
    .I3(addr_1_IBUF_6),
    .I4(addr_4_IBUF_3),
    .I5(addr_3_IBUF_4),
    .O(Mram_dout)
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

