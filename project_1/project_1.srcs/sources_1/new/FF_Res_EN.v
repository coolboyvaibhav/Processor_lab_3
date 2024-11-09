`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:07:52
// Design Name: 
// Module Name: FF_Res_EN
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



module FF_Res_EN #(parameter WIDTH=16)
(
    input clk,
    input reset,
    input en,
    input [WIDTH-1:0] D,
    output reg [WIDTH-1:0] Q
    );
    
    always@(posedge clk)
        begin
            if(reset) Q<=0;
            else if(en) Q<=D;
        end
endmodule
