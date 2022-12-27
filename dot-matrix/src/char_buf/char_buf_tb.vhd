library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.env.finish;
use std.textio.all;

library dot_matrix;
library dot_matrix_sim;
use dot_matrix_sim.sim_constants.all;

entity char_buf_tb is
end char_buf_tb;

architecture sim of char_buf_tb is

  signal clk : std_logic := '1';
  signal rst : std_logic := '1';
  signal wr : std_logic := '0';
  signal din : std_logic_vector(7 downto 0) := (others => '0');
  signal dout : std_logic_vector(7 downto 0);

begin

  clk <= not clk after clock_period / 2;

  DUT : entity dot_matrix.char_buf(rtl)
    port map(
      clk => clk,
      rst => rst,
      wr => wr,
      din => din,
      dout => dout
    );

  SEQUENCER_PROC : process
    variable last_din : std_logic_vector(din'range);
    variable str : line;
  begin

    -- Reset strobe
    wait for 10 * clock_period;
    rst <= '0';

    wr <= '1';
    din <= x"AA";
    wait until rising_edge(clk);
    last_din := din;
    wr <= '0';
    din <= x"00";
    wait until rising_edge(clk);

    assert dout = last_din
    report "DUT out doesn't equal last input immediatly after write"
      severity failure;

    wait for 10 * clock_period;

    assert dout = last_din
    report "DUT out doesn't equal last input after several clock preiods"
      severity failure;

    write(str, string'("Test: OK"));
    writeline(output, str);
    finish;

  end process;

end architecture;