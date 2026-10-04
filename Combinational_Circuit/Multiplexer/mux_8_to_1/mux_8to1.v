`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:  
// Design Name: 
// Module Name: mux_8to1
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


module mux_8to1(
input [2:0] sel,
    input [7:0] i,
    output y

    );
    
    assign y = sel[2]?(sel[1]?(sel[0]?i[7]:i[6]):(sel[0]?i[5]:i[4])):(sel[1]?(sel[0]?i[3]:i[2]):(sel[0]?i[1]:i[0]));
endmodule
