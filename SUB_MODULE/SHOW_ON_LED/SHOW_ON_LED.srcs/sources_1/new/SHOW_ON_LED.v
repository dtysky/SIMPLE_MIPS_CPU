`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/16 18:34:13
// Design Name: SHOW_ON_LED
// Module Name: SHOW_ON_LED
// Project Name: MIPS_CPU
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


module SHOW_ON_LED(
	input[31:0] alu_r,
	input[15:0] button,
	output[15:0] led
    );

	wire run;

	assign run = button[14];

	assign led = run ? alu_r[15:0] : button;

endmodule