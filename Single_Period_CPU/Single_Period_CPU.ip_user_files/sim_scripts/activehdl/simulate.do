transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Single_Period_CPU  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Single_Period_CPU xil_defaultlib.glbl

do {Single_Period_CPU.udo}

run 1000ns

endsim

quit -force
