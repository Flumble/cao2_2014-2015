LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY constant_key_simple_test IS
END constant_key_simple_test;

ARCHITECTURE test OF constant_key_simple_test IS
  FUNCTION hex2display (n:std_logic_vector(3 DOWNTO 0)) RETURN std_logic_vector IS
  BEGIN
    CASE n IS  --       hgfedcba
      WHEN "0000" => RETURN "00111111";
      WHEN "0001" => RETURN "00000110";
      WHEN "0010" => RETURN "01011011";
      WHEN "0011" => RETURN "01001111";
      WHEN "0100" => RETURN "01100110";
      WHEN "0101" => RETURN "01101101";
      WHEN "0110" => RETURN "01111101";
      WHEN "0111" => RETURN "00000111";
      WHEN "1000" => RETURN "01111111";
      WHEN "1001" => RETURN "01101111";
      WHEN "1010" => RETURN "01110111";
      WHEN "1011" => RETURN "01111100";
      WHEN "1100" => RETURN "00111001";
      WHEN "1101" => RETURN "01011110";
      WHEN "1110" => RETURN "01111001";
      WHEN OTHERS => RETURN "01110001";      
    END CASE;
  END hex2display;  
  SIGNAL reset      : std_logic;
  SIGNAL clk        : std_logic := '0';  -- init value required for oscillator description 
  SIGNAL scancode   : std_logic_vector(7 DOWNTO 0);
  SIGNAL byte_read  : std_logic;
  SIGNAL dig2, dig3 : std_logic_vector(7 DOWNTO 0);
  SIGNAL key        : std_logic_vector(7 DOWNTO 0);
  SIGNAL finished   : boolean := FALSE;  

BEGIN
  ck : ENTITY work.constantkey PORT MAP (
         reset      => reset,
         clk        => clk,
         scancode   => scancode,
         byte_read  => byte_read,
         dig2       => dig2,
         dig3       => dig3,
         key        => key    
       );

  clk <= NOT clk AFTER 10 ns WHEN not finished;     
     
  PROCESS
  BEGIN
    reset <= '0';
    byte_read <= '0';
    WAIT FOR 100 ns;
    reset <= '1';
    ASSERT key=X"00" REPORT "not in idle state" SEVERITY error;
  
    scancode <= X"3D";
    WAIT FOR 30 ns;
    byte_read <= '1', '0' after 100 ns;
    WAIT FOR 300 ns;
    ASSERT key=X"3D" REPORT "expected 3D" SEVERITY error;
  
    scancode <= X"2F"; -- no effect since not "F0"
    WAIT FOR 30 ns;
    byte_read <= '1', '0' after 100 ns;
    WAIT FOR 300 ns;  
  
    scancode <= X"F0"; -- no effect since not "F0"
    WAIT FOR 30 ns;
    byte_read <= '1', '0' after 100 ns;
    WAIT FOR 300 ns;    
    ASSERT key=X"00" REPORT "not in idle state" SEVERITY error;
  
    scancode <= X"3D";
    WAIT FOR 30 ns;
    byte_read <= '1', '0' after 100 ns;
    WAIT FOR 300 ns;
    ASSERT key=X"00" REPORT "expected 00" SEVERITY error;  -- key is released

    WAIT FOR 300 ns;
    finished <= TRUE;
    WAIT;

  END PROCESS;

END test;