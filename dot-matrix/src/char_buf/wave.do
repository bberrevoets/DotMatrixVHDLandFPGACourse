onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /char_buf_tb/clk
add wave -noupdate /char_buf_tb/rst
add wave -noupdate /char_buf_tb/wr
add wave -noupdate -radix hexadecimal /char_buf_tb/din
add wave -noupdate -radix hexadecimal /char_buf_tb/dout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 298
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
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1049983 ps}
