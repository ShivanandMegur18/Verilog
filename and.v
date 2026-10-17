`timescale 1ns / 1ps


module inverter (
    input A,
    output Y
);

    supply1 VDD;
    supply0 GND;

    pmos p1(Y, VDD, A);
    nmos n1(Y, GND, A);

endmodule
