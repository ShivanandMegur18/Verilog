`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2026 11:50:54
// Design Name: 
// Module Name: fulladder
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


module full_adder(
    input A,
    input B,
    input Cin,
    output reg Sum,
    output reg Cout
);

always @(*) begin

    case ({A,B,Cin})

        3'b000: {Cout,Sum} = 2'b00;
        3'b001: {Cout,Sum} = 2'b01;
        3'b010: {Cout,Sum} = 2'b01;
        3'b011: {Cout,Sum} = 2'b10;
        3'b100: {Cout,Sum} = 2'b01;
        3'b101: {Cout,Sum} = 2'b10;
        3'b110: {Cout,Sum} = 2'b10;
        3'b111: {Cout,Sum} = 2'b11;

        default: {Cout,Sum} = 2'b00;

    endcase

end

endmodule
