-- In this version scancode is read on the negative edge of kbclock.
-- It counts the number of negative edges. IF 11 edges are detected the byte is read and byte_read is '1'.

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY showkey_simple_test IS
END showkey_simple_test;

ARCHITECTURE test OF showkey_simple_test IS
  SIGNAL reset : std_logic := '0';
  SIGNAL kbclock : std_logic := '1';
  SIGNAL kbdata : std_logic := '0';  
  SIGNAL dig0, dig1: std_logic_vector(7 DOWNTO 0);
  SIGNAL scancode : std_logic_vector(7 DOWNTO 0);
  SIGNAL byte_read : std_logic;

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
  
  PROCEDURE send_byte (
      CONSTANT byte    : IN std_logic_vector(7 DOWNTO 0);
      SIGNAL kbclock   : OUT std_logic;
      SIGNAL kbdata    : OUT std_logic)
  IS
    VARIABLE odd_parity : std_logic;
    VARIABLE data     : std_logic_vector(10 DOWNTO 0);
    CONSTANT half_period_kbclock : time := 18 us; -- kbclock ~ 27 KHz
  BEGIN
    -- parity
    odd_parity:='1'; -- needed in the next loop to generate ODD parity
    FOR i IN 7 DOWNTO 0 LOOP
      odd_parity := odd_parity XOR byte(i);
    END LOOP;
    data := '1' & odd_parity & byte & '0';
    -- send data
    FOR i IN 0 TO 10 LOOP
	  kbdata <= data(i);
	  kbclock <= '1';
	  WAIT FOR half_period_kbclock;
	  kbclock <= '0';
      WAIT FOR half_period_kbclock;
    END LOOP;
    kbclock <= '1';
  END send_byte;  
 
BEGIN
  sk:ENTITY work.showkey PORT MAP (
    reset     => reset,
    kbclock   => kbclock,
    kbdata    => kbdata,
    dig0      => dig0,
    dig1      => dig1,
	scancode  => scancode,
	byte_read => byte_read
  );

  PROCESS
  BEGIN
    reset <='0';
    WAIT FOR 300 us;
    reset <= '1';
    
    -- key A: 1C (hex) => 0001 1100 of hexadecimaal X"1C"
    send_byte(X"1C", kbclock, kbdata);
    ASSERT (dig0=hex2display(X"1") AND dig1=hex2display(X"C")) REPORT "expected: 1C (hex)" SEVERITY error;
    WAIT FOR 300 us;
   
    -- key B: 32 (hex) => 0011 0010 
    send_byte(X"32", kbclock, kbdata);
    ASSERT (dig0=hex2display(X"3") AND dig1=hex2display(X"2")) REPORT "expected: 32 (hex)" SEVERITY error;    
    WAIT FOR 300 us;

    -- key P: 4D (hex) => 0011 0010 
    send_byte(X"4D", kbclock, kbdata);
    ASSERT (dig0=hex2display(X"4") AND dig1=hex2display(X"D")) REPORT "expected: 4D (hex)" SEVERITY error;    
    WAIT FOR 300 us;	
    WAIT;
  END PROCESS;

END test;