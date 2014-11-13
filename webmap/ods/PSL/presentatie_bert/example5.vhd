-- the until does not require that, in this example, busy occurs when ack occurs.
-- the until_ does requires this!

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ifchain IS
END ENTITY ifchain;

ARCHITECTURE test OF ifchain IS
  SIGNAL a : std_logic_vector(2 DOWNTO 0);
  ALIAS  req  : std_logic IS a(0);
  ALIAS  busy : std_logic IS a(1);
  ALIAS  ack  : std_logic IS a(2);
  SIGNAL clk : std_logic := '1';
BEGIN

-- psl  property demo is
--     always ( req -> next ( busy until ack ) )
--     @rising_edge(clk);

-- psl  no_req_overlap: assert demo;

-- psl  property overlap is
--     always ( req -> next ( busy until_ ack ) )
--     @rising_edge(clk);

-- psl  req_overlap:assert overlap;

  clk <= NOT clk AFTER 5 ns;

  a <= "000",
       "001" AFTER 12 ns,  
       "010" AFTER 22 ns,  
       "010" AFTER 32 ns,  
       "010" AFTER 42 ns,  
       "100" AFTER 52 ns,  
       "000" AFTER 62 ns,  
       "001" AFTER 72 ns,  
       "010" AFTER 82 ns,  
       "110" AFTER 92 ns,  
       "001" AFTER 102 ns, 
       "010" AFTER 112 ns,
       "000" AFTER 122 ns,
       "100" AFTER 132 ns;  

END ARCHITECTURE test;