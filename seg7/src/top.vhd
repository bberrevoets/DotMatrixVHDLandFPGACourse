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

  digit <= 0;

  ENCODER_PROC : PROCESS (digit)

    -- Segments from the PmodSSD datasheet
    CONSTANT A : INTEGER := 0;
    CONSTANT B : INTEGER := 1;
    CONSTANT C : INTEGER := 2;
    CONSTANT D : INTEGER := 3;
    CONSTANT E : INTEGER := 4;
    CONSTANT F : INTEGER := 5;
    CONSTANT G : INTEGER := 6;

  BEGIN
    CASE digit IS

      WHEN 0 =>
        segments(A) <= '1';
        segments(B) <= '1';
        segments(C) <= '1';
        segments(D) <= '1';
        segments(E) <= '1';
        segments(F) <= '1';
        segments(G) <= '0';

      WHEN 8 =>
        segments <= "1111111";

      WHEN OTHERS =>
        segments <= "0000000";

    END CASE;
  END PROCESS;

END ARCHITECTURE;