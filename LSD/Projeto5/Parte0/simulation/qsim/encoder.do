onerror {exit -code 1}
vlib work
vcom -work work encoder.vho
vcom -work work mux_16_1.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.mux_16_1_vhd_vec_tst
vcd file -direction encoder.msim.vcd
vcd add -internal mux_16_1_vhd_vec_tst/*
vcd add -internal mux_16_1_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
