`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: sr_flip_flop_tb
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


module sr_flip_flop_tb(

    );
    
    reg clk, s, r;
    wire q;
    wire qbar;
    
    sr_flip_flop uut(.clk(clk), .s(s), .r(r), .q(q), .qbar(qbar));
    
    always #5 clk = ~clk;
    
    initial
    begin 
    clk = 1;
    s = 0;
    r = 0;
    
    #10;
    s = 0;
    r = 1;
    
    #10;
    s = 1;
    r = 0;
    
    #10;
    s = 1;
    r = 1;
    
    #10;
    $finish;
    
    end
    
    initial 
    begin
    $monitor("Time=%0t | clk=%b | s=%b | r=%b | q=%b | qbar=%b",
              $time, clk, s, r, q, qbar);
    
    end
    
endmodule
