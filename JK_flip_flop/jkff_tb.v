`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2026 18:40:23
// Design Name: 
// Module Name: jkff_tb
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


`timescale 1ns/1ps

module tb_jkff;

    // Inputs
    reg j, k, clk;

    // Outputs
    wire q, qb;

    // Instantiate the DUT
    jkff DUT (
        .q(q),
        .qb(qb),
        .j(j),
        .k(k),
        .clk(clk)
    );

    // Clock generation: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;

    // Waveform dump
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_jkff);
    end

    // Stimulus
    initial begin
        $display("Time\tj\tk\tq\tqb");
        $monitor("%0t\t%b\t%b\t%b\t%b", $time, j, k, q, qb);

        // Initialize
        j = 0; k = 0;
        #10;              // HOLD state, q retains previous value (starts as x)
        j = 0; k = 1;
        #10;              // RESET state, q <= 0
        j = 1; k = 0;
        #10;              // SET state, q <= 1
        j = 0; k = 0;
        #10;              // HOLD state, q retains last value (1)
        j = 1; k = 1;
        #10;              // TOGGLE state, q <= ~q
        j = 1; k = 1;
        #10;              // TOGGLE again, q flips back
        j = 0; k = 1;
        #10;              // RESET again
        j = 1; k = 1;
        #10;              // TOGGLE
        j = 1; k = 1;
        #10;              // TOGGLE

        #10 $finish;
    end

endmodule
