library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.env.finish;
use std.textio.all;

library dot_matrix;
use dot_matrix.types.all;

library dot_matrix_sim;
use dot_matrix_sim.sim_constants.all;
use dot_matrix_sim.sim_subprograms.all;

entity char_rom_tb is
end char_rom_tb;

architecture sim of char_rom_tb is

  -- DUT Signals
  signal clk : std_logic := '1';
  signal addr : char_range;
  signal dout : matrix_type;

begin

  gen_clock(clk);

  DUT : entity dot_matrix.char_rom(rtl)
    port map(
      clk => clk,
      addr => addr,
      dout => dout
    );

  PROC_SEQUENCE : process
  begin
    for i in 1 to 10 loop
      wait until rising_edge(clk);
    end loop;

    print_test_ok;

    finish;
  end process;

end architecture;