`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:  
// Design Name: 
// Module Name: demux_1to4
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


module demux_1to4(
input [1:0]s,
input in, 
output reg [3:0] y

    );
    
    always@(*)
    begin
    case(s)
        2'b00: begin 
        y[0] = in; 
        y[1] = 0;
        y[2] = 0;
        y[3] = 0;
        end 
        
        2'b01: begin 
        y[0] = 0; 
        y[1] = in;
        y[2] = 0;
        y[3] = 0;
        end 
        
        2'b10: begin 
        y[0] = 0; 
        y[1] = 0;
        y[2] = in;
        y[3] = 0;
        end 
        
        2'b11: begin 
        y[0] = 0; 
        y[1] = 0;
        y[2] = 0;
        y[3] = in;
        end 
        default: y = 4'b0000;
        
        endcase 
    
    end
endmodule
