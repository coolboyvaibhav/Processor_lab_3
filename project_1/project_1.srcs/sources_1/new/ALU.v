`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 18:58:31
// Design Name: 
// Module Name: ALU
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



module ALU #(parameter WIDTH=32)(
input [WIDTH-1:0]SrcA,
input [WIDTH-1:0]SrcB,
input [3:0] ALUControl,
output reg ge,
output reg lt,
output reg zero,
output reg [WIDTH-1:0] ALUResult
);

    reg signed [WIDTH-1:0]  SrcA_signed,SrcB_signed;
    
    parameter ADD=4'b0010, SUB=4'b0110, AND=4'b0000, OR=4'b0001,
              XOR=4'b0011, SLL=4'b0100, SRL=4'b0101,
              SRA=4'b0111, COMPLT=4'b1000,COMPGE=4'b1001,NOP=4'b1010;
   always@(*)
        begin
            SrcA_signed=SrcA;
            SrcB_signed=SrcB;
            ge=1'b0; lt=1'b0; zero=1'b0;
            case(ALUControl)
                ADD:    begin ALUResult = SrcA+SrcB;   end
                SUB:    begin ALUResult = SrcA-SrcB;   end
                AND:    begin ALUResult = SrcA&SrcB;   end
                OR:     begin ALUResult = SrcA|SrcB;   end
                XOR:    begin ALUResult = SrcA^SrcB;   end
                SLL:    begin ALUResult = SrcA<<SrcB;  end
                SRL:    begin ALUResult = SrcA>>SrcB;  end
                SRA:    begin ALUResult= SrcA_signed >>> SrcB;  end
                COMPLT: begin ALUResult=32'h0;lt = (SrcA_signed<SrcB_signed); end
                COMPGE: begin ALUResult=32'h0;ge = (SrcA_signed>=SrcB_signed); end
                NOP: ALUResult=32'h0;
                default: begin ALUResult=32'h0;  end
            endcase
            zero=(ALUResult==0);
        end
              
endmodule
