-- Syncs button with rising flank

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY knopcontroller IS
  PORT (
    btn  : IN  std_logic;
    clk  : IN  std_logic;
    outp : OUT std_logic
  );
END knopcontroller;

ARCHITECTURE behaviour OF knopcontroller IS
  -- SIGNAL output : std_logic := '0';
  SIGNAL onness : std_logic := '0';
  BEGIN
    PROCESS(btn, clk)
    BEGIN
      IF rising_edge(clk) THEN
        IF btn = '1' THEN
          IF onness = '0' THEN
            outp <= '1';
            onness <= '1';
          ELSE
            outp <= '0';
          END IF;
        ELSE
          outp <= '0';
          onness <= '0';
        END IF;
      END IF;
    END PROCESS;

  -- outp <= output;
END behaviour;