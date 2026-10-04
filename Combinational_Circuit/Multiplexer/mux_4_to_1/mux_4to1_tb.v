`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:  
// Design Name: 
// Module Name: mux_4to1_tb
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


module mux_4to1_tb(

    );
    
    reg [1:0]sel;
    reg [3:0]i;
    wire y;
    
    mux_4to1 uut(sel, i, y);
    
    initial
    begin
    
    sel = 2'b00;
    i = 4'b0001;
    
    #10;
    sel = 2'b01;
    i = 4'b0010;
    
    #10;
    sel = 2'b10;
    i = 4'b11;
    
    #10;
    sel = 2'b11;
    i = 4'b1000;

    
    #10;
    $finish;
    
    end
endmodule
