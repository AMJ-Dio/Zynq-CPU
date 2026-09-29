transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l xil_defaultlib \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l xil_defaultlib \
"../../../Single_Period_CPU.srcs/sources_1/new/ALU.v" \
"../../../Single_Period_CPU.srcs/sources_1/new/Branch_Comp.v" \
"../../../Single_Period_CPU.srcs/sources_1/new/Control_Logic.v" \
"../../../Single_Period_CPU.srcs/sources_1/new/Imm_gen.v" \
"../../../Single_Period_CPU.srcs/sources_1/new/RegFile.v" \
"../../../Single_Period_CPU.srcs/sources_1/new/Register.v" \
"../../../Single_Period_CPU.srcs/sources_1/new/partial_load.v" \
"../../../Single_Period_CPU.srcs/sources_1/new/partial_store.v" \
"../../../Single_Period_CPU.srcs/sources_1/new/Single_Period_CPU.v" \

vlog -work xil_defaultlib \
"glbl.v"

