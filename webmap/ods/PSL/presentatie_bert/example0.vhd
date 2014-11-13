ENTITY ifchain IS
END ENTITY ifchain;

ARCHITECTURE test OF ifchain IS
  SIGNAL a    : bit_vector(2 DOWNTO 0) := "111";
  SIGNAL y1, y2 : bit;
  SIGNAL clk  : bit := '1';
BEGIN

  clk <= NOT clk AFTER 5 ns;

  a <= "010",
       "001" AFTER  12 ns,  
       "011" AFTER  22 ns,   
       "101" AFTER  32 ns;

  y1 <= a(0) and a(1);
 
  PROCESS(a)
  BEGIN
    IF a(0)='1' THEN
      y2 <= '0';
    ELSIF a(1)='1' THEN
      y2 <= '1';
    ELSIF a="000" THEN
      y2 <= '1';
    ELSE
      y2 <= '0';
    END IF;
  END PROCESS;


END ARCHITECTURE test;