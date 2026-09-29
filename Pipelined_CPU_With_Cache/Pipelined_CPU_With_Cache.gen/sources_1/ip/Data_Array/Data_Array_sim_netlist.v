// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Apr  5 22:32:19 2026
// Host        : cdy running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/11545/Desktop/Zynq
//               CPU/Pipelined_CPU_With_Cache/Pipelined_CPU_With_Cache.gen/sources_1/ip/Data_Array/Data_Array_sim_netlist.v}
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
