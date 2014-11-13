LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY double IS
  PORT (data  : IN  positive;
        req   : IN  std_logic;
        q     : OUT natural;
        ack   : OUT std_logic;
        clk   : IN  std_logic;
        reset : IN  std_logic); -- async. reset
END double;

ARCHITECTURE bhv OF double IS
BEGIN

-- PSL default clock is (rising_edge(clk));


-- psl property ack_after_request is
--     always ( ( req -> eventually! ack ) abort reset='0');

-- psl property no_overlapping_request is
--     always ( ( req -> next (ack before req) ) abort not reset);

-- psl ack_after_req: assert ack_after_request;
-- psl no_overlapping_req: assert no_overlapping_request;

  PROCESS(reset,clk)
    VARIABLE cnt : natural := 0;
    VARIABLE rdy : boolean := TRUE;
  BEGIN
    IF reset='0' THEN
      ack <='0';
      cnt := 0;
      q <= 0;
      rdy := TRUE;
    ELSIF rising_edge(clk) THEN
      ack<= '0';
      IF req='1' THEN
        cnt := 1; rdy := FALSE;
      ELSIF (cnt < data) and not rdy THEN
        cnt := cnt + 1;
      ELSIF not rdy THEN
        rdy := TRUE;
        ack <= '1';
        q <= 2 * data;
      ELSE
        ack <= '0';
        q <= 0;
      END IF;
    END IF;
  END PROCESS;
END bhv;


