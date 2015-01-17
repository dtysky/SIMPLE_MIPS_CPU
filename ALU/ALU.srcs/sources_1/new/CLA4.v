//Author : dtysky
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2015/01/17 11:11:18
// Design Name: 
// Module Name: CLA4
// Project Name: 
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
module ADD(
	input a,b,c;
	output g,p,s
	);

	assign s = a ^ b ^ c;
	assign g = a & b;
	assign p = a | b;

endmodule

module G_P(
	input[1:0] g,p;
	input c_in;
	output g_out,p_out,c_out
	);

	assign g_out = g[1] | p[1] & g[0];
	assign p_out = p[1] & p[0];
	assign c_out = g[0] | p[0] & c_in;

end module

module CLA4(

    );
endmodule

