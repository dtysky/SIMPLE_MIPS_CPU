//Author : dtysky
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2015/01/16 18:34:13
// Design Name: 
// Module Name: MATH
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


module SHIFT32(
	input [4:0] sa;
	input [31:0] d;
	input right,arith;
	output [31:0] sh
	);

	reg [31:0] r_sh;

	always @(*) begin
		case ({right,arith})
			2'b00 :
				r_sh <= d << sa;
			2'b10 :
				r_sh <= d >> sa;
			2'b01 :
				r_sh <= d <<< sa;
			2'b11 :
				r_sh <= d >>> sa;
		endcase
	end

	assign sh = r_sh;

endmodule