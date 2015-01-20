//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.2 (win64) Build 928826 Thu Jun  5 18:21:07 MDT 2014
//Date        : Tue Jan 20 10:12:03 2015
//Host        : Dtysky running 64-bit major release  (build 9200)
//Command     : generate_target MIPS_CPU_wrapper.bd
//Design      : MIPS_CPU_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MIPS_CPU_wrapper
   (alu_pinout,
    clk,
    data_pinout,
    inst_pinout,
    pc_pinout,
    restet);
  output [31:0]alu_pinout;
  input clk;
  output [31:0]data_pinout;
  output [31:0]inst_pinout;
  output [31:0]pc_pinout;
  input restet;

  wire [31:0]alu_pinout;
  wire clk;
  wire [31:0]data_pinout;
  wire [31:0]inst_pinout;
  wire [31:0]pc_pinout;
  wire restet;

MIPS_CPU MIPS_CPU_i
       (.alu_pinout(alu_pinout),
        .clk(clk),
        .data_pinout(data_pinout),
        .inst_pinout(inst_pinout),
        .pc_pinout(pc_pinout),
        .restet(restet));
endmodule
