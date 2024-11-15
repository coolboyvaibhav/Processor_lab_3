`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:03:06
// Design Name: 
// Module Name: mux_2
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


module mux_2 #(parameter N=32)(
    input [N-1:0] in0,
    input [N-1:0] in1,
    input sel,
    output [N-1:0] out
    );
    
    assign out = sel? in1:in0;
endmodule
