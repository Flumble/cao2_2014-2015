-- suppose there are two request req1, req2.
-- furthermore a signal ena is used. And the system
-- should ack if ena is followed with req1 AND req2 both true
-- (both in the next cycle after ena

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ifchain IS
END ENTITY ifchain;

ARCHITECTURE test OF ifchain IS
  SIGNAL a : std_logic_vector(3 DOWNTO 0);
  SIGNAL clk   : std_logic := '1';
  ALIAS ena   : std_logic IS a(0);
  ALIAS req1  : std_logic IS a(1);
  ALIAS req2  : std_logic IS a(2);
  ALIAS ack   : std_logic IS a(3);
BEGIN

-- psl sequence  seq IS {ena; (req1 AND req2) };

-- psl  property protocol is
--     always ( seq |=> ack ) 
--     @rising_edge(clk);

-- psl  protocol_lbl: assert protocol;

  clk <= NOT clk AFTER 5 ns;

  a <= "0000",
       "0000" AFTER 12 ns,  
       "0001" AFTER 22 ns,   
       "0010" AFTER 32 ns,   
       "0000" AFTER 42 ns,  
       "0001" AFTER 52 ns,  
       "0110" AFTER 62 ns,  
       "1000" AFTER 72 ns,  
       "0000" AFTER 82 ns,  
       "0001" AFTER 92 ns,                       
       "0110" AFTER 102 ns, 
       "0000" AFTER 112 ns,
       "1000" AFTER 122 ns,
       "0000" AFTER 132 ns,
       "0000" AFTER 142 ns,
       "0000" AFTER 152 ns;  

END ARCHITECTURE test;