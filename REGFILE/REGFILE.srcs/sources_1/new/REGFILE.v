`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: dtysky
// 
// Create Date: 2015/01/17 19:33:58
// Design Name: REGFILE
// Module Name: REGFILE
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


module REGFILE(
	input clk,clrn,
	input[31:0] d,
	input we,
	input[4:0] wn,rna,rnb,
	output[31:0] qa,qb
    );

	function[31:0] DEC5E(input[4:0] n,input ena);
		case(ena)
			1'b0 : DEC5E=32'b0;
			1'b1 : DEC5E[n]=1'b0;
		endcase
	endfunction

	reg[31:0] reg32[31:0];
	reg[31:0] r_qa,r_qb;
	wire[31:0] e;
	assign e = DEC5E(wn,we);

    integer i;
	always @(posedge clk or negedge clrn) begin
		if(~clrn) begin
			for (i=1;i<31;i=i+1)
				reg32[i] <= 32'b0;
		end else if (e) begin
			reg32[e] <= d;
		end
	end

	always @(posedge clk) begin
		r_qa <= reg32[rna];
		r_qb <= reg32[rnb];
	end
	
	assign qa = r_qa;
	assign qb = r_qb;

endmodule