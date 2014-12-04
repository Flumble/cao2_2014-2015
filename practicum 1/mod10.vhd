LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY mod10bhv IS
	PORT (
		clk, reset : IN std_logic;
		outp : OUT unsigned(3 DOWNTO 0)
	);
END mod10bhv;

ARCHITECTURE bhv OF mod10bhv IS
SIGNAL outpi : unsigned(3 DOWNTO 0);
BEGIN
	PROCESS(clk, reset)
	BEGIN
		IF reset='0' THEN
			outpi<= (OTHERS =>'0');
		ELSIF rising_edge(clk) THEN
			IF outpi<9 THEN
				outpi <= outpi + 1;
			ELSE
				outpi <= (OTHERS=>'0');
			END IF;
		END IF;
	END PROCESS;
	outp <= outpi;
END bhv;