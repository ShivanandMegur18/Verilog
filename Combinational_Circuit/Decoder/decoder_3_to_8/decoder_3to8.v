`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2026 18:37:48
// Design Name: 
// Module Name: decoder_3to8
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


module decoder_3to8(
    input  [2:0] a,
    output reg [7:0] y
    );
    always @(*)
begin
    if (a == 3'b000)
        y = 8'b00000001;
        
    else if (a == 3'b001)
        y = 8'b00000010;
        
    else if (a == 3'b010)
        y = 8'b00000100;
        
    else if (a == 3'b011)
        y = 8'b00001000;
        
    else if (a == 3'b100)
        y = 8'b00010000;
        
    else if (a == 3'b101)
        y = 8'b00100000;
        
    else if (a == 3'b110)
        y = 8'b01000000;
        
    else if (a == 3'b111)
        y = 8'b10000000;
        
    else
        y = 8'b00000000;
end
endmodule
