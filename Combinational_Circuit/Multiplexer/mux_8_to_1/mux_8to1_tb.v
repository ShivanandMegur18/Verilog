`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: mux_8to1_tb
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


module mux_8to1_tb(

    );
    
    reg [2:0]sel;
    reg [7:0] i;
    wire y;
    
    mux_8to1 uut(sel, i, y);
    
    initial 
    begin
    
   i = 8'b00000011;

        sel = 3'b000;
        #10;

        sel = 3'b001;
        #10;

        sel = 3'b010;
        #10;

        sel = 3'b011;
        #10;

        sel = 3'b100;
        #10;

        sel = 3'b101;
        #10;

        sel = 3'b110;
        #10;

        sel = 3'b111;
        #10;

        $finish;
    
    end
endmodule
