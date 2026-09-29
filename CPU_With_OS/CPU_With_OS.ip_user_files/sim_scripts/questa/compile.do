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

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../CPU_With_OS.gen/sources_1/bd/DDR3_AXI4/ipshared/ec67/hdl" "+incdir+../../../CPU_With_OS.gen/sources_1/bd/DDR3_AXI4/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  "+incdir+../../../CPU_With_OS.gen/sources_1/bd/DDR3_AXI4/ipshared/ec67/hdl" "+incdir+../../../CPU_With_OS.gen/sources_1/bd/DDR3_AXI4/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../CPU_With_OS.gen/sources_1/bd/DDR3_AXI4/ipshared/ec67/hdl" "+incdir+../../../CPU_With_OS.gen/sources_1/bd/DDR3_AXI4/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../CPU_With_OS.gen/sources_1/ip/Tag_Array/sim/Tag_Array.v" \
"../../../CPU_With_OS.gen/sources_1/ip/Data_Array/sim/Data_Array.v" \
"../../../CPU_With_OS.gen/sources_1/ip/I_Tag_Array/sim/I_Tag_Array.v" \
"../../../CPU_With_OS.srcs/sources_1/new/ALU.v" \
"../../../CPU_With_OS.srcs/sources_1/new/AXI_Arbiter.v" \
"../../../CPU_With_OS.srcs/sources_1/new/Branch_Comp.v" \
"../../../CPU_With_OS.srcs/sources_1/new/Branch_Taken_Delay.v" \
"../../../CPU_With_OS.srcs/sources_1/new/Control_Logic.v" \
"../../../CPU_With_OS.srcs/sources_1/new/D_Cache.v" \
"../../../CPU_With_OS.srcs/sources_1/new/Forwarding_Unit.v" \
"../../../CPU_With_OS.srcs/sources_1/new/Hazard_Detection_Unit.v" \
"../../../CPU_With_OS.srcs/sources_1/new/I_Cache.v" \
"../../../CPU_With_OS.srcs/sources_1/new/Imm_gen.v" \
"../../../CPU_With_OS.srcs/sources_1/new/Instruction_Buffer.v" \
"../../../CPU_With_OS.srcs/sources_1/new/PC.v" \
"../../../CPU_With_OS.srcs/sources_1/new/Pipe_Reg.v" \
"../../../CPU_With_OS.srcs/sources_1/new/RegFile.v" \
"../../../CPU_With_OS.srcs/sources_1/new/Register.v" \
"../../../CPU_With_OS.srcs/sources_1/new/Single_Period_CPU.v" \
"../../../CPU_With_OS.srcs/sources_1/new/partial_load.v" \
"../../../CPU_With_OS.srcs/sources_1/new/partial_store.v" \
"../../../CPU_With_OS.srcs/sim_1/new/Pipelined_CPU_Test.v" \

vlog -work xil_defaultlib \
"glbl.v"

