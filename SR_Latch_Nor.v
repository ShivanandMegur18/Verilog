`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: SR_Latch_Nor
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


module SR_Latch_Nor(
    input S,
    input R,
    output reg Q
);
always @(*)
begin
    if (S == 1'b1 && R == 1'b0)
        Q = 1'b1;

    else if (S == 1'b0 && R == 1'b1)
        Q = 1'b0;

    else if (S == 1'b0 && R == 1'b0)
        Q = Q;
    
    
    // S=1 and R=1 is forbidden
 
end

endmodule
