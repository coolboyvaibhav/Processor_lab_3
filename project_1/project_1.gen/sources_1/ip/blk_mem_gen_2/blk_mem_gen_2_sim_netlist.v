// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct 14 19:19:27 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_2 -prefix
//               blk_mem_gen_2_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_2
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
  blk_mem_gen_2_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19968)
`pragma protect data_block
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
qvUOdNj2kCroYnRofrVrbg5z
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
