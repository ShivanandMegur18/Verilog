`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: demux_1to2
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


module demux_1to2(
input s, 
input in, 
output reg [1:0]y

    );
    
    always @(*)
    begin
//    case(s)
//    0 : begin
//        y[0] = in;
//        y[1] = 0;
//        end
        
//    1 : begin
//        y[0] = 0;
//        y[1] = in;
//        end
        
//    default: y=0;
//    endcase


       assign y = s ? {in, 1'b0} : {1'b0, in};  //1-to-2 DEMUX using ternary operator
    end
endmodule
