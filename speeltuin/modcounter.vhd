-- Counts the amount of times the input has a downward flank

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY modcounter IS
	GENERIC (max : natural := 9);

	PORT (
		inc, button_reset : IN  std_logic;
		outp : OUT natural RANGE 0 TO max;
		over : OUT std_logic
	);
END modcounter;

ARCHITECTURE behaviour OF modcounter IS
	SIGNAL output : natural RANGE 0 TO max;

BEGIN
	PROCESS(inc,button_reset)
	BEGIN
		IF button_reset = '1' THEN
			over <= '0';
			output <= 0;
		ELSIF rising_edge(inc) THEN
			IF output = max THEN
				over <= '1';
				output <= 0;
			ELSE
				over <= '0';
				output <= output + 1;
			END IF;
		END IF;
	END PROCESS;

	outp <= output;
END behaviour;