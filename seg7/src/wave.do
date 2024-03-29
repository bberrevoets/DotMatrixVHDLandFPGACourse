onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top_tb/clk
add wave -noupdate /top_tb/digit_sel
add wave -noupdate /top_tb/rst_n
add wave -noupdate -radix hexadecimal /top_tb/segments
add wave -noupdate /top_tb/DUT/shift_reg
add wave -noupdate /top_tb/DUT/rst
add wave -noupdate -radix decimal /top_tb/DUT/tick_counter
add wave -noupdate /top_tb/DUT/tick
add wave -noupdate /top_tb/DUT/digit
add wave -noupdate -radix unsigned -childformat {{/top_tb/DUT/alt_counter(1) -radix unsigned} {/top_tb/DUT/alt_counter(0) -radix unsigned}} -subitemconfig {/top_tb/DUT/alt_counter(1) {-height 16 -radix unsigned} /top_tb/DUT/alt_counter(0) {-height 16 -radix unsigned}} /top_tb/DUT/alt_counter
add wave -noupdate /top_tb/DUT/bcd_state
add wave -noupdate /top_tb/DUT/digits
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 1
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {115500 ms}
