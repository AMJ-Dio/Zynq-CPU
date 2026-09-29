// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun May 17 20:42:18 2026
// Host        : cdy running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/11545/Desktop/Zynq
//               CPU/CPU_With_OS/CPU_With_OS.gen/sources_1/ip/Data_Array/Data_Array_sim_netlist.v}
// Design      : Data_Array
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Data_Array,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module Data_Array
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [15:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [127:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [127:0]dina;
  wire [127:0]doutb;
  wire [15:0]wea;
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
  wire [127:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.932199 mW" *) 
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
  (* C_INIT_FILE = "Data_Array.mem" *) 
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
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
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
  (* C_WEA_WIDTH = "16" *) 
  (* C_WEB_WIDTH = "16" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Data_Array_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[127:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54752)
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
