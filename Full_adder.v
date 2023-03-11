`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:15:10 12/11/2022 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder( a, b, cin, sum, carry
    );
input a, b, cin;
output sum, carry;
wire w1, w2, w3;
assign w1=a^b;
assign sum=w1^cin;
assign w2= w1 & cin;
assign w3= a & b;
assign carry= w2|w3;
endmodule
