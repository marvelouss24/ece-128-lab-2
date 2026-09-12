`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2026 03:05:52 PM
// Design Name: 
// Module Name: carry_look_ahead_adder
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

module full_adder(
    input A,
    input B,
    input CI,
    output SUM,
    output CO
);

wire a1, a2, a3;

and (a1, B, CI);
and (a2, A, CI);
and (a3, A, B);

xor (SUM, A, B, CI);
or (CO, a1, a2, a3);

endmodule

module carry_look_ahead_adder(
    input [3:0] A,
    input [3:0] B,
    input CI,
    output [3:0] SUM,
    output CO
);
 
wire [3:0] P;
wire [3:0] G;
wire [4:0] C;

assign P[0] = A[0] ^ B[0];
assign P[1] = A[1] ^ B[1];
assign P[2] = A[2] ^ B[2];
assign P[3] = A[3] ^ B[3];

assign G[0] = A[0] & B[0];
assign G[1] = A[1] & B[1];
assign G[2] = A[2] & B[2];
assign G[3] = A[3] & B[3];
    
assign C[0] = CI;
assign C[1] = G[0] | (P[0] & C[0]);
assign C[2] = G[1] | (P[1] & C[1]);
assign C[3] = G[2] | (P[2] & C[2]);
assign C[4] = G[3] | (P[3] & C[3]);

full_adder bit0(.A(A[0]), .B(B[0]), .CI(CI), .SUM(SUM[0]));
full_adder bit1(.A(A[1]), .B(B[1]), .CI(C[1]), .SUM(SUM[1]));
full_adder bit2(.A(A[2]), .B(B[2]), .CI(C[2]), .SUM(SUM[2]));
full_adder bit3(.A(A[3]), .B(B[3]), .CI(C[3]), .SUM(SUM[3]));

assign CO = C[4];
endmodule
