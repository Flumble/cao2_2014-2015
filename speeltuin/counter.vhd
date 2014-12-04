-- Counts the amount of times the input has a downward flank

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY counter IS
  PORT (
    cnt  : IN  bit;
    rst  : IN  bit;
    clk  : IN  bit;
    outp : OUT unsigned(5 DOWNTO 0)
  );
END counter;

ARCHITECTURE behaviour OF counter IS
  SIGNAL output : unsigned(5 DOWNTO 0);
  BEGIN
    PROCESS(cnt,rst,clk)
    BEGIN
      IF rst == '0' THEN
        output <= (OTHERS => '0');
      ELSIF rising_edge(clk) AND rising_edge(cnt) THEN
        output = output + 1;
      END IF;
    END PROCESS;

  outp <= output;
END behaviour;