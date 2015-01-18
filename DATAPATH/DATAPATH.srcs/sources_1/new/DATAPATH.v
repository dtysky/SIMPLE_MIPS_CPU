`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/18 16:56:28
// Design Name: DATAPATH
// Module Name: DATAPATH
// Project Name: MISP_CPU
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DATAPATH(
	input clk,
	output[31:0] inst_addr,
	output[5:0] con_op,con_func,
	output[4:0] reg_wn,reg_rna,reg_rnb,
	output[31:0] reg_d,
	input[31:0] alu_r,
	input[31:0] reg_qa,reg_qb
    );

	reg[4:0] rs,rt,rd,sa,
	reg[15:0] imm,
	reg[25:0] address,
endmodule
