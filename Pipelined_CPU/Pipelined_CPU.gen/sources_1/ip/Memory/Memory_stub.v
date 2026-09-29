// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Apr  2 14:09:53 2026
// Host        : cdy running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/11545/Desktop/Zynq
//               CPU/Pipelined_CPU/Pipelined_CPU.gen/sources_1/ip/Memory/Memory_stub.v}
// Design      : Memory
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *)
module Memory(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="wea[3:0],addra[13:0],dina[31:0],addrb[13:0],doutb[31:0]" */
/* synthesis syn_force_seq_prim="clka" */
/* synthesis syn_force_seq_prim="clkb" */;
  input clka /* synthesis syn_isclock = 1 */;
  input [3:0]wea;
  input [13:0]addra;
  input [31:0]dina;
  input clkb /* synthesis syn_isclock = 1 */;
  input [13:0]addrb;
  output [31:0]doutb;
endmodule
