library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library dot_matrix;

entity char_buf_tb is
end char_buf_tb;

architecture sim of char_buf_tb is

  signal clk : std_logic := '1';
  signal rst : std_logic := '1';
  signal wr : std_logic := '0';
  signal din : std_logic_vector(7 downto 0) := (others => '0');
  signal dout : std_logic_vector(7 downto 0);

begin

  DUT : entity dot_matrix.char_buf(rtl)
    port map(
      clk => clk,
      rst => rst,
      wr => wr,
      din => din,
      dout => dout
    );

end architecture;