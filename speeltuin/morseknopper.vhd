-- Counts the amount of times the input has a downward flank

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY morseknopper IS
	PORT (
		button_count, clock, button_reset : IN std_logic;
		
		cnt_ten  : OUT std_logic_vector(6 DOWNTO 0);
		cnt_unit : OUT std_logic_vector(6 DOWNTO 0);

		-- audio codec in and outputs
		init_finish : OUT std_logic; --lights ledg[0] when init is finished (for debugging)
		AUD_MCLK    : OUT std_logic; --audio master CLK
		AUD_BCLK    : IN std_logic; -- Digital Audio bit CLK
		AUD_ADCDAT  : IN std_logic;
		AUD_DACDAT  : OUT std_logic; -- DAC data line
		AUD_DACLRCK : IN std_logic; -- DAC data left/right select
		AUD_ADCLRCK : IN std_logic; -- DAC data left/right select
		I2C_SDAT    : OUT std_logic; -- serial interface data line
		I2C_SCLK    : OUT std_logic  -- serial interface CLK
	);
END morseknopper;


ARCHITECTURE structure OF morseknopper IS

	COMPONENT puls
		PORT (
			input, clock : IN std_logic;
			
			output : OUT std_logic
		);
	END COMPONENT;

	COMPONENT modcounter
		PORT (
			inc, reset : IN  std_logic;
			
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
		PORT (
			LDATA, RDATA : IN std_logic_vector(15 DOWNTO 0); -- parallel external data inputs
			CLK, Reset   : IN std_logic; 
			INIT_FINISH  : OUT std_logic;
			adc_full     : OUT std_logic;
			data_over    : OUT std_logic; -- sample sync pulse
			AUD_MCLK     : OUT std_logic; -- Codec master CLK OUTPUT
			AUD_BCLK     : IN std_logic; -- Digital Audio bit CLK
			AUD_ADCDAT   : IN std_logic;
			AUD_DACDAT   : OUT std_logic; -- DAC data line
			AUD_DACLRCK  : IN std_logic; -- DAC data left/right select
			AUD_ADCLRCK  : IN std_logic; -- DAC data left/right select
			I2C_SDAT     : OUT std_logic; -- serial interface data line
			I2C_SCLK     : OUT std_logic;  -- serial interface CLK
			ADCDATA      : OUT std_logic_vector(31 DOWNTO 0)
		);
	END COMPONENT audio_interface;
	
	COMPONENT toongenerator IS
		PORT (
			clock, activate: IN std_logic;

			data : OUT std_logic_vector(15 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT morsegenerator IS
		PORT (
			clock, reset, start : IN std_logic;
			number : IN  natural RANGE 0 TO 10;
			
			onness, finished : OUT std_logic
		);
	END COMPONENT;


	SIGNAL plus_een, plus_tien, toon1, toon2, eenheden_klaar, start_tientallen, minder_dan_tien : std_logic;
	SIGNAL eenheden, tientallen : natural;
	SIGNAL data : std_logic_vector(15 DOWNTO 0);


BEGIN
	Cknop_naar_puls     : puls            PORT MAP(not(button_count), clock, plus_een);
	Ceenheden           : modcounter      PORT MAP(plus_een, not(button_reset), eenheden, plus_tien);
	Ctientallen         : modcounter      PORT MAP(plus_tien, not(button_reset), tientallen, OPEN);
	Ceenhedenweergave   : display         PORT MAP(std_logic_vector(to_unsigned(eenheden, 4)), cnt_unit);
	Ctientallenweergave : display         PORT MAP(std_logic_vector(to_unsigned(tientallen, 4)), cnt_ten);
	Caudio              : audio_interface PORT MAP(data, data, clock, button_reset, init_finish, OPEN, OPEN, AUD_MCLK, AUD_BCLK, '0', AUD_DACDAT, AUD_DACLRCK, '0', I2C_SDAT, I2C_SCLK, OPEN);
	Ctoongenerator      : toongenerator   PORT MAP(clock, toon1 or toon2, data);
	Ceenhedenmorse      : morsegenerator  PORT MAP(clock, button_reset, plus_een, eenheden, toon1, eenheden_klaar);
	Ceenheden_naar_puls : puls            PORT MAP(eenheden_klaar, clock, start_tientallen);
	Ctientallenmorse    : morsegenerator  PORT MAP(clock, button_reset, start_tientallen and not(minder_dan_tien), tientallen, toon2, OPEN);
	
	minder_dan_tien <= (minder_dan_tien and not(plus_tien)) or not(button_reset);

END structure;