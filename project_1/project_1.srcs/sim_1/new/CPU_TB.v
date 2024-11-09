`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:35:17
// Design Name: 
// Module Name: CPU_TB
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


module CPU_TB();
    reg clk,reset;
    wire done;
    wire [3:0] Anode_activate;
    wire [7:0] Led_out;
    
    CPU_Wrapper CW(.clk_100MHz(clk),
    .rst(reset),
    .done(done),
    .Anode_activate(Anode_activate),  
    .Led_out(Led_out));

    initial
        begin
            clk=1'b0;
            forever #5 clk=!clk;
        end
        
    initial
        begin
            reset = 1'b1;
            #105 reset=1'b0;

        end
endmodule

