`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2026 18:59:32
// Design Name: 
// Module Name: encoder_4to2_tb
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


module encoder_4to2_tb(

    );
    reg en;
    reg [3:0]din;
    wire [1:0]y;
    
    encoder_4to2 dut(en, din, y);
    
    initial
    begin
    
    $monitor("time=%0t, input din = %b, output y = %b",$time, din, y);
    
    en = 0;
    
    #10;
    en = 1;
    
    #10;
    din = 0001;
    
    #10
    din = 4'b0010;
    
    #10; din = 0100;
    
    #10 din = 1000;
    
    #10; $finish;
    end
endmodule
