-- Counts the amount of times the input has a downward flank

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY epicknoptime IS
	PORT (
		button_count, clock, button_reset : IN std_logic;
		cnt_ten  : OUT std_logic_vector(6 DOWNTO 0);
		cnt_unit : OUT std_logic_vector(6 DOWNTO 0);

		-- audio codec in and outputs
		init_finish : out std_logic; --lights ledg[0] when init is finished (for debugging)
		AUD_Mclock  : out std_logic; --audio master clock
		AUD_Bclock  : in std_logic; -- Digital Audio bit clock
		AUD_ADCDAT  : in std_logic;
		AUD_DACDAT  : out std_logic; -- DAC data line
		AUD_DACLRCK : in std_logic; -- DAC data left/right select
		AUD_ADCLRCK : in std_logic; -- DAC data left/right select
		I2C_SDAT    : out std_logic; -- serial interface data line
		I2C_Sclock  : out std_logic;  -- serial interface clock
	);
END epicknoptime;


ARCHITECTURE structure OF epicknoptime IS

	COMPONENT puls
		PORT (
			input, clock : IN std_logic;
			outp : OUT std_logic
		);
	END COMPONENT;

	COMPONENT modcounter
		PORT (
			inc, button_reset : IN  std_logic;
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
			LDATA, RDATA : IN std_logic_vector(15 downto 0); -- parallel external data inputs
			clock, Reset : IN std_logic; 
			INIT_FINISH  : OUT std_logic;
			adc_full     : OUT std_logic;
			data_over    : OUT std_logic; -- sample sync pulse
			AUD_Mclock   : OUT std_logic; -- Codec master clock OUTPUT
			AUD_Bclock   : IN std_logic; -- Digital Audio bit clock
			AUD_ADCDAT   : IN std_logic;
			AUD_DACDAT   : OUT std_logic; -- DAC data line
			AUD_DACLRCK  : IN std_logic; -- DAC data left/right select
			AUD_ADCLRCK  : IN std_logic; -- DAC data left/right select
			I2C_SDAT     : OUT std_logic; -- serial interface data line
			I2C_Sclock   : OUT std_logic;  -- serial interface clock
			ADCDATA      : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT audio_interface;
	
	COMPONENT toongenerator IS
	port(
			clock, reset, activate: IN std_logic;

			data : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	COMPONENT morsegenerator IS
	port(
			clock, reset, start : IN std_logic;
			
			number : IN  natural RANGE 0 TO 10;
			onness : OUT std_logic;
			finish : OUT std_logic
		);
	END COMPONENT;


	SIGNAL plus, overflow, toonness1, toonness2, nextAudio, nextStart : std_logic;
	SIGNAL unit1, unit10 : natural;
	SIGNAL data : std_logic_vector(15 downto 0);

BEGIN
	G1: puls            PORT MAP(not(button_count), clock, plus);
	G2: modcounter      PORT MAP(plus, not(button_reset), unit1, overflow);
	G3: modcounter      PORT MAP(overflow, not(button_reset), unit10, open);
	G4: display         PORT MAP(std_logic_vector(to_unsigned(unit1, 4)), cnt_unit);
	G5: display         PORT MAP(std_logic_vector(to_unsigned(unit10, 4)), cnt_ten);
	G6: audio_interface PORT MAP(data,data,clock,button_reset,init_finish,OPEN,OPEN,AUD_Mclock,AUD_Bclock,'0',AUD_DACDAT,AUD_DACLRCK,'0',I2C_SDAT,I2C_Sclock,OPEN);
	G7: toongenerator   PORT MAP(clock, button_reset, toonness1 or toonness2, data);
	G8: morsegenerator  PORT MAP(clock, button_reset, plus, unit1, toonness1, nextAudio);
	G22: puls           PORT MAP(nextAudio, clock, nextStart);
	G9: morsegenerator  PORT MAP(clock, button_reset, nextStart, unit10, toonness2, OPEN);
END structure;