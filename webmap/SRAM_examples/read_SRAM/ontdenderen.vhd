-- debouncing

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY ontdenderen IS
  GENERIC (nr_cycles : natural := 5);
  PORT (clk  : IN  std_logic;
        RSTn : IN  std_logic;
        bi   : IN  std_logic;
        bo   : OUT std_logic
   );
END ontdenderen;

ARCHITECTURE bhv OF ontdenderen IS


BEGIN
  PROCESS(RSTn, clk)
    VARIABLE cnt : natural RANGE 0 TO nr_cycles;
	TYPE states IS (s0, S1);
	VARIABLE state : states;
  BEGIN
    IF RSTN='0' THEN
      cnt := 0;
      bo <= '1';
	  state := S1;
    ELSIF rising_edge(clk) THEN
      CASE state IS
	    WHEN S0 => IF bi='1' THEN
                     IF cnt < nr_cycles 
                       THEN cnt := cnt +1;
                       ELSE cnt := 0; state := S1;
                     END IF;
                     bo <= '0';					 
                   END IF;		
	    WHEN S1 => IF bi='0' THEN
                     IF cnt < nr_cycles 
                       THEN cnt := cnt +1;
                       ELSE cnt := 0; state := S0;
                     END IF;
                     bo <= '1';					 
                   END IF;
      END CASE;
    END IF;
  END PROCESS;
  
END bhv;