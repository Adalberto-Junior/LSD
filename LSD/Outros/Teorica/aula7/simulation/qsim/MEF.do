onerror {exit -code 1}
vlib work
vcom -work work MEF.vho
vcom -work work moore.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.amor_vhd_vec_tst
vcd file -direction MEF.msim.vcd
vcd add -internal amor_vhd_vec_tst/*
vcd add -internal amor_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
