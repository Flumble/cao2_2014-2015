LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY organ_with_recorder IS
  PORT (clk       : IN std_logic;
        reset     : IN std_logic;
        kbdata    : IN STD_LOGIC; -- low freq. clk (~ 20 kHz) serial data from the keyboard
        kbclock   : IN STD_LOGIC; -- clock from the keyboard
	    audiol    : OUT std_logic;
	    audior    : OUT std_logic;		
		-- debug outputs
        dig0, dig1: OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- show key pressed on display
        dig2, dig3: OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- show key pressed on display	
        -- recorder I/O
        rec       : IN std_logic;
        stop      : IN std_logic;
        play      : IN std_logic;
        status    : OUT std_logic_vector(2 DOWNTO 0);
        -- memory interface
        address   : OUT std_logic_vector(17 DOWNTO 0);
        OEn       : OUT std_logic;
        CSn       : OUT std_logic;
        UBn       : OUT std_logic;
	    LBn       : OUT std_logic;
	    WEn       : OUT std_logic;
        data      : INOUT std_logic_vector(15 DOWNTO 0)
  );		
END ENTITY organ_with_recorder;

