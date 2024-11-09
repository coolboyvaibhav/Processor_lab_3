`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:34:27
// Design Name: 
// Module Name: CPU_Wrapper
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



module CPU_Wrapper(
input clk_100MHz,
input rst,
output done,
output [3:0] Anode_activate,  
output [7:0] Led_out 
);
    wire clk;
    wire [15:0] mem_out;
    wire [11:0] test_addr;
    
    CLOCK_IP CIP(.clk_in1(clk_100MHz),.clk_out1(clk));
    
    CPU CPU1(.clk(clk),.reset(rst),.done(done),.test_addr(test_addr),.mem_out(mem_out));
    
    Seven_seg_cont SSC(
    .clk(clk),
    .rst(rst),
    .ResultReg(mem_out),
    .test_addr(test_addr),
    .Anode_activate(Anode_activate),  
    .Led_out(Led_out)
    );
    
endmodule

