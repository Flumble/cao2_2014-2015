LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY sram IS
  GENERIC (nmb_of_address_lines : positive :=5);
  PORT (address  : IN  std_logic_vector(17 DOWNTO 0);  -- only 256 kBx16 SRAM installed
        OEn      : IN  std_logic; 
        CSn      : IN  std_logic;
        UBn, LBn : IN  std_logic;
        WEn      : IN  std_logic;
        data     : INOUT std_logic_vector(15 DOWNTO 0));
END sram;

ARCHITECTURE inaccurate_model OF sram IS
   TYPE mem_tp IS ARRAY (0 TO 2**nmb_of_address_lines-1) OF std_logic_vector(15 DOWNTO 0);
   SIGNAL mem : mem_tp;
   SIGNAL addr_int : natural;
BEGIN

  addr_int<=to_integer(unsigned(address(nmb_of_address_lines-1 DOWNTO 0)));
  ASSERT address(17 DOWNTO nmb_of_address_lines)=(17 DOWNTO nmb_of_address_lines=>'0')
               REPORT "address out of modelled address range" SEVERITY note;

  PROCESS (data, CSn, UBn, LBn, addr_int, WEn)
  BEGIN
    IF (CSn='0') AND (WEn='0') THEN
	    IF UBn='0' THEN  mem(addr_int)(15 DOWNTO 8)<=data(15 DOWNTO 8); END IF;
	    IF LBn='0' THEN  mem(addr_int)( 7 DOWNTO 0)<=data( 7 DOWNTO 0); END IF;	  
	END IF;
  END PROCESS;
  
  data(15 DOWNTO 8) <= mem(addr_int)(15 DOWNTO 8)  AFTER 4 ns WHEN (OEn='0') AND (CSn='0') AND (WEn='1') AND (UBn='0') ELSE
         (OTHERS=>'Z');
  data( 7 DOWNTO 0) <= mem(addr_int)( 7 DOWNTO 0)  AFTER 4 ns WHEN (OEn='0') AND (CSn='0') AND (WEn='1') AND (LBn='0') ELSE
         (OTHERS=>'Z');		 
		 
END inaccurate_model;