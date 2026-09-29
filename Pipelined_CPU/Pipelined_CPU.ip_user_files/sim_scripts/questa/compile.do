vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_8
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_8 questa_lib/msim/blk_mem_gen_v8_4_8
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  \
"../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../Pipelined_CPU.gen/sources_1/ip/Memory/sim/Memory.v" \
"../../../Pipelined_CPU.gen/sources_1/ip/ROM/sim/ROM.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/ALU.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/Branch_Comp.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/Branch_Taken_Delay.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/Control_Logic.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/DMEM.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/Forwarding_Unit.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/Hazard_Detection_Unit.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/IMEM.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/Imm_gen.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/PC.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/Pipe_Reg.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/RegFile.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/Register.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/Single_Period_CPU.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/partial_load.v" \
"../../../Pipelined_CPU.srcs/sources_1/new/partial_store.v" \
"../../../Pipelined_CPU.srcs/sim_1/new/Pipelined_CPU_Test.v" \

vlog -work xil_defaultlib \
"glbl.v"

