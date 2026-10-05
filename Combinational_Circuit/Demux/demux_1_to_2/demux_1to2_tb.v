`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:  
// Design Name: 
// Module Name: demux_1to2_tb
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


module demux_1to2_tb(

    );
    
    reg s;
    reg in;
    wire [1:0] y;
    
    demux_1to2 dut(s, in, y);
    
    initial 
    begin
    
    $monitor("Time=%0t | S=%b | IN=%b | Y=%b",
                 $time, s, in, y);
    
    in = 0;
    s = 0;
    
    #10;
    in = 0;
    s = 1;
    
    #10;
    in = 1;
    s = 0;
    
    #10;
    in = 1;
    s = 1;
    
    #10;
    $finish;
    end 
    
endmodule
