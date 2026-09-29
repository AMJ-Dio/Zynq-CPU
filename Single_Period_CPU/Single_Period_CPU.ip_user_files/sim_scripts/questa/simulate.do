onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib Single_Period_CPU_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Single_Period_CPU.udo}

run 1000ns

quit -force
