vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_8
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_8 questa_lib/msim/blk_mem_gen_v8_4_8
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../Pipelined_CPU_With_Cache.gen/sources_1/bd/DDR3_AXI4/ipshared/ec67/hdl" "+incdir+../../../Pipelined_CPU_With_Cache.gen/sources_1/bd/DDR3_AXI4/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  "+incdir+../../../Pipelined_CPU_With_Cache.gen/sources_1/bd/DDR3_AXI4/ipshared/ec67/hdl" "+incdir+../../../Pipelined_CPU_With_Cache.gen/sources_1/bd/DDR3_AXI4/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../Pipelined_CPU_With_Cache.gen/sources_1/bd/DDR3_AXI4/ipshared/ec67/hdl" "+incdir+../../../Pipelined_CPU_With_Cache.gen/sources_1/bd/DDR3_AXI4/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../Pipelined_CPU_With_Cache.gen/sources_1/ip/Tag_Array/sim/Tag_Array.v" \
"../../../Pipelined_CPU_With_Cache.gen/sources_1/ip/Data_Array/sim/Data_Array.v" \
"../../../Pipelined_CPU_With_Cache.gen/sources_1/ip/ROM/sim/ROM.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/ALU.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/Branch_Comp.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/Branch_Taken_Delay.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/Control_Logic.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/D_Cache.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/Forwarding_Unit.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/Hazard_Detection_Unit.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/IMEM.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/Imm_gen.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/PC.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/Pipe_Reg.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/RegFile.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/Register.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/Single_Period_CPU.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/partial_load.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sources_1/new/partial_store.v" \
"../../../Pipelined_CPU_With_Cache.srcs/sim_1/new/Pipelined_CPU_Test.v" \

vlog -work xil_defaultlib \
"glbl.v"

