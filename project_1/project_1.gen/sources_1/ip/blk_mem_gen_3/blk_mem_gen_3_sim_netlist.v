// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct 14 19:19:27 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_3 -prefix
//               blk_mem_gen_3_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_3
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
  blk_mem_gen_3_blk_mem_gen_v8_4_8 U0
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
HZummnRAkBx9vVX40oEklZtI
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
