LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top IS
  PORT (
    clk : IN STD_LOGIC;
    rst_n : IN STD_LOGIC;
    segments : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    digit_sel : OUT STD_LOGIC
  );
END top;

ARCHITECTURE rtl OF top IS

  SIGNAL digit : INTEGER;

BEGIN

  digit <= 7;

  ENCODER_PROC : PROCESS (digit)
  BEGIN
    CASE digit IS

      WHEN 8 =>
        segments <= "1111111";

      WHEN OTHERS =>
      segments <= "0000000";

    END CASE;
  END PROCESS;

END ARCHITECTURE;