//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.2 (win64) Build 928826 Thu Jun  5 18:21:07 MDT 2014
//Date        : Mon Jan 19 10:35:47 2015
//Host        : Dtysky running 64-bit major release  (build 9200)
//Command     : generate_target MIPS_CPU_wrapper.bd
//Design      : MIPS_CPU_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MIPS_CPU_wrapper
   (inclk,
    reset);
  input inclk;
  input reset;

  wire inclk;
  wire reset;

MIPS_CPU MIPS_CPU_i
       (.inclk(inclk),
        .reset(reset));
endmodule
