// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct 14 19:19:27 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20272)
`pragma protect data_block
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
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
