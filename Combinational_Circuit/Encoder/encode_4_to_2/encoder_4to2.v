`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2026 18:52:03
// Design Name: 
// Module Name: encoder_4to2
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


module encoder_4to2(
    input en,
    input [3:0]din, 
    output reg [1:0]y
    );
    
    always@(*)
    begin
    if(en == 0)
        y = 2'bxx;
    else
        if(din == 4'b0001)
            y = 2'b00;
     
        else if(din == 4'b0010)
            y = 2'b01; 
        
        else if(din == 4'b0100)
            y = 2'b10;
        
        else if(din == 4'b1000)
            y = 2'b11;
        
        end    
endmodule
