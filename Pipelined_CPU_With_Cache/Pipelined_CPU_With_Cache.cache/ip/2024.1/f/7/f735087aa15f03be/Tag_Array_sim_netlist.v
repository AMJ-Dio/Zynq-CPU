// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Apr  5 22:34:01 2026
// Host        : cdy running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Tag_Array_sim_netlist.v
// Design      : Tag_Array
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Tag_Array,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [20:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [20:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [20:0]dina;
  wire [20:0]doutb;
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
  wire [20:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [20:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.22535 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE = "Tag_Array.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "21" *) 
  (* C_READ_WIDTH_B = "21" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "21" *) 
  (* C_WRITE_WIDTH_B = "21" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[20:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[20:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20816)
`pragma protect data_block
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
XWgdr1lRm7CND7g=
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
