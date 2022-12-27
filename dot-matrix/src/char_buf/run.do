vsim -gui -onfinish stop -msgmode both dot_matrix_sim.char_buf_tb
do char_buf/wave.do
run -all
