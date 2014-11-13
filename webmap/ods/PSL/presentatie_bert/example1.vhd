
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ifchain IS
END ENTITY ifchain;

ARCHITECTURE test OF ifchain IS
  SIGNAL a    : std_logic_vector(4 DOWNTO 0);
  SIGNAL clk  : std_logic := '1';
  ALIAS req   : std_logic IS a(0);
  ALIAS ack   : std_logic IS a(1);
  ALIAS start : std_logic IS a(2);
  ALIAS busy  : std_logic IS a(3);
  ALIAS end1  : std_logic IS a(4);
BEGIN

-- psl property ex1 is
--     always ( {req;ack} |=> {start; busy[+]; end1} )
--     @rising_edge(clk);

-- psl  tst_ex1: assert ex1;

-- psl property ex2 is
--     always ( {req;ack} |=> {start; busy[*]; end1} )
--     @rising_edge(clk);

-- psl  tst_ex2: assert ex2;

  clk <= NOT clk AFTER 5 ns;

  a <= "00000",
       "00001" AFTER  12 ns,  
       "00010" AFTER  22 ns,   
       "00100" AFTER  32 ns,  
       "10000" AFTER  42 ns,  
       "10001" AFTER  52 ns,  
       "00010" AFTER  62 ns,  
       "00100" AFTER  72 ns,  
       "01000" AFTER  82 ns,  
       "01001" AFTER  92 ns,                        
       "10010" AFTER 102 ns, 
       "00101" AFTER 112 ns,
       "01010" AFTER 122 ns,  
       "01100" AFTER 132 ns,  
       "01000" AFTER 142 ns,  
       "10000" AFTER 152 ns,  
       "00001" AFTER 162 ns,  
       "00000" AFTER 172 ns,                        
       "00000" AFTER 182 ns, 
       "00000" AFTER 192 ns;

END ARCHITECTURE test;