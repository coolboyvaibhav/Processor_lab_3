`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:00:21
// Design Name: 
// Module Name: Data_memory
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



module Data_memory(
    input clk,
    input lw,
    input lh,
    input lhu,
    input lb,
    input lbu,
    input sw,
    input sh,
    input sb,
    input dmr,
    input dmw,
    input [11:0] addr_MEM,
    input [1:0] addr_WB,
    input [31:0] data_in,
    output [31:0] data_out
    );
    
    wire [3:0] WE;
    wire [31:0] data_out_inter;
    wire [31:0] data_in_inter;
    
//    blk_mem_gen_0 Block_0 (.clka(clk),.ena(1'b1),.wea(WE[0]),.addra(addr_MEM[11:2]),.dina(data_in_inter[7:0]),.douta(data_out_inter[7:0]));
//    blk_mem_gen_0 Block_1 (.clka(clk),.ena(1'b1),.wea(WE[1]),.addra(addr_MEM[11:2]),.dina(data_in_inter[15:8]),.douta(data_out_inter[15:8]));
//    blk_mem_gen_0 Block_2 (.clka(clk),.ena(1'b1),.wea(WE[2]),.addra(addr_MEM[11:2]),.dina(data_in_inter[23:16]),.douta(data_out_inter[23:16]));
//    blk_mem_gen_0 Block_3 (.clka(clk),.ena(1'b1),.wea(WE[3]),.addra(addr_MEM[11:2]),.dina(data_in_inter[31:24]),.douta(data_out_inter[31:24]));
    
    BRAM FullBlock(.clka(clk),.ena(1'b1),.wea(WE),.addra(addr_MEM[11:2]),.dina(data_in_inter),.douta(data_out_inter));
    
    store_hw STH(addr_MEM[1:0],sw,sh,sb,dmw,data_in,WE,data_in_inter);
    load_hw LDH (lw,lh,lhu,lb,lbu,dmr,addr_WB,data_out_inter[7:0],data_out_inter[15:8],data_out_inter[23:16],data_out_inter[31:24],data_out);
endmodule

