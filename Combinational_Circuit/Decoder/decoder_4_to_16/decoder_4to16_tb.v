`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:  
// Design Name: 
// Module Name: decoder_4to16_tb
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


module decoder_4to16_tb(

    );
    reg  [3:0] a;
    wire [15:0] y;

    // Instantiate DUT
    decoder_4to16 uut(
        .a(a),
        .y(y)
    );

    initial
    begin
        $monitor("Time=%0t | a=%b | y=%b", $time, a, y);

        a = 4'b0000; #10;
        a = 4'b0001; #10;
        a = 4'b0010; #10;
        a = 4'b0011; #10;

        a = 4'b0100; #10;
        a = 4'b0101; #10;
        a = 4'b0110; #10;
        a = 4'b0111; #10;

        a = 4'b1000; #10;
        a = 4'b1001; #10;
        a = 4'b1010; #10;
        a = 4'b1011; #10;

        a = 4'b1100; #10;
        a = 4'b1101; #10;
        a = 4'b1110; #10;
        a = 4'b1111; #10;

        $finish;
    end
endmodule
