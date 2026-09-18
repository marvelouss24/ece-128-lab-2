# ece-128-lab-2
ECE 128 Lab 2. Design and Implementation of a Four-Bit Carry Look Ahead Adder and a Four-Bit Ripple Carry Adder using a One-Bit Full Adder in Verilog using Vivado and a Basys 3 FGPA board..

### Project Description
We were tasked with implementing a 1 bit full adder in verilog and utilize that design to make a 4 bit ripple carry adder and carry look ahead adder. To accomplish that, we made the truth table for and block diagrams so we could understand how the designs should work on a high level and get an equation needed for the design. Finally, we implemented the design on an fpga.

### Instructions
There are two design files, carry_look_ahead_adder.v and ripple_carry_adder.v. Both of these files use a one bit full adder module to structurally implement the carry look ahead adder and ripple carry adder. In order to run the simulation for the indented multi-bit full adder implementation, one must insatiate the correct module from either one of the design source files in the testbench, full_adder_4bit_tb.v. The modules from both source files have the same name as the design files without the .v. The testbench is set up to do 5 + 3, 2 + 1, and 15 + 1, but any addition with 4 bits can be done by editing the testbench.

In order to implement the FPGA, one must run the synthesis and implementation on Vivado setting whichever multi-bit adder design they want as the top design source. Once that is done, the bitstream can be ran and generated and the device can be programed used the constraints defined in the full_adder_4bit.xdc file. Using a Basys 3 FPGA board, the switches from right to left are defined as following: the carry in bit, 4 bits for the first addend, and then another 4 bits for the second addend. From right to to, the LEDs display the sum of the addition with a 5th led for the carry out. 
