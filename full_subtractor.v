`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:39 12/11/2022 
// Design Name: 
// Module Name:    full_subtractor 
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
module full_subtractor( a, b, c, difference, borrow
    );
input a, b, c;
output difference, borrow;
wire w1, w2, w3;
assign w1=a^b;
assign w2=~w1;
assign w3= w2 & c;
assign difference= w1^c;
assign w4=~a;
assign w5= w4&b;
assign borrow= w3|w5;
endmodule
