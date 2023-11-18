onerror {exit -code 1}
vlib work
vcom -work work crcChecker_24bitSerial.vho
vcom -work work crcChecer_simulation.vwf.vht
vsim -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.crcChecker_24bitSerial_vhd_vec_tst
vcd file -direction crcChecker_24bitSerial.msim.vcd
vcd add -internal crcChecker_24bitSerial_vhd_vec_tst/*
vcd add -internal crcChecker_24bitSerial_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f




