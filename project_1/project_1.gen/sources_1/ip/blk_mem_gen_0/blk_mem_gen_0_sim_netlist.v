// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct 14 19:19:28 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/MTECH/sem-3/PSD/current_material/assignments/assignment_3/project_1/project_1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
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
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.406099 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
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
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20240)
`pragma protect data_block
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
ilL1XwQ=
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
