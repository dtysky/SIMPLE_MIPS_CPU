//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.2 (win64) Build 928826 Thu Jun  5 18:21:07 MDT 2014
//Date        : Wed Jan 21 12:43:30 2015
//Host        : Dtysky running 64-bit major release  (build 9200)
//Command     : generate_target MIPS_CPU_wrapper.bd
//Design      : MIPS_CPU_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MIPS_CPU_wrapper
   (button,
    inclk,
    led);
  input [15:0]button;
  input inclk;
  output [15:0]led;

  wire [15:0]button;
  wire inclk;
  wire [15:0]led;

MIPS_CPU MIPS_CPU_i
       (.button(button),
        .inclk(inclk),
        .led(led));
endmodule
