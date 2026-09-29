// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Apr 21 08:47:06 2026
// Host        : cdy running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/11545/Desktop/Zynq
//               CPU/Pipelined_CPU_With_Cache/Pipelined_CPU_With_Cache.gen/sources_1/ip/I_Tag_Array/I_Tag_Array_sim_netlist.v}
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
tcfmDNnZo4rQbO8=
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
