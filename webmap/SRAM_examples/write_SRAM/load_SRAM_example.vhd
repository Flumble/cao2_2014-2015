--------------------------------------------------------------
-- Project          : A simple example how to store data in both SRAMs on the livedesign board.
--                  
-- 
-- File             : load_SRAM_example.vhd
--
-- Related File(s)  : 
--
-- Author           : E. Molenkamp, University of Twente, the Netherlands
-- Email            : e.molenkamp@utwente.nl
-- 
-- Project          : Computer Organization
-- Creation Date    : 22 december 2010
-- 
-- Contents         : Design entity of load_SRAM_example.
--
-- Change Log 
--   Author         : 
--   Email          : 
--   Date           :  
--   Changes        :
--
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY load_SRAM_example IS
  PORT (
    -- memory interface SRAM 1
    address1   : OUT std_logic_vector(17 DOWNTO 0);  -- only 256 kB SRAM installed
    OEn1       : OUT std_logic; 
    CSn1       : OUT std_logic;
    UBn1, LBn1 : OUT std_logic;
    WEn1       : OUT std_logic;
    data1      : INOUT std_logic_vector(15 DOWNTO 0);  
    -- memory interface SRAM 1
    address2   : OUT std_logic_vector(17 DOWNTO 0);  -- only 256 kB SRAM installed
    OEn2       : OUT std_logic; 
    CSn2       : OUT std_logic;
    UBn2, LBn2 : OUT std_logic;
    WEn2       : OUT std_logic;
    data2      : INOUT std_logic_vector(15 DOWNTO 0);  
    --- 
    rst      : IN  std_logic;  -- active low
    clk      : IN  std_logic
  );
END ENTITY load_SRAM_example;


ARCHITECTURE demo OF load_SRAM_example IS
  SIGNAL Dout       : std_logic_vector(31 DOWNTO 0);
  SIGNAL Address    : std_logic_vector(17 DOWNTO 0);
  SIGNAL WEn1i, WEn2i, RSTi : std_logic;
BEGIN

  LBn1 <= '0'; UBn1 <= '0';
  LBn2 <= '0'; UBn2 <= '0';
  
  edge_detection: PROCESS(clk)
  BEGIN
    IF falling_edge(clk) THEN
      rsti <= rst;
    END IF;
  END PROCESS;

  PROCESS(clk,rsti)
    VARIABLE i : INTEGER RANGE 0 TO 5;
    VARIABLE rising_edge_we : BOOLEAN;
  BEGIN
    IF rsti='0' THEN
      CSn1 <= '1'; WEn1i <= '1';
      CSn2 <= '1'; WEn2i <= '1';
      Address <= (OTHERS => '1');
      Dout    <= (OTHERS => 'Z');
      CSn1 <= '1'; WEn1i <= '1'; CSn2 <= '1'; WEn2i <= '1';
      i := 0;
      rising_edge_we := FALSE;
    ELSIF rising_edge(clk) THEN
      IF i < 5 THEN
        IF NOT rising_edge_we THEN
          rising_edge_we := TRUE;
          address <= std_logic_vector(to_unsigned(i,18));
          Dout  <= std_logic_vector(to_unsigned(2*i,32));
          CSn1 <= '0'; WEn1i <= '0'; CSn2 <= '0'; WEn2i <= '0';
          i := i+1;
        ELSE
          rising_edge_we := FALSE;
          WEn1i <= '1'; WEn2i <= '1';        
        END IF;
      END IF;
    END IF;
  END PROCESS;

  data1 <= dout(15 DOWNTO 0)  WHEN WEn1i='0' ELSE (OTHERS=>'Z');
  data2 <= dout(31 DOWNTO 16) WHEN WEn2i='0' ELSE (OTHERS=>'Z');
  address1 <= address;
  address2 <= address;
  
  WEn1 <= WEn1i; OEn1 <= '1';
  WEn2 <= WEn2i; OEn2 <= '1';
  
END demo;
