transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/catarina/Documents/GitHub/aad_proj_1/crcChecker_24bitSerial/crcChecker_24bitSerial.vhd}
vcom -93 -work work {/home/catarina/Documents/GitHub/aad_proj_1/crcChecker_24bitSerial/simpleLogic.vhd}
vcom -93 -work work {/home/catarina/Documents/GitHub/aad_proj_1/crcChecker_24bitSerial/control.vhd}
vcom -93 -work work {/home/catarina/Documents/GitHub/aad_proj_1/crcChecker_24bitSerial/storeDev.vhd}
vcom -93 -work work {/home/catarina/Documents/GitHub/aad_proj_1/crcChecker_24bitSerial/LinarFeedback_ShiftRegister.vhd}
vcom -93 -work work {/home/catarina/Documents/GitHub/aad_proj_1/crcChecker_24bitSerial/comparator.vhd}

