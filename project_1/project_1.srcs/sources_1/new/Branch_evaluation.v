`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 18:58:54
// Design Name: 
// Module Name: Branch_evaluation
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



module Branch_evaluation(
input [2:0] BF3,
input Branch,
input Jump,
input lt,
input ge,
input zero,
output reg PCSrc
);

parameter BF3_EQ = 3'b000, BF3_NE = 3'b001, BF3_LT = 3'b100, BF3_GE = 3'b101;

    always@(*)
        begin
            if(Jump)
                PCSrc=1'b1;
            else if(Branch)
                begin
                    case(BF3)
                        BF3_EQ: PCSrc=(zero==1'b1);
                        BF3_NE: PCSrc=(zero!=1'b1);
                        BF3_LT: PCSrc=(lt==1'b1);
                        BF3_GE: PCSrc=(ge==1'b1);
                        default : PCSrc=1'b0;
                    endcase                
                end
            else
                PCSrc=1'b0;
        end
        
endmodule
