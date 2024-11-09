`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 18:59:54
// Design Name: 
// Module Name: CPU
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



module CPU(
    input clk,
    input reset,
    output done,
    input [11:0] test_addr,
    output [15:0] mem_out
);
    parameter NOP=32'h0000001B;
    parameter CONTROL_DEASSERT = 21'b110000000000000000000;
//----------------------------------------------FETCH---------------------------------------------------------------------------------------
    //PC
    wire [31:0] PCin,PC,PCin_next,PCin_branch;
    wire PC_CE,PCSrc,stall;
    
    FF_Res_EN #(32) PC_reg(clk,reset,PC_CE,PCin,PC);
    Adder #(32) Adder_1(PC,32'd4,PCin_next);
    mux_2 #(32) PC_mux(PCin_next,PCin_branch,PCSrc,PCin);
    
    wire [31:0] IF_ID_Instr_in_pre,IF_ID_Instr,IF_ID_Instr_in;
    dist_mem_gen_0 Inst_memory (PC[9:2],IF_ID_Instr_in_pre);
    
    //Stalling mux
    mux_2 #(32) Stall_mux(IF_ID_Instr_in_pre,NOP,stall,IF_ID_Instr_in);
    
    //IF_ID_Pipeline_registers
    wire [31:0] IF_ID_PC;
    wire IF_ID_CE;
    FF_Res_EN #(32) IF_ID_Inst_reg(clk,reset,IF_ID_CE,IF_ID_Instr_in,IF_ID_Instr);
    FF_Res_EN #(32) IF_ID_PC_reg(clk,reset,IF_ID_CE,PC,IF_ID_PC);
    
   
//-------------------------------------------------DECODE------------------------------------------------------------------------------------
    
  //Register file
    wire MEM_WB_rwr;
    wire [4:0] IF_ID_Rs1,IF_ID_Rs2,IF_ID_Rd;
    wire [6:0] IF_ID_Opcode;
    wire [2:0] IF_ID_funct3;
    wire [31:0] MEM_WB_wr_dt;
    
    assign IF_ID_Rs1 = IF_ID_Instr[19:15];
    assign IF_ID_Rs2 = IF_ID_Instr[24:20];
    assign IF_ID_Rd = IF_ID_Instr[11:7];
    assign IF_ID_Opcode = IF_ID_Instr[6:0];
    assign IF_ID_funct3 = IF_ID_Instr[14:12];
        
    wire [31:0] ID_EX_RS1_data_in,ID_EX_RS2_data_in;
    wire [31:0] WB_Reg_data;
    wire [4:0] MEM_WB_Rd;
    Reg_file RF(clk,MEM_WB_rwr,reset,IF_ID_Rs1,IF_ID_Rs2,MEM_WB_Rd,WB_Reg_data,ID_EX_RS1_data_in,ID_EX_RS2_data_in);
    
    //Controller
    wire [1:0] ID_EX_ALUOp_in,ID_EX_ALUOp_in1;
    wire ID_EX_ASrc_in,ID_EX_BSrc_in,ID_EX_ALUSrc_in,ID_EX_memreg_in,ID_EX_dmr_in,ID_EX_dmw_in,ID_EX_rwr_in,ID_EX_jalr_in,ID_EX_Branch_in,ID_EX_Jump_in,ID_EX_halt_in,
         ID_EX_lw_in,ID_EX_lh_in,ID_EX_lhu_in,ID_EX_lb_in,ID_EX_lbu_in,ID_EX_sw_in,ID_EX_sh_in,ID_EX_sb_in;
    wire ID_EX_ASrc_in1,ID_EX_BSrc_in1,ID_EX_ALUSrc_in1,ID_EX_memreg_in1,ID_EX_dmr_in1,ID_EX_dmw_in1,ID_EX_rwr_in1,
    ID_EX_jalr_in1,ID_EX_Branch_in1,ID_EX_Jump_in1,ID_EX_halt_in1,ID_EX_lw_in1,ID_EX_lh_in1,ID_EX_lhu_in1,ID_EX_lb_in1,
    ID_EX_lbu_in1,ID_EX_sw_in1,ID_EX_sh_in1,ID_EX_sb_in1;
        
    Controller C(.Opcode(IF_ID_Opcode),
                 .funct3(IF_ID_funct3),
                 .ALUOp(ID_EX_ALUOp_in1),
                 .ASrc(ID_EX_ASrc_in1),
                 .BSrc(ID_EX_BSrc_in1),
                 .ALUSrc(ID_EX_ALUSrc_in1),
                 .memreg(ID_EX_memreg_in1),
                 .dmr(ID_EX_dmr_in1),
                 .dmw(ID_EX_dmw_in1),
                 .rwr(ID_EX_rwr_in1),
                 .jalr(ID_EX_jalr_in1),
                 .Branch(ID_EX_Branch_in1),
                 .Jump(ID_EX_Jump_in1),
                 .halt(ID_EX_halt_in1),
                 .lw(ID_EX_lw_in1),
                 .lh(ID_EX_lh_in1),
                 .lhu(ID_EX_lhu_in1),
                 .lb(ID_EX_lb_in1),
                 .lbu(ID_EX_lbu_in1),
                 .sw(ID_EX_sw_in1),
                 .sh(ID_EX_sh_in1),
                 .sb(ID_EX_sb_in1)
                 );
                 
    //Immediate generation unit
    wire [31:0] ID_EX_Imm_in;
    wire discont;
    Imm_gen IG(IF_ID_Instr,ID_EX_Imm_in);
    
    mux_2 #(21) Control_deassert_mux({{ID_EX_ALUOp_in1,ID_EX_ASrc_in1,ID_EX_BSrc_in1,ID_EX_ALUSrc_in1,ID_EX_memreg_in1,ID_EX_dmr_in1,ID_EX_dmw_in1,ID_EX_rwr_in1,
    ID_EX_jalr_in1,ID_EX_Branch_in1,ID_EX_Jump_in1,ID_EX_halt_in1,ID_EX_lw_in1,ID_EX_lh_in1,ID_EX_lhu_in1,ID_EX_lb_in1,
    ID_EX_lbu_in1,ID_EX_sw_in1,ID_EX_sh_in1,ID_EX_sb_in1}},
                                    CONTROL_DEASSERT,discont,
    {ID_EX_ALUOp_in,ID_EX_ASrc_in,ID_EX_BSrc_in,ID_EX_ALUSrc_in,ID_EX_memreg_in,ID_EX_dmr_in,ID_EX_dmw_in,ID_EX_rwr_in,
     ID_EX_jalr_in,ID_EX_Branch_in,ID_EX_Jump_in,ID_EX_halt_in,ID_EX_lw_in,ID_EX_lh_in,ID_EX_lhu_in,ID_EX_lb_in,
     ID_EX_lbu_in,ID_EX_sw_in,ID_EX_sh_in,ID_EX_sb_in});
    
    //ID_EX Pipeline registers
    wire [31:0] ID_EX_Instr,ID_EX_PC,ID_EX_Imm,ID_EX_RS1_data,ID_EX_RS2_data;
    wire [4:0] ID_EX_Rd,ID_EX_RS1,ID_EX_RS2;
    wire [1:0] ID_EX_ALUOp;
    wire ID_EX_ASrc,ID_EX_BSrc,ID_EX_ALUSrc,ID_EX_memreg,ID_EX_dmr,ID_EX_dmw,ID_EX_rwr,ID_EX_jalr,ID_EX_Branch,ID_EX_Jump,ID_EX_halt,
         ID_EX_lw,ID_EX_lh,ID_EX_lhu,ID_EX_lb,ID_EX_lbu,ID_EX_sw,ID_EX_sh,ID_EX_sb;   
    
    FF_Res #(32) ID_EX_Inst_reg(clk,reset,IF_ID_Instr,ID_EX_Instr);
    FF_Res #(32) ID_EX_PC_reg(clk,reset,IF_ID_PC,ID_EX_PC);
    FF_Res #(32) ID_EX_Imm_reg(clk,reset,ID_EX_Imm_in,ID_EX_Imm);
    
    FF_Res #(32) ID_EX_RS1_data_reg(clk,reset,ID_EX_RS1_data_in,ID_EX_RS1_data);
    FF_Res #(32) ID_EX_RS2_data_reg(clk,reset,ID_EX_RS2_data_in,ID_EX_RS2_data);
    
    FF_Res #(5) ID_EX_RS1_reg(clk,reset,IF_ID_Rs1,ID_EX_RS1);
    FF_Res #(5) ID_EX_RS2_reg(clk,reset,IF_ID_Rs2,ID_EX_RS2);
    FF_Res #(5) ID_EX_Rd_reg(clk,reset,IF_ID_Rd,ID_EX_Rd);
    
    FF_Res #(21) ID_EX_Control_reg(clk,reset,
                                   {ID_EX_ALUOp_in,ID_EX_ASrc_in,ID_EX_BSrc_in,ID_EX_ALUSrc_in,ID_EX_memreg_in,ID_EX_dmr_in,ID_EX_dmw_in,ID_EX_rwr_in,
                                    ID_EX_jalr_in,ID_EX_Branch_in,ID_EX_Jump_in,ID_EX_halt_in,ID_EX_lw_in,ID_EX_lh_in,ID_EX_lhu_in,ID_EX_lb_in,
                                    ID_EX_lbu_in,ID_EX_sw_in,ID_EX_sh_in,ID_EX_sb_in},
                                    {ID_EX_ALUOp,ID_EX_ASrc,ID_EX_BSrc,ID_EX_ALUSrc,ID_EX_memreg,ID_EX_dmr,ID_EX_dmw,ID_EX_rwr,ID_EX_jalr,ID_EX_Branch,
                                    ID_EX_Jump,ID_EX_halt,ID_EX_lw,ID_EX_lh,ID_EX_lhu,ID_EX_lb,ID_EX_lbu,ID_EX_sw,ID_EX_sh,ID_EX_sb});
                                    
                                    
//----------------------------------------------EXECUTE------------------------------------------------------------------------------------------------------------------
    //Forwarding MUXs
    wire [1:0] FA,FB;
    wire [31:0] WB_FIN_rd_data,MEM_WB_rd_data,EX_MEM_rd_data,AMUX_in,ALUMUX_in,A_in,B_in,BMUX_in,EX_MEM_Result;
    
    mux_4 #(32) ForwardA(FA,ID_EX_RS1_data,WB_FIN_rd_data,WB_Reg_data,EX_MEM_Result,AMUX_in); 
    mux_4 #(32) ForwardB(FB,ID_EX_RS2_data,WB_FIN_rd_data,WB_Reg_data,EX_MEM_Result,ALUMUX_in);
    
    //Adders and shifters
    wire [31:0] Imm_shifted,PCBranch1,PC_plus_4;
    Shifter S(ID_EX_Imm,Imm_shifted);   
    Adder Adder2(ID_EX_PC,Imm_shifted,PCBranch1);   
    Adder Adder3(ID_EX_PC,32'd4,PC_plus_4);
    
    //ALU input select muxes
    mux_2 #(32) AMUX(AMUX_in,ID_EX_PC,ID_EX_ASrc,A_in); 
    mux_2 #(32) ALUMUX(ALUMUX_in,ID_EX_Imm,ID_EX_ALUSrc,BMUX_in); 
    mux_2 #(32) BMUX(BMUX_in,32'd4,ID_EX_BSrc,B_in);
    
    //ALU Decoder and ALU
    wire [3:0] ALUControl;
    wire ge,lt,zero;
    wire [31:0] ALUResult;
    ALU_Decoder ALU_D(ID_EX_ALUOp,ID_EX_Instr[14:12],ID_EX_Instr[31:25],ALUControl);
    ALU #(32) ALU1(A_in,B_in,ALUControl,ge,lt,zero,ALUResult);
    
    wire [31:0] EX_MEM_Rd_data_in;
    mux_2 #(32) ALUResult_mux(ALUResult,PC_plus_4,ID_EX_jalr,EX_MEM_Rd_data_in);  
    
    //Branch evaluation
    Branch_evaluation BE(ID_EX_Instr[14:12],ID_EX_Branch,ID_EX_Jump,lt,ge,zero,PCSrc); 
    
    //Branch target selection mux
    mux_2 #(32) Branch_target_mux(PCBranch1,ALUResult,ID_EX_jalr,PCin_branch);     
    
    //EX_MEM Pipeline registers
    wire [31:0] EX_MEM_Instr,EX_MEM_RS2_data;
    wire [4:0] EX_MEM_Rd,EX_MEM_RS2;  
    wire EX_MEM_memreg,EX_MEM_dmr,ID_EX_MEM_dmw,EX_MEM_rwr,EX_MEM_lw,EX_MEM_lh,EX_MEM_lhu,EX_MEM_lb,
    EX_MEM_lbu,EX_MEM_sw,EX_MEM_sh,EX_MEM_sb;
    
    FF_Res #(32) EX_MEM_Inst_reg(clk,reset,ID_EX_Instr,EX_MEM_Instr);
    FF_Res #(32) EX_MEM_RS2_data_reg(clk,reset,ALUMUX_in,EX_MEM_RS2_data);
    
    FF_Res #(5) EX_MEM_RS2_reg(clk,reset,ID_EX_RS2,EX_MEM_RS2);
    FF_Res #(5) EX_MEM_Rd_reg(clk,reset,ID_EX_Rd,EX_MEM_Rd);
    
    FF_Res #(32) EX_MEM_Result_reg(clk,reset,EX_MEM_Rd_data_in,EX_MEM_Result);
    
    FF_Res #(12) EX_MEM_Control_reg(clk,reset,{ID_EX_memreg,ID_EX_dmr,ID_EX_dmw,ID_EX_rwr,
    ID_EX_lw,ID_EX_lh,ID_EX_lhu,ID_EX_lb,ID_EX_lbu,ID_EX_sw,ID_EX_sh,ID_EX_sb},
    {EX_MEM_memreg,EX_MEM_dmr,ID_EX_MEM_dmw,EX_MEM_rwr,EX_MEM_lw,EX_MEM_lh,EX_MEM_lhu,EX_MEM_lb,
    EX_MEM_lbu,EX_MEM_sw,EX_MEM_sh,EX_MEM_sb});   
    
//-----------------------------------------------------MEMORY ACCESS---------------------------------------------------------------------------------------------                                       
    
    //Data memory mux
    wire [31:0] MEM_WB_memory_data,mem_wr_data,MEM_WB_Result;
    wire FS,MEM_WB_memreg,MEM_WB_dmr;
    wire [1:0] MEM_WB_Address_lsb;
    wire MEM_WB_lw,MEM_WB_lh,MEM_WB_lhu,MEM_WB_lb,MEM_WB_lbu;
    wire [31:0] MEM_WB_Instr;
    mux_2 #(32) DM_MUX(EX_MEM_RS2_data,MEM_WB_memory_data,FS,mem_wr_data);
    
    //Data memory
    Data_memory DM(.clk(clk),
    .lw(MEM_WB_lw),
    .lh((done||reset)?1'b1:MEM_WB_lh),
    .lhu(MEM_WB_lhu),
    .lb(MEM_WB_lb),
    .lbu(MEM_WB_lbu),
    .sw(EX_MEM_sw),
    .sh(EX_MEM_sh),
    .sb(EX_MEM_sb),
    .dmr((done||reset)?1'b1:MEM_WB_dmr),
    .dmw(ID_EX_MEM_dmw),
    .addr_MEM((done||reset) ? test_addr:EX_MEM_Result[11:0]),
    .addr_WB((done||reset) ? test_addr[1:0]:MEM_WB_Address_lsb),
    .data_in(mem_wr_data),
    .data_out(MEM_WB_memory_data));
    
    assign mem_out = MEM_WB_memory_data[15:0];
    //MEM_WB Pipeline registers
    
    FF_Res #(32) MEM_WB_Inst_reg(clk,reset,EX_MEM_Instr,MEM_WB_Instr);
    FF_Res #(32) MEM_WB_Result_reg(clk,reset,EX_MEM_Result,MEM_WB_Result);
    FF_Res #(5) MEM_WB_Rd_reg(clk,reset,EX_MEM_Rd,MEM_WB_Rd);
    FF_Res #(8) MEM_WB_Control_reg(clk,reset,{EX_MEM_memreg,EX_MEM_dmr,EX_MEM_rwr,EX_MEM_lw,EX_MEM_lh,EX_MEM_lhu,EX_MEM_lb,EX_MEM_lbu},
                                   {MEM_WB_memreg,MEM_WB_dmr,MEM_WB_rwr,MEM_WB_lw,MEM_WB_lh,MEM_WB_lhu,MEM_WB_lb,MEM_WB_lbu});
    FF_Res #(2) MEM_WB_Address_lsb_reg(clk,reset,EX_MEM_Result[1:0],MEM_WB_Address_lsb);
//------------------------------------------WRITE BACK----------------------------------------------------------------------
    //Register file data mux
    mux_2 #(32) RFMUX(MEM_WB_Result,MEM_WB_memory_data,MEM_WB_memreg,WB_Reg_data);
    
    //WB_FIN Pipeline registers
    wire WB_FIN_dmr,WB_FIN_rwr;
    wire [4:0] WB_FIN_Rd;
    wire [31:0] WB_FIN_Instr;
    FF_Res #(32) WB_FIN_rd_data_reg(clk,reset,WB_Reg_data,WB_FIN_rd_data);
    FF_Res #(2) WB_FIN_Control_reg(clk,reset,{MEM_WB_dmr,MEM_WB_rwr},{WB_FIN_dmr,WB_FIN_rwr});
    //FF_Res #(5) WB_FIN_Rd_reg(clk,reset,MEM_WB_Rd,WB_FIN_Rd);
    FF_Res #(32) WB_FIN_Instr_reg(clk,reset,MEM_WB_Instr,WB_FIN_Instr);
    
//-----------------------Forwarding unit----------------------------------------
    Forwarding_unit_2 FU(ID_EX_Instr,EX_MEM_Instr,MEM_WB_Instr,WB_FIN_Instr,EX_MEM_rwr,MEM_WB_rwr,WB_FIN_rwr,
                         FA,FB,FS);

//---------------------------Stalling unit---------------------------------
    
    wire IF_ID_CE_stall, PC_CE_stall;
    Stalling_unit SU(ID_EX_Instr,IF_ID_Instr,ID_EX_dmr,PCSrc,discont,stall,IF_ID_CE_stall, PC_CE_stall);
    assign IF_ID_CE = (IF_ID_CE_stall && (!ID_EX_halt_in));
    assign PC_CE = (PC_CE_stall && (!ID_EX_halt_in));
    assign done=ID_EX_halt;
endmodule
