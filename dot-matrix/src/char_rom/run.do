vsim -gui -onfinish stop -msgmode both dot_matrix_sim.char_rom_tb
do char_rom/wave.do
run -all
