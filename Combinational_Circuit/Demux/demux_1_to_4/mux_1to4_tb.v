`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:  
// Design Name: 
// Module Name: mux_1to4_tb
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


module mux_1to4_tb(

    );
    
    reg [1:0] s;
    reg in;
    wire [3:0] y;
    
    demux_1to4 dut(s, in , y);
    
    initial
    begin
    
    $monitor("Time=%0t | S=%b | IN=%b | Y=%b", $time, s, in, y);

        s = 2'b00;
        in = 1'b0;
        #10;

        s = 2'b00;
        in = 1'b1;
        #10;

        s = 2'b01;
        in = 1'b0;
        #10;

        s = 2'b01;
        in = 1'b1;
        #10;

        s = 2'b10;
        in = 1'b0;
        #10;

        s = 2'b10;
        in = 1'b1;
        #10;
        
        s = 2'b11;
        in = 1'b0;
        #10;

        s = 2'b11;
        in = 1'b1;
        #10;

        $finish;
                 
     end
     
endmodule
