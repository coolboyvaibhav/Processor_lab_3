`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:04:47
// Design Name: 
// Module Name: Stalling_unit
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



module Stalling_unit(
    input [31:0] ID_EX_Instruction,
    input [31:0] IF_ID_Instruction,
    input ID_EX_dmr,
    input PCSrc,
    output reg discont,
    output reg stall, 
    output reg IF_ID_CE,
    output reg PC_CE
    );
    
    parameter R_INST = 7'b0110011, ADDI=7'b0010011, LOAD = 7'b0000011, STORE = 7'b0100011, BRANCH = 7'b1100011,
              JAL = 7'b1101111, JALR = 7'b1100111, NOP = 7'b0011011, HALT=7'b0011100;    
    
    wire [6:0] ID_EX_Opcode, IF_ID_Opcode;
    wire [4:0] ID_EX_Rd, IF_ID_Rs1, IF_ID_Rs2;
        
    assign ID_EX_Opcode = ID_EX_Instruction[6:0];
    assign IF_ID_Opcode = IF_ID_Instruction[6:0];
    assign ID_EX_Rd = ID_EX_Instruction[11:7];
    assign IF_ID_Rs1 = IF_ID_Instruction[19:15];
    assign IF_ID_Rs2 = IF_ID_Instruction[24:20];
    
    always@(*)
        begin
            discont=1'b0; stall=1'b0; IF_ID_CE=1'b1;PC_CE=1'b1;
            
            //Branch Stall
            if(((ID_EX_Opcode == BRANCH)||(ID_EX_Opcode == JALR)||(ID_EX_Opcode == JAL))&&PCSrc)
                begin
                    discont=1'b1; stall=1'b1;
                end
//            else
//                begin
//                    discont=1'b0; stall=1'b0; IF_ID_CE=1'b1;PC_CE=1'b1;
//                end
            //Load stall
            //Rd matches with Rs1
            if((IF_ID_Opcode!=NOP)&&(IF_ID_Opcode!=HALT)&&(IF_ID_Opcode!=JAL))
                begin
                    if(ID_EX_dmr && (IF_ID_Rs1 == ID_EX_Rd))
                        begin
                            discont=1'b1; IF_ID_CE=1'b0; PC_CE=1'b0;
                        end
//                    else begin
//                        discont=1'b0; stall=1'b0; IF_ID_CE=1'b1;PC_CE=1'b1;
//                    end
                end
            
            //Rd matches with Rs2   
            if((IF_ID_Opcode==R_INST)||(IF_ID_Opcode==BRANCH))
                begin
                    if(ID_EX_dmr && (IF_ID_Rs2 == ID_EX_Rd))
                        begin
                            discont=1'b1; IF_ID_CE=1'b0; PC_CE=1'b0;
                        end
//                    else begin
//                        discont=1'b0; stall=1'b0; IF_ID_CE=1'b1;PC_CE=1'b1;
//                    end
                end             
        end
    
endmodule
