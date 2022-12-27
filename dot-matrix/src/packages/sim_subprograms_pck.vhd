library ieee;
use ieee.std_logic_1164.all;

library dot_matrix_sim;
use dot_matrix_sim.sim_constants.all;

use std.env.finish;
use std.textio.all;

package sim_subprograms is

  -- Generate the clock signal
  procedure gen_clock(signal clk : inout std_logic);

  -- Print message with test OK
  procedure print_test_ok;
end package;

package body sim_subprograms is

  procedure gen_clock(signal clk : inout std_logic) is
  begin
    clk <= not clk after clock_period / 2;
  end procedure;

  procedure print_test_ok is
    variable str : line;
  begin
    write(str, string'("Test OK"));
    writeline(output, str);
  end procedure;

end package body;