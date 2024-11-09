`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 19:16:20
// Design Name: 
// Module Name: BRAM
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


module BRAM(
    input clk,              // Clock
    input [3:0] we,         // Write enable signals for each byte (4 bits)
    input [11:0] addr_MEM,  // Memory address (12 bits)
    input [31:0] dina,      // Data input (32 bits)
    output [31:0] douta     // Data output (32 bits)
);

// Instantiating four `blk_mem_gen_0` for each byte of data (similar to your distributed RAM example)

// Byte 0 - Lower byte
blk_mem_gen_0 data_mem_1 (
    .clka(clk),              // Clock A
    .ena(1'b1),              // Enable A (always enabled)
    .wea(we[0]),             // Write enable for byte 0
    .addra(addr_MEM[11:2]),  // Address A (byte aligned)
    .dina(dina[7:0]),        // Data input (byte 0)
    .clkb(clk),              // Clock B (if dual-port, same clock)
    .enb(1'b1),              // Enable B (always enabled)
    .addrb(addr_MEM[11:2]),  // Address B (byte aligned)
    .doutb(douta[7:0])       // Data output (byte 0)
);

// Byte 1 - Second byte
blk_mem_gen_1 data_mem_2 (
    .clka(clk),              // Clock A
    .ena(1'b1),              // Enable A (always enabled)
    .wea(we[1]),             // Write enable for byte 1
    .addra(addr_MEM[11:2]),  // Address A (byte aligned)
    .dina(dina[15:8]),       // Data input (byte 1)
    .clkb(clk),              // Clock B (same clock)
    .enb(1'b1),              // Enable B (always enabled)
    .addrb(addr_MEM[11:2]),  // Address B (byte aligned)
    .doutb(douta[15:8])      // Data output (byte 1)
);

// Byte 2 - Third byte
blk_mem_gen_2 data_mem_3 (
    .clka(clk),              // Clock A
    .ena(1'b1),              // Enable A (always enabled)
    .wea(we[2]),             // Write enable for byte 2
    .addra(addr_MEM[11:2]),  // Address A (byte aligned)
    .dina(dina[23:16]),      // Data input (byte 2)
    .clkb(clk),              // Clock B (same clock)
    .enb(1'b1),              // Enable B (always enabled)
    .addrb(addr_MEM[11:2]),  // Address B (byte aligned)
    .doutb(douta[23:16])     // Data output (byte 2)
);

// Byte 3 - Upper byte
blk_mem_gen_3 data_mem_4 (
    .clka(clk),              // Clock A
    .ena(1'b1),              // Enable A (always enabled)
    .wea(we[3]),             // Write enable for byte 3
    .addra(addr_MEM[11:2]),  // Address A (byte aligned)
    .dina(dina[31:24]),      // Data input (byte 3)
    .clkb(clk),              // Clock B (same clock)
    .enb(1'b1),              // Enable B (always enabled)
    .addrb(addr_MEM[11:2]),  // Address B (byte aligned)
    .doutb(douta[31:24])     // Data output (byte 3)
);

endmodule

