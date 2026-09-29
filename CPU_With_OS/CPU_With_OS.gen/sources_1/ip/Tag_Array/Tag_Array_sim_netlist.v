// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun May 17 20:42:18 2026
// Host        : cdy running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/11545/Desktop/Zynq
//               CPU/CPU_With_OS/CPU_With_OS.gen/sources_1/ip/Tag_Array/Tag_Array_sim_netlist.v}
// Design      : Tag_Array
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Tag_Array,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module Tag_Array
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
  Tag_Array_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20752)
`pragma protect data_block
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
JC1HSw==
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
