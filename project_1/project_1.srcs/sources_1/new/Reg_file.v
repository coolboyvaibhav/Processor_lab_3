`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:08:25
// Design Name: 
// Module Name: Reg_file
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



module Reg_file #(parameter WIDTH=32, NO_OF_REG = 32)
(
    input clk,RegWrite,reset,
    input [4:0] A1,A2,A3,
    input [WIDTH-1:0] WD,
    output [WIDTH-1:0] RD1,RD2,
    output [WIDTH-1:0] REG_OUT  // Output for the accessed register
    );
    
    integer k;
//    parameter NO_OF_REG=32;
    reg [WIDTH-1:0] REG_BANK [NO_OF_REG-1:0];
    always@(posedge clk) begin
        if(reset) begin
//            for(k=0;k<NO_OF_REG;k=k+1) begin
                REG_BANK[0]  <= 32'b0;
                REG_BANK[1]  <= 32'b0;
                REG_BANK[2]  <= 32'b0;
                REG_BANK[3]  <= 32'b0;
                REG_BANK[4]  <= 32'b0;
                REG_BANK[5]  <= 32'b0;
                REG_BANK[6]  <= 32'b0;
                REG_BANK[7]  <= 32'b0;
                REG_BANK[8]  <= 32'b0;
                REG_BANK[9]  <= 32'b0;
                REG_BANK[10] <= 32'b0;
                REG_BANK[11] <= 32'b0;
                REG_BANK[12] <= 32'b0;
                REG_BANK[13] <= 32'b0;
                REG_BANK[14] <= 32'b0;
                REG_BANK[15] <= 32'b0;
                REG_BANK[16] <= 32'b0;
                REG_BANK[17] <= 32'b0;
                REG_BANK[18] <= 32'b0;
                REG_BANK[19] <= 32'b0;
                REG_BANK[20] <= 32'b0;
                REG_BANK[21] <= 32'b0;
                REG_BANK[22] <= 32'b0;
                REG_BANK[23] <= 32'b0;
                REG_BANK[24] <= 32'b0;
                REG_BANK[25] <= 32'b0;
                REG_BANK[26] <= 32'b0;
                REG_BANK[27] <= 32'b0;
                REG_BANK[28] <= 32'b0;
                REG_BANK[29] <= 32'b0;
                REG_BANK[30] <= 32'b0;
                REG_BANK[31] <= 32'b0;   
        end
        else if(RegWrite && A3!=0) begin
            REG_BANK[A3]<=WD;
        end  
        else begin
            REG_BANK[0]  <= REG_BANK[0] ;
            REG_BANK[1]  <= REG_BANK[1] ;
            REG_BANK[2]  <= REG_BANK[2] ;
            REG_BANK[3]  <= REG_BANK[3] ;
            REG_BANK[4]  <= REG_BANK[4] ;
            REG_BANK[5]  <= REG_BANK[5] ;
            REG_BANK[6]  <= REG_BANK[6] ;
            REG_BANK[7]  <= REG_BANK[7] ;
            REG_BANK[8]  <= REG_BANK[8] ;
            REG_BANK[9]  <= REG_BANK[9] ;
            REG_BANK[10] <= REG_BANK[10];
            REG_BANK[11] <= REG_BANK[11];
            REG_BANK[12] <= REG_BANK[12];
            REG_BANK[13] <= REG_BANK[13];
            REG_BANK[14] <= REG_BANK[14];
            REG_BANK[15] <= REG_BANK[15];
            REG_BANK[16] <= REG_BANK[16];
            REG_BANK[17] <= REG_BANK[17];
            REG_BANK[18] <= REG_BANK[18];
            REG_BANK[19] <= REG_BANK[19];
            REG_BANK[20] <= REG_BANK[20];
            REG_BANK[21] <= REG_BANK[21];
            REG_BANK[22] <= REG_BANK[22];
            REG_BANK[23] <= REG_BANK[23];
            REG_BANK[24] <= REG_BANK[24];
            REG_BANK[25] <= REG_BANK[25];
            REG_BANK[26] <= REG_BANK[26];
            REG_BANK[27] <= REG_BANK[27];
            REG_BANK[28] <= REG_BANK[28];
            REG_BANK[29] <= REG_BANK[29];
            REG_BANK[30] <= REG_BANK[30];
            REG_BANK[31] <= REG_BANK[31];
        end     
    end
    
   assign RD1= (A1!=0)? REG_BANK[A1]: 0;
   assign RD2= (A2!=0)? REG_BANK[A2]: 0;
    assign REG_OUT = REG_BANK[1];  // Output for accessed register
endmodule
