// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Apr  5 22:34:02 2026
// Host        : cdy running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/11545/Desktop/Zynq
//               CPU/Pipelined_CPU_With_Cache/Pipelined_CPU_With_Cache.gen/sources_1/ip/Tag_Array/Tag_Array_sim_netlist.v}
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
zSoc0g==
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
