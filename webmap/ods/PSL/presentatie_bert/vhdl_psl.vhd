-- - how to handle reset
-- - how to handle a second request if the first did not receive an acknowledge
-- - can max be infinite?  (integer'HIGH ?)

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY demo_VHDL_property IS
END demo_VHDL_property;

ARCHITECTURE demo OF demo_VHDL_property IS

  -- after a req there should be an acknowledge within min to max cycles.
  PROCEDURE verify_protocol1 (SIGNAL req, ack, clk : IN std_logic; min, max : IN natural) IS
    VARIABLE passed : boolean;
    VARIABLE nmb : natural;
  BEGIN
    ASSERT max >= min REPORT "max is lower than min";
    LOOP
      WAIT UNTIL rising_edge(clk);
      nmb := 0;
      IF req='1' THEN
        FOR i IN 0 TO max-1 LOOP
          nmb := i;
          EXIT WHEN ack='1';
          WAIT UNTIL rising_edge(clk);
        END LOOP;
        IF    (nmb < min)                 THEN REPORT "ack too early";
        ELSIF (nmb = max-1) AND (ack='0') THEN REPORT "ack too late";
        ELSE                                   REPORT "passed";
        END IF;
      END IF;
    END LOOP;
  END verify_protocol1;

  -- after a req there should be an acknowledge within min to max cycles.
  PROCEDURE verify_protocol (SIGNAL req, ack, clk : IN std_logic; min, max : IN natural) IS
    VARIABLE nmb : natural;
  BEGIN
    ASSERT max >= min REPORT "max is lower than min";
    LOOP
      WAIT UNTIL rising_edge(clk);
      nmb := 0;
      IF req='1' THEN
        WHILE nmb <= max-1 LOOP
          nmb:=nmb+1;
          EXIT WHEN ack='1';
          WAIT UNTIL rising_edge(clk);
        END LOOP;
        IF    (nmb <= min)              THEN REPORT "ack too early";
        ELSIF (nmb = max) AND (ack='0') THEN REPORT "ack too late";
        ELSE                                 REPORT "passed";
        END IF;
      END IF;
    END LOOP;
  END verify_protocol;


  SIGNAL req,ack,clk : std_logic := '0';
  CONSTANT clk_period : TIME := 100 ns;

BEGIN

  verify_protocol(req,ack,clk,2,4);

  clk <= NOT clk AFTER clk_period/2;

  PROCESS
  BEGIN
    WAIT FOR clk_period;
    req <= '1', '0' AFTER clk_period;
    WAIT FOR clk_period;
    ack <= '1', '0' AFTER clk_period;  -- too early
    WAIT FOR 2*clk_period;
    req <= '1', '0' AFTER clk_period;
    WAIT FOR 2*clk_period;
    ack <= '1', '0' AFTER clk_period;  -- correct
    WAIT FOR 2*clk_period;
    req <= '1', '0' AFTER clk_period;
    WAIT FOR 4*clk_period;
    ack <= '1', '0' AFTER clk_period;  -- correct
    WAIT FOR 2*clk_period;
    ack <= '1', '0' AFTER clk_period;  -- correct
    WAIT FOR 2*clk_period;
    req <= '1', '0' AFTER clk_period;
    WAIT FOR 5*clk_period;
    ack <= '1', '0' AFTER clk_period;  -- too late!
    WAIT FOR 2*clk_period;
    WAIT;
  END PROCESS;

END demo;