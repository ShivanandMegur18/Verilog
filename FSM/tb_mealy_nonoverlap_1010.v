`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: tb_mealy_nonoverlap_1010
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


module tb_mealy_nonoverlap_1010;

    reg clk;
    reg rst;
    reg din;
    wire y;

    // Instantiate DUT
    mealy_nonoverlap_1010 uut (
        .clk(clk),
        .rst(rst),
        .din(din),
        .y(y)
    );

    always #5 clk = ~clk;

    task send_bit;
        input bit_value;
        begin
            din = bit_value;
            #10;
            $display("Time=%0t  Input=%b  Output=%b  State=%b",
                     $time, din, y, uut.state);
        end
    endtask

    initial
    begin
        clk = 0;
        rst = 1;
        din = 0;

        #10;
        rst = 0;

        send_bit(1);
        send_bit(0);
        send_bit(1);
        send_bit(0);

        send_bit(1);
        send_bit(0);
        send_bit(1);
        send_bit(0);

        #10;
        $finish;
    end

endmodule
