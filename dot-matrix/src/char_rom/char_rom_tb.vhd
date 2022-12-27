library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.env.finish;
use std.textio.all;

library dot_matrix;
library dot_matrix_sim;
use dot_matrix_sim.sim_constants.all;

entity char_rom_tb is
end char_rom_tb;

architecture sim of char_rom_tb is

  signal clk : std_logic := '1';
  signal rst : std_logic := '1';

begin

  finish;

end architecture;