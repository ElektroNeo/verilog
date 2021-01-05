`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 			 
// Engineer: 		Bahtiyar Bayram
// 
// Create Date:     21:36:05 01/02/2021 
// Design Name:     And Gate
// Module Name:     and_gate 
// Project Name:    Verilog Examples
// Target Devices:  XC6SLX45 (CSG324)
// Tool versions:   Xilinx ISE 14.7 Windows
// Description:     AND Gate which input connected to SW0 and SW1
//				    and output connected to LD0
//
// Dependencies: 
//
// Revision:
// Revision 0.01 - File Created
// Revision 1.00 - Project completed
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module and_gate(
    input a,
    input b,
    output out
    );

// Assign a and b to out
assign out = a & b;

endmodule
