`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:25:26 12/11/2022 
// Design Name: 
// Module Name:    mux_4_to_one 
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
module mux_4_to_one( i0,i1,i2,i3,s0,s1,out
    );
input i0, i1, i2, i3, s0, s1;
output reg out;
always @(s1 or s0 or i0 or i1 or i2 or i3 )
begin
  case ({s0,s1})
   2'b00 : out = i0;
   2'b01 : out = i1;
   2'b10 : out = i2;
   2'b11 : out = i3;
 default : out = 1'bx;
  endcase
end
endmodule
