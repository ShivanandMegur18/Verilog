`timescale 1ns / 1ps

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
