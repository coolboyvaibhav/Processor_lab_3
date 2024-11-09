`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:03:47
// Design Name: 
// Module Name: Seven_seg_cont
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



module Seven_seg_cont(
    input clk,
    input rst,
    input [15:0] ResultReg,
    output reg [11:0] test_addr,
    output reg [3:0] Anode_activate,  
    output reg [7:0] Led_out  //last bit for DP
);

    //Internal signals
    wire [1:0] LED_activating_counter;  //0-> LED1   1-> LED2   2-> LED3  3-> LED4
    reg [18:0] refresh_counter; // 19-bit for creating 10.5ms refresh period or 380Hz refresh rate
             // the first 2 MSB bits for creating 4 LED-activating signals with 2.6ms digit period
             
    reg [3:0]LED_HEX;
    reg [26:0] one_second_counter; // counter for generating 1 second clock enable
    wire one_second_enable;// one second enable for counting numbers
    
    always @(posedge clk)
    begin
        if(rst)
            one_second_counter <= 0;
        else begin
            if(one_second_counter>=49999999) 
                 one_second_counter <= 0;
            else
                one_second_counter <= one_second_counter + 1;
        end
    end 
    
    assign one_second_enable = (one_second_counter==49999999)?1:0;
    
    always @(posedge clk)
    begin
        if(rst) begin
            test_addr <= 12'd4; end
        else if(one_second_enable==1)
            if (test_addr == 12'd20) test_addr <= 12'd4;
            else
            test_addr <= test_addr + 12'd4;
    end
    
   always @(posedge clk)
    begin 
        if(rst==1)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end 
    assign LED_activating_counter = refresh_counter[18:17]; 
    //assign LED_activating_counter =2'b10;
    
    always @(*)
    begin
        case(LED_activating_counter)
        2'b00: begin
            Anode_activate = 4'b0111; 
            // activate LED1 and Deactivate LED2, LED3, LED4
            LED_HEX = ResultReg[15:12];
            // the first digit of remainder
              end
        2'b01: begin
            Anode_activate = 4'b1011; 
            // activate LED2 and Deactivate LED1, LED3, LED4
            LED_HEX =ResultReg[11:8];
            // the second digit of remainder
              end
        2'b10: begin
            Anode_activate = 4'b1101; 
            // activate LED3 and Deactivate LED2, LED1, LED4
            LED_HEX = ResultReg[7:4];
            // first digit of quotient
                end
        2'b11: begin
            Anode_activate = 4'b1110; 
            // activate LED4 and Deactivate LED2, LED3, LED1
            LED_HEX = ResultReg[3:0];
            // second digit of the quotient   
               end
        endcase
     end  
     
        
    always @(*)
    begin
        case(LED_HEX)
        4'b0000: Led_out = 8'b00000010; // "0"  02    
        4'b0001: Led_out = 8'b10011111; // "1"  9F
        4'b0010: Led_out = 8'b00100101; // "2"  25
        4'b0011: Led_out = 8'b00001101; // "3"  0D
        4'b0100: Led_out = 8'b10011001; // "4"  99
        4'b0101: Led_out = 8'b01001001; // "5"  49
        4'b0110: Led_out = 8'b01000001; // "6"  41
        4'b0111: Led_out = 8'b00011111; // "7"  1F
        4'b1000: Led_out = 8'b00000000; // "8"  00   
        4'b1001: Led_out = 8'b00001001; // "9"  09
        4'b1010: Led_out = 8'b00010001; // "A"  11
        4'b1011: Led_out = 8'b11000001; // "B"  01
        4'b1100: Led_out = 8'b01100011; // "C"  63
        4'b1101: Led_out = 8'b10000101; // "D"  03
        4'b1110: Led_out = 8'b01100001; // "E"  61
        4'b1111: Led_out = 8'b01110001; // "F"  71
        default: Led_out = 8'b00000010; // "0"  02
        endcase
    end
        
endmodule

