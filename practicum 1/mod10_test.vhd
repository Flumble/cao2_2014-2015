
ENTITY display_test IS
END display_test;

ARCHITECTURE exhaustive OF display_test IS
  SIGNAL hax : unsigned(3 DOWNTO 0);
  SIGNAL displ : std_logic_vector(6 DOWNTO 0);

BEGIN   
  PROCESS
  BEGIN
    FOR i IN 0 TO 15 LOOP
      hax <= to_unsigned(i,4);
      WAIT FOR 20 ns;
      -- user has to verify the result. (or a check with golden unit here)
    END LOOP;
    WAIT;
  END PROCESS;

  h2d : ENTITY work.display(bhv)
    PORT MAP (hex => std_logic_vector(hax), dig => displ);
END exhaustive;

