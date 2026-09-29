// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun May 17 20:42:17 2026
// Host        : cdy running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/11545/Desktop/Zynq
//               CPU/CPU_With_OS/CPU_With_OS.gen/sources_1/ip/I_Tag_Array/I_Tag_Array_sim_netlist.v}
// Design      : I_Tag_Array
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I_Tag_Array,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module I_Tag_Array
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
  I_Tag_Array_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20816)
`pragma protect data_block
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
M+HaK+OHSxT6oGQ=
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
