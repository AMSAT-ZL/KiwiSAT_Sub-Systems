onerror {resume}
quietly virtual signal -install /simple_tests/TH { /simple_tests/TH/ADD[3:0]} RAMDISK_ADDR
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {CPU CONTROL}
add wave -noupdate -format Logic /simple_tests/TH/nRESET
add wave -noupdate -format Logic /simple_tests/TH/Xin
add wave -noupdate -format Logic /simple_tests/TH/cpuCLKOUT
add wave -noupdate -divider {CPU BUS}
add wave -noupdate -format Logic /simple_tests/TH/ALE
add wave -noupdate -format Literal -radix hexadecimal /simple_tests/TH/MADD
add wave -noupdate -format Literal -radix hexadecimal /simple_tests/TH/ADD
add wave -noupdate -format Literal -radix hexadecimal /simple_tests/TH/DATA
add wave -noupdate -format Logic /simple_tests/TH/nRD
add wave -noupdate -format Logic /simple_tests/TH/nWR
add wave -noupdate -format Logic /simple_tests/TH/DTnR
add wave -noupdate -format Literal /simple_tests/TH/nGCS
add wave -noupdate -divider {INSTRUCTION FETCH}
add wave -noupdate -format Logic /simple_tests/TH/nBOOTCS
add wave -noupdate -divider EDACMEM
add wave -noupdate -format Logic /simple_tests/TH/nECS0
add wave -noupdate -format Logic /simple_tests/TH/nECS1
add wave -noupdate -format Literal -radix hexadecimal /simple_tests/TH/E0DATA
add wave -noupdate -format Literal -radix hexadecimal /simple_tests/TH/E1DATA
add wave -noupdate -format Literal -radix hexadecimal /simple_tests/TH/E2DATA
add wave -noupdate -format Logic /simple_tests/TH/nEWR
add wave -noupdate -format Logic /simple_tests/TH/nERD
add wave -noupdate -format Logic /simple_tests/TH/nIOCS2a
add wave -noupdate -divider {SPI INTERFACE}
add wave -noupdate -format Literal /simple_tests/TH/nSPICS
add wave -noupdate -format Logic /simple_tests/TH/SPICLK
add wave -noupdate -format Logic /simple_tests/TH/MOSI
add wave -noupdate -format Literal /simple_tests/TH/MISO
add wave -noupdate -divider {INT ACK}
add wave -noupdate -format Logic /simple_tests/TH/nINTACK
add wave -noupdate -format Logic /simple_tests/TH/nRD
add wave -noupdate -divider MISC
add wave -noupdate -format Literal /simple_tests/TH/MUX
add wave -noupdate -format Logic /simple_tests/TH/nIOCS
add wave -noupdate -divider {SCC INTERFACE}
add wave -noupdate -format Logic /simple_tests/TH/nSCCCS
add wave -noupdate -format Logic /simple_tests/TH/nSCCRD
add wave -noupdate -format Logic /simple_tests/TH/nSCCWR
add wave -noupdate -divider RAMDISK
add wave -noupdate -format Logic /simple_tests/TH/nRAMDISKCS
add wave -noupdate -format Logic /simple_tests/TH/nRD
add wave -noupdate -format Logic /simple_tests/TH/nWR
add wave -noupdate -format Literal -radix hexadecimal /simple_tests/TH/RAMDISK_ADDR
add wave -noupdate -format Literal -radix hexadecimal /simple_tests/TH/DATA
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {60886444 ps} 0}
configure wave -namecolwidth 165
configure wave -valuecolwidth 79
configure wave -justifyvalue right
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {34667120 ps} {45081522 ps}
