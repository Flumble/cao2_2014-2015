-- approximation of sine wave (~1 kHz)

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY morsegenerator IS
port(
    clk   : IN std_logic;
    reset : IN std_logic;
    start : IN std_logic;
	
	
    number: IN  natural RANGE 0 TO 10;
    onness: OUT std_logic;
	finish: BUFFER std_logic
  );
END morsegenerator;

ARCHITECTURE behaviour OF morsegenerator IS
  FUNCTION startindex (n:natural RANGE 0 TO 9) RETURN natural IS
    BEGIN
    CASE n IS
      when 1 => RETURN 2;
      when 2 => RETURN 4;
      When 3 => RETURN 6;
      When 4 => RETURN 8;
      When 5 => RETURN 10;
      When 6 => RETURN 8;
      When 7 => RETURN 6;
      When 8 => RETURN 4;
      When 9 => RETURN 2;
      When OTHERS => RETURN 0;
      END CASE;
  END startindex;  
  
  FUNCTION morslut (n:natural RANGE 0 TO 9) RETURN std_logic_vector IS
    BEGIN
    CASE n IS
      when 1 => RETURN "0010111011101110111000";
      when 2 => RETURN "0000101011101110111000";
      When 3 => RETURN "0000001010101110111000";
      When 4 => RETURN "0000000010101010111000";
      When 5 => RETURN "0000000000101010101000";
      When 6 => RETURN "0000000011101010101000";
      When 7 => RETURN "0000001110111010101000";
      When 8 => RETURN "0000111011101110101000";
      When 9 => RETURN "0011101110111011101000";
      When OTHERS => RETURN "1110111011101110111000";
      END CASE;
  END morslut;  

  SIGNAL index: natural RANGE 0 TO 22;
--  SIGNAL cnt    : natural RANGE 0 TO 5000000;

  BEGIN 
    PROCESS (clk, reset, number, start)
      variable cnt   : natural RANGE 0 TO 5000000;
		variable finished: std_logic;
		--variable index: natural RANGE 0 TO 22;
    BEGIN  
      IF reset = '0' THEN
        cnt := 0;
        index <= 0;
		finish <= '0';
		finished := '0';
	  ELSIF start = '1' THEN
		index <= startindex(number);
		cnt := 0;
		finish <= '0';
		finished := '0';
      ELSIF rising_edge(clk) THEN
        IF cnt < 5000000 THEN
			cnt := cnt + 1;
        ELSE
			cnt := 0;
			IF index < 22 THEN
				index <= index + 1;
			ELSIF finished = '0' THEN
				finish <= '1';
			ELSIF finish = '1' THEN
				finish <= '0';
				finished := '1';
			END IF;
        END IF;
      END IF;
    END PROCESS; 

    onness <= morslut(number)(index);
END behaviour;