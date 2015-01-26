//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.2 (win64) Build 928826 Thu Jun  5 18:21:07 MDT 2014
//Date        : Mon Jan 26 13:25:28 2015
//Host        : Dtysky running 64-bit major release  (build 9200)
//Command     : generate_target MIPS_CPU_wrapper.bd
//Design      : MIPS_CPU_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MIPS_CPU_wrapper
   (inclk,
    key,
    led);
  input inclk;
  input [15:0]key;
  output [15:0]led;

  wire inclk;
  wire [15:0]key;
  wire [15:0]led;

MIPS_CPU MIPS_CPU_i
       (.inclk(inclk),
        .key(key),
        .led(led));
endmodule
