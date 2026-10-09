`timescale 1ns / 1ps

module Comparator_4_bit(
    input [3:0] A,
    input [3:0] B,
    output A_greater,
    output A_less,
    output A_equal 
    );
    
    assign A_greater = (A > B);
    assign A_less    = (A < B);
    assign A_equal   = (A == B);
endmodule
