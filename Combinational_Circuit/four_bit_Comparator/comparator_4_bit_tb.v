`timescale 1ns / 1ps

module comparator_4_bit_tb();
    reg [3:0] A, B;
    wire A_greater, A_less, A_equal;

Comparator_4_bit uut(A, B, A_greater, A_less ,A_equal);

initial begin
    $monitor("A=%d B=%d | A>B=%b A<B=%b A==B=%b",
              A, B, A_greater, A_less, A_equal);

    A = 4'd10; B = 4'd5;
    #10;

    A = 4'd3; B = 4'd8;
    #10;

    A = 4'd7; B = 4'd7;
    #10;

    $finish;
end

endmodule
