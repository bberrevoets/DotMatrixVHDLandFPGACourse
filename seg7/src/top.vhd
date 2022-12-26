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

    -- Segments from the PmodSSD datasheet
    CONSTANT A : INTEGER := 0;
    CONSTANT B : INTEGER := 1;
    CONSTANT C : INTEGER := 2;
    CONSTANT D : INTEGER := 3;
    CONSTANT E : INTEGER := 4;
    CONSTANT F : INTEGER := 5;
    CONSTANT G : INTEGER := 6;

  BEGIN
    segments <= (OTHERS => '1');

    CASE digit IS

      WHEN 0 =>
        segments(G) <= '0';

      WHEN 1 =>
        segments <= (OTHERS => '0');
        segments(B) <= '1';
        segments(C) <= '1';

      WHEN 2 =>
        segments(C) <= '0';
        segments(F) <= '0';

      WHEN 3 =>
        segments(E) <= '0';
        segments(F) <= '0';

      WHEN 4 =>
        segments(A) <= '0';
        segments(D) <= '0';
        segments(E) <= '0';

      WHEN 5 =>
        segments(B) <= '0';
        segments(E) <= '0';

      WHEN 6 =>
        segments(B) <= '0';

      WHEN 7 =>
        segments(D) <= '0';
        segments(E) <= '0';
        segments(F) <= '0';
        segments(G) <= '0';

      WHEN 8 =>

      WHEN 9 =>
        segments(E) <= '0';

      WHEN OTHERS =>
        segments <= (OTHERS => '0');

    END CASE;
  END PROCESS;

END ARCHITECTURE;