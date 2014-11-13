LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY blinking_light IS
  PORT (clk, reset : IN std_logic;
        led : OUT std_logic);
END ENTITY blinking_light;

ARCHITECTURE bhv OF blinking_light IS

BEGIN
  PROCESS(clk,reset)

  BEGIN
    -- NO VHDL CODE HERE
    IF reset='0' THEN
 
 
 
    ELSIF falling_edge(clk) THEN



    END IF;
    -- NO VHDL CODE HERE	
  END PROCESS;


  
END;
