// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct 14 19:29:35 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/MTECH/sem-3/PSD/current_material/assignments/assignment_3/project_1/project_1.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [1:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [1:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7517 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "2" *) 
  (* C_WEB_WIDTH = "2" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[15:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19840)
`pragma protect data_block
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
dvsW0Q==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
