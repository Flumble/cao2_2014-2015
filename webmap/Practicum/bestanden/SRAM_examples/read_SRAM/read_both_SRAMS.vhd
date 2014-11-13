-- Het uitlezen van beide SRAM geheugens
-- na een reset wordt adres 0 uitgelezen: je ziet adres (2 digits) inhoud (hex) 2 digits).
-- met UP ga je het volgende adres uitlezen (t/m 255 daarna 0)
-- met DOWN naar her vorig adres (bij 0 naar het hoogste adres; 255))
-- met SELSRAM selecteer je of je de inhoud van SRAM0 (niet ingedrukt) of SRAM1 (ingedrukt)

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY read_both_SRAMS IS
  PORT (-- memory interface SRAM0
        address0   : OUT std_logic_vector(17 DOWNTO 0);  -- only 256 kB SRAM installed
        OEn0       : OUT std_logic; 
        CSn0       : OUT std_logic;
        UBn0, LBn0 : OUT std_logic;
        WEn0       : OUT std_logic;
        data0      : INOUT std_logic_vector(15 DOWNTO 0);
        -- memory interface SRAM 1
        address1   : OUT std_logic_vector(17 DOWNTO 0);  -- only 256 kB SRAM installed
        OEn1       : OUT std_logic; 
        CSn1       : OUT std_logic;
        UBn1, LBn1 : OUT std_logic;
        WEn1       : OUT std_logic;
        data1      : INOUT std_logic_vector(15 DOWNTO 0);
        -- general I/O
        RSTn     : IN std_logic;
        clk      : IN std_logic;
        up       : IN std_logic;
        down     : IN std_logic;
        selsram  : IN std_logic;
        dig0, dig1, dig2, dig3, dig4, dig5 : OUT std_logic_vector(7 DOWNTO 0)
       );
END read_both_SRAMS;

ARCHITECTURE bhv OF read_both_SRAMS IS
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
  
  SIGNAL up_s, down_s : std_logic;
  SIGNAL address_i : std_logic_vector(17 DOWNTO 0);

BEGIN

  OEn0 <='0'; CSn0<='0'; UBn0 <='0'; LBn0<='0'; WEn0<='1';
  OEn1 <='0'; CSn1<='0'; UBn1 <='0'; LBn1<='0'; WEn1<='1';  

  n: ENTITY work.ontdenderen  -- Debouncing
     GENERIC MAP (100000)
     PORT MAP (clk, RSTn, up, up_s);

  p: ENTITY work.ontdenderen  -- Debouncing
     GENERIC MAP (100000)
     PORT MAP (clk, RSTn, down, down_s);  
  

  PROCESS(RSTn,clk)
    VARIABLE adr : integer RANGE 0 TO 255;
    VARIABLE previous_up, previous_down : std_logic;
  BEGIN
    IF RSTn='0'THEN
      adr := 0;
      previous_up := '1'; previous_down := '1';
      address_i <= (OTHERS => '0');
    ELSIF rising_edge(clk) THEN
      IF      up_s='0' AND   previous_up='1' THEN
        IF adr < 255 THEN adr := adr + 1; END IF;
      ELSIF down_s='0' AND previous_down='1' THEN
        IF adr > 0 THEN adr := adr - 1; END IF;      
      END IF;
      address_i <= std_logic_vector(to_unsigned(adr,18));
      previous_up := up_s; previous_down:=down_s;
    END IF;
  END PROCESS;

  address0 <= address_i;
  address1 <= address_i;  
  
  dig0 <= hex2display (address_i(7 DOWNTO 4));
  dig1 <= hex2display (address_i(3 DOWNTO 0));
  dig2 <= hex2display (data0(15 DOWNTO 12)) WHEN selsram='1' ELSE hex2display (data1(15 DOWNTO 12));
  dig3 <= hex2display (data0(11 DOWNTO  8)) WHEN selsram='1' ELSE hex2display (data1(11 DOWNTO  8));    
  dig4 <= hex2display (data0( 7 DOWNTO  4)) WHEN selsram='1' ELSE hex2display (data1( 7 DOWNTO  4));
  dig5 <= hex2display (data0( 3 DOWNTO  0)) WHEN selsram='1' ELSE hex2display (data1( 3 DOWNTO  0));      
END bhv;