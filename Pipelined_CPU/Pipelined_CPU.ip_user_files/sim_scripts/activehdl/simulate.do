transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+tb_Pipelined_CPU  -L xpm -L blk_mem_gen_v8_4_8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.tb_Pipelined_CPU xil_defaultlib.glbl

do {tb_Pipelined_CPU.udo}

run 1000ns

endsim

quit -force
