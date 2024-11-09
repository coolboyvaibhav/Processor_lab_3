`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:11:06
// Design Name: 
// Module Name: mux_4
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


module mux_4 #(parameter N=32)(
    input [N-1:0] in0,
    input [N-1:0] in1,
    input [N-1:0] in2,
    input [N-1:0] in3,
    input [1:0] sel,
    output [N-1:0] out
    );
    
    assign out = (sel == 2'b00) ? in0 :
                 (sel == 2'b01) ? in1 :
                 (sel == 2'b10) ? in2 :
                                  in3;
endmodule

