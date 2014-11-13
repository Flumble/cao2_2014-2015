-- suppose there are two request req1, req2.
-- furthermore a signal ena is used. And the system
-- should ack if ena is followed with req1 AND req2 both true
-- (both in the next cycle after ena

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ifchain IS
END ENTITY ifchain;

ARCHITECTURE test OF ifchain IS
  SIGNAL clk : std_logic := '0';
  SIGNAL a   : std_logic_vector(1 DOWNTO 0) := "00";
  ALIAS req  : std_logic IS a(0);
  ALIAS ack  : std_logic IS a(1);
BEGIN

-- PSL sequence request  IS {not (req or ack); req};
-- PSL sequence start_s  IS {req[*]; req AND ack};
-- PSL sequence middle_s IS {(req AND ack)[*]};
-- PSL sequence end_s    IS {(not req)[*]; (not req) and (not ack)};

-- PSL property check_handshake is
--   always ({request} |=> {start_s;middle_s; end_s}) @rising_edge(clk);
-- PSL assert check_handshake;

-- psl  property illegal_ack is
--     never { (not (req or ack));ack }
--     @rising_edge(clk);

-- psl  assert illegal_ack;

  clk <= NOT clk AFTER 5 ns;

  a <= "00",
       "01" AFTER 12 ns,  
       "01" AFTER 22 ns,   
       "11" AFTER 32 ns,   
       "11" AFTER 42 ns,  
       "10" AFTER 52 ns,  
       "00" AFTER 62 ns,  
       "01" AFTER 72 ns,  
       "00" AFTER 82 ns,  
       "01" AFTER 92 ns,                       
       "11" AFTER 102 ns, 
       "11" AFTER 112 ns,
       "10" AFTER 122 ns,
       "11" AFTER 132 ns,
       "10" AFTER 142 ns,
       "00" AFTER 152 ns,  
       "10" AFTER 162 ns,
       "00" AFTER 172 ns,
       "00" AFTER 182 ns; 


END ARCHITECTURE test;