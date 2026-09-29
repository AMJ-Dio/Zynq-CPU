// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun May 17 20:42:16 2026
// Host        : cdy running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ I_Tag_Array_sim_netlist.v
// Design      : I_Tag_Array
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I_Tag_Array,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [19:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [19:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [19:0]dina;
  wire [19:0]doutb;
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
  wire [19:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [19:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.18375 mW" *) 
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
  (* C_INIT_FILE = "I_Tag_Array.mem" *) 
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
  (* C_READ_WIDTH_A = "20" *) 
  (* C_READ_WIDTH_B = "20" *) 
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
  (* C_WRITE_WIDTH_A = "20" *) 
  (* C_WRITE_WIDTH_B = "20" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[19:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[19:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20864)
`pragma protect data_block
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
uYU=
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
