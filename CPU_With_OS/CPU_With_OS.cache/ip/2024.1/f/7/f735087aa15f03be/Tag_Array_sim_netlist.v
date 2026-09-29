// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun May 17 20:42:17 2026
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
7abEIMtk1ZaH4xI=
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
