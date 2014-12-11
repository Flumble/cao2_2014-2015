-- approximation of sine wave (~1 kHz)

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY toongenerator IS
port(
    clk   : IN std_logic;
    reset : IN std_logic;
    onness: IN std_logic;
    data  : OUT std_logic_vector(15 downto 0)
  );
END toongenerator;

ARCHITECTURE behaviour OF toongenerator IS
  signal index  : unsigned(5 downto 0);
  FUNCTION sinlut (n:std_logic_vector(5 DOWNTO 0)) RETURN std_logic_vector IS
    BEGIN
    CASE n IS  --       6 bits to 2s complement 16 bit sine wave
      when "000000" => RETURN "0000000000000000";
      when "000001" => RETURN "0000001100100010";
      When "000010" => RETURN "0000011000111101";
      When "000011" => RETURN "0000100101001000";
      When "000100" => RETURN "0000110000111101";
      When "000101" => RETURN "0000111100010011";
      When "000110" => RETURN "0001000111000101";
      When "000111" => RETURN "0001010001001010";
      When "001000" => RETURN "0001011010011110";
      When "001001" => RETURN "0001100010111001";
      When "001010" => RETURN "0001101010011000";
      When "001011" => RETURN "0001110000110110";
      When "001100" => RETURN "0001110110001110";
      When "001101" => RETURN "0001111010011101";
      When "001110" => RETURN "0001111101100001";
      When "001111" => RETURN "0001111111010111";
      When "010000" => RETURN "0001111111111111";
      When "010001" => RETURN "0001111111011000";
      When "010010" => RETURN "0001111101100011";
      When "010011" => RETURN "0001111010100001";
      When "010100" => RETURN "0001110110010011";
      When "010101" => RETURN "0001110000111100";
      When "010110" => RETURN "0001101010100000";
      When "010111" => RETURN "0001100011000010";
      When "011000" => RETURN "0001011010100111";
      When "011001" => RETURN "0001010001010100";
      When "011010" => RETURN "0001000111001111";
      When "011011" => RETURN "0000111100011111";
      When "011100" => RETURN "0000110001001001";
      When "011101" => RETURN "0000100101010101";
      When "011110" => RETURN "0000011001001010";
      When "011111" => RETURN "0000001100101111";
      When "100000" => RETURN "0000000000001101";
      When "100001" => RETURN "1111110011101010";
      When "100010" => RETURN "1111100111010000";
      When "100011" => RETURN "1111011011000100";
      When "100100" => RETURN "1111001111001110";
      When "100101" => RETURN "1111000011111000";
      When "100110" => RETURN "1110111001000110";
      When "100111" => RETURN "1110101111000000";
      When "101000" => RETURN "1110100101101100";
      When "101001" => RETURN "1110011101001110";
      When "101010" => RETURN "1110010101101110";
      When "101011" => RETURN "1110001111010000";
      When "101100" => RETURN "1110001001110110";
      When "101101" => RETURN "1110000101100110";
      When "101110" => RETURN "1110000010100010";
      When "101111" => RETURN "1110000000101010";
      When "110000" => RETURN "1110000000000000";
      When "110001" => RETURN "1110000000100110";
      When "110010" => RETURN "1110000010011010";
      When "110011" => RETURN "1110000101011010";
      When "110100" => RETURN "1110001001101000";
      When "110101" => RETURN "1110001110111110";
      When "110110" => RETURN "1110010101011000";
      When "110111" => RETURN "1110011100110110";
      When "111000" => RETURN "1110100101010000";
      When "111001" => RETURN "1110101110100010";
      When "111010" => RETURN "1110111000100110";
      When "111011" => RETURN "1111000011010110";
      When "111100" => RETURN "1111001110101010";
      When "111101" => RETURN "1111011010011110";
      When "111110" => RETURN "1111100110101010";
      When OTHERS   => RETURN "1111110011000100";
      END CASE;
  END sinlut;  

  BEGIN 
    PROCESS (clk, reset, onness) 
      variable cnt : integer RANGE 0 TO 800;
    BEGIN  
      IF reset = '0' THEN
        cnt := 0;
        index <= (OTHERS=>'0');
      ELSIF rising_edge(clk) AND onness = '1' THEN
        IF cnt < 800 THEN
          cnt := cnt + 1;
        ELSE
          cnt := 0;        
          index <= index + 1;
        END IF;
      END IF;
    END process; 

    data <= sinlut(std_logic_vector(index));
END behaviour;