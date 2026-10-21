# 4-Bit Comparator Using Verilog HDL

## Overview

A 4-bit comparator is a combinational logic circuit that compares two 4-bit binary numbers, A and B, and determines whether A is greater than, less than, or equal to B.

## Features

* Compares two 4-bit binary inputs.
* Generates three outputs:

  * `A_gt_B`: A is greater than B.
  * `A_lt_B`: A is less than B.
  * `A_eq_B`: A is equal to B.
* Designed using Verilog HDL.
* Verified using a testbench.

## Verilog Code

```verilog
module comparator_4bit (
    input [3:0] A,
    input [3:0] B,
    output A_gt_B,
    output A_lt_B,
    output A_eq_B
);

    assign A_gt_B = (A > B);
    assign A_lt_B = (A < B);
    assign A_eq_B = (A == B);

endmodule
```

## Truth Table

| A    | B    | A_gt_B | A_lt_B | A_eq_B |
| ---- | ---- | ------ | ------ | ------ |
| 0101 | 0011 | 1      | 0      | 0      |
| 0010 | 0110 | 0      | 1      | 0      |
| 1001 | 1001 | 0      | 0      | 1      |
| 1111 | 1110 | 1      | 0      | 0      |
| 0000 | 0001 | 0      | 1      | 0      |

## Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave

## Project Structure

```text
4-bit-Comparator/
├── comparator_4bit.v
├── comparator_4bit_tb.v
└── README.md
```

## Learning Outcomes

* Understanding combinational logic circuits.
* Using relational operators in Verilog.
* Writing and simulating a Verilog testbench.
* Analyzing simulation waveforms.

## Author

**Shivanand Basavaraj Megur**

Electronics and Communication Engineering (ECE)

## License

This project is intended for educational purposes.
