`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 22:58:00
// Design Name: 
// Module Name: and_tb
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


module inverter_tb;

    reg A;
    wire Y;

    inverter uut (
        .A(A),
        .Y(Y)
    );

    initial begin
        $monitor("A=%b Y=%b", A, Y);

        A = 0;
        #10 A = 1;
        #10 $finish;
    end

endmodule
