`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:02:32
// Design Name: 
// Module Name: load_hw
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


module load_hw(
    input lw,
    input lh,
    input lhu,
    input lb,
    input lbu,
    input dmr,
    input [1:0] addr,
    input [7:0] data_in_0,
    input [7:0] data_in_1,
    input [7:0] data_in_2,
    input [7:0] data_in_3,
    output reg [31:0] data_out
    );
    
    always@(*)
        begin
            if(dmr)
            begin
            data_out = 32'd0;
            if(lw) 
                begin 
                    
                    data_out = {data_in_3,data_in_2,data_in_1,data_in_0};
                end
            else if(lh||lhu)
                begin
                    
                    if(lh)
                        begin
                            if(addr[1])
                                begin
                                    data_out = {{16{data_in_3[7]}},data_in_3,data_in_2};
                                end
                            else
                                begin
                                    data_out = {{16{data_in_1[7]}},data_in_1,data_in_0};
                                end                            
                        end
                    else if(lhu)
                        begin
                            if(addr[1])
                                begin
                                    data_out = {{16{1'b0}},data_in_3,data_in_2};
                                end
                            else
                                begin
                                    data_out = {{16{1'b0}},data_in_1,data_in_0};
                                end                            
                        end                        
                end
            else if (lb||lbu)
                begin
                    
                    if(lbu)
                        begin
                            case(addr[1:0])
                            2'b00:  data_out = {{24{1'b0}},data_in_0};
                            2'b01:  data_out = {{24{1'b0}},data_in_1};
                            2'b10:  data_out = {{24{1'b0}},data_in_2};
                            2'b11:  data_out = {{24{1'b0}},data_in_3};
                            endcase
                        end
                    else if(lb)
                         begin
                            case(addr[1:0])
                            2'b00:  data_out = {{24{data_in_0[7]}},data_in_0};
                            2'b01:  data_out = {{24{data_in_1[7]}},data_in_1};
                            2'b10:  data_out = {{24{data_in_2[7]}},data_in_2};
                            2'b11:  data_out = {{24{data_in_3[7]}},data_in_3};
                            endcase
                        end                   
                end
           else
            begin
                
                data_out = 32'd0;
            end
           end 
           else begin //dmr not asserted
                
                data_out = 32'd0;            
           end
        end
endmodule

