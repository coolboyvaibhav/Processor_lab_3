`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 18:58:02
// Design Name: 
// Module Name: ALU_Decoder
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



module ALU_Decoder(
    input [1:0] ALUOp,
    input [2:0] funct3,
    input [6:0] funct7,
    output reg [3:0] ALUControl
);

    parameter SUM=2'b00, B_TYPE=2'b01, OTHER=2'b11, R_TYPE=2'b10;

    parameter ADD=4'b0010, SUB=4'b0110, AND=4'b0000, OR=4'b0001,
              XOR=4'b0011, SLL=4'b0100, SRL=4'b0101,
              SRA=4'b0111, COMPLT=4'b1000,COMPGE=4'b1001,NOP=4'b1010;
              
    parameter BF3_EQ = 3'b000, BF3_NE = 3'b001, BF3_LT = 3'b100, BF3_GE = 3'b101;
    parameter RF3_ADD = 3'b000, RF3_SUB = 3'b000, RF3_AND = 3'b111, RF3_OR = 3'b110, RF3_XOR = 3'b100,
              RF3_SLL = 3'b001, RF3_SRL = 3'b101, RF3_SRA = 3'b101;
    
    parameter RF7_ADD = 7'b0000000, RF7_SUB = 7'b0100000, RF7_SRL = 7'b0000000, RF7_SRA = 7'b0100000;    
    
    
    always@(*)
        begin
            case(ALUOp)
                SUM: ALUControl = ADD;
                B_TYPE: begin
                            case(funct3)
                                BF3_EQ: ALUControl = SUB;
                                BF3_NE: ALUControl = SUB;
                                BF3_LT: ALUControl = COMPLT;
                                BF3_GE: ALUControl = COMPGE;
                                default: ALUControl = NOP;
                            endcase
                        end
                R_TYPE: begin
                            case(funct3)
                                RF3_ADD,RF3_SUB : begin
                                    case(funct7)
                                        RF7_ADD: ALUControl = ADD;
                                        RF7_SUB: ALUControl = SUB;
                                        default: ALUControl = NOP;        
                                    endcase
                                end  
                                RF3_SRL,RF3_SRA : begin                                                                             
                                    case(funct7)                                                                                   
                                        RF7_SRL: ALUControl = SRL;                                                              
                                        RF7_SRA: ALUControl = SRA;                                                  
                                        default: ALUControl = NOP;                                                
                                    endcase                                                                           
                                end 
                                RF3_AND: ALUControl = AND;
                                RF3_OR:  ALUControl = OR; 
                                RF3_XOR: ALUControl = XOR;  
                                RF3_SLL: ALUControl = SLL;       
                                default: ALUControl = NOP;
                            endcase   
                         end 
                 OTHER: ALUControl = NOP; 
              endcase                                                                 
    end
endmodule
