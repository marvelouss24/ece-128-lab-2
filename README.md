# ece-128-lab-2
ECE 128 Lab 2. Design and Implementation of a One-Bit Full Adder, Four-Bit Carry Look Ahead Adder, and a Four-Bit Ripple Carry Adder.

### Instructions
There are two design files, carry_look_ahead_adder.v and ripple_carry_adder.v. Both of these files use a one bit full adder module to structurally implement the carry look ahead adder and ripple carry adder. In order to run the simulation for the indented multi-bit full adder implementation, one must insatiate the correct module from either one of the design source files in the testbench, full_adder_4bit_tb.v. The modules from both source files have the same name as the design files without the .v. The testbench is set up to do 5 + 3, 2 + 1, and 15 + 1, but any addition with 4 bits can be done by editing the testbench.
