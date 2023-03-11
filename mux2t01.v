`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:47 11/30/2022 
// Design Name: 
// Module Name:    mux2t01 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//
//
// behavioral modelling example
module mux2t01(
    input i0,
    input i1,
    input sel,
    output reg out
    );
	 always @ (i0, i1, sel)
	 begin 
	   if(sel)
		  out = i1;
		else
		  out = i0;
	 end
endmodule
