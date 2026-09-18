# ece-128-lab-2
ECE 128 Lab 2. Design and Implementation of a Four-Bit Carry Look Ahead Adder and a Four-Bit Ripple Carry Adder using a One-Bit Full Adder.

### Project Description
We were tasked with implementing a 1 bit full adder in verilog and utilize that design to make a 4 bit ripple carry adder and carry look ahead adder. To accomplish that, we made the truth table for and block diagrams so we could understand how the designs should work on a high level and get an equation needed for the design. Finally, we implemented the design on an fpga.

### Instructions
There are two design files, carry_look_ahead_adder.v and ripple_carry_adder.v. Both of these files use a one bit full adder module to structurally implement the carry look ahead adder and ripple carry adder. In order to run the simulation for the indented multi-bit full adder implementation, one must insatiate the correct module from either one of the design source files in the testbench, full_adder_4bit_tb.v. The modules from both source files have the same name as the design files without the .v. The testbench is set up to do 5 + 3, 2 + 1, and 15 + 1, but any addition with 4 bits can be done by editing the testbench.
