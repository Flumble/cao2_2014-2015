-- before.
-- after a request first an acknowledge should occur before a new request is asserted.
-- In this example this is shown with a(0) (request) and a(1) (acknowledge).
-- If the before_ is used a new request is allowed at the same time as the acknowledge.
-- after an a(0) first an a(1) shoul

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ifchain IS
END ENTITY ifchain;

ARCHITECTURE test OF ifchain IS
  SIGNAL a : std_logic_vector(1 DOWNTO 0);
  SIGNAL clk : std_logic := '1';
  ALIAS  req : std_logic IS a(0);
  ALIAS  ack : std_logic IS a(1);
BEGIN

-- psl  property protocol is
--     always ( req -> eventually! ack )
--     @rising_edge(clk);

-- psl  protocol_lbl: assert protocol;

-- psl  property ack_follows_req is
--     always ( req -> next (ack before req) )
--     @rising_edge(clk);

-- psl  ack_follows_req_lbl: assert ack_follows_req;

  clk <= NOT clk AFTER 5 ns;

  a <= "00",
       "01" AFTER 12 ns,  
       "00" AFTER 22 ns,   
       "01" AFTER 32 ns,   
       "00" AFTER 42 ns,  
       "10" AFTER 52 ns,  
       "00" AFTER 62 ns,  
       "01" AFTER 72 ns,  
       "00" AFTER 82 ns,  
       "10" AFTER 92 ns,                       
       "00" AFTER 102 ns, 
       "11" AFTER 112 ns,
       "00" AFTER 122 ns,
       "00" AFTER 132 ns,
       "01" AFTER 142 ns,
       "00" AFTER 152 ns;  

END ARCHITECTURE test;