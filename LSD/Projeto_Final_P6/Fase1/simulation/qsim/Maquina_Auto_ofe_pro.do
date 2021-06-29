onerror {exit -code 1}
vlib work
vcom -work work Maquina_Auto_ofe_pro.vho
vcom -work work Maquina_Auto.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Maquina_AutoTop_vhd_vec_tst
vcd file -direction Maquina_Auto_ofe_pro.msim.vcd
vcd add -internal Maquina_AutoTop_vhd_vec_tst/*
vcd add -internal Maquina_AutoTop_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

