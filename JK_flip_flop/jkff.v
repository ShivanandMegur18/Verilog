`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2026 18:36:07
// Design Name: 
// Module Name: jkff
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


module jkff(q, qb, j, k, clk);
input j, k, clk;
output reg q;
output qb;

parameter hold = 2'b00,
          reset = 2'b01,
          set = 2'b10,
          toggle = 2'b11;
          assign qb =~q;
          
always@(posedge clk)
begin 

case({j,k})
           hold:q<=q;
           reset : q<=0;
           set : q <= 1;
           toggle : q <= ~q;
           
endcase

end        
endmodule
