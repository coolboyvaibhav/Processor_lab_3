`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:01:58
// Design Name: 
// Module Name: Imm_gen
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


module Imm_gen(
input [31:0] Instr,
output reg [31:0] Imm
);

parameter R_INST = 7'b0110011, ADDI=7'b0010011, LOAD = 7'b0000011, STORE = 7'b0100011, BRANCH = 7'b1100011,
          JAL = 7'b1101111, JALR = 7'b1100111, NOP = 7'b0011011, HALT=7'b0011100;

always@(*)
    begin
         case(Instr[6:0])
            NOP,HALT,R_INST: Imm=32'd0; 
            ADDI,LOAD: Imm ={{20{Instr[31]}},Instr[31:20]};
            STORE: Imm ={{20{Instr[31]}},Instr[31:25],Instr[11:7]};
            BRANCH: Imm = {{20{Instr[31]}},Instr[31],Instr[7],Instr[30:25],Instr[11:8]};
            JAL: Imm = {{12{Instr[31]}}, Instr[31],Instr[19:12],Instr[20],Instr[30:21]};
            JALR: Imm = {{20{Instr[31]}},Instr[31:20]};
            default: Imm=32'd0;
         endcase         
    end
endmodule
