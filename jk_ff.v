`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:20:59 12/12/2022 
// Design Name: 
// Module Name:    jk_ff 
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
module jk_ff(q, qb, j, k, clk
    );
	 input j,k,clk;
	 output reg q;
	 output qb;
	 assign qb = ~q;
	always @(posedge clk)
	begin
	case({j,k})
	   2'b00 : q<=q; //hold
		2'b01 : q<=0; //reset
		2'b10 : q<=1; //set
		2'b11 : q<=~q; //toggle
	endcase
	end
endmodule
module jk_ff_tb();
  reg j,k,clk;
  wire q, qb;
  
  jk_ff ab(q, qb, j, k, clk);
  initial
  begin
  clk = 1'b0;
  forever #5 clk= ~clk;
  end
  initial 
  begin
  {j,k}=2'b00;
  #10;
  end
  initial 
  begin
  j=1'b0; k=1'b0; #10;
  j=1'b1; k=1'b0; #10;
  j=1'b0; k=1'b0; #10;
  j=1'b0; k=1'b1; #10;
  j=1'b0; k=1'b0; 
  end
  initial 
  begin
  $monitor ("input j=%b, k=%b output q=%b, qb=%b", j,k,q,qb);
  #100 $finish;
  end
endmodule
