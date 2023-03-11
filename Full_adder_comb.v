`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:43 12/12/2022 
// Design Name: 
// Module Name:    full_adder_combinational 
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
module full_adder_combinational( sum, carry, a, b, c
    );
	 input a, b, c;
	 output sum, carry;
	 assign sum = a^b^c;
	 assign carry = (a&b)|(b&c)|(c&a);
endmodule
module full_adder_combinational_test_bench();
    reg a, b, c;
	 wire sum, carry;
	 full_adder_combinational fa(sum, carry, a, b, c);
	 initial begin 
	   a=0; b=0; c=0;
	 end 
	 initial begin 
	  #10 a=1; b=0; c=0;
	  #10 a=1; b=1; c=0;
	  #10 a=0; b=1; c=1;
	  #10 a=1; b=1; c=1;
	 end
	 initial begin 
	   $monitor ($time, "a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, sum, carry);
		#60 $finish;
	 end 
endmodule 
