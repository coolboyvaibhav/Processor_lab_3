`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 18:59:16
// Design Name: 
// Module Name: Controller
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



module Controller(
input [6:0] Opcode,
input [2:0] funct3,
output reg [1:0] ALUOp,
output reg ASrc,
output reg BSrc,
output reg ALUSrc,
output reg memreg,
output reg dmr,
output reg dmw,
output reg rwr,
output reg jalr,
output reg Branch,
output reg Jump,
output reg halt,
output reg lw,
output reg lh,
output reg lhu,
output reg lb,
output reg lbu,
output reg sw,
output reg sh,
output reg sb
);

    //Opcodes
    parameter R_INST = 7'b0110011, ADDI=7'b0010011, LOAD = 7'b0000011, STORE = 7'b0100011, BRANCH = 7'b1100011,
              JAL = 7'b1101111, JALR = 7'b1100111, NOP = 7'b0011011, HALT=7'b0011100;
    
    //ALUOp         
    parameter SUM=2'b00, B_TYPE=2'b01, OTHER=2'b11, R_TYPE=2'b10;
    
    parameter LW = 3'b010, LH=3'b001,LB = 3'b000, LBU = 3'b100, LHU = 3'b101;
    parameter SB = 3'b000, SH = 3'b001, SW = 3'b010;
    
    always@(Opcode or funct3)
        begin
            ALUOp=OTHER; ASrc=1'b0; BSrc=1'b0; ALUSrc=1'b0;memreg=1'b0;dmr=1'b0;dmw=1'b0;rwr=1'b0;
            jalr=1'b0; Branch=1'b0;Jump=1'b0;halt=1'b0; lw=1'b0; lh=1'b0; lhu=1'b0; lb=1'b0; lbu=1'b0; sw=1'b0;
            sh=1'b0; sb=1'b0; 
            case(Opcode)
                R_INST: begin ALUOp=R_TYPE; rwr=1'b1;end
                ADDI:begin ALUOp=SUM; rwr=1'b1; ALUSrc=1'b1; end
                JAL: begin ALUOp=SUM; rwr=1'b1; ASrc=1'b1; BSrc=1'b1;Jump=1'b1; end
                JALR: begin ALUOp=SUM; rwr=1'b1; ALUSrc=1'b1;Jump=1'b1; jalr=1'b1; end
                NOP: ALUOp=OTHER;
                HALT: begin ALUOp=OTHER; halt=1'b1; end
                BRANCH: begin ALUOp=B_TYPE; Branch=1'b1; end
                LOAD: begin ALUOp=SUM; rwr=1'b1; memreg=1'b1;ALUSrc=1'b1;dmr=1'b1;
                        case(funct3)
                            LW: lw=1'b1;
                            LH: lh=1'b1;
                            LHU: lhu=1'b1;
                            LB: lb=1'b1;
                            LBU: lbu=1'b1;
                            default: dmr=1'b0;
                        endcase
                 end
                 STORE: begin ALUOp=SUM;ALUSrc=1'b1;dmw=1'b1;
                            case(funct3)
                                SW: sw=1'b1;
                                SH: sh=1'b1;
                                SB: sb=1'b1;
                                default: dmw=1'b0;
                            endcase 
                 end
                 default : ALUOp=OTHER;
            endcase
        end         
              
endmodule

