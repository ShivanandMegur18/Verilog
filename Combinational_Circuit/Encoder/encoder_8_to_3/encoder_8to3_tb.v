`timescale 1ns / 1ps

module encoder_8to3_tb(

    );
    
    reg [7:0]din;
    wire [2:0]y;
    
    encode_8to3 dut(din, y);
    
    initial
    begin
    
    $monitor("time =%0b, din=%b, y=%b",$time, din, y);
    
    din = 8'b00000001;
    #10;
    din = 8'b00000010;
    #10;
    din = 8'b00000100;
    #10;
    din = 8'b00001000;
    #10;
    din = 8'b00010000;
    #10;
    din = 8'b00100000;
    #10;
    din = 8'b01000000;
    #10;
    din = 8'b10000000;
    #10;$finish;
    end
   
    
endmodule
