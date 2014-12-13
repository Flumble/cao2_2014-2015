-- Zet een continu signaal om in een puls

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY puls IS
  PORT (
    input, clock : IN  std_logic;
    output : OUT std_logic
  );
END puls;

ARCHITECTURE behaviour OF puls IS
  SIGNAL activated : std_logic := '0';
  
  BEGIN
    PROCESS(input, clock)
    BEGIN
      IF rising_edge(clock) THEN
        IF input = '1' THEN
          IF activated = '0' THEN
            output <= '1';
            activated <= '1';
          ELSE
            output <= '0';
          END IF;
        ELSE
          output <= '0';
          activated <= '0';
        END IF;
      END IF;
    END PROCESS;
END behaviour;