transcript on

vlib work

vlog -sv +incdir+./ ./alu_tb.sv
vlog -sv +incdir+./ ./alu_if.sv

vsim -t 1ns -voptargs="+acc" alu_tb

add wave /alu_tb/clk
add wave /alu_tb/rst
add wave -radix ASCII /alu_tb/symbol
configure wave -timelineunits us
run -all
wave zoom full