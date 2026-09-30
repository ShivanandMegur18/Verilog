`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: mealy_nonoverlap_1010
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


module mealy_nonoverlap_1010(
    input clk,
    input rst,
    input din,
    output reg y
     );
     
     reg [1:0] state;
     
     parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10,
              S3 = 2'b11;

    always @(posedge clk or posedge rst)
    begin
        if (rst)
            state <= S0;
        else
            case (state)

                S0: begin
                    if (din)
                        state <= S1;
                    else
                        state <= S0;
                end

                S1: begin
                    if (din)
                        state <= S1;
                    else
                        state <= S2;
                end

                S2: begin
                    if (din)
                        state <= S3;
                    else
                        state <= S0;
                end

                S3: begin
                    if (din)
                        state <= S1;
                    else
                        state <= S0;
                end

                default: state <= S0;

            endcase
    end

    always @(*)
    begin
        y = 1'b0;

        if ((state == S3) && (din == 1'b0))
            y = 1'b1;
    end

endmodule
