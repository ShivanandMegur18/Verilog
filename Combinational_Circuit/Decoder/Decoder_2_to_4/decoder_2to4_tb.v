`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2026 18:22:04
// Design Name: 
// Module Name: decoder_2to4_tb
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


module decoder_2to4_tb(

    );
    reg [1:0] a;
    wire [3:0] y;

    // Instantiate DUT
    decoder_2to4 uut(
        .a(a),
        .y(y)
    );

    initial
    begin
        $monitor("Time=%0t | a=%b | y=%b", $time, a, y);

        a = 2'b00;
        #10;

        a = 2'b01;
        #10;

        a = 2'b10;
        #10;

        a = 2'b11;
        #10;

        $finish;
    end

endmodule
