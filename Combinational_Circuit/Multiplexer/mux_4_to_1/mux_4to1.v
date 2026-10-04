`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:  
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(
input [1:0]sel,
input [3:0]i, 
output y

    );
    
//    always @(*)
//    begin
//    if(sel == 2'b00)
//        y = i[0];
//    else if(sel == 2'b01)
//        y = i[1];
//    else if (sel == 2'b10)
//        y = i[2];
//    else if(sel == 2'b11)
//        y = i[3];
//    end


assign y = sel[1] ? (sel[0] ? i[3] : i[2]) : (sel[0] ? i[1] : i[0]);
//assign y = (sel == 2'b00) ? i[0] :(sel == 2'b01) ? i[1] : (sel == 2'b10) ? i[2] : i[3];

endmodule
