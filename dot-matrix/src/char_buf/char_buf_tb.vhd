library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library dot_matrix;

entity char_buf_tb is
end char_buf_tb;

architecture sim of char_buf_tb is

  constant clock_frequency : real := 12.0e6;
  constant clock_period : time := 1 sec / clock_frequency;

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
  begin

    -- Reset strobe
    wait for 10 * clock_period;
    rst <= '0';
  end process;

end architecture;