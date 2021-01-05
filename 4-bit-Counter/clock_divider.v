`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 		Bahtiyar Bayram
// 
// Create Date:    	22:37:52 01/02/2021 
// Design Name:     Clock Divider
// Module Name:     clock_divider
// Project Name:    Verilog Examples
// Target Devices:  XC6SLX45 (CSG324)
// Tool versions:   Xilinx ISE 14.7 Windows
// Description:     Devides main clock to 50000000.
//
// Dependencies: 
//
// Revision:
// Revision 0.01 - File Created
// Revision 1.00 - Project completed
//
//////////////////////////////////////////////////////////////////////////////////

module clock_divider(
    input clk,
    input rst,
    output reg clk_div
    );

reg [31:0] count;

// Select this for simulation
localparam freq_val = 2;
// Select this for real test
//localparam freq_val = 50000000;

always @(posedge(clk) or negedge(rst))
begin
	if(!rst)
	begin
		// Reset count and clk_div
		count <= 0;
		clk_div <= 0;
	end
	else if(count == (freq_val-1))
	begin
		count <= 0;
		// Toggle divided clock (clk_div)
		clk_div <= ~clk_div;
	end
	else
	// Increase count by 1
		count <= count + 1;
end

endmodule
