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

  COMPONENT audio_interface IS
    PORT
    ( 
      LDATA, RDATA    : IN std_logic_vector(15 downto 0); -- parallel external data inputs
      clk, Reset      : IN std_logic; 
      INIT_FINISH     : OUT std_logic;
      adc_full        : OUT std_logic;
      data_over       : OUT std_logic; -- sample sync pulse
      AUD_MCLK        : OUT std_logic; -- Codec master clock OUTPUT
      AUD_BCLK        : IN std_logic; -- Digital Audio bit clock
      AUD_ADCDAT      : IN std_logic;
      AUD_DACDAT      : OUT std_logic; -- DAC data line
      AUD_DACLRCK     : IN std_logic; -- DAC data left/right select
      AUD_ADCLRCK     : IN std_logic; -- DAC data left/right select
      I2C_SDAT        : OUT std_logic; -- serial interface data line
      I2C_SCLK        : OUT std_logic;  -- serial interface clock
      ADCDATA         : OUT std_logic_vector(31 downto 0)
    );
  END COMPONENT audio_interface;

  SIGNAL plus, overflow : std_logic;
  SIGNAL unit1, unit10 : natural;
  SIGNAL data : std_logic_vector(15 downto 0);

  BEGIN
    G1: knopcontroller  PORT MAP(not(btn), clk, plus);
    G2: modcounter      PORT MAP(plus, not(rst), unit1, overflow);
    G3: modcounter      PORT MAP(overflow, not(rst), unit10, open);
    G4: display         PORT MAP(std_logic_vector(to_unsigned(unit1, 4)), cnt_unit);
    G5: display         PORT MAP(std_logic_vector(to_unsigned(unit10, 4)), cnt_ten);
    G6: audio_interface PORT MAP (data,data,clk,reset,init_finish,OPEN,OPEN,AUD_MCLK,AUD_BCLK,'0',AUD_DACDAT,AUD_DACLRCK,'0',I2C_SDAT,I2C_SCLK,OPEN);
    G7: toongenerator   PORT MAP (clk, not(rst), not(btn), data)
END structure;