`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 	
// Engineer: 		Bahtiyar Bayram
// 
// Create Date:    	22:47:50 01/02/2021 
// Design Name:     4-bit Counter
// Module Name:     counter 
// Project Name:    Verilog Examples
// Target Devices:  XC6SLX45 (CSG324)
// Tool versions:   Xilinx ISE 14.7 Windows
// Description:     4-bit 1 secondounter shows counts on LD0 to LD3.
//
// Dependencies: 
//
// Revision:
// Revision 0.01 - File Created
// Revision 1.00 - Project completed
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module counter(
    input clk,
    input rst,
	 input up_down,
    output reg [3:0] count
    );

// Divide clock to see in real life
clock_divider my_clk_div (
	.clk(clk),
	.rst(rst),
	.clk_div(clock_divider)
);

always @(posedge(clock_divider), negedge(rst))
	begin
		if(!rst)
			count <= 0;
		// If up_down is 1 then increase count by 1
		else if(up_down == 1)
			count <= count + 1;
		// If up_down is 1 then decrease count by 1
		else if(up_down == 0)
			count <= count - 1;
	end

endmodule
