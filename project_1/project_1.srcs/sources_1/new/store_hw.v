`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:05:17
// Design Name: 
// Module Name: store_hw
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



module store_hw(
    input [1:0] addr,
    input sw,
    input sh,
    input sb,
    input dmw,
    input [31:0] data_32,
    output [3:0] WE,
    output [31:0] data_out
    );
    
    assign WE[0] = dmw ? ((sw | (sh & !addr[1]) | (sb & (addr == 2'b00)))):1'b0;
    assign WE[1] = dmw ? ((sw | (sh & !addr[1]) | (sb & (addr == 2'b01)))):1'b0;
    assign WE[2] = dmw ? (sw | (sh & addr[1]) | (sb & (addr == 2'b10))) : 1'b0;
    assign WE[3] = dmw ? (sw | (sh & addr[1]) | (sb & (addr == 2'b11))): 1'b0;
    
    assign data_out[7:0] = dmw ? data_32[7:0] : 8'b0;
    assign data_out[15:8] = dmw ? (sb ? (data_32[7:0]) : (data_32[15:8])): 8'b0;
    assign data_out[23:16] = dmw ? (sw ? data_32[23:16] : data_32[7:0]): 8'b0;
    assign data_out[31:24] = dmw ? (sw ? data_32[31:24] : (sh ? data_32[15:8] : data_32[7:0])): 8'b0;
    
endmodule