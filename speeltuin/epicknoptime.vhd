-- Counts the amount of times the input has a downward flank

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY epicknoptime IS
  PORT (
    btn      : IN std_logic;
    clk      : IN std_logic;
    rst      : IN std_logic;
    cnt_ten  : OUT std_logic_vector(6 DOWNTO 0);
    cnt_unit : OUT std_logic_vector(6 DOWNTO 0)
  );
END epicknoptime;

ARCHITECTURE structure OF epicknoptime IS

  COMPONENT knopcontroller
    PORT (
      btn  : IN  std_logic;
      clk  : IN  std_logic;
      outp : OUT std_logic
    );
  END COMPONENT;

  COMPONENT modcounter
    PORT (
      inc  : IN  std_logic;
      rst  : IN  std_logic;
      outp : OUT natural RANGE 0 TO 9;
      over : OUT std_logic
    );
  END COMPONENT;

  COMPONENT display
    PORT (
      hex : IN  std_logic_vector(3 DOWNTO 0);
      dig : OUT std_logic_vector(6 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL plus, overflow : std_logic;
  SIGNAL unit1, unit10 : natural;

  BEGIN
    G1: knopcontroller PORT MAP(not(btn), clk, plus);
    G2: modcounter     PORT MAP(plus, not(rst), unit1, overflow);
    G3: modcounter     PORT MAP(overflow, not(rst), unit10, open);
    G4: display        PORT MAP(std_logic_vector(to_unsigned(unit1, 4)), cnt_unit);
    G5: display        PORT MAP(std_logic_vector(to_unsigned(unit10, 4)), cnt_ten);
END structure;