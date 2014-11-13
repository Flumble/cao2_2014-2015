LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY showkey IS
  PORT (
    reset     : in std_logic;
    kbclock   : IN STD_LOGIC; -- low freq. clk (~ 20 kHz) from keyboard
    kbdata    : IN STD_LOGIC; -- serial data from the keyboard
    dig0, dig1: OUT std_logic_vector(7 DOWNTO 0); -- show key pressed on display in Hex dig0 (upper 4 bits) dig1 (lower 4 bits)
	scancode  : OUT std_logic_vector(7 DOWNTO 0);
	byte_read : OUT std_logic
    );
END showkey;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY constantkey IS
  PORT (
    reset      : IN std_logic;
	clk        : IN std_logic; -- 50MHz clokc
	scancode   : IN std_logic_vector(7 DOWNTO 0);
	byte_read  : IN std_logic;
	dig2, dig3 : OUT std_logic_vector(7 DOWNTO 0); -- show key pressed on display dig2 en dig3 (resp high & low).
	key        : OUT std_logic_vector(7 DOWNTO 0)		
    );
END constantkey;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY readkey IS
  PORT (
    clk        : IN std_logic; -- high freq. clock (~ 50 MHz)
    reset      : IN std_logic;
    kbdata     : IN STD_LOGIC; -- low freq. clk (~ 20 kHz) serial data from the keyboard
    kbclock    : IN STD_LOGIC; -- clock from the keyboard
	  key        : OUT std_logic_vector(7 DOWNTO 0);
	  -- I/O check via 7-segment displays    
    dig0, dig1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- show key pressed on display
    dig2, dig3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- show key pressed on display; after processed by constant key
   );
END readkey;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY clock_generator IS
PORT  (clk     : IN std_logic;  -- 50MHz 
       reset   : IN std_logic;
	   key     : IN std_logic_vector(7 DOWNTO 0);  -- is synchronised with clk
       clk_div : OUT std_logic);
END clock_generator;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY key2pulselength IS
PORT	(key    : IN std_logic_vector(7 DOWNTO 0);
	     pulse_length : OUT INTEGER RANGE 0 TO 60000
	     );
END key2pulselength;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY pulselength2audio IS
  PORT  (clk_div    : IN std_logic;
         reset  : IN std_logic;
         pulse_length : IN INTEGER RANGE 0 TO 60000;
         audiol : OUT std_logic;
         audior : OUT std_logic
  );
END pulselength2audio;

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY tone_generation IS
  PORT (clk    : IN std_logic;
        reset  : IN std_logic;
		key    : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	    audiol : OUT std_logic;
	    audior : OUT std_logic);		
END ENTITY tone_generation;

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY organ IS
  PORT (clk  : IN std_logic;
        reset  : IN std_logic;
        kbdata   : IN STD_LOGIC; -- low freq. clk (~ 20 kHz) serial data from the keyboard
        kbclock  : IN STD_LOGIC; -- clock from the keyboard
	    audiol : OUT std_logic;
	    audior : OUT std_logic;		
		-- debug outputs
        dig0, dig1: OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- show key pressed on display
        dig2, dig3: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- show key pressed on display			
);		
END ENTITY organ;




