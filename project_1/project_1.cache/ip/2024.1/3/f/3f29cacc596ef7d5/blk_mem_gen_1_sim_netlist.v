// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct 14 19:29:34 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19872)
`pragma protect data_block
BYyZz/eUMVSh1XhwPv52EWuxntaQ/ydHwkNInqo6kYqXa+DR3VSRu7XiPBVgOTimC6hXjGjYFJwQ
i5FmSDQgx1P2VSyGF5IF/eDKcV3nLJ/2Rz5o1sbElfdNKUJ4LzR5qZX7hAV/1CBmOZWX3kzvy1qm
xkHKwBThRAuqsiczQMw1TACIQhppmScT3TklTFiBQvMUm03Nz91IGAlPAoHNxXMuVVbYjTOfx2Kd
AXUOvwwqSP6DpphnseBe7T2IXShgNEFOy/ImOwdWd1Z4bLl3NHedXcN8Xr6aYeXk3yEbT4Dl2nvU
NfwTcsXVXyw1kwbD7uJb5tgZtJJVINWZb2z27l2thgmg7Np7ggXpcZ6cG/2DeBnOqC/0/vSJcqbg
w8zGkuOQyaKQptO8k75iDQ4gf1AuAxHgrgIl1KSacnzlO7X9AvBzJPdN5CQLvrIp6YeypLUZ3K5g
UJSmkqPt7lGKsi9GCMHeFDP5oAFo/fc2Q4PDrra7nKVo57XpEsYEeYM2ED14u+Kx1kIs3EwqwBYh
EJhQ5PmEJZm2GrmEs4+Prgaj6GnKSCsOwC3GLLMChtgL2DnyXY5miyKqesrcyJPocFQzAvsPYnG6
UDkYErH4Hvd3w2+vU+VLWGAOHgIx+/pur7+Xt78/weyHK2FnJg6YRd8sQtwMTVymswqYAeqxj+ts
R809+AnRGaJFvBoTTfbJQQtlGZTucSo07dr6XI8t0mpoPjgRdZwGAJR3CH29pktH4ryP9PZC/fKo
pJLzhZUq202tm81PHBa/LCUPsR0DuYnX0wBWumwKYj+gC0CjA0tzfV6zBXKskTinZ4LLkwSWDkS0
0QW+ez474/A9pSWpVhmzF0cUFMZJpv/Mm+5tvjQpNgSrlVrBFtrncY1wc8fvaEgAeippD6+0oJ66
imjKlT5lYKUseM3vWvK+fpowYdOSzuHcJkOWxHtp1se2dtkAT0KV7OgLzaWIR9zdcVAoPIFUrRNM
yi+6QUKQpEgCZT81O49C3Ma2DAfd8rWtfugDAFVIeqw8nB0yi7chMku5ElIh+7stCWCMdabfl0BB
hiN3vcR13yY9fZS9j5pSW+A6AgWkVaoSKwdMa4CA6n7CmGJvwPR6pYN8XN1wWHwZk+MzGrfrJXOV
infBHg0E7r7HASHD5Ub9vPUsLxCb0G09+B7odCDuXlLB+WDDjLbDJkY7ol996YMSbNXfwZlyTIlP
LVeiZ54oIpxgsAObDOVLDnlcTUb7qaSvAZ3V7vDOu+yLNYVa+QP5z/AlaiB30pOKjz+gMjl1ly0x
q6J6ggHMFiv3krxEBsjxaIuu5BLMq8IskKoFPbWtE9zEzZDv6aW+AfRViOpxlLefwzgdZoPVfs4A
IZPvDiwqpE4IOQTsZr/uP7hIw8Sd1q33jsM3I3enDTUy8RYs2Cc2ASmp4djpJEbBqLP4Qhg1vYS1
AMWrYJaktf7/gasZOajaS9CiwF70riqHgrPG3o1y0N2vMxTWrSJR33hjqL/36f+10th0XyRGyL94
+xYMl5+ojh+Q/bC7hIdufMrRJIgyMbRReVjLTbImnvK8Ux9hmD6J33Fzt7MY+syyGAV57UfPDQKA
EGp6ClU+0i9g7Cof8R8OWWev2EjppyQIfN3o+YBgUdbXqx7lKKYDHJ/qznLS7/WkHVCJfPDEhpMu
m1Lbp+KwFkIx7N438LRzVwODen4ciW6ugdC5/xPI3Flw7R3dDMhqS951MKotmbSWh0dyA10o/7cl
K8BIpB4CnmfMAjpF02z7+FI0tXe5HbDG9tY6Snvei8y7Lt/ZraP05o4yWDP0WqYoHp4XkwXp7bi1
0WPZeyEhUHEB1W5rz+iFuGylUEYzylrLlZAvXWLrmYiqdjkvG7KHj6q5YpgD3CC2YJlYCJ7tnbzj
ogbQQKgpALeohdzeIuRzQwaaMGHb9rR2JhGw3smRDilppZZkyv3mcer6PJ5sMMaksUMQS+bCPLCC
WmNPr9bRvWkd7KQPOANO7li7E4HeMT7lrdoWxrpmNp7lhXT24DG9fFY8319NKCkoCNScK4pjQJGC
ALMXdvYFV6VuBBzksMAIb9xIa6vT4TEvlsZ15YPdbR/B7pZnuIsBua1uvAdMTlbhUnWWUVPPZDsA
2GTknCoveD7yFlkpSmlCPCEE2Bw38IKAvKf36oGMNlYMJi+bh95ifRwoCh0Swiqot0HocCZSkWAY
VBzb7z95vIX4Y2ETHOnEL7jWsv5VJtt0wL4nAIZVyfw3ooLZjYjH7Ny1Cu6T0fTmhApWL6+1lLoI
jMFj1184fRkJqT/wI2MdHPFPzXRk0H48Yhs7YgxyeuXXQXOhlTZRq3gGS7390NtMpgyonxsCYi9A
2m3nUavgsc5P5qpwdoxoHR3DuRh6VDVNJe+VSE25U2g5hPHKRQ0oDwO/ueLj7hIdSddUeb8W0G0o
XxnNhyVVfhWStq7yqYoZkRsUo/nHo8Wxa9mwHw3dLzayxnrgR9VX8I4/l0pI0P3Th1PzmcBDAyEm
IudZz/pdN60GuAlAAB4DutoqRYuEQX49fUaLUInZkdCjobLFRWvILIAOe34TtXFbqaqAltlntF/6
2q1x5iMxiiWEi2B8RdLPvWShOWtKG7uYRVHRRg9e4P+AoH2wulwHrCmOtOBvk0653Mn+VgyTkZOL
tx1tEEO9O2u826p0LOZLUuRy7Xwpb2oOIViNUsixkzkEOSdDLU+aR4nfyXnmKHNpql8CQDVrMcek
qN8x5btuZX9PTmIsTpyE4RdpvpE5zAYJb0q16VZPsrafpOIONvYlkpjAf/s7JhG3J5znySwdZ/09
U5EBKNEL4LvGdMFvfkPGF0ObGBxRvUJX7WU8Mzpg9CAxfbvg4gBcjvqsodAvRTDBoZA8DT8R+SjD
Kqg7KXZfXe+147rl/TNQKxGVyYTl2kHF69ZrEcISRHdnk6TVvZcpuctggiym4ibUTODKDAG+rpef
PHR/o31C1w0b3fM7tUxIAWW+Q9nqP19i62aXrDIOQN+wf7ytdFxBdqVVVUCcbpe8znTNIop6d+W3
gHbJpFl/I2lv4m4/+8E7am/ttxxQTZctWcr3PfrxCooopta6CDbxx+udGke2fWKu8rW6i7srOAZA
frCxFb4ib9ukyfEI6EXPsrCtob6uRhEoM9xP0nC+arqjOd0vy7Fny4zwYNk6TLyy0helD4h6thbl
OKzRswS0XZ0kvu1JGUu3Zq5pdkqYypdqf0o//gGH8Z6/91B/4qNlvyoxRolrbntJDbNzIsGtB3Y2
lofmFWRM5demu+hZvZyxMcD4FA3cCH5Ss55XCuTp+sWlE8XdY94ztlp9xJd2utsQCK+hAygmmxue
FfTq6Fc2FnMzTtwSuAX7bYCvdMqB/MAhqwGR7SF5wAJLGIf9MJrajt7wTa4MDk2nMCRgNMUNA2ae
OtioKmoV73C6iTY27kbl9OUxJnAzA4Fy7RACDVKcSmSFtTsBxRXb0NmepEOBdsY3nR2Zb1EGUwxq
DyYJCK+S8aLNLUug2VPYLIBroDQf/NYpsnBGy+WWlMKZk28F/Fm8pDudsju1ndUkTqSSRAMRFYi/
8fN7IvjwTt+bs1PU4qaGCA92M/JX0m6z2aW8rK5AMFDSu97yJAgxic/uadjG6CE6dgj3nZY/IVew
KuA19xvFaiOZV7SaMIwA7GBi3Z/Z3gflDP0ErvpUB89PTm/jmndEBeJ/JGEi7lj9vcVVyfFBsgpi
NMFr3jTVuCEPLZzdM22T64Jpi09zeailsQ+DMa7qixJ4BcHPQ1uFqJ5TDVEKGpPzwopXvlgZxusD
7aTSM+GE2qMwGewDtYzyq6T90Zn3gjF/k7E7yh9Bn/ELM74v1sSjT6SW2RRPZk1VaxVRU076AKEN
O7TF06Emy6NK8RymgbTp0nGIuuRtsgryit1njrQ47M3r9UAHMfS4sCeMbK+5+kp5SmYacQawgYob
S+cQTBuofI5eU1ZIgkwc/oAluFH01j9tLl+8P+g4SMcSVK8mRYzJPP8/sJLxeuCLEPDT3xpmVeoA
HoKje0Lbz1e7TEAddPXlgOk4n0RyIi1w0I/P/kxjgGXzuc9Sv4vpfBRV4iLcu0WIiaFqsM/1T3xw
nj5KK/e6bD93waqY2Zx4m7DCGwEZBigj/8swl+UcaABGMYleAMHbokipP7JkZaW8vu9LK8vrJLZY
Mt32WLUmbWjARzMnI8Yg3TLjpfyL2TJfgAkFZRu12PCHAp6KUPWgE1ntfDf+H56KVK4xnGG3PK2H
JjAc9N68PdxJM0LmbrU/VrJL64/Q7eeL75MO6HBBpAPZYPTOUoTkEzaITVVZSaU1o6UrL3fX/nu1
Nd5GFxjaM5FLm4HuZYqCfKAvhe5VvmWyHewdBG96hIuwodGrGXjTU/qZpJLfKSbHBE/JzTwLFoma
SsXlFI3eGCcb5DmfpmH+NvVkEgOrM8L1xoWjMY0/VCFl2EOw9vqPepUL/O6D6GyayHcR4Kjwv8D8
NAhL6bwEqPv9u9HM3WxX++7/zXARciRtL9Vdp61HwwHXPWBMPXAwFWJ1UJujy45UnxViT2h+vbzv
1N7fdmuZBU1ofGKHhEraip67iFpynotGGtzu/KYymCmh8iFQR8yB9KWk5+uzQSAHuSwzI+3knZNC
GccFuMx8oqoqDyDaQNFsi8bJkJzkbSJ8tEOMCTurIQCMAhoyXgPUDMhFSizR+9pz4qNIMWHy6Hqh
ctsqwusVbVRvWF0AUHQn5xCye64ztVuaZ7GGc+mVHiNJXwdeX2c1zVonmIRr2DnRNQAyA+9nRfz1
oSLCzeTA8FZau7w93jEAy2XV4LqP54CgBAbgGovnQF22npkBRlAfVsOf7zTswWVQt//71031c4Bu
eFcw8d1pt2qyg3qAXuhVONuxRwUqY7g0pfuif/NsTZ8aumwW89M/u6XiL/mE8zAC2cvX56NVEwLD
F6zgUSKhUQKYHH0bakyVgDLqtt2ghrXI3GjLlzauVMs/y7MGrvH6AluRIR8oZ9oQWEf3gbVqOTMB
Vj6f0Jkz+buTEFQQTudNpVIci1ikqAy22UCwCJOrA/De+K1JC47wNADMYZyfyOshD0yzUbra0blM
KVlR8K5ZLLk46dnRB1UivnZMyHWoqlQ5/Kc+VGWmku/MJVeMrR0fJjA45ZVsNdVLaqSrxxMUoct+
jfZ4qNt3UI79znwmWUg6pUlQLF3QvCX/bgeYRB+pRtq5toD1SBeZ3S4GaPR5/okTqboHFCIfNqSn
171TV0RIsRg7n/+aVsOU3dJ3ZDmLPkeIohVWZa0VUStFAysqbWRwl+rdAr19OWLSW/bD7zLq+/Mu
S5P8M9BjNXldLiygVzd/E156fgJCr2FoipVpliSCysUtEpBDkYUyiqjShKfG5IMiKI4gEXJVB59F
Q/mlXxzd9EYJaDJUaZ9MIHk4mNTvfA2nbrq4d3Tmscv2YBRm3ZLZ+oB3JLiHlMth5QbWhGaDr9nd
5gBDmyL+3FHTXkRW6F2TJoopvHdd7qQKXlesRMtyl4m6Zpe4ywxLHil/IPLigMGDauqPv0Kzy1ZA
2M4D4n0oZSrVazb4VGsAdFZkNnzUjnq2wO0Ivgwn/CV6dzrk6fRqFeZ/KBxkDhSnbr//wXz70gID
blTtkmsgiWrD4uEImcyMXJs7Kbxw/sRIGY/nknUVHomunQPYANCO9bTEzQBKnCgUYfaEDvwJXEGE
CAY4ihsQb2C0EUv30b2PYa3Ggcn8LQwRD/K8nMWfDoseULwQni2lu0DJluxSuW12lDaqCE4DrCAC
MRNzh8FnrPmPXsKUjW4vFe4ohgsrGVQTRUuvdGDniU7EX2PS8JA8SGCl2W2kkoln9HSwKkvTUZwG
oMlcQfIGP5/RaYWrEeCCM9Xe9GxH0hYIpubTllz8BZDgPdlgkeZXC1cQH6qwT73vAkYvbo1y3Gl1
YssIb03jzmWCh3tXJIGdWPDBzLr9wFduTjDoKFSb4Q2mFfHD2vW+Y94uRBGo8uD/5EHEKwo1QIgo
tSFJ8efZJEw9hWj6Wk/1NXLyzkwtzsjG1r/JbgfnpsD1t206ZFOsCVIq6zVSPvpjKiFvj0zBGmps
LniipOA9xsPB3iOjedxKhgN0mSRcBkQooQ1dhrMUkuvxFW7uGhC99O+R5v1bWP6G1lhVy4o65hkt
ZThbse0TQ2oAgLGT/RUTldNpU2ZMPSC7u/JaEcKbpp0JHYUv0WCItD/SJallWpiMSVOWSmzYH7DJ
pZvSv0K57VG5pIOKiIfxcQ8e38vftG2rSNs7TfOFYKjNNIGgWWh5/zplQHTa9eVp5/jQUy1XZ/YS
nNZAabSXu8j2twqq3VZ/eVOVQGqvdsLaIqbzCgisTn02z77sk3Pni/FDY5cvEKpTb768UYEYT5A+
VXv2MgYORLh1kSOwohLynsyq7H3Fqz9NQgLLKnWBuu859x841d0eN20LBg8c8Y4kaHwVGJ7W6JRU
rMDXxKH0oC9zS8+G0i2a66v9unpNhZvNUoKAtxUUWAe0zI8kMlVoIcq46KUI0+GVOEZbk/FehDTV
cO4r6EnujyWPMYgC1Vk3H8tmC0EsZY/FGy9Gi4SP53BZ7AU4KEIlMHRaGtyCXskr3j8y+B6ktklk
QesKfhC1KMYfZuRqoC0LN1ztt1LQA3ZNSXu1uwhWdnSN6ucfnB/addGwBUETF5Jk8AM9hlxTUmt5
EUu8lB/wGwtv0z2rskCAiyo6BoUN9vSvXwjM9eNSqXoY9M0+dzCuOk8ait3kj9YAL14QFypnrvfT
3XrzydPS/J264SPSawIwkWlUJN+Tx2Chbcozb7OvDhTHka58mv+ouy9J8YmgGShSDIyMNP4cHUI1
cr4ISnqYZjjaVajvSrkqymcv7M2YVZ1Gn0btKvK0t3cS6mxDl+44ePh2uv1/8qUniUim1gJMPQ+3
lamkp9UV/yeBNMAX1W6UHLQ1I1FT0FjhNrZYedF+l15RODTnYSPm8/28Sjf4O7e9hTQCrkUUFE9x
SjTp0wVcGHRhXK/wRdm4oPODCk81zZHkMvby8elL6JokGP3VGI+fvbqmuXFdcfQkHDIB26vAG/SK
bG82W6rOgt1CmoOVbHVYf77ZdH2J9ufm3Jn1iVf4mkC2ttCqXHXiDFQJatTPTTUSnh6umsSsYlgk
IfbzKSZ6Jlgsh76yoNshBle9uKH6Lhth6y1QvPEjk4cdJoSu0tkaCQ0EODNlZc+PD0vn0fw9120q
OtyIYXkt1wdodgDbI3hk4VbsxoD1ncZqTTeLVRyOVzELaXaQ8RjauZuXaPPYzENg07qrvebWDQPX
SkbGWtL/4vUcM/hC5JymPE+1n34qzyuzDilg34hyegN/8Y7iitiA2JPNzqZ1XJ8tpTVHAfphTfVZ
wadoZ/LFROOIpyJ55CGEntvnpK02tWz1gmSIN1nXU38GZTGt6HwFOBaJChkmMv/cEn0vR6Ktetbh
4d/MyGrNHSvlrs/7crzr1yfE/eknrsbbN8WWoJ4dZm50n1DNmG6Db7T5zl099okIkWOZDQrmoD43
ON3OUq9j2ZYCKJVLYU9OeMWMawtYCnTkEfRoiKmAQwGzAEByG9By6Q9Mjb7pfuT179Vwdj2IyRD3
Tn3iX9Msj/e4C5Urw2pgwzE3qzeVw3lWgijYTTtJi1pSXtNIapXlv0liuSrD1npHQUAkwxQusR+L
wpPA/Pe5olMK8cVrowEH6/LltDyM8Iwq/c6S/cyT6a9tqOt69YHvD0YSZgZ/QhW1nAcYhFBacZZD
dJfWTuFsrYK0biJMm00/tFg32el6I+OVNGwER8YDHSxeIOBnNyxITlK2j+NPTer2uMju8yUwWrLn
JZgVMrXDXpusrMCFEesseITR2JbSst9eS7QhXWOEiudbyav41LgE4HDcWUb2Nz7HLylgRy0HMDaI
7XtsapeEMQpLmx099gysYjwE+n6HNBnW6DflLBvTyrkTpUCk0a3kSa8z1IZ7Gi/CMHdcm0d0rHtk
820Kpn0oboBOf0GAVc8XS3Es+HrzQ9hYfyjUFA5z+5OlEIFFnSU5rjKgHYTgeVqIFh2ezAJsYA/b
pKHf/0YJsbblDmPBSdov4pa4KLh73QaMJ3LePk1207l7k5b/5Z3c4l7yac7ZqzRUD6xseXtz3LGK
dbi6kTGAwc9ODBx7eRfBF45yYXxWgC1SVn7hnJYRfy6puKSMzku+zLGSOTKRNohu7A1IAxuLXb6F
cC0O5oagsypoW58XuhHFhi4sJP0ceYA4qXjdmLksrn/96t8KJaUkcaRwIo02DVUqW7e+0OWJ7BvC
mw10by2DTS8RiPfnoXHpnPc0idUy3F9wGrhviw7lLXEvplyOwkiISUsQ2WB10TtxeaARLawF9PVe
FfpRiWtstqqTjJkXf253euKLym89iFWNJDOF42o4CZ13dBi8VTfb4vlbIeTo/tcHIPHwO2SKkVB3
p2nFGABb5hGhFBAM3E1jf2x97wEG1CH87psWLhTQ0Q/Gpp0rFZTpOv7v2Ma25sHOujnPfhzGfi4D
qB1iTzHMrDniqy6qUEND5N6/sVKYslGE52XBpYWM9YZY6xKDds4DskjcziC2sBVE5jPPjSMh9W66
NI3XYcrDqeocpJxuf2/2tpulNESrJguCUP9TMzdxgdjAPo3PcrLtL+kKu6yO0hq6lo9vdgy2nfH2
8CNRrcjBONpL0qLKclTg9XoMh1rdfBiIvXxEImAyIUnzGjHu/vlFWnrKmeA8aw8tMp54u6YPnGVs
3R31omprA+d59otJzZxJOBi78dVGrCxcln1BTfBuvi6yEQpkVy2Euseojioy2BWSCpe/Epz6OEKm
hP9ilmTPDJbKqNs/9Sd375boapdy7TOs9Muyr83yJw1KKrsjuVjOlpiO72U5TJUFY4GVbulQlswB
zKwVz7xusPLLCM178OfkugDgHQ6qzj9oTQSYr5P1e/nKjdoaCKybdjr6sF7J1eN23hDYOfA4VQMc
7gaUOZegkRKxpWDxnwlGtQkTLrEMOCXNob84RLxrBPG0lrnTqUcylV9Cvk+1dtxekf/5UQSjfK/e
qKW0TTXxfqgTVgcUwhVvMQsfq3d8/LcVEklYKyxZ/qk+EHFGsNbOQ1oSsPxPq4hMeTwBi5r7GD13
UNb5Ms3wKWX6oZBZjKIiosnDS213Vj7vaJwlFK2QSRVfu1k+TXjvr/2niXh5lr0p+1laBDTf3LPb
vuKQF0iD183tZEHVTG/jujzewarAHL6LRvK0v7biChnq2OeTKxJdDcOl0M4b7qcZyRQIAzEYeaBr
fNl6rm6wwoiqx1i3X1oqVjTCYGlV22dp186izWDermxaINUlqGuJnX5MGLb4N+TD6a1JxShKu2ug
Uu5OhRVPSPyoraj6IYX24MgR85TBLaQFWhDJdriall/OeD7PSV1E73xrLSyUg1YKeR70eTdXUR/s
ZLICKOwYJDAnOA1JHrSTR+8b+fggTlnaugAcldf/Weqd4G59WTgl80sNwYtUaPl1Y1J0fmaaAcDa
MMe9P82NfmTXgSTiXuHrpslD8UxasXaXdK2rG3ogUX0e+vvBeBuX32kweiIRnyP6N/NB5kbxDfJ4
UqAlt1p3qpUQgwsoZCiY7ylYIi1fSoSu1Z5DXWP/Jqjp3qs2sugnMLhGMAGW3z+V1DuK+jUB6nsi
ZQsOElesYlnmDntbpdw1fHWUyjJrcL1BOjU6P0pyZexyRudGWmaIWLVytJ0FUNLWhsE+k+84kkBs
uwTmIny5OLHZcqx0obEJ+B4BLqnkJZb4fruwHDGO2KSWeTY4NqpM+gN3QFJYiaaSXDvtxqoKigA4
qXYxHiiDkk8HNuGsuFEOUB+LrPC7/mY271QSAsL/lodKRKx6PcVH47RxpN5f7RtR5ZrNGwApdTid
x/oEPLzt/L4hCUfbFI3+3BZR7VcSmQ7m4w87KKEumf2sMKZ/KdC0KUft6eY4ZSdVspKAS6DN4KEY
U8KmrSe0WUJSKx//SfQIvQxy6CIrxckwEFjkUEysOiSoN0r2cOiZX1OJulpyS4MROBobZjsqwqr4
l9RMIx6qvLNA84vxVD7so2pkawSxJkqpc8S14I08+P9h5xhzwkycmrtJuUyUQf/SkCSBcL2D8zfN
9JSSqj0+qUAKvLA16lq1483zhBD+DBv0Thiwi1+1NEqLux5jNLzTeedTRGQYtEbBMYtGEZ4qgHCW
+Kwf5nF0PqKCSAu+FS02ianpMeJFRM+YJ9DafaooAgPAIfpRSl+MvxTsdY3L62dj1KhUz/cIQ5Ni
dBudrZJRcWFhy5WWNUE7ffkL2lTiDGFf1zL+UF1aHVbm4KMVVuryBcxvLjPfRMBz3FgBI9VFBwkW
0FAK/vKKZQIFhAv2i3KgG1GTZIf4okyPK1Q7N5Sw1L0J9QMjZu3nyNdsgEV8M44GGXA4At2ayOM1
43w/u1ZGAp9BFb4BxZ00EnCnbaBvTDZF7EHQQXz1T+KPaPosS4RTB/299X4DQWuZKrh246SQsDvy
OPvXNiJ0L7+IfwZzLSM+l8LtAqwVwX0McUvNldVqifAsbOOo7edzj4fqToaxASSVl4AERS/KqSLk
CF70oPJA+gxmexnZLeCxgb+MX8LfYO1sILDaQZM1DwbaToDuz+YN+mYoHrF470rdlSCe81+SNXrn
pQbSCG+jEg7t63Q32sMq7nD7xqaZ/bmIc1f4voeBzqZpkvNZEdZI3O6lSSBzSF9KcnrBCWX4VZDi
aEh8h5t6TVoVtKr2wKXCa1TTwCChSyRdVkw7PeAOIVmjVljznHMkyZYxxTA3bINa/L6DfFEGColf
I4coV+me77pQJ3C/GYjjWyZ7HQeuI09V3lzw2b8b5Cj//w5R+C7Ltxpx7aRHIqM5MQrVOIjtFGZl
smPXwsmIKDZZxhUXpZbfx3hm04V1eDltYXfFdyCumEso1HTxd+2ayUEzDOr3geQU0FLylvPD7zdA
BFRPiZLiCL3aEWf8ozLfcMOqP/VYQ3JUwvKN/I6un1y9cFcHyEEabe2Bs39cINkH8/Voy+k1Q7o6
opGndh2qK/reqXZG7kRBaNxha7av7U1XeadzITmspt7tMBZrFP7rKnA3W29GD5Lyzo0BGWqXePiR
ZA3kjjgWG6qX1vomeVe7qrffDM0ddem+SthcAYMtk+XFMM8DODrMvm0an4HPSbZQVjCoeg66aYAw
zYOJrN4wCBHTYPYl98qm+UgyY2gy5fQI2dQJA+eNQleu5PiXCOUzZCN3XbyPe7XMKbkqxb+KtTzD
W/e9EpI9t+TcneJcz5CL+QfygIjaw408yUqyYULYKQzUEjV7lny5/ia01LPq/nEL3kXYpIWeMYHc
rbasRUpITkP1V3cbA3C+u7xPVbx3ouFKArqNdebLoflO7U5xpxpq/MUkb4IgsClHp4nnqGLOs1Va
LutcBvk+l9E7HsyaL+RJlDutobETIo2xdP4ZPbiCvX8ddj5JPnlvT4WdG02G76L2uF5qbTYD+EQM
0G0eKkXi8JjbfT9oAVOa01U0To2SUgbkkWXL7EFajf41yEoyNQAsmLFzE7Qt7HRSCkriUZj1YiZv
X8yX1E9JyGnAMJwGm4kNbwCAk1zL/nIof1lSI6rSQCCb0IOdZSgKvwLqdpRm45R9P2SPF8AUh7rX
/eQdvyiQW0vvSLgY0ZY+5BASFLmiUP7U3WPVcYWGW6A/ZriinVmq49S8mjFlylHpKz8JT2gO9aoZ
MrS1Lve2vPbwCkV+Kt3ljReibf0VEPPxTJ1KyoAer2jaRssMbatB29oeYZwalVyVRV+8zWwcqve5
sIxlaD+SVB0ccBKe6c5fpO0XygBiMDFStAm1sUmRz2O96PjVcbGtQPlQQd4S3W7g0pwbs8ETb0rq
qaUBkbCa+q/vPFwFS7bJghilSIh4FDlylWQrm9DO9QOfo6Xim9pT/X2+M+j8aFyCnnNHtttFwzhf
i8nwUgmIwwnC+F6Cm8MVAL6ioFUKUBf46cmIYLQi2RYzAbzyHwEp0tV3esP3OXxr5K9OXHoQmtQM
LksZcKfEy2q08eu2yjJcnhr1Yt6HvX80Jy16vTuVjhmdl51GxO6AJpinnHic2q0cLJ3ELVeFOK6X
NTkobxc3I5fwz7tej81ovK8YzdVmnRiuQOdS1Gp7Z1tzf5X+8qINgP1ld06uxqhLiDFtrr7biCYh
QB+c9ofFO2TCC1VkK8beipwsfrwEmXDv1Q2Ly19h2BWLE6pbDC02imr/uo1XF/3Ihtm/qlLUyNyz
/QKp9nQEGvWDWKHpwk3+ab2TLYjA5SCT+DbQorMr541GPC+j4WQMse2lN3mWBWxxLEvuFN54vq+T
a6tdP5kbbY4qGQdrdtmSXV81Uaxuu0wOmFF8JVcKftdgOgPzZyA5DHOT3JcRH1iZ3wMDuy/VMy2y
42IUkPTh2fcJrTJIlTxq5Ce+kjGsS4o1V3J+Q0o3RLS/0VSgNkkqzFpgPy7hPyxkWP9zEC95Cx1F
szsydOsOkLU/BTwhoYad/XL8g8UePxWsPVTd3kTInUXCXUOCJvD8TksBEoYDqe55NeynYvBHb7aG
ZAv1sgup/iJV0OB66weNAz4TEfujh9wonmvao7JGYcgnS9wTw5b2PRC4KVe0rwv+gABatBhjMn3l
a4r83ssFrMNy/ihKIXEu9oV66SDCzpr1i5hMrTOBFQBgta0RKuErUZKKoq+Fj6r6hJ7hZ261s7Ky
QO42KW7Vk1f5BppLsuVp2qUmTL93O3ulUq1ZjHKkxtp0s2i9iBaurDk7i6bS11u1HQcplRAbOdWk
TLddDlrZVSHoTab0V3bbgfe7RiJPZzxHuDN7A3UfqJmkLmwWWQK0vHuC+ToX39qKyFna0EjDB+lb
zVTy2N3E5uHWY/OKihs1l4QhF3P9cWyiLRjJIiDm4c10VNngP/kYSaLN9rznnRp4izs0Uzmmsnjp
4hNf6Q0fxuRli8W2bAtC9NEVn5yWPhYVDm4MFF/44jlq80N17z10nf91XTlHubQQNJ82se38s+jK
rxafGMnox3biBJRHu+uK6yDlepuyimyxNXCMDfreC5/YDJfXqafHpITEi71X9ZuHTjHkCn2LDbj9
zpDyjhLp+CCTxt885G7W86TroLUfuKOT4HcGbuP5K3RicGHqqzqU92o5fa4Ds1EMwogm+WUPsHcr
OVGx1s0vQQdJUxn3PJR6XLJv8ZS/AE0DL4QZbRJ1B0e/1R0GHbKcE7pa0NnNTZI/+lQxt5MeZPp7
067Em7puyhNSSVjC3EC91Xky8AuvDHhJOmj0vAHzF+57SD7oTT+Pby+P4I+a6lRBEKgwtkLgQyQB
mvlWxxD/Thy8N2K9lCcAcMP7gSId2BFEEYRKG/kpa0ZRGRpLYLWBR0TGnHG2Y7Lk7au0uP83t4g9
53cuHT5RyuGUJOn7zNWJxVWrr1u+FE/OEVnB+d3VDad8UQ6WiN3y0RNoYYxbeYHb8ZS5elHiuXTz
v00TJZanhkVW5xoLhq/j3v6nEr5TzNRqsjjWGoJPYZFCjzYSh8hepN8he1veJ5JDoD076b0Hajfp
F6f32SDjIR87P9gH+u9hsh4Kkz5+1nMTmiI4IeZna235Jo6iyFZb+wp9+d5GYrXcgbximeWYTA5p
5Yzotg9xZDyjmMyIdpVBF2Vkk+U008lPTgqegx0qxYKx4et98tOs518MU+IeHtXJnpTN9krX/o/2
MAbz4esnnjqBqfzqCnH4/iUxdeRu2kqs8/n+QORjCX1+eA2uQ/2NKAeAC9RnO6GrzUeshlHOC4XI
usPcfaBh6z5eO2hfNfHr5E+qv/z9jnW8TP+m9AuaMNXxlH9ktVblbdLm1UuEma7cmHfMeW2BQBDI
ByFfK1oaMBnWJivFH45NA0WmlfLWiJZMCGop6ZIWPcoUZUskjJKUC3rZAxqWTGgCyr7uPDD5kuNt
Tw6PkLw9SXxzaym/ugZvAvgYx7bbeUy3d+obw0eoBIQPmXpKBWhk/eBFoAzXiiGJ57Ab66tWR8Tt
kV/fU3UGW4rc9MQI92psQBLtLMwiHgmCwfSc/l/7cRBV0aY+9ofvwp65F7u7y7ajCEW7Tavrndi2
7L9iRMFRVa3gpJh6B6vJC11buzKIJbyup6fzJBBco8/SCqyPnmN0QYFXihr53pzenb+FQErXWumi
UmVT/QxuW+CsDwMVLOV25bXgDeUIHacw0MduIBtHpCMk4g/af1ZRwdps+gCHzz/OQQ4k2dL9i/nC
PaGbqlY3tw5YCb3UpTUNG8MY3jh54ULrxN50zD5EaDNZcufzmo4p/GB1dpmX6hipmR6xf4EdaiFa
TODu0aUFjo2D6U0sisNmYfUUGoow2TebfNIQJt9mKZqqyX+6MnWwi6FQzzEl7cQRBV+BNZYk+QsB
eglG2Emw/5e8WlbDJQk4EmiDZmNHC5IBDmkx8RzE0GYnKliX+bvhnpK4AgzpuWbglecAseCWuWb5
Ei1oSmBKlMHXCCsEBX3pGPg9ZYbaJhjKiY+rdQKROlD01C19Et/bgB+jnDe7ttkwQPBdJOeWsjYS
KZPy3G/xzb21vOpQfznwPa5/BynDH0KgXa4NKhBx+fNWHm+lqo0ReTbzzhu4khJXItyFHhWJxUOb
pWM0/dFUNQl9gMlTwdu6D0TiM6g0veC0hOtOgTxUgTmKnnfrde0ueXt84KNWaIP1v7ivYUkolTTz
W7DNx5WnQQfYiv5K1vZZl+mK/4m9LF5IWYXk+0E0/eY85JtImVO4rfGSSOpOQ5N7lLgNaSY/jFuj
0NrwS6woqio0g7IMm6NDSTkdSI5jZ1vwj2BaZMb7Ch9Adm0rcN5pd1X0pr/Z0Jl0aj/vz1F5dmoS
h7rCXxBExLYaVGbtFaa5Co/abUO1xyMJd8ByhzndPpB/HWjL8HRVI1WrAdMrwU99fwbR5C/EGhr8
sH2T5OACAXbzpE2sinZRLiCR7q85YYaB9Unb1fNLZqQQ81syWlz8nC9cwDD4KhAiTlK4xJ1GBTFS
6UE9zksgR5GJHcdsCa/h0Mfn9DCIrTTihj8/Ij+larUd9y3mh9EJVwGHS+oFaIo0ZRhbbHRlGibf
3xIe4Bb9PFSMAu+dY2//HF+o3op8adngMllZPFpNoThQ+s4RMbE58QmM+2Al4mcxj4lD3EnnsRrg
1glDxeG9CJiXv5JWb3JgN7zjRfLsiwnyWiwW9j7IEJlFbx+DEYhIQU64xgDh/bRAGXHF/6dYOvAk
V/GxhJ0Tt46s4uSD05fYhSFAXtO2Tc/3sTA4i4dXquFc0NdMyqR90Sgro69J1dj3uO/WrSn7INdP
nc0zdcFiwPCRjna233kJU4FSahpf7XZMPomf7uqcbX9G0T/F+RGQZ0Nkl8kS8rdShKu7LEdhTvXO
TrHKa0d0J0q0Yh3wxEvBUYUnLzEiA3RDixx8JZLGjpIqgZ/0M2NmU4EMMO7rWy4N4OuNUfbhOitt
uEYAKW4SCyfZdA4aoOGtoTN6TFvOXm1dt9XvLHcQWJZmqMHfz09oEBIqWInC3uyHCEmf5Rgwa6FT
v4bhazgE4KkVNsJ2uhgGg7DE3WqKL7LXGnlqW8a3R6opqif1j0V/iQMcJ7WSTwUDqo29qk3mFIEZ
VX4x2EGdhqxLVA5pg1z9p1hxFnNiAV/WRZJiDojJK40EBWbiZe5msPMssFoFhjUcOw6p00BNNDVO
HGkwU94Yzi7efNVDrhLGC64T5DNDcpOg5xFyw55Y2/0WrnZW7PbaTb9y+ed3ygNIh/cnr+hgqIG8
AJpPo7e993pQHc3dzsZT6UEntD159kkMpS3paskMFojGHlF0Jha8VrgydGpdHgJV6oFXEEYSMoUY
+8pNaOjXHtDEgaqruA0Hozxph3DCgUSTgCgE8O3C/XjYgn/gDTQ0RDQ5nb3VikNSfhp4s2V1JPf3
vzdsrSoV+rtcP9McL/3C31IdWwoaZJxOkZbjvgQywKUl3sOnUptKIu9llKlZuEHAnecsqH/gKGaX
FbTcg9MCeHcpQ1fDjrukPf4/1F+c7FqhlBO310VDFWaVHqnAJ2bzo91PaPGSCEdhMLkdm3CrxzxR
DzO3iMh86fg2oRp59nzb4I8U8o70msWhayees0WgQ/fRjV26lyiSjNcnFxhrv0hU5kPE9PmS1ASq
bSpu3l9cVq4VMqDDl33xJDVAAN6t5jaRrX2/9l/olPdu/WWlOJ+v+I/JPDBjH+l2FJGXbKgGNb60
ybyVhWlPnz3baqr88VP/orWa4Tr76LS/17ciXd4ju/PEqhsTNVJPcdO09uxdhx+UN93bNxr/R6gA
SQ4vHoQ0LYd9ra5u5Y4WLYM0BplCh1XPZ+cqmUeS1AwiIDKbEjOOXxp5Gn8n/sQLAEU4ZVaC9hTG
XX7wcBLtrGPhnB8WLwrqtwuZBdlY9B6Aio1bohDdktuQiRalTZw89D5oFPEN3to+LgNzyOGncXeV
LvuHlNbVU4rygSQtK/GZ5BoddzcxnciXMN15+dD+HehuXFsIvZNziD/xJc2EWId5O7uNUKHP6tYP
GfpCY9VsWl4EA5qvMmCtwlvtjsCc1YE5tMDqvRvC3Wr9j5MmnFDowx4qbQqWGF02HputNU8mJeO4
YWRlsYIDcgBkYRS71yQNe3+vGbcuPDrmieq9wqnxWAWiO8KweetvQWOrvSEIV4IiBlCvWlvf2X6v
gbuPOAMKE6Dfq4ZOEWupKObie1dg6X8qeYXB5eMNzK1ABaBH/ficuxQRoOFyJJxLfQa6b5OcoDbd
aw8Voigal/3x6j1w4pVN/GBjL1hlBzLjw08Riia8vBS7zUmKqdkQk7KRWndXGvxYRF6bGIWYke5t
NWsWHpnBqb+y6eu5tmq8War5IvNi3NC7rsg7ij8GGmAdo0rZFER4XTeNf3IO/u7XXmw3A0If2qfs
qLO384iva1GVr/pVouatiPaHG4apvqqPlXde0+hhlVfkl7sm4Zt1PZfU5lKh3R9KtUv9u44gLlJT
fN+JEimheWUi5MHWFerUTJ5dtC9ZJn2gLVjs0/xg0TsPUQMk0k+6ZE3lefl/Ghip9WXheYRoJQ2D
iG9DMMjxNaKmTBoH/gBceaYzD5krJ9GJNV7xKq0eGLouUjHpoVbeqjIc0Ls2af0L5ky9zLrgh3XG
H/mmIhnHc1LrKa3VNZBfOTSGchmjIwONWH/z+NcTpr7kZnrPSTwprHJGzlXWw/lVMJca5CmO20FI
3mHWkGKtqzt6/K+o7/G7THE/bEqqpkD6G16FPUs6fsEpzQ3ozoZm/WvMAHAUvXqmC9za3RKdQtNa
x0Y4AH5dEchT0+SYzSMbyGH5Jm8/G4VDZN+6Ee9StVU8pFdTSV3rrZJB/8LyFpArxzqkv/5XDaDK
TlplHfRSCz1lf3pv7j8yiiZkQfh1naln10dbyiBepsSWliHwyDJk2O15IKO+2Xo5xKo5FoX4C5vk
lzl4jFcFD9JtZUSWpMV/5ZcOZ8M+V7je1XQfaGIUdLhafox1LROCCEQwy3nUGMvfnKbwxmX45cfD
0aJ5U8c+Ztbk8Ez8MHt67oeefQdGgZAl7i11KPWvJlFJ6KBGoCQHiWbZ1m09wS/ZU7elQxs7zRRR
ZXNB6fAAOcr6UBS4wrBvvUjTNGH/pNbFY2CCrv7kC+GNxXTeZboq11B9PKdjOm/RH6Os0lu/WbWv
Y8mjug3nEI2BiecRsDnZYeEqfOL1GekqaT6cvRIZ3faScSqpdEZwq39490TZipmT3AtNus+equ+Z
Ast9v0MePhh9GIZcaPXaYH2Yd9FHrL5NvHmFYEc7hbxlG7sDOn+hUP/prcsugqBN8gNUQuSBYBL+
9DHB/crZfNnEwhzweDiGn3DfkuXhRXB8lx19GkQfKes/cTQ08/NSKGzVtjwRsZwOS6B9tE3FPk8/
ARuSa0Qh1+aDTT9j8Yq+ADA/GlrWiEn+xSo6jYqL9mJ8hUqgKBPiAPakr3wmXgbMTm9dALTWV3rN
bj9SwvzmIHK4JCh0rV5ZauDTxCNpa8+1/rOP1AJYrMHs7XGxsEd5yaFZIooZ2w1jQSP3Cpy8Pjom
b/RWBg6AJ39Yrw7QPh62IOk3XjA6zi2QvVbspcKQGtRwqFDytx2E+HBFVZ0OEPx6beTLjkwEsKNu
Sv8LvpHds7JFb0QZKTv8WRKVH2tXY1lWr3uBvhjqDc4Vr3K+niqZigcOe4TpBA1r7sj+GlLp6/HM
ZpN4yDKW9lc6P/QDPIKm0igBVbprGrmMXaDe4frwVazioFQy8FmsQPn6+5a/FYMB4VcmNPPEG5Q9
QzO10Rsieyvtpey/XIUn3hS7iDKfbu/gmyw1rpVZOrjWPLxSGhwmcHzEqFFjkOmTaNGTYHl2kz2K
0sTz5Jpr3EjW+4/mlnrULtc56SinVhyDRfBVdd76vqCyj75pv0viAtUWb5LK13bw1kNr6ZkvMzO2
qF933iFvGwmQPsx7QwfTZfeWDY2QiN36wcythC1gMq2DWsRI3zpMgjD74da3JGOtv4yD25Xv8X+K
7bVAk3RZmbchxmjTE2vIhl31whJIm3WnV8/10lzCAuvs+u4duLCcvylr5W/5WnZxDQdcu+tDb6OG
aU2B3/2fDzAC0SOnRsBg5u6X+e1SbJRyLf+zayEsQgMFOHp50zfATVkxICtTS1LhJbA/6zTGWbJh
0h/+VVUc25sthtob/OP1JNKhtSX4OhLoAv704PwrSzPYbhbBg6emIWWeYolwdMzDiXjerWJ6EEJ+
AJXtJ9C7yO9LCv8GG6n+1sHXJ3TVWJ3iZzrdVCk1FBBDPQymoHYcGkIQOWQPHcRO2hGEnKXKcbvo
d9L/UPNGHD55LsXmwXa639RjqSqDJA0A1Hz/tlyIn5gkLySh/FnEUHyu4yFc7PiH6juyEdtYE7eZ
AWNdfECs6wZUpMOheAblllxEF6mnAucs2Ch1bw0fuhVVmOI0SNjzI2JA/WwEae5nD3Hu+7JavdIF
iyOvBIvVgNPPPUmqc33RvvRtUOv7DRcYY4CH8bGa4G4qEle7Ja3XQWITd49VyHC/FpNz0vX/E6oa
d2QlaxY/LjHr0yEIBnfaBnHyIFoaTbO/SRbPo5TJVIe/zVVLUDYjQMQHel0+DvCkllJnwMD7CDMd
BfWMJKnbHBG3zYFm88/BbjqC96zNGKEHI7jV5uRmBKv37VWV19C6BaZoGmaYgxjXMwSZKF7o1TSZ
WvlMJ+YzT3qZR3RwuJ9Drq+196a1EHeJhd1LgDXJvDR1R1HxBWkZHOXRqyd2Xlmi7MbaHQ/cXmCp
/JTVJ6YL0J1BolwV6WHTVWbsnZQXJEn/Pcjp+1yyaAKhrC35lUhhku3kcKu2nOhRwvIU8fdcj9/3
oV9IUjyukpXj7uHH+hfxJWilGWrZs/PHb1QQJXA41e/tv+rkuExSNisG18O2mL7o7VSPAcsWhdG3
0IA2ihqoFliPY4r3qebQs1zC81tveoCudBT4tTg+W2ZQFyjFvV02WbXT/wZD1C7CRcWtwoO+qWNN
wXsZCJsk6EY145nT6db4hFY3U/IXnuQsoSaYQLhfU/2BgS3ypeKo8n+SyScR037QjlAUSPeEiUzF
L02WHd4s81nVKgWmJGvT7E2GLjV/QtJUT5cmPogeJyiOGKke1KE1hRFI2/Hg7S2yYArWT0F+pLus
wwnfcpSKbX7u1PxYxM/3hmvHXBbpToHSsVjpAY0b9LhvC+jydwuKk6CMJHM+/Ve3UeDt1EhVzPH7
6vI+g1q0DYsm58UpDaC4aN9vJ4aI3TIgZ7wNkG/U6CvdhIg7ehGJxUJYXHukSaXMfZ/alEbYbUQK
Vh364ij/1RGAmBEzw50JPC/+JfQ93ld7mD0fnFY1CkG7AkAEiUgvVQRfxCKSd4S+VsJ3u1AIhw+S
k/HA3lF3lC5wm890Wjn0lT6mWxLLk+rSw3GdKW8iePPHA0WL6IV9ZUGNOFAYKmK8Z1MdR2OXmuwP
gcSIVzZlQh3i7sShke7a/jqh89XPQ5cm4tkWtpBf6+zRSbe5vpEqZyt8pfAM5yKVtfqowd1NAoB4
uuKZRpPiD4jjXM2TQEIhgENjMGdJFE1jauOCi6pOTCT++eT0HwwKhVEdxb27yTFUzwFeb7O+Y4nz
3ivVsPJHj6ivQ33PflmWnuk9sjxsre8VEPO0U96uBbgRqKd4pJMEqF1gLui23u/4UTTN8PNrKN/s
Bxsq26eB8c/R9lswe/xVqDDbUha6JSuxiPFPvEMpYyMbPMkXtD5Hw3BAZR9y+8C3Yqro1GwsvX/b
9hr2kJDsQGAkvduU/QNaAZtrnCs3N543eVKUYPeoIQcROi5fso0MjP9p+tph5NYHvWtViJJynXEf
cPz9KORc5tD3BA871oS0wLOauQjdSukfQeSB0C4hrayAO8O4jRLziJJ5okmmaAwI0DFHuEiajTpq
28D9zi+5nKi+g72l4T9tWYuE1l7u1Xiu/BbXxdvwjRutudbaQ6PcfHMrZHI5jVoDZ86DCZmKSC2m
uHhNi//o7/Y6yT2skqshh7cL0x8XddGJ85DZJJyOhAyX8JVTPObzTvJyaoN0wkWrXzlc9aN2qQvH
yKrvwo7ocJXjMaqDbjuMNsFJLOl+43QBIdPqbQpucaTDLRCX9qk5WnRwmKBND5BQ+Y35F+GgEKWS
hEpAcHm8e7UXBKf17S+9CQscpyTc774hnZXv2M5K6oW6c+GS0f7g57tSMlfkQMld1qP9GA1MNlME
hqXjmmv6w4j30sHMQ+Iq2DDV90j05iBqv2ALIkSf7FXn6NEN4JxcX56YngMpFXgY/aee/XvgQGUO
4AXcIX82VI4X7tDxQf+V3xnN4Qamkb3Ii+OA1rQgNBQRG+ldnW4+isSIpOAhbDa2UVn+3mH4WPdD
P9Vkvar5pRnzvWrIuESEP+jp26PvD4gslE49Z+WV3QiE05LzI3ZRSxXw0TkF1Geif1J7dNU5t56w
jyH/NHJ/wU5jvkE+UekacBrS7sSYlfm0SvSPgu7NPzG4zf7Z0GHzMYzT9ouha6Uz9mpCIDCLrOPL
l5Xy4bqtlSCIM2qAm64O+/VVvxvUviUqibbXS+7n0OyEkLJmpuYphm2/4//jFW7nsLTWE0XzQavK
DuuuMBw21ro2c4RKYwq+1cpGVH9K0eBV76XINU30BuRSF1t4BII9gTREcdPljfLhNX9Nn4dNypfg
HPcovPOicw3exlfH+64uxy3FK2n270ufOXpb2gHbdZXh3YZqiY8fAU6a9+c8OvEQ1dcwFwECbgrF
+mxQ4PL54Kpi0iMbGD0BnVSxAABfE8rdMrpkkJaWzpNhU8sBcj1wAR5uoPMKSJW+z/M0D7L28QNR
laCXbs0OFlCA9DIB+gbgu7tXGj7T8VbRCPkizI3jqIljpVtgbrFv5etEwciwBWgjWRcPTFlkceqH
MwaUszHNuVmmKg99Cno/Bf1BfNn+bch8rHbCTHUTeXtP1SiMh6zmAp3s82/0vnl4nlyY+I4IA4vE
ygk1Luxkve6GdEf01T2Mft1T0wZZVDuXmPo6EbvC6nGIKiE/78ogl8CpYp0my8DRrLaFSNsHEX2u
J+4rmuaoixVr+1m5j/YOncGckYrUVDdwXUXdW+eLfbWsra1XJMERsa7kBg6mOhZ3fHGWohzT8FG4
nLcNbw3WItQhWDlS33BrgxSeoSH+yvwA/C/y74b7/Vk4GvQO9HNfhHlskeKpC+FA03Oiu6MP9Enu
JbavgbhMAKjCeI14DSZ5uaMSrIWOT2RDWtIQVNCE+5m/NwZztEV1kDa16ad4nfWTc7qXfmfyoWjh
DAHipGG+nf6+y/yTwLdXg8EltQZijPKAW5U8cP5cUowYYaa+e0zMTKdS/gTX2KxAYV4kYLf+Ovnl
ITQRGvW2K+S17eznNqd6ITnF7NKk0l4PZqJSHBa8Mgjz8IPT2tqOVuB/R7Pu6hQbVqA+YfcQBmS6
srZSmi2PqHNmSMvySBMljmjNd/utAntSisjn6jR8Rd3WS0EorSCVDAPHEia/w0iiiJd1LVD5Ja02
iHp4DJQaQlYHVYXkeqF6/T02Jj7sB2yCXv74zLKPpCGSOLLsen7WPpdgf+zfISS9GRaPp48qQfMO
1onl6FSCINIVF7uJkV912kgwLAz5SgHdEbTtov/HXN5IclW4F4YKmL9Z1YZ9t+kp59L+RXJTIDmv
URH4StiBXfYso8lv7u9YRzAFhF9qk5VsmmYQhlMLh8eWY+ftUXYdx0DNW8AY/OrMcPQKyPfT2c1+
yk0yHd5LwhiBIG1XNzAR3VVyUGWKMbN46LosTyfFTtYg5XiPszp/2QmdC0BupLvuhlWvLE4bksCv
bqRUdi5YH+zjXtgDiSMVi71ohB+JIbsQvfq8RPVx/JHBnKVTGY24Wr8n7DIJHpG2r+I6HUVkPAEM
yArkl4yeYV3rNDxB8L65lKhDMK791cDaFSRKghDAnPGtHQggy7SsH7OgZA5nkGiXO3GrkiNbqQr9
kQT9F2otcc+9jPw0bNaNiPL3T3JQeu4id/w79ZndL3XhMBb+407GZGCC8BERwzEOolOsmsfJwzLL
Tq8i+f0ybJHBt6xJ6wLFo7CrOVcj4VGRCBUG22BtoSsfPaFZUpb4Rb7y3iU+laK4QoQfMMTt8DwD
U50mkJ4vUVf3YiUm7Gpv5K0PimBv4BavZjT7r+B5k9l5muwZx2KfuVJ1jDAqF0cIIIkzt45vb7mK
Yz7xeId3zyMSGjcAO7Llej+dKJ/ccpNGLUYhVHFXtXGYjA1eMF8t8AyxZzIJa6wsSffWMzozjh0I
VIGjHxuxhLfo0rGua7GfyMa2Ykw4LEwDCEt0vcTBhQ1q+NnUbAfVUNb12xk8Lb7xEKHFJP4gaAmL
dkQims7eXG/1iN8dQ2JDRCS8hekPE9vrrsoZdpjEyKB9E/2JtWvmiO+/V34cd27Z/jf/AKULEqkC
dMJjhSIN9x6nFJg2JiS1vGJSulARnCIdJp0hy2tFM2IvafUiLVM9W2KNX7L51ul5+8t3lJL3UGSN
oc/f0QEXQtNcxa3VxGgR5rAsiyQnhTpLl/K7GTDs7c8Oa8zUqPtCJO8XZ2DIUtBZEzOEOn9yRTZN
5kUJJjv41SlCjkEDFWvKh/1eS+f3tIgVir/48uMXSpcC9UIE6WyJIII4tvqm+fHkqLjNcIJ2BtUE
xHDZ2YohRlJkb7d0gt+rW1exITSOqB3ju0bAXQVts/tfQcL4RRqEze4o/LXlec22Ae6+OlAAI93w
AMM/M+PeJYc0d5f543C+7TuQSTxRZrwc3w42lf5SLo8CcW9DaFQ9wHuZqgHaFejFjJUdUHsGLGN5
4aTDx6V/leSlIehYhLw5QE0aqZSNaMax9zPlZ3Yqp9QCByWa46wZ9tnPP5EMBnY5QtZ4n8Fs/jRN
9J99atK7lY4K9I719E2wCf0W//N/t1OsN4WVAbBMWxvKa7VzOp/n82GFPIOx5sLSkU9n46UeiFOn
7kGNFbw5vmEcWmLzZYBePsNcIlOQ0vmYgylbnIYqSWrKSvWIyUQ/rB2B2onm7/Ze60ekX09D6TCx
zQVJf/HN6i0y99S7e0ZcEZOksfwuf0PdeveftvRDYnYcVCPN8+ooA+Ye3iRFJ7eElQMPERbhdyvw
Vwtq6gN3n5PBEeUqNu3V7GMUzC1sAWEJkEYrMnGeHRk30f6QmUkMzmkEWWrmi2PoJA3GgDCl0u5K
NNHBJMjwuEuXNMy4Azhi4RV7WsNTgjqge/NIpi+hugm23sgpb2IZhqHv5a1NFv5+rZBSp6vY8z2d
3bQ7ASaz4MSBse5EYQSNHgJZk+ii3fc1tEdO9jmMu6/LL3vMTg8j+84gYATQtAhdZB34Czwk3f7I
gXsE1/oJgNCrtp0jRfdj6g1Wzbtf90h8R85HOcOkk+xbfUguQ7hJQ8M52vbNioaxaVOr5KV55XXV
4vQrx9ULTrmehhtlJNzRAnrIju+kiTAmIi4Ktzj4nElEy0tINqbQ7Ndxaxk1lLLcBnhcSDIGEuHI
pxWVMogNx2vzRXasHRewqbhx9zKnAgkDsmvxmk3zn8h5DsDZ10poyMUxZmfMIi+KkZCtd3Yw8b4/
59KU+Mt74y072Ci4cTmokPMB4bmv5tAndCVtas9VYQa/JF4j1WxJR8ZP0TuF+deMRCh+t0eneG6d
M5op/3Rvqx4wIl7PosI7hcpUxICE37gbhu6yzw4eCd2+xP0wBF/dR3iBF0wpxlq7DCnz2T74NzIF
XSDoaW3NyJ0mKphd+6TkEN8PXoLJORZiB5CuUEUm2tvS7XSEUZ5u98cjgzHtglnmGnHFheqI0ce7
oHKUYpNH70eV7egyk3klvOtEIVfss57Qy9vsDJ+OsZ21qgXBqwgeicV3laKvZ4BiSyvKuvLair+5
FswEMOLn2icPKrXu2h9XC65+g0hLKGtlfbnmtrbh0f6lMcRlPzjP6JpU53kW3SbRtmTLyapIHhwY
klBlo2t+OGWLxLL7C55EMF35IjDv2aUEQE04H5nrdO+zFUrZfC7wDYcHH/2IBXw5CmpWMdL+IKIT
dnXh+UiEuRwJGlHx+xptQ2PI4Df2NvCp9pt4uTCG/FBsqpdH1O3dHRbKU0X9Y6/y+4E2wPWAIty1
05Qq8rBgll9GGNhVhfU9M5TkSQZzSO4MBjmm42hnXzqPXsIsXk444n+j+8MBNQPiiDDowANHJ6W2
socscHS9M9Lebgw+7Q0FTC3duSqvNvzxDTNtuD9UaDqQmPz0GCePs0U3wMsyjkZVPlgvW/V0HWpc
QYfLlmaLKfRn+IpzHyqJdWU1Clm2akZaIUV9gSGzJOydO/gU7oRGGTlFBwYxfy7Q8v0YgG8o3S36
FQkHVPEcCoprm/M2CzqJ0qyS92NNGCUERxjW3DED1UqF+gSJDCIgoMLpGq5RGTjs/NkHehG9XWBZ
UoVA9jQBEbiKl6VF5k4WCetrfnOYKAtDuh8DkQegjMvXYkFFmzl7IkEK+Uk7FYEd5NOsMnKEWquF
li/TElh30XF69qMFkEqZ0xHUSjRAzFeFguPKtNr1PCWMWRJbSVXu/wo7+wKNtCaX6BDFe+gmRv7h
WY2M6/cHVGcBieCHANVT3CkCokCH4x+QIplMg5P6lTq0vj6fnZCFwAUUqv0llEdMpKD/Fu6lspQ0
X5zTa/muDwf8Xoo9nCJqoWU4TABrT0CSn15lfCa+GipkZe16ti3ScLj6o6ykJrncsUOtZ/K92om9
69gcJSZKQmrI2MpxEo1qSbvyK+k7VUzIBBq52ytY18MFsM42xPvjdL2hsvOitDK6WfvaJ5fgjZJX
8lDzxyWHtwXpbHKq5aZHOchVs1mWCGsPzSlQs9Sd8z77aCyKEf+zwsdRv3CBk4A1QnrSTPaRkmFf
YcUGh474Ry1eIqHVLXgzFZ10scHPfdTyVMlYWrOWUPpLqAMX/W4qZiM3OpPHfSddG66eGgyr0YVC
z3t6Kd4USR3m5YWtLf14LqVPwEnZL9umBKFq5b7mL6WDHIXESEnWK63uerBaIhKNteIkEP2sgHOx
As+G2EDGW3Xrjwa4OQzCu7TIswH37DEwpnY0LK/aJAoi/TUpfqRW0FERT0/cmohILyfE+dQYQ4G2
BPzirU9VsSi4J8x9ZlxGmyhdOziD+96Zsv51XiiTzovpvdrPKF5XGvcknDSKEkRN6pvRq+QDhhK4
0UIW+IudDLEmMR6u6RcwSetYeUTvNrWAQ4LuKCWXn91RPlhnM1t4mYWaFisYKvp5eALfWzKs0Vmo
1dIx6hezHV6+5W9yaV4r/Qq/qBMUZrF7zbfdh+bmXkB4iLLqDq1gfiyetSYX9ekMsXHDmRwMULSo
ckzsOM/xYaBQkj4U4o4ZiYu0HV0Y1K4WYHTZ3PrjjayGUkjPlGXO249eQoisJXOWz0A5cAP6tNgr
WE5cJQA30VnYCE+nyGkD7A74YggzEjVtIeOTbzZTwfO/jmKijDvWoqL9eTYn9XD32xPB8wZH/42D
ifXogg1UR0dSokwXQHPrvcW8m1k7pHZ0X5sI8FH0PXJQjBDp0+bfDCY3YuWNLoqqoCu/BkN5S7TY
NeNw+UflHkTcPgapCW1mNqV7DTdCrs0O8yrQVt+6sN5jifeLkxe9hpaU44BP035NrrElK5VJ78Nw
SHHIjkX1DhRrVLVC032s5dv+covdn5HIhzcdgOf39gIyrVsQSIvvT5a588ynQNDjmtSYfO2cwNS0
ryNEZr3LZ78DKq5vQcYpKWnSjh0U6BAQIADkdmKrMH1RcUZvzykRwcnoggHfe1gMM8BQszdpNPQ2
voIZYVGQyrM28FB+/CySiPu9QEDT4tzTfafNiWWnu6pNkUCr4Q83sE8lYJ2srcs/KIyDkgiPBvBP
fc3PmnaYebWXopypXDHHlncjjiqf7Rf0SenfaAGofRyoKkELvmBJkdZW6O2a+p6IIuioYIzcJiTw
kYz0pqty3H5SNBMfxOrhFYcOD55qrOXvWhwxW0C1uOteuu2y1rNqto3xA9hXk7ndTIrUpA2cs965
ztI4N46kdDRN73m/Xa9IKVfUvSAbt6OUDugg4V06+9lhAOva
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
