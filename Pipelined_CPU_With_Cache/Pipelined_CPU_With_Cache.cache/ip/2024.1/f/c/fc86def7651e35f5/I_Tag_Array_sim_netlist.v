// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Apr 21 08:47:05 2026
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
9m4=
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
