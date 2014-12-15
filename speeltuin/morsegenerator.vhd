-- approximation of sine wave (~1 kHz)

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY morsegenerator IS
	PORT (
		clock, reset, start : IN std_logic;
		number : IN  natural RANGE 0 TO 10;
		
		onness, finished: OUT std_logic
	);
END morsegenerator;

ARCHITECTURE behaviour OF morsegenerator IS
	FUNCTION start_index (n:natural RANGE 0 TO 9) RETURN natural IS
		BEGIN
		CASE n IS
			WHEN 1 => RETURN 2;
			WHEN 2 => RETURN 4;
			WHEN 3 => RETURN 6;
			WHEN 4 => RETURN 8;
			WHEN 5 => RETURN 10;
			WHEN 6 => RETURN 8;
			WHEN 7 => RETURN 6;
			WHEN 8 => RETURN 4;
			WHEN 9 => RETURN 2;
			WHEN OTHERS => RETURN 0;
			END CASE;
	END start_index;  
	
	FUNCTION morse_lut (n:natural RANGE 0 TO 9) RETURN std_logic_vector IS
		BEGIN
		CASE n IS
			WHEN 1 => RETURN "000010111011101110111000";
			WHEN 2 => RETURN "000000101011101110111000";
			WHEN 3 => RETURN "000000001010101110111000";
			WHEN 4 => RETURN "000000000010101010111000";
			WHEN 5 => RETURN "000000000000101010101000";
			WHEN 6 => RETURN "000000000011101010101000";
			WHEN 7 => RETURN "000000001110111010101000";
			WHEN 8 => RETURN "000000111011101110101000";
			WHEN 9 => RETURN "000011101110111011101000";
			WHEN OTHERS => RETURN "001110111011101110111000";
			END CASE;
	END morse_lut;  

	SIGNAL index: natural RANGE 0 TO 24;

BEGIN 
	PROCESS (clock, reset, number, start)
		VARIABLE cnt : natural RANGE 0 TO 5000000;

	BEGIN  
		IF reset = '0' THEN
			cnt := 0;
			index <= 0;
			finished <= '0';
		ELSIF start = '1' THEN
			index <= start_index(number);
			cnt := 0;
			finished <= '0';
		ELSIF rising_edge(clock) THEN
			IF cnt < 5000000 THEN
				cnt := cnt + 1;
			ELSE
				cnt := 0;
				IF index < 24 THEN
					index <= index + 1;
				ELSE
					finished <= '1';
				END IF;
			END IF;
		END IF;
	END PROCESS; 

	onness <= morse_lut(number)(index);
END behaviour;