transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/lab_09.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/cu.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/dp.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/reg.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/mux2.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/increment.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/decrement.vhd}

vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/lab_09_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  lab_09_tb

add wave *
view structure
view signals
run -all
