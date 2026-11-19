`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: tb_SR_Latch_Nor
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


module tb_SR_Latch_Nor;

reg S, R;
wire Q;

// DUT Instantiation
SR_Latch_Nor uut (
    .S(S),
    .R(R),
    .Q(Q)
);

// Stimulus
initial
begin
    $monitor("Time=%0t | S=%b R=%b | Q=%b", $time, S, R, Q);

    // Test 1: Hold
    S = 0; R = 0;
    #10;

    // Test 2: Reset
    S = 0; R = 1;
    #10;

    // Test 3: Set
    S = 1; R = 0;
    #10;

    $finish;
end

endmodule
