`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: decoder_3to8_tb
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


module decoder_3to8_tb(

    );
    reg  [2:0] a;
    wire [7:0] y;

    decoder_3to8 uut(
        .a(a),
        .y(y)
    );

    initial
    begin
        $monitor("Time=%0t | a=%b | y=%b", $time, a, y);

        a = 3'b000; #10;
        a = 3'b001; #10;
        a = 3'b010; #10;
        a = 3'b011; #10;
        a = 3'b100; #10;
        a = 3'b101; #10;
        a = 3'b110; #10;
        a = 3'b111; #10;

        $finish;
    end

    
endmodule
