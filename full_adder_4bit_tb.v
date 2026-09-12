`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2026 10:28:34 AM
// Design Name: 
// Module Name: full_adder_4bit_tb
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


module full_adder_4bit_tb;

wire [3:0] SUM; //output 
wire CO;
reg [3:0] A; //inputs
reg [3:0] B; //inputs
reg CI; //inputs

 
// Instantiate original module (named DUT {device under test}) 
carry_look_ahead_adder uut (A, B, CI, SUM, CO);

initial begin 
    #10 A=4'b0101;B=4'b0011;CI=0;
    #10 A=4'b0000;B=4'b0000;CI=0;
    
    #10 A=4'b0010;B=4'b0001;CI=0;
    #10 A=4'b0000;B=4'b0000;CI=0;
    
    #10 A=4'b1111;B=4'b0001;CI=0;
    #10 A=4'b0000;B=4'b0000;CI=0;
	#10 $stop;

end 
endmodule
