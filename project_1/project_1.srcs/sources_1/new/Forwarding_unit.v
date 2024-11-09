`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:01:32
// Design Name: 
// Module Name: Forwarding_unit
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


module Forwarding_unit(
    input [31:0] ID_EX_Instruction,
    input [31:0] EX_MEM_Instruction,
    input [31:0] MEM_WB_Instruction,
    input [31:0] WB_FIN_Instruction,
    output reg [1:0] FA,
    output reg [1:0] FB,
    output FS
    );
    
    parameter R_INST = 7'b0110011, ADDI=7'b0010011, LOAD = 7'b0000011, STORE = 7'b0100011, BRANCH = 7'b1100011,
              JAL = 7'b1101111, JALR = 7'b1100111, NOP = 7'b0011011, HALT=7'b0011100;
              
    wire [4:0] ID_EX_Rs1, ID_EX_Rs2, EX_MEM_Rd, MEM_WB_Rd, WB_FIN_Rd, EX_MEM_Rs2;
    wire [6:0] ID_EX_Opcode, EX_MEM_Opcode, MEM_WB_Opcode, WB_FIN_Opcode;
    
    assign ID_EX_Opcode = ID_EX_Instruction[6:0];
    assign EX_MEM_Opcode = EX_MEM_Instruction[6:0];
    assign MEM_WB_Opcode = MEM_WB_Instruction[6:0];
    assign WB_FIN_Opcode = WB_FIN_Instruction[6:0];
    assign ID_EX_Rs1 = ID_EX_Instruction[19:15];
    assign ID_EX_Rs2 = ID_EX_Instruction[24:20];
    assign EX_MEM_Rs2 = EX_MEM_Instruction[24:20];
    assign EX_MEM_Rd = EX_MEM_Instruction[11:7];
    assign MEM_WB_Rd = MEM_WB_Instruction[11:7];
    assign WB_FIN_Rd = WB_FIN_Instruction[11:7];     
    
    always @(*) begin
        if((ID_EX_Opcode!=NOP)&&(ID_EX_Opcode!=HALT)&&(ID_EX_Opcode!=JAL)) begin     //Current Instruction
            if (((EX_MEM_Opcode == R_INST) || (EX_MEM_Opcode == ADDI) || (EX_MEM_Opcode == LOAD) || (EX_MEM_Opcode == JALR) || (EX_MEM_Opcode == JAL)) && (EX_MEM_Rd != 0) && (EX_MEM_Rd == ID_EX_Rs1))
                FA = 2'b11;
            else if (((MEM_WB_Opcode == R_INST) || (MEM_WB_Opcode == ADDI)  || (MEM_WB_Opcode == LOAD)|| (MEM_WB_Opcode == JALR) || (EX_MEM_Opcode == JAL)) && (MEM_WB_Rd != 0) && (MEM_WB_Rd == ID_EX_Rs1))
                FA = 2'b10;
            else if (((WB_FIN_Opcode == R_INST) || (WB_FIN_Opcode == ADDI)  || (WB_FIN_Opcode == LOAD)|| (WB_FIN_Opcode == JALR) || (EX_MEM_Opcode == JAL)) && (WB_FIN_Rd != 0) && (WB_FIN_Rd == ID_EX_Rs1))
                FA = 2'b01;
            else FA = 2'b00;
        end
        else 
            FA=2'b00;
    end   
    
    always@(*) begin
        if((ID_EX_Opcode == R_INST) || (ID_EX_Opcode == STORE) || (ID_EX_Opcode == BRANCH)) begin  //Current instruction
            if (((EX_MEM_Opcode == R_INST) || (EX_MEM_Opcode == ADDI) || (EX_MEM_Opcode == LOAD) || (EX_MEM_Opcode == JALR) || (EX_MEM_Opcode == JAL)) && (EX_MEM_Rd != 0) && (EX_MEM_Rd == ID_EX_Rs2))
                FB = 2'b11;
            else if (((MEM_WB_Opcode == R_INST) || (MEM_WB_Opcode == ADDI)  || (MEM_WB_Opcode == LOAD)|| (MEM_WB_Opcode == JALR) || (EX_MEM_Opcode == JAL)) && (MEM_WB_Rd != 0) && (MEM_WB_Rd == ID_EX_Rs2))
                FB = 2'b10;
            else if (((WB_FIN_Opcode == R_INST) || (WB_FIN_Opcode == ADDI)  || (WB_FIN_Opcode == LOAD)|| (WB_FIN_Opcode == JALR) || (EX_MEM_Opcode == JAL)) && (WB_FIN_Rd != 0) && (WB_FIN_Rd == ID_EX_Rs2))
                FB = 2'b01;
            else FB = 2'b00;           
        end
        else FB = 2'b00;
    end
    
    assign FS = (EX_MEM_Opcode == STORE) && (MEM_WB_Opcode == LOAD) && (MEM_WB_Rd != 0) && (MEM_WB_Rd == EX_MEM_Rs2);
endmodule
