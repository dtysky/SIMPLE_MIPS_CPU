//Author : dtysky
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2015/01/17 13:37:41
// Design Name: 
// Module Name: ALU_TB
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


module ALU_TB();

	class data_creat;
		rand bit[31:0] a,b;
		rand bit[3:0] cmd;
		constraint test {
			(cmd != 4'b1011);
		}

		function new();
			this.srandom(seed);
		endfunction : new

		function void next();
			this.randomize();
		endfunction : next

	endclass : data_creat;

	bit clk=1'b0;
	data_creat dc;

	bit[31:0] a,b,aluc,r;
	bit z;

	ALU32 ALU0(a,b,aluc,r,z);

	task req();
		@(posedge clk);
		dc.next();
		a=dc.a;
		b=dc.b;
		aluc={28'b0,dc.cmd};
	endtask : req

	task check();
		@(negedge clk);
		$display("cmd = %b\na = %b\nb = %d\nr = %d\nz = %b\n",aluc[3:0],a,b,r,z); 
	endtask : check

	initial begin
		dc=new(200);
		forever #100ns clk = ~clk;
		repeat(100) begin
			req();
			check();
		end
	end

endmodule
