-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 11.0 Build 208 07/03/2011 Service Pack 1 SJ Web Edition"

-- DATE "12/15/2014 22:00:12"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	epicknoptime IS
    PORT (
	I2C_SDAT : OUT std_logic;
	cnt_ten : OUT std_logic_vector(6 DOWNTO 0);
	cnt_unit : OUT std_logic_vector(6 DOWNTO 0);
	temp_audio : OUT std_logic;
	temp_audio2 : OUT std_logic;
	init_finish : OUT std_logic;
	AUD_MCLK : OUT std_logic;
	AUD_DACDAT : OUT std_logic;
	I2C_SCLK : OUT std_logic;
	button_count : IN std_logic;
	clock : IN std_logic;
	button_reset : IN std_logic;
	AUD_BCLK : IN std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_DACLRCK : IN std_logic;
	AUD_ADCLRCK : IN std_logic
	);
END epicknoptime;

-- Design Ports Information
-- I2C_SDAT	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_ten[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_ten[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_ten[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_ten[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_ten[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_ten[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_ten[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_unit[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_unit[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_unit[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_unit[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_unit[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_unit[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt_unit[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- temp_audio	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- temp_audio2	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- init_finish	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_MCLK	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_ADCDAT	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_ADCLRCK	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- I2C_SCLK	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- button_reset	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- button_count	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF epicknoptime IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_I2C_SDAT : std_logic;
SIGNAL ww_cnt_ten : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_cnt_unit : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_temp_audio : std_logic;
SIGNAL ww_temp_audio2 : std_logic;
SIGNAL ww_init_finish : std_logic;
SIGNAL ww_AUD_MCLK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_button_count : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_button_reset : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL \G2|over~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G6|I2C_SCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G8|index[4]~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G9|index[4]~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G6|i2c_counter[1]~9_combout\ : std_logic;
SIGNAL \G6|Add0~9\ : std_logic;
SIGNAL \G6|Add0~12\ : std_logic;
SIGNAL \G6|Add0~11_combout\ : std_logic;
SIGNAL \G6|Add0~13_combout\ : std_logic;
SIGNAL \G8|cnt[0]~23_combout\ : std_logic;
SIGNAL \G8|cnt[1]~25_combout\ : std_logic;
SIGNAL \G8|cnt[3]~29_combout\ : std_logic;
SIGNAL \G8|cnt[5]~33_combout\ : std_logic;
SIGNAL \G8|cnt[7]~37_combout\ : std_logic;
SIGNAL \G8|cnt[14]~51_combout\ : std_logic;
SIGNAL \G8|cnt[17]~57_combout\ : std_logic;
SIGNAL \G8|cnt[19]~61_combout\ : std_logic;
SIGNAL \G6|i2c_counter[3]~13_combout\ : std_logic;
SIGNAL \G6|i2c_counter[5]~17_combout\ : std_logic;
SIGNAL \G8|Add1~5\ : std_logic;
SIGNAL \G8|Add1~6_combout\ : std_logic;
SIGNAL \G7|Add1~2_combout\ : std_logic;
SIGNAL \G7|Add1~6_combout\ : std_logic;
SIGNAL \G7|Add1~8_combout\ : std_logic;
SIGNAL \G9|cnt[0]~23_combout\ : std_logic;
SIGNAL \G9|cnt[1]~25_combout\ : std_logic;
SIGNAL \G9|cnt[3]~29_combout\ : std_logic;
SIGNAL \G9|cnt[5]~33_combout\ : std_logic;
SIGNAL \G9|cnt[7]~37_combout\ : std_logic;
SIGNAL \G9|cnt[14]~51_combout\ : std_logic;
SIGNAL \G9|cnt[16]~55_combout\ : std_logic;
SIGNAL \G9|cnt[17]~57_combout\ : std_logic;
SIGNAL \G1|output~regout\ : std_logic;
SIGNAL \G7|Mux4~0_combout\ : std_logic;
SIGNAL \G7|Mux4~1_combout\ : std_logic;
SIGNAL \G7|Mux4~2_combout\ : std_logic;
SIGNAL \G7|Mux10~0_combout\ : std_logic;
SIGNAL \G7|Mux10~1_combout\ : std_logic;
SIGNAL \G7|Mux10~2_combout\ : std_logic;
SIGNAL \G7|Mux10~3_combout\ : std_logic;
SIGNAL \G7|Mux10~4_combout\ : std_logic;
SIGNAL \G7|Mux10~5_combout\ : std_logic;
SIGNAL \G7|Mux11~0_combout\ : std_logic;
SIGNAL \G7|Mux11~1_combout\ : std_logic;
SIGNAL \G7|Mux11~2_combout\ : std_logic;
SIGNAL \G7|Mux11~3_combout\ : std_logic;
SIGNAL \G7|Mux11~4_combout\ : std_logic;
SIGNAL \G7|Mux11~5_combout\ : std_logic;
SIGNAL \G7|Mux8~0_combout\ : std_logic;
SIGNAL \G7|Mux13~3_combout\ : std_logic;
SIGNAL \G7|Mux14~1_combout\ : std_logic;
SIGNAL \G7|Mux14~2_combout\ : std_logic;
SIGNAL \G7|Mux14~3_combout\ : std_logic;
SIGNAL \G7|Mux15~2_combout\ : std_logic;
SIGNAL \G7|Mux12~0_combout\ : std_logic;
SIGNAL \G7|Mux12~1_combout\ : std_logic;
SIGNAL \G7|Mux12~2_combout\ : std_logic;
SIGNAL \G7|Mux12~3_combout\ : std_logic;
SIGNAL \G7|Mux12~4_combout\ : std_logic;
SIGNAL \G7|Mux12~5_combout\ : std_logic;
SIGNAL \G7|Mux3~1_combout\ : std_logic;
SIGNAL \G6|Selector30~0_combout\ : std_logic;
SIGNAL \G6|Selector30~5_combout\ : std_logic;
SIGNAL \G6|Selector30~7_combout\ : std_logic;
SIGNAL \G6|Selector30~8_combout\ : std_logic;
SIGNAL \G6|state.initialize~regout\ : std_logic;
SIGNAL \G6|Selector30~12_combout\ : std_logic;
SIGNAL \G1|activated~regout\ : std_logic;
SIGNAL \G1|output~0_combout\ : std_logic;
SIGNAL \G8|index[4]~_emulated_regout\ : std_logic;
SIGNAL \G7|Equal0~0_combout\ : std_logic;
SIGNAL \G8|Mux13~0_combout\ : std_logic;
SIGNAL \G8|Mux10~0_combout\ : std_logic;
SIGNAL \G8|Mux14~0_combout\ : std_logic;
SIGNAL \G8|Mux14~2_combout\ : std_logic;
SIGNAL \G8|Mux4~0_combout\ : std_logic;
SIGNAL \G9|Mux10~0_combout\ : std_logic;
SIGNAL \G9|Mux14~2_combout\ : std_logic;
SIGNAL \G6|Selector0~1_combout\ : std_logic;
SIGNAL \G8|index[4]~data_lut_combout\ : std_logic;
SIGNAL \G8|index[4]~clear_lut_combout\ : std_logic;
SIGNAL \G9|LessThan0~2_combout\ : std_logic;
SIGNAL \G1|activated~0_combout\ : std_logic;
SIGNAL \button_count~combout\ : std_logic;
SIGNAL \G2|over~clkctrl_outclk\ : std_logic;
SIGNAL \G6|I2C_SCLK~clkctrl_outclk\ : std_logic;
SIGNAL \G1|output~clkctrl_outclk\ : std_logic;
SIGNAL \G6|word_count[0]~2_combout\ : std_logic;
SIGNAL \G6|i2c_counter[0]~27_combout\ : std_logic;
SIGNAL \button_reset~combout\ : std_logic;
SIGNAL \G6|i2c_counter[1]~10\ : std_logic;
SIGNAL \G6|i2c_counter[2]~11_combout\ : std_logic;
SIGNAL \G6|i2c_counter[2]~12\ : std_logic;
SIGNAL \G6|i2c_counter[3]~14\ : std_logic;
SIGNAL \G6|i2c_counter[4]~15_combout\ : std_logic;
SIGNAL \G6|i2c_counter[4]~16\ : std_logic;
SIGNAL \G6|i2c_counter[5]~18\ : std_logic;
SIGNAL \G6|i2c_counter[6]~19_combout\ : std_logic;
SIGNAL \G6|i2c_counter[6]~20\ : std_logic;
SIGNAL \G6|i2c_counter[7]~21_combout\ : std_logic;
SIGNAL \G6|i2c_counter[7]~22\ : std_logic;
SIGNAL \G6|i2c_counter[8]~23_combout\ : std_logic;
SIGNAL \G6|i2c_counter[8]~24\ : std_logic;
SIGNAL \G6|i2c_counter[9]~25_combout\ : std_logic;
SIGNAL \G6|I2C_SCLK~combout\ : std_logic;
SIGNAL \G6|sck0~regout\ : std_logic;
SIGNAL \G6|sck1~regout\ : std_logic;
SIGNAL \G6|next_state_i2c~0_combout\ : std_logic;
SIGNAL \G6|Selector1~0_combout\ : std_logic;
SIGNAL \G6|state.start~regout\ : std_logic;
SIGNAL \G6|state.b0~regout\ : std_logic;
SIGNAL \G6|state.b1~feeder_combout\ : std_logic;
SIGNAL \G6|state.b1~regout\ : std_logic;
SIGNAL \G6|state.b2~regout\ : std_logic;
SIGNAL \G6|state.b3~regout\ : std_logic;
SIGNAL \G6|state.b4~feeder_combout\ : std_logic;
SIGNAL \G6|state.b4~regout\ : std_logic;
SIGNAL \G6|state.b5~feeder_combout\ : std_logic;
SIGNAL \G6|state.b5~regout\ : std_logic;
SIGNAL \G6|state.b6~feeder_combout\ : std_logic;
SIGNAL \G6|state.b6~regout\ : std_logic;
SIGNAL \G6|state.b7~feeder_combout\ : std_logic;
SIGNAL \G6|state.b7~regout\ : std_logic;
SIGNAL \G6|state.b_ack~regout\ : std_logic;
SIGNAL \G6|state.a0~feeder_combout\ : std_logic;
SIGNAL \G6|state.a0~regout\ : std_logic;
SIGNAL \G6|state.a1~feeder_combout\ : std_logic;
SIGNAL \G6|state.a1~regout\ : std_logic;
SIGNAL \G6|state.a2~feeder_combout\ : std_logic;
SIGNAL \G6|state.a2~regout\ : std_logic;
SIGNAL \G6|state.a3~regout\ : std_logic;
SIGNAL \G6|state.a4~regout\ : std_logic;
SIGNAL \G6|state.a5~regout\ : std_logic;
SIGNAL \G6|state.a6~regout\ : std_logic;
SIGNAL \G6|state.a7~feeder_combout\ : std_logic;
SIGNAL \G6|state.a7~regout\ : std_logic;
SIGNAL \G6|state.a_ack~feeder_combout\ : std_logic;
SIGNAL \G6|state.a_ack~regout\ : std_logic;
SIGNAL \G6|state.d0~regout\ : std_logic;
SIGNAL \G6|state.d1~regout\ : std_logic;
SIGNAL \G6|state.d2~regout\ : std_logic;
SIGNAL \G6|state.d3~regout\ : std_logic;
SIGNAL \G6|state.d4~feeder_combout\ : std_logic;
SIGNAL \G6|state.d4~regout\ : std_logic;
SIGNAL \G6|state.d5~regout\ : std_logic;
SIGNAL \G6|state.d6~regout\ : std_logic;
SIGNAL \G6|state.d7~regout\ : std_logic;
SIGNAL \G6|state.d_ack~regout\ : std_logic;
SIGNAL \G6|Selector0~0_combout\ : std_logic;
SIGNAL \G6|Mux1~0_combout\ : std_logic;
SIGNAL \G6|word_count[3]~0_combout\ : std_logic;
SIGNAL \G6|word_count[3]~1_combout\ : std_logic;
SIGNAL \G6|Equal0~0_combout\ : std_logic;
SIGNAL \G6|Selector29~0_combout\ : std_logic;
SIGNAL \G6|state.b_stop0~regout\ : std_logic;
SIGNAL \G6|next_state.b_stop1~0_combout\ : std_logic;
SIGNAL \G6|state.b_stop1~regout\ : std_logic;
SIGNAL \G6|I2C_SCLK~0_combout\ : std_logic;
SIGNAL \G6|state.b_end~regout\ : std_logic;
SIGNAL \G6|word_counter~0_combout\ : std_logic;
SIGNAL \G6|Mux10~0_combout\ : std_logic;
SIGNAL \G6|Selector30~4_combout\ : std_logic;
SIGNAL \G6|Selector30~6_combout\ : std_logic;
SIGNAL \G6|Selector30~2_combout\ : std_logic;
SIGNAL \G6|Selector30~1_combout\ : std_logic;
SIGNAL \G6|Selector30~3_combout\ : std_logic;
SIGNAL \G6|Selector30~9_combout\ : std_logic;
SIGNAL \G6|Mux12~0_combout\ : std_logic;
SIGNAL \G6|Selector30~13_combout\ : std_logic;
SIGNAL \G6|Selector30~11_combout\ : std_logic;
SIGNAL \G6|Selector30~14_combout\ : std_logic;
SIGNAL \G6|Selector30~10_combout\ : std_logic;
SIGNAL \G6|Selector30~15_combout\ : std_logic;
SIGNAL \G6|WideOr32~0_combout\ : std_logic;
SIGNAL \G3|output[0]~3_combout\ : std_logic;
SIGNAL \G3|output[2]~1_combout\ : std_logic;
SIGNAL \G3|output~0_combout\ : std_logic;
SIGNAL \G3|output~2_combout\ : std_logic;
SIGNAL \G5|Mux6~0_combout\ : std_logic;
SIGNAL \G5|Mux5~0_combout\ : std_logic;
SIGNAL \G5|Mux4~0_combout\ : std_logic;
SIGNAL \G5|Mux3~0_combout\ : std_logic;
SIGNAL \G5|Mux2~0_combout\ : std_logic;
SIGNAL \G5|Mux1~0_combout\ : std_logic;
SIGNAL \G5|Mux0~0_combout\ : std_logic;
SIGNAL \G2|output[0]~3_combout\ : std_logic;
SIGNAL \G2|output[2]~1_combout\ : std_logic;
SIGNAL \G2|output~0_combout\ : std_logic;
SIGNAL \G2|output~2_combout\ : std_logic;
SIGNAL \G4|Mux6~0_combout\ : std_logic;
SIGNAL \G4|Mux5~0_combout\ : std_logic;
SIGNAL \G4|Mux4~0_combout\ : std_logic;
SIGNAL \G4|Mux3~0_combout\ : std_logic;
SIGNAL \G4|Mux2~0_combout\ : std_logic;
SIGNAL \G4|Mux1~0_combout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \G8|index[4]~6_combout\ : std_logic;
SIGNAL \G8|index[4]~latch_combout\ : std_logic;
SIGNAL \G8|index[4]~head_lut_combout\ : std_logic;
SIGNAL \G8|Mux0~0_combout\ : std_logic;
SIGNAL \G8|index[3]~latch_combout\ : std_logic;
SIGNAL \G8|Mux1~0_combout\ : std_logic;
SIGNAL \G8|index[2]~latch_combout\ : std_logic;
SIGNAL \G8|index[0]~11_combout\ : std_logic;
SIGNAL \G8|finished~2_combout\ : std_logic;
SIGNAL \G8|cnt[0]~24\ : std_logic;
SIGNAL \G8|cnt[1]~26\ : std_logic;
SIGNAL \G8|cnt[2]~27_combout\ : std_logic;
SIGNAL \G8|cnt[16]~55_combout\ : std_logic;
SIGNAL \G8|LessThan0~3_combout\ : std_logic;
SIGNAL \G8|LessThan0~0_combout\ : std_logic;
SIGNAL \G8|LessThan0~1_combout\ : std_logic;
SIGNAL \G8|LessThan0~2_combout\ : std_logic;
SIGNAL \G8|LessThan0~4_combout\ : std_logic;
SIGNAL \G8|LessThan0~5_combout\ : std_logic;
SIGNAL \G8|cnt[2]~28\ : std_logic;
SIGNAL \G8|cnt[3]~30\ : std_logic;
SIGNAL \G8|cnt[4]~31_combout\ : std_logic;
SIGNAL \G8|cnt[4]~32\ : std_logic;
SIGNAL \G8|cnt[5]~34\ : std_logic;
SIGNAL \G8|cnt[6]~35_combout\ : std_logic;
SIGNAL \G8|cnt[6]~36\ : std_logic;
SIGNAL \G8|cnt[7]~38\ : std_logic;
SIGNAL \G8|cnt[8]~39_combout\ : std_logic;
SIGNAL \G8|cnt[8]~40\ : std_logic;
SIGNAL \G8|cnt[9]~41_combout\ : std_logic;
SIGNAL \G8|cnt[9]~42\ : std_logic;
SIGNAL \G8|cnt[10]~43_combout\ : std_logic;
SIGNAL \G8|cnt[10]~44\ : std_logic;
SIGNAL \G8|cnt[11]~45_combout\ : std_logic;
SIGNAL \G8|cnt[11]~46\ : std_logic;
SIGNAL \G8|cnt[12]~47_combout\ : std_logic;
SIGNAL \G8|cnt[12]~48\ : std_logic;
SIGNAL \G8|cnt[13]~49_combout\ : std_logic;
SIGNAL \G8|cnt[13]~50\ : std_logic;
SIGNAL \G8|cnt[14]~52\ : std_logic;
SIGNAL \G8|cnt[15]~53_combout\ : std_logic;
SIGNAL \G8|cnt[15]~54\ : std_logic;
SIGNAL \G8|cnt[16]~56\ : std_logic;
SIGNAL \G8|cnt[17]~58\ : std_logic;
SIGNAL \G8|cnt[18]~59_combout\ : std_logic;
SIGNAL \G8|cnt[18]~60\ : std_logic;
SIGNAL \G8|cnt[19]~62\ : std_logic;
SIGNAL \G8|cnt[20]~63_combout\ : std_logic;
SIGNAL \G8|cnt[20]~64\ : std_logic;
SIGNAL \G8|cnt[21]~66\ : std_logic;
SIGNAL \G8|cnt[22]~67_combout\ : std_logic;
SIGNAL \G8|cnt[21]~65_combout\ : std_logic;
SIGNAL \G8|index[4]~9_combout\ : std_logic;
SIGNAL \G8|index[4]~10_combout\ : std_logic;
SIGNAL \G8|Add1~1\ : std_logic;
SIGNAL \G8|Add1~2_combout\ : std_logic;
SIGNAL \G8|index[2]~data_lut_combout\ : std_logic;
SIGNAL \G8|index[3]~clear_lut_combout\ : std_logic;
SIGNAL \G8|index[2]~_emulated_regout\ : std_logic;
SIGNAL \G8|index[2]~tail_lut_combout\ : std_logic;
SIGNAL \G8|index[2]~head_lut_combout\ : std_logic;
SIGNAL \G8|Add1~3\ : std_logic;
SIGNAL \G8|Add1~4_combout\ : std_logic;
SIGNAL \G8|index[3]~data_lut_combout\ : std_logic;
SIGNAL \G8|index[3]~_emulated_regout\ : std_logic;
SIGNAL \G8|index[3]~tail_lut_combout\ : std_logic;
SIGNAL \G8|index[3]~head_lut_combout\ : std_logic;
SIGNAL \G8|finished~3_combout\ : std_logic;
SIGNAL \G8|finished~regout\ : std_logic;
SIGNAL \G2|Equal0~0_combout\ : std_logic;
SIGNAL \G2|over~regout\ : std_logic;
SIGNAL \overflowed~0_combout\ : std_logic;
SIGNAL \AUD_DACLRCK~combout\ : std_logic;
SIGNAL \G6|dack0~regout\ : std_logic;
SIGNAL \G6|dack1~feeder_combout\ : std_logic;
SIGNAL \G6|dack1~regout\ : std_logic;
SIGNAL \G6|Add0~10_combout\ : std_logic;
SIGNAL \AUD_BCLK~combout\ : std_logic;
SIGNAL \G6|bck0~regout\ : std_logic;
SIGNAL \G6|bck1~regout\ : std_logic;
SIGNAL \G6|Bcount[2]~0_combout\ : std_logic;
SIGNAL \G7|index[1]~9_combout\ : std_logic;
SIGNAL \G22|activated~regout\ : std_logic;
SIGNAL \G22|output~0_combout\ : std_logic;
SIGNAL \G22|output~regout\ : std_logic;
SIGNAL \G9|index[4]~8_combout\ : std_logic;
SIGNAL \G9|index[4]~latch_combout\ : std_logic;
SIGNAL \G9|index[0]~11_combout\ : std_logic;
SIGNAL \G9|finished~0_combout\ : std_logic;
SIGNAL \G9|cnt[0]~24\ : std_logic;
SIGNAL \G9|cnt[1]~26\ : std_logic;
SIGNAL \G9|cnt[2]~27_combout\ : std_logic;
SIGNAL \G9|cnt[21]~66\ : std_logic;
SIGNAL \G9|cnt[22]~67_combout\ : std_logic;
SIGNAL \G9|cnt[19]~61_combout\ : std_logic;
SIGNAL \G9|LessThan0~3_combout\ : std_logic;
SIGNAL \G9|LessThan0~4_combout\ : std_logic;
SIGNAL \G9|LessThan0~5_combout\ : std_logic;
SIGNAL \G9|LessThan0~6_combout\ : std_logic;
SIGNAL \G9|LessThan0~7_combout\ : std_logic;
SIGNAL \G9|cnt[2]~28\ : std_logic;
SIGNAL \G9|cnt[3]~30\ : std_logic;
SIGNAL \G9|cnt[4]~31_combout\ : std_logic;
SIGNAL \G9|cnt[4]~32\ : std_logic;
SIGNAL \G9|cnt[5]~34\ : std_logic;
SIGNAL \G9|cnt[6]~35_combout\ : std_logic;
SIGNAL \G9|cnt[6]~36\ : std_logic;
SIGNAL \G9|cnt[7]~38\ : std_logic;
SIGNAL \G9|cnt[8]~39_combout\ : std_logic;
SIGNAL \G9|cnt[8]~40\ : std_logic;
SIGNAL \G9|cnt[9]~41_combout\ : std_logic;
SIGNAL \G9|cnt[9]~42\ : std_logic;
SIGNAL \G9|cnt[10]~43_combout\ : std_logic;
SIGNAL \G9|cnt[10]~44\ : std_logic;
SIGNAL \G9|cnt[11]~45_combout\ : std_logic;
SIGNAL \G9|cnt[11]~46\ : std_logic;
SIGNAL \G9|cnt[12]~47_combout\ : std_logic;
SIGNAL \G9|cnt[12]~48\ : std_logic;
SIGNAL \G9|cnt[13]~49_combout\ : std_logic;
SIGNAL \G9|cnt[13]~50\ : std_logic;
SIGNAL \G9|cnt[14]~52\ : std_logic;
SIGNAL \G9|cnt[15]~53_combout\ : std_logic;
SIGNAL \G9|cnt[15]~54\ : std_logic;
SIGNAL \G9|cnt[16]~56\ : std_logic;
SIGNAL \G9|cnt[17]~58\ : std_logic;
SIGNAL \G9|cnt[18]~59_combout\ : std_logic;
SIGNAL \G9|cnt[18]~60\ : std_logic;
SIGNAL \G9|cnt[19]~62\ : std_logic;
SIGNAL \G9|cnt[20]~63_combout\ : std_logic;
SIGNAL \G9|cnt[20]~64\ : std_logic;
SIGNAL \G9|cnt[21]~65_combout\ : std_logic;
SIGNAL \G9|Mux7~0_combout\ : std_logic;
SIGNAL \G9|index[4]~8clkctrl_outclk\ : std_logic;
SIGNAL \G9|index[3]~latch_combout\ : std_logic;
SIGNAL \G9|Add1~4_combout\ : std_logic;
SIGNAL \G9|index[3]~data_lut_combout\ : std_logic;
SIGNAL \G9|index[2]~clear_lut_combout\ : std_logic;
SIGNAL \G9|index[3]~_emulated_regout\ : std_logic;
SIGNAL \G9|index[3]~tail_lut_combout\ : std_logic;
SIGNAL \G9|index[3]~head_lut_combout\ : std_logic;
SIGNAL \G9|index[4]~9_combout\ : std_logic;
SIGNAL \G9|index[4]~10_combout\ : std_logic;
SIGNAL \G9|Add1~1\ : std_logic;
SIGNAL \G9|Add1~3\ : std_logic;
SIGNAL \G9|Add1~5\ : std_logic;
SIGNAL \G9|Add1~6_combout\ : std_logic;
SIGNAL \G9|index[4]~data_lut_combout\ : std_logic;
SIGNAL \G9|index[4]~clear_lut_combout\ : std_logic;
SIGNAL \G9|index[4]~_emulated_regout\ : std_logic;
SIGNAL \G9|index[4]~head_lut_combout\ : std_logic;
SIGNAL \G9|Mux2~0_combout\ : std_logic;
SIGNAL \G9|index[1]~latch_combout\ : std_logic;
SIGNAL \G9|Add1~0_combout\ : std_logic;
SIGNAL \G9|index[1]~data_lut_combout\ : std_logic;
SIGNAL \G9|index[1]~_emulated_regout\ : std_logic;
SIGNAL \G9|index[1]~tail_lut_combout\ : std_logic;
SIGNAL \G9|index[1]~head_lut_combout\ : std_logic;
SIGNAL \G9|Mux13~0_combout\ : std_logic;
SIGNAL \G3|Equal0~0_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \G7|Add1~0_combout\ : std_logic;
SIGNAL \G7|wait_counter~0_combout\ : std_logic;
SIGNAL \G8|Add1~0_combout\ : std_logic;
SIGNAL \G8|index[4]~6clkctrl_outclk\ : std_logic;
SIGNAL \G8|Mux2~0_combout\ : std_logic;
SIGNAL \G8|index[1]~latch_combout\ : std_logic;
SIGNAL \G8|index[1]~data_lut_combout\ : std_logic;
SIGNAL \G8|index[1]~_emulated_regout\ : std_logic;
SIGNAL \G8|index[1]~tail_lut_combout\ : std_logic;
SIGNAL \G8|index[1]~head_lut_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \G9|Mux1~0_combout\ : std_logic;
SIGNAL \G9|index[2]~latch_combout\ : std_logic;
SIGNAL \G9|Add1~2_combout\ : std_logic;
SIGNAL \G9|index[2]~data_lut_combout\ : std_logic;
SIGNAL \G9|index[2]~_emulated_regout\ : std_logic;
SIGNAL \G9|index[2]~tail_lut_combout\ : std_logic;
SIGNAL \G9|index[2]~head_lut_combout\ : std_logic;
SIGNAL \G9|Mux14~0_combout\ : std_logic;
SIGNAL \G9|Mux14~6_combout\ : std_logic;
SIGNAL \G9|Mux14~7_combout\ : std_logic;
SIGNAL \G9|Mux14~8_combout\ : std_logic;
SIGNAL \G9|Mux4~0_combout\ : std_logic;
SIGNAL \G9|Mux14~4_combout\ : std_logic;
SIGNAL \G9|Mux14~1_combout\ : std_logic;
SIGNAL \G9|Mux14~3_combout\ : std_logic;
SIGNAL \G9|Mux14~5_combout\ : std_logic;
SIGNAL \G9|Mux14~9_combout\ : std_logic;
SIGNAL \G8|Mux14~6_combout\ : std_logic;
SIGNAL \G8|Mux14~7_combout\ : std_logic;
SIGNAL \G8|Mux14~8_combout\ : std_logic;
SIGNAL \G8|Mux14~1_combout\ : std_logic;
SIGNAL \G8|Mux14~3_combout\ : std_logic;
SIGNAL \G8|Mux14~4_combout\ : std_logic;
SIGNAL \G8|Mux14~5_combout\ : std_logic;
SIGNAL \G8|Mux14~9_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \G7|Add1~1\ : std_logic;
SIGNAL \G7|Add1~3\ : std_logic;
SIGNAL \G7|Add1~4_combout\ : std_logic;
SIGNAL \G7|Add1~5\ : std_logic;
SIGNAL \G7|Add1~7\ : std_logic;
SIGNAL \G7|Add1~9\ : std_logic;
SIGNAL \G7|Add1~10_combout\ : std_logic;
SIGNAL \G7|wait_counter~1_combout\ : std_logic;
SIGNAL \G7|Add1~11\ : std_logic;
SIGNAL \G7|Add1~13\ : std_logic;
SIGNAL \G7|Add1~14_combout\ : std_logic;
SIGNAL \G7|Add1~15\ : std_logic;
SIGNAL \G7|Add1~16_combout\ : std_logic;
SIGNAL \G7|wait_counter~2_combout\ : std_logic;
SIGNAL \G7|Add1~17\ : std_logic;
SIGNAL \G7|Add1~18_combout\ : std_logic;
SIGNAL \G7|wait_counter~3_combout\ : std_logic;
SIGNAL \G7|Add1~12_combout\ : std_logic;
SIGNAL \G7|Equal0~1_combout\ : std_logic;
SIGNAL \G7|Equal0~2_combout\ : std_logic;
SIGNAL \G7|index[5]~13_combout\ : std_logic;
SIGNAL \G7|index[1]~10\ : std_logic;
SIGNAL \G7|index[2]~11_combout\ : std_logic;
SIGNAL \G7|index[2]~12\ : std_logic;
SIGNAL \G7|index[3]~14_combout\ : std_logic;
SIGNAL \G7|Mux7~3_combout\ : std_logic;
SIGNAL \G7|Mux7~1_combout\ : std_logic;
SIGNAL \G7|Mux7~0_combout\ : std_logic;
SIGNAL \G7|index[3]~15\ : std_logic;
SIGNAL \G7|index[4]~16_combout\ : std_logic;
SIGNAL \G7|index[4]~17\ : std_logic;
SIGNAL \G7|index[5]~18_combout\ : std_logic;
SIGNAL \G7|Mux7~2_combout\ : std_logic;
SIGNAL \G7|Mux7~4_combout\ : std_logic;
SIGNAL \G6|DACData_reg~0_combout\ : std_logic;
SIGNAL \G7|Mux6~0_combout\ : std_logic;
SIGNAL \G7|Mux6~1_combout\ : std_logic;
SIGNAL \G7|Mux6~2_combout\ : std_logic;
SIGNAL \G7|Mux6~3_combout\ : std_logic;
SIGNAL \G7|Mux6~4_combout\ : std_logic;
SIGNAL \G6|Mux13~0_combout\ : std_logic;
SIGNAL \G6|Add0~7_cout\ : std_logic;
SIGNAL \G6|Add0~8_combout\ : std_logic;
SIGNAL \G6|Add0~15_combout\ : std_logic;
SIGNAL \G7|index[0]~21_combout\ : std_logic;
SIGNAL \G7|index[0]~20_combout\ : std_logic;
SIGNAL \G7|Mux5~0_combout\ : std_logic;
SIGNAL \G7|Mux5~1_combout\ : std_logic;
SIGNAL \G7|Mux5~2_combout\ : std_logic;
SIGNAL \G6|Mux13~1_combout\ : std_logic;
SIGNAL \G6|Add0~17_combout\ : std_logic;
SIGNAL \G7|Mux9~2_combout\ : std_logic;
SIGNAL \G7|Mux9~1_combout\ : std_logic;
SIGNAL \G7|Mux9~3_combout\ : std_logic;
SIGNAL \G7|Mux9~4_combout\ : std_logic;
SIGNAL \G7|Mux9~0_combout\ : std_logic;
SIGNAL \G7|Mux9~5_combout\ : std_logic;
SIGNAL \G6|Mux13~2_combout\ : std_logic;
SIGNAL \G7|Mux8~3_combout\ : std_logic;
SIGNAL \G7|Mux8~1_combout\ : std_logic;
SIGNAL \G7|Mux8~2_combout\ : std_logic;
SIGNAL \G7|Mux8~4_combout\ : std_logic;
SIGNAL \G6|Mux13~3_combout\ : std_logic;
SIGNAL \G7|Mux15~0_combout\ : std_logic;
SIGNAL \G7|Mux15~1_combout\ : std_logic;
SIGNAL \G7|Mux15~3_combout\ : std_logic;
SIGNAL \G7|Mux14~0_combout\ : std_logic;
SIGNAL \G7|Mux14~4_combout\ : std_logic;
SIGNAL \G7|Mux14~5_combout\ : std_logic;
SIGNAL \G6|Mux13~4_combout\ : std_logic;
SIGNAL \G7|Mux13~0_combout\ : std_logic;
SIGNAL \G7|Mux13~1_combout\ : std_logic;
SIGNAL \G7|Mux13~2_combout\ : std_logic;
SIGNAL \G7|Mux13~4_combout\ : std_logic;
SIGNAL \G6|Mux13~5_combout\ : std_logic;
SIGNAL \G6|Mux13~6_combout\ : std_logic;
SIGNAL \G6|Add0~16_combout\ : std_logic;
SIGNAL \G7|Mux3~0_combout\ : std_logic;
SIGNAL \G7|Mux3~2_combout\ : std_logic;
SIGNAL \G7|Mux2~0_combout\ : std_logic;
SIGNAL \G7|Mux2~1_combout\ : std_logic;
SIGNAL \G6|Mux13~7_combout\ : std_logic;
SIGNAL \G6|Mux13~8_combout\ : std_logic;
SIGNAL \G8|cnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \G8|index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \G7|index\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \G7|wait_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G6|Bcount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \G6|LRDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \G6|i2c_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G6|word_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G2|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G9|index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \G9|cnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \G3|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G6|ALT_INV_I2C_SCLK~clkctrl_outclk\ : std_logic;
SIGNAL \G7|ALT_INV_index\ : std_logic_vector(5 DOWNTO 5);
SIGNAL \G5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_button_reset~combout\ : std_logic;

BEGIN

I2C_SDAT <= ww_I2C_SDAT;
cnt_ten <= ww_cnt_ten;
cnt_unit <= ww_cnt_unit;
temp_audio <= ww_temp_audio;
temp_audio2 <= ww_temp_audio2;
init_finish <= ww_init_finish;
AUD_MCLK <= ww_AUD_MCLK;
AUD_DACDAT <= ww_AUD_DACDAT;
I2C_SCLK <= ww_I2C_SCLK;
ww_button_count <= button_count;
ww_clock <= clock;
ww_button_reset <= button_reset;
ww_AUD_BCLK <= AUD_BCLK;
ww_AUD_ADCDAT <= AUD_ADCDAT;
ww_AUD_DACLRCK <= AUD_DACLRCK;
ww_AUD_ADCLRCK <= AUD_ADCLRCK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\G2|over~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \G2|over~regout\);

\G6|I2C_SCLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \G6|I2C_SCLK~combout\);

\G1|output~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \G1|output~regout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\G8|index[4]~6clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \G8|index[4]~6_combout\);

\G9|index[4]~8clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \G9|index[4]~8_combout\);
\G6|ALT_INV_I2C_SCLK~clkctrl_outclk\ <= NOT \G6|I2C_SCLK~clkctrl_outclk\;
\G7|ALT_INV_index\(5) <= NOT \G7|index\(5);
\G5|ALT_INV_Mux0~0_combout\ <= NOT \G5|Mux0~0_combout\;
\G4|ALT_INV_Mux0~0_combout\ <= NOT \G4|Mux0~0_combout\;
\ALT_INV_button_reset~combout\ <= NOT \button_reset~combout\;

-- Location: LCFF_X37_Y16_N25
\G8|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[7]~37_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(7));

-- Location: LCFF_X37_Y15_N7
\G8|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[14]~51_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(14));

-- Location: LCFF_X37_Y15_N13
\G8|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[17]~57_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(17));

-- Location: LCFF_X37_Y15_N17
\G8|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[19]~61_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(19));

-- Location: LCFF_X39_Y25_N13
\G6|i2c_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|i2c_counter[1]~9_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|i2c_counter\(1));

-- Location: LCCOMB_X39_Y25_N12
\G6|i2c_counter[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|i2c_counter[1]~9_combout\ = (\G6|i2c_counter\(1) & (\G6|i2c_counter\(0) $ (VCC))) # (!\G6|i2c_counter\(1) & (\G6|i2c_counter\(0) & VCC))
-- \G6|i2c_counter[1]~10\ = CARRY((\G6|i2c_counter\(1) & \G6|i2c_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|i2c_counter\(1),
	datab => \G6|i2c_counter\(0),
	datad => VCC,
	combout => \G6|i2c_counter[1]~9_combout\,
	cout => \G6|i2c_counter[1]~10\);

-- Location: LCCOMB_X36_Y18_N8
\G6|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Add0~8_combout\ = (\G6|Bcount\(1) & (!\G6|Add0~7_cout\)) # (!\G6|Bcount\(1) & (\G6|Add0~7_cout\ & VCC))
-- \G6|Add0~9\ = CARRY((\G6|Bcount\(1) & !\G6|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G6|Bcount\(1),
	datad => VCC,
	cin => \G6|Add0~7_cout\,
	combout => \G6|Add0~8_combout\,
	cout => \G6|Add0~9\);

-- Location: LCCOMB_X36_Y18_N10
\G6|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Add0~11_combout\ = (\G6|Bcount\(2) & (\G6|Add0~9\ $ (GND))) # (!\G6|Bcount\(2) & ((GND) # (!\G6|Add0~9\)))
-- \G6|Add0~12\ = CARRY((!\G6|Add0~9\) # (!\G6|Bcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G6|Bcount\(2),
	datad => VCC,
	cin => \G6|Add0~9\,
	combout => \G6|Add0~11_combout\,
	cout => \G6|Add0~12\);

-- Location: LCCOMB_X36_Y18_N12
\G6|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Add0~13_combout\ = \G6|Bcount\(3) $ (\G6|Add0~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Bcount\(3),
	cin => \G6|Add0~12\,
	combout => \G6|Add0~13_combout\);

-- Location: LCFF_X37_Y16_N21
\G8|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[5]~33_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(5));

-- Location: LCFF_X37_Y16_N17
\G8|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[3]~29_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(3));

-- Location: LCFF_X37_Y16_N13
\G8|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[1]~25_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(1));

-- Location: LCFF_X37_Y16_N11
\G8|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[0]~23_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(0));

-- Location: LCCOMB_X37_Y16_N10
\G8|cnt[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[0]~23_combout\ = \G8|cnt\(0) $ (VCC)
-- \G8|cnt[0]~24\ = CARRY(\G8|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(0),
	datad => VCC,
	combout => \G8|cnt[0]~23_combout\,
	cout => \G8|cnt[0]~24\);

-- Location: LCCOMB_X37_Y16_N12
\G8|cnt[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[1]~25_combout\ = (\G8|cnt\(1) & (!\G8|cnt[0]~24\)) # (!\G8|cnt\(1) & ((\G8|cnt[0]~24\) # (GND)))
-- \G8|cnt[1]~26\ = CARRY((!\G8|cnt[0]~24\) # (!\G8|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(1),
	datad => VCC,
	cin => \G8|cnt[0]~24\,
	combout => \G8|cnt[1]~25_combout\,
	cout => \G8|cnt[1]~26\);

-- Location: LCCOMB_X37_Y16_N16
\G8|cnt[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[3]~29_combout\ = (\G8|cnt\(3) & (!\G8|cnt[2]~28\)) # (!\G8|cnt\(3) & ((\G8|cnt[2]~28\) # (GND)))
-- \G8|cnt[3]~30\ = CARRY((!\G8|cnt[2]~28\) # (!\G8|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(3),
	datad => VCC,
	cin => \G8|cnt[2]~28\,
	combout => \G8|cnt[3]~29_combout\,
	cout => \G8|cnt[3]~30\);

-- Location: LCCOMB_X37_Y16_N20
\G8|cnt[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[5]~33_combout\ = (\G8|cnt\(5) & (!\G8|cnt[4]~32\)) # (!\G8|cnt\(5) & ((\G8|cnt[4]~32\) # (GND)))
-- \G8|cnt[5]~34\ = CARRY((!\G8|cnt[4]~32\) # (!\G8|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(5),
	datad => VCC,
	cin => \G8|cnt[4]~32\,
	combout => \G8|cnt[5]~33_combout\,
	cout => \G8|cnt[5]~34\);

-- Location: LCCOMB_X37_Y16_N24
\G8|cnt[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[7]~37_combout\ = (\G8|cnt\(7) & (!\G8|cnt[6]~36\)) # (!\G8|cnt\(7) & ((\G8|cnt[6]~36\) # (GND)))
-- \G8|cnt[7]~38\ = CARRY((!\G8|cnt[6]~36\) # (!\G8|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(7),
	datad => VCC,
	cin => \G8|cnt[6]~36\,
	combout => \G8|cnt[7]~37_combout\,
	cout => \G8|cnt[7]~38\);

-- Location: LCCOMB_X37_Y15_N6
\G8|cnt[14]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[14]~51_combout\ = (\G8|cnt\(14) & (\G8|cnt[13]~50\ $ (GND))) # (!\G8|cnt\(14) & (!\G8|cnt[13]~50\ & VCC))
-- \G8|cnt[14]~52\ = CARRY((\G8|cnt\(14) & !\G8|cnt[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(14),
	datad => VCC,
	cin => \G8|cnt[13]~50\,
	combout => \G8|cnt[14]~51_combout\,
	cout => \G8|cnt[14]~52\);

-- Location: LCCOMB_X37_Y15_N12
\G8|cnt[17]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[17]~57_combout\ = (\G8|cnt\(17) & (!\G8|cnt[16]~56\)) # (!\G8|cnt\(17) & ((\G8|cnt[16]~56\) # (GND)))
-- \G8|cnt[17]~58\ = CARRY((!\G8|cnt[16]~56\) # (!\G8|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(17),
	datad => VCC,
	cin => \G8|cnt[16]~56\,
	combout => \G8|cnt[17]~57_combout\,
	cout => \G8|cnt[17]~58\);

-- Location: LCCOMB_X37_Y15_N16
\G8|cnt[19]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[19]~61_combout\ = (\G8|cnt\(19) & (!\G8|cnt[18]~60\)) # (!\G8|cnt\(19) & ((\G8|cnt[18]~60\) # (GND)))
-- \G8|cnt[19]~62\ = CARRY((!\G8|cnt[18]~60\) # (!\G8|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(19),
	datad => VCC,
	cin => \G8|cnt[18]~60\,
	combout => \G8|cnt[19]~61_combout\,
	cout => \G8|cnt[19]~62\);

-- Location: LCFF_X39_Y25_N21
\G6|i2c_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|i2c_counter[5]~17_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|i2c_counter\(5));

-- Location: LCFF_X39_Y25_N17
\G6|i2c_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|i2c_counter[3]~13_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|i2c_counter\(3));

-- Location: LCCOMB_X39_Y25_N16
\G6|i2c_counter[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|i2c_counter[3]~13_combout\ = (\G6|i2c_counter\(3) & (\G6|i2c_counter[2]~12\ $ (GND))) # (!\G6|i2c_counter\(3) & (!\G6|i2c_counter[2]~12\ & VCC))
-- \G6|i2c_counter[3]~14\ = CARRY((\G6|i2c_counter\(3) & !\G6|i2c_counter[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G6|i2c_counter\(3),
	datad => VCC,
	cin => \G6|i2c_counter[2]~12\,
	combout => \G6|i2c_counter[3]~13_combout\,
	cout => \G6|i2c_counter[3]~14\);

-- Location: LCCOMB_X39_Y25_N20
\G6|i2c_counter[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|i2c_counter[5]~17_combout\ = (\G6|i2c_counter\(5) & (\G6|i2c_counter[4]~16\ $ (GND))) # (!\G6|i2c_counter\(5) & (!\G6|i2c_counter[4]~16\ & VCC))
-- \G6|i2c_counter[5]~18\ = CARRY((\G6|i2c_counter\(5) & !\G6|i2c_counter[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G6|i2c_counter\(5),
	datad => VCC,
	cin => \G6|i2c_counter[4]~16\,
	combout => \G6|i2c_counter[5]~17_combout\,
	cout => \G6|i2c_counter[5]~18\);

-- Location: LCCOMB_X36_Y15_N26
\G8|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Add1~4_combout\ = (\G8|index[3]~head_lut_combout\ & (!\G8|Add1~3\ & VCC)) # (!\G8|index[3]~head_lut_combout\ & (\G8|Add1~3\ $ (GND)))
-- \G8|Add1~5\ = CARRY((!\G8|index[3]~head_lut_combout\ & !\G8|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index[3]~head_lut_combout\,
	datad => VCC,
	cin => \G8|Add1~3\,
	combout => \G8|Add1~4_combout\,
	cout => \G8|Add1~5\);

-- Location: LCCOMB_X36_Y15_N28
\G8|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Add1~6_combout\ = \G8|index[4]~head_lut_combout\ $ (\G8|Add1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|index[4]~head_lut_combout\,
	cin => \G8|Add1~5\,
	combout => \G8|Add1~6_combout\);

-- Location: LCCOMB_X35_Y19_N6
\G7|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Add1~2_combout\ = (\G7|wait_counter\(1) & (!\G7|Add1~1\)) # (!\G7|wait_counter\(1) & ((\G7|Add1~1\) # (GND)))
-- \G7|Add1~3\ = CARRY((!\G7|Add1~1\) # (!\G7|wait_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G7|wait_counter\(1),
	datad => VCC,
	cin => \G7|Add1~1\,
	combout => \G7|Add1~2_combout\,
	cout => \G7|Add1~3\);

-- Location: LCCOMB_X35_Y19_N10
\G7|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Add1~6_combout\ = (\G7|wait_counter\(3) & (!\G7|Add1~5\)) # (!\G7|wait_counter\(3) & ((\G7|Add1~5\) # (GND)))
-- \G7|Add1~7\ = CARRY((!\G7|Add1~5\) # (!\G7|wait_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G7|wait_counter\(3),
	datad => VCC,
	cin => \G7|Add1~5\,
	combout => \G7|Add1~6_combout\,
	cout => \G7|Add1~7\);

-- Location: LCCOMB_X35_Y19_N12
\G7|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Add1~8_combout\ = (\G7|wait_counter\(4) & (\G7|Add1~7\ $ (GND))) # (!\G7|wait_counter\(4) & (!\G7|Add1~7\ & VCC))
-- \G7|Add1~9\ = CARRY((\G7|wait_counter\(4) & !\G7|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G7|wait_counter\(4),
	datad => VCC,
	cin => \G7|Add1~7\,
	combout => \G7|Add1~8_combout\,
	cout => \G7|Add1~9\);

-- Location: LCFF_X32_Y15_N11
\G9|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[16]~55_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(16));

-- Location: LCFF_X32_Y15_N13
\G9|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[17]~57_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(17));

-- Location: LCFF_X32_Y15_N7
\G9|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[14]~51_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(14));

-- Location: LCFF_X32_Y16_N25
\G9|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[7]~37_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(7));

-- Location: LCFF_X32_Y16_N21
\G9|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[5]~33_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(5));

-- Location: LCFF_X32_Y16_N17
\G9|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[3]~29_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(3));

-- Location: LCFF_X32_Y16_N13
\G9|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[1]~25_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(1));

-- Location: LCFF_X32_Y16_N11
\G9|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[0]~23_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(0));

-- Location: LCCOMB_X32_Y16_N10
\G9|cnt[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[0]~23_combout\ = \G9|cnt\(0) $ (VCC)
-- \G9|cnt[0]~24\ = CARRY(\G9|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(0),
	datad => VCC,
	combout => \G9|cnt[0]~23_combout\,
	cout => \G9|cnt[0]~24\);

-- Location: LCCOMB_X32_Y16_N12
\G9|cnt[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[1]~25_combout\ = (\G9|cnt\(1) & (!\G9|cnt[0]~24\)) # (!\G9|cnt\(1) & ((\G9|cnt[0]~24\) # (GND)))
-- \G9|cnt[1]~26\ = CARRY((!\G9|cnt[0]~24\) # (!\G9|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(1),
	datad => VCC,
	cin => \G9|cnt[0]~24\,
	combout => \G9|cnt[1]~25_combout\,
	cout => \G9|cnt[1]~26\);

-- Location: LCCOMB_X32_Y16_N16
\G9|cnt[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[3]~29_combout\ = (\G9|cnt\(3) & (!\G9|cnt[2]~28\)) # (!\G9|cnt\(3) & ((\G9|cnt[2]~28\) # (GND)))
-- \G9|cnt[3]~30\ = CARRY((!\G9|cnt[2]~28\) # (!\G9|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(3),
	datad => VCC,
	cin => \G9|cnt[2]~28\,
	combout => \G9|cnt[3]~29_combout\,
	cout => \G9|cnt[3]~30\);

-- Location: LCCOMB_X32_Y16_N20
\G9|cnt[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[5]~33_combout\ = (\G9|cnt\(5) & (!\G9|cnt[4]~32\)) # (!\G9|cnt\(5) & ((\G9|cnt[4]~32\) # (GND)))
-- \G9|cnt[5]~34\ = CARRY((!\G9|cnt[4]~32\) # (!\G9|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(5),
	datad => VCC,
	cin => \G9|cnt[4]~32\,
	combout => \G9|cnt[5]~33_combout\,
	cout => \G9|cnt[5]~34\);

-- Location: LCCOMB_X32_Y16_N24
\G9|cnt[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[7]~37_combout\ = (\G9|cnt\(7) & (!\G9|cnt[6]~36\)) # (!\G9|cnt\(7) & ((\G9|cnt[6]~36\) # (GND)))
-- \G9|cnt[7]~38\ = CARRY((!\G9|cnt[6]~36\) # (!\G9|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(7),
	datad => VCC,
	cin => \G9|cnt[6]~36\,
	combout => \G9|cnt[7]~37_combout\,
	cout => \G9|cnt[7]~38\);

-- Location: LCCOMB_X32_Y15_N6
\G9|cnt[14]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[14]~51_combout\ = (\G9|cnt\(14) & (\G9|cnt[13]~50\ $ (GND))) # (!\G9|cnt\(14) & (!\G9|cnt[13]~50\ & VCC))
-- \G9|cnt[14]~52\ = CARRY((\G9|cnt\(14) & !\G9|cnt[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(14),
	datad => VCC,
	cin => \G9|cnt[13]~50\,
	combout => \G9|cnt[14]~51_combout\,
	cout => \G9|cnt[14]~52\);

-- Location: LCCOMB_X32_Y15_N10
\G9|cnt[16]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[16]~55_combout\ = (\G9|cnt\(16) & (\G9|cnt[15]~54\ $ (GND))) # (!\G9|cnt\(16) & (!\G9|cnt[15]~54\ & VCC))
-- \G9|cnt[16]~56\ = CARRY((\G9|cnt\(16) & !\G9|cnt[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(16),
	datad => VCC,
	cin => \G9|cnt[15]~54\,
	combout => \G9|cnt[16]~55_combout\,
	cout => \G9|cnt[16]~56\);

-- Location: LCCOMB_X32_Y15_N12
\G9|cnt[17]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[17]~57_combout\ = (\G9|cnt\(17) & (!\G9|cnt[16]~56\)) # (!\G9|cnt\(17) & ((\G9|cnt[16]~56\) # (GND)))
-- \G9|cnt[17]~58\ = CARRY((!\G9|cnt[16]~56\) # (!\G9|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(17),
	datad => VCC,
	cin => \G9|cnt[16]~56\,
	combout => \G9|cnt[17]~57_combout\,
	cout => \G9|cnt[17]~58\);

-- Location: LCFF_X37_Y19_N25
\G6|LRDATA[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux4~2_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(27));

-- Location: LCFF_X36_Y18_N31
\G6|LRDATA[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux10~5_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(21));

-- Location: LCFF_X36_Y18_N3
\G6|LRDATA[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux11~5_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(20));

-- Location: LCFF_X38_Y18_N11
\G6|LRDATA[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux12~5_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(19));

-- Location: LCFF_X34_Y15_N17
\G1|output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G1|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G1|output~regout\);

-- Location: LCCOMB_X37_Y19_N4
\G7|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux4~0_combout\ = (\G7|index\(1) & (\G7|index\(4) $ (((!\G7|index\(3)))))) # (!\G7|index\(1) & (((!\G7|index\(2) & \G7|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux4~0_combout\);

-- Location: LCCOMB_X37_Y19_N14
\G7|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux4~1_combout\ = (\G7|index\(2)) # (\G7|index\(4) $ (((\G7|index\(3) & \G7|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux4~1_combout\);

-- Location: LCCOMB_X37_Y19_N24
\G7|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux4~2_combout\ = (\G7|index\(0) & (\G7|Mux4~0_combout\ $ (\G7|Mux4~1_combout\ $ (\G7|index\(5))))) # (!\G7|index\(0) & ((\G7|Mux4~0_combout\ & ((\G7|index\(5)))) # (!\G7|Mux4~0_combout\ & (\G7|Mux4~1_combout\ & !\G7|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(0),
	datab => \G7|Mux4~0_combout\,
	datac => \G7|Mux4~1_combout\,
	datad => \G7|index\(5),
	combout => \G7|Mux4~2_combout\);

-- Location: LCCOMB_X37_Y18_N4
\G7|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux10~0_combout\ = (\G7|index\(0) & ((\G7|index\(4) $ (\G7|index\(2))) # (!\G7|index\(3)))) # (!\G7|index\(0) & ((\G7|index\(4) & (\G7|index\(2))) # (!\G7|index\(4) & ((\G7|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(0),
	datad => \G7|index\(3),
	combout => \G7|Mux10~0_combout\);

-- Location: LCCOMB_X37_Y18_N6
\G7|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux10~1_combout\ = (\G7|index\(4) & (\G7|index\(3) $ (((\G7|index\(2) & \G7|index\(0)))))) # (!\G7|index\(4) & ((\G7|index\(2) & ((\G7|index\(0)) # (!\G7|index\(3)))) # (!\G7|index\(2) & (\G7|index\(0) $ (\G7|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(0),
	datad => \G7|index\(3),
	combout => \G7|Mux10~1_combout\);

-- Location: LCCOMB_X37_Y18_N8
\G7|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux10~2_combout\ = (\G7|index\(2) & (!\G7|index\(3) & (\G7|index\(4) $ (!\G7|index\(0))))) # (!\G7|index\(2) & (\G7|index\(4) $ ((\G7|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(0),
	datad => \G7|index\(3),
	combout => \G7|Mux10~2_combout\);

-- Location: LCCOMB_X37_Y18_N26
\G7|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux10~3_combout\ = (\G7|index\(5) & (((\G7|index\(1))))) # (!\G7|index\(5) & ((\G7|index\(1) & ((!\G7|Mux10~1_combout\))) # (!\G7|index\(1) & (\G7|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|Mux10~2_combout\,
	datac => \G7|index\(1),
	datad => \G7|Mux10~1_combout\,
	combout => \G7|Mux10~3_combout\);

-- Location: LCCOMB_X37_Y18_N20
\G7|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux10~4_combout\ = (\G7|index\(0) & (\G7|index\(2) & (\G7|index\(4) $ (\G7|index\(3))))) # (!\G7|index\(0) & (((\G7|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(0),
	datad => \G7|index\(3),
	combout => \G7|Mux10~4_combout\);

-- Location: LCCOMB_X36_Y18_N30
\G7|Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux10~5_combout\ = (\G7|Mux10~3_combout\ & ((\G7|Mux10~4_combout\) # ((!\G7|index\(5))))) # (!\G7|Mux10~3_combout\ & (((\G7|index\(5) & \G7|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|Mux10~3_combout\,
	datab => \G7|Mux10~4_combout\,
	datac => \G7|index\(5),
	datad => \G7|Mux10~0_combout\,
	combout => \G7|Mux10~5_combout\);

-- Location: LCCOMB_X39_Y18_N8
\G7|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux11~0_combout\ = (\G7|index\(5) & ((\G7|index\(3)) # ((\G7|index\(2) & !\G7|index\(4))))) # (!\G7|index\(5) & (((\G7|index\(2)) # (\G7|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|index\(3),
	datac => \G7|index\(2),
	datad => \G7|index\(4),
	combout => \G7|Mux11~0_combout\);

-- Location: LCCOMB_X39_Y18_N26
\G7|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux11~1_combout\ = (\G7|index\(4) & (((\G7|index\(2))) # (!\G7|index\(5)))) # (!\G7|index\(4) & ((\G7|index\(3) & (!\G7|index\(5))) # (!\G7|index\(3) & ((\G7|index\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|index\(3),
	datac => \G7|index\(2),
	datad => \G7|index\(4),
	combout => \G7|Mux11~1_combout\);

-- Location: LCCOMB_X39_Y18_N28
\G7|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux11~2_combout\ = (\G7|index\(5) & (\G7|index\(3) & (\G7|index\(2) $ (\G7|index\(4))))) # (!\G7|index\(5) & (\G7|index\(3) $ (((\G7|index\(2)) # (\G7|index\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|index\(3),
	datac => \G7|index\(2),
	datad => \G7|index\(4),
	combout => \G7|Mux11~2_combout\);

-- Location: LCCOMB_X39_Y18_N6
\G7|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux11~3_combout\ = (\G7|index\(1) & (((\G7|index\(0))))) # (!\G7|index\(1) & ((\G7|index\(0) & ((\G7|Mux11~1_combout\))) # (!\G7|index\(0) & (\G7|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(1),
	datab => \G7|Mux11~2_combout\,
	datac => \G7|index\(0),
	datad => \G7|Mux11~1_combout\,
	combout => \G7|Mux11~3_combout\);

-- Location: LCCOMB_X39_Y18_N24
\G7|Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux11~4_combout\ = (\G7|index\(3) & (((!\G7|index\(5) & !\G7|index\(4))) # (!\G7|index\(2)))) # (!\G7|index\(3) & (\G7|index\(5) & ((\G7|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|index\(3),
	datac => \G7|index\(2),
	datad => \G7|index\(4),
	combout => \G7|Mux11~4_combout\);

-- Location: LCCOMB_X36_Y18_N2
\G7|Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux11~5_combout\ = (\G7|Mux11~3_combout\ & ((\G7|Mux11~4_combout\) # ((!\G7|index\(1))))) # (!\G7|Mux11~3_combout\ & (((\G7|index\(1) & !\G7|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|Mux11~4_combout\,
	datab => \G7|Mux11~3_combout\,
	datac => \G7|index\(1),
	datad => \G7|Mux11~0_combout\,
	combout => \G7|Mux11~5_combout\);

-- Location: LCCOMB_X39_Y18_N10
\G7|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux8~0_combout\ = (\G7|index\(3) & (\G7|index\(1) & (\G7|index\(2) $ (\G7|index\(0))))) # (!\G7|index\(3) & ((\G7|index\(0)) # (\G7|index\(1) $ (\G7|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(1),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(0),
	combout => \G7|Mux8~0_combout\);

-- Location: LCCOMB_X37_Y18_N14
\G7|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux13~3_combout\ = (\G7|index\(4) & (\G7|Mux13~1_combout\ & ((!\G7|index\(1)) # (!\G7|Mux13~0_combout\)))) # (!\G7|index\(4) & (\G7|index\(1) $ (((\G7|Mux13~0_combout\ & !\G7|Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|Mux13~0_combout\,
	datac => \G7|Mux13~1_combout\,
	datad => \G7|index\(1),
	combout => \G7|Mux13~3_combout\);

-- Location: LCCOMB_X38_Y18_N4
\G7|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux14~1_combout\ = (\G7|index\(5) & (!\G7|index\(2) & (\G7|index\(1) $ (!\G7|index\(0))))) # (!\G7|index\(5) & ((\G7|index\(1) $ (\G7|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|index\(2),
	datac => \G7|index\(1),
	datad => \G7|index\(0),
	combout => \G7|Mux14~1_combout\);

-- Location: LCCOMB_X38_Y18_N30
\G7|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux14~2_combout\ = (\G7|index\(2) & (\G7|index\(5) $ (((\G7|index\(0)))))) # (!\G7|index\(2) & (((!\G7|index\(1) & \G7|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|index\(2),
	datac => \G7|index\(1),
	datad => \G7|index\(0),
	combout => \G7|Mux14~2_combout\);

-- Location: LCCOMB_X38_Y18_N16
\G7|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux14~3_combout\ = (\G7|index\(4) & (((\G7|index\(3))))) # (!\G7|index\(4) & ((\G7|index\(3) & ((!\G7|Mux14~1_combout\))) # (!\G7|index\(3) & (\G7|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|Mux14~2_combout\,
	datac => \G7|index\(3),
	datad => \G7|Mux14~1_combout\,
	combout => \G7|Mux14~3_combout\);

-- Location: LCCOMB_X38_Y18_N6
\G7|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux15~2_combout\ = (\G7|index\(2) & ((\G7|index\(3)) # ((!\G7|index\(4) & !\G7|index\(1))))) # (!\G7|index\(2) & ((\G7|index\(4) & ((\G7|index\(1)))) # (!\G7|index\(4) & (\G7|index\(3) & !\G7|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux15~2_combout\);

-- Location: LCCOMB_X39_Y18_N14
\G7|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux12~0_combout\ = (\G7|index\(5) & (\G7|index\(4) $ (((\G7|index\(2)) # (!\G7|index\(3)))))) # (!\G7|index\(5) & ((\G7|index\(4) & (!\G7|index\(3))) # (!\G7|index\(4) & ((\G7|index\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|index\(3),
	datac => \G7|index\(2),
	datad => \G7|index\(4),
	combout => \G7|Mux12~0_combout\);

-- Location: LCCOMB_X39_Y18_N0
\G7|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux12~1_combout\ = (\G7|index\(5) & ((\G7|index\(2) & ((\G7|index\(4)) # (!\G7|index\(3)))) # (!\G7|index\(2) & ((!\G7|index\(4)))))) # (!\G7|index\(5) & (\G7|index\(3) $ (((\G7|index\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|index\(3),
	datac => \G7|index\(2),
	datad => \G7|index\(4),
	combout => \G7|Mux12~1_combout\);

-- Location: LCCOMB_X39_Y18_N2
\G7|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux12~2_combout\ = (\G7|index\(2) & ((\G7|index\(5) & ((\G7|index\(4)) # (!\G7|index\(3)))) # (!\G7|index\(5) & ((\G7|index\(3)) # (!\G7|index\(4)))))) # (!\G7|index\(2) & (\G7|index\(4) $ (((\G7|index\(5)) # (\G7|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|index\(3),
	datac => \G7|index\(2),
	datad => \G7|index\(4),
	combout => \G7|Mux12~2_combout\);

-- Location: LCCOMB_X39_Y18_N4
\G7|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux12~3_combout\ = (\G7|index\(1) & (((\G7|index\(0))))) # (!\G7|index\(1) & ((\G7|index\(0) & (\G7|Mux12~1_combout\)) # (!\G7|index\(0) & ((\G7|Mux12~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(1),
	datab => \G7|Mux12~1_combout\,
	datac => \G7|index\(0),
	datad => \G7|Mux12~2_combout\,
	combout => \G7|Mux12~3_combout\);

-- Location: LCCOMB_X39_Y18_N30
\G7|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux12~4_combout\ = (\G7|index\(5) & ((\G7|index\(3) & ((\G7|index\(4)) # (!\G7|index\(2)))) # (!\G7|index\(3) & ((\G7|index\(2)) # (!\G7|index\(4)))))) # (!\G7|index\(5) & (\G7|index\(3) $ (((\G7|index\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|index\(3),
	datac => \G7|index\(2),
	datad => \G7|index\(4),
	combout => \G7|Mux12~4_combout\);

-- Location: LCCOMB_X38_Y18_N10
\G7|Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux12~5_combout\ = (\G7|Mux12~3_combout\ & (((!\G7|Mux12~4_combout\) # (!\G7|index\(1))))) # (!\G7|Mux12~3_combout\ & (!\G7|Mux12~0_combout\ & (\G7|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|Mux12~3_combout\,
	datab => \G7|Mux12~0_combout\,
	datac => \G7|index\(1),
	datad => \G7|Mux12~4_combout\,
	combout => \G7|Mux12~5_combout\);

-- Location: LCCOMB_X37_Y18_N22
\G7|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux3~1_combout\ = (\G7|index\(4) & (\G7|index\(3) & ((\G7|index\(2)) # (\G7|index\(1))))) # (!\G7|index\(4) & (!\G7|index\(3) & (\G7|index\(2) $ (\G7|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux3~1_combout\);

-- Location: LCCOMB_X37_Y25_N16
\G6|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~0_combout\ = (!\G6|word_count\(1) & (\G6|state.d2~regout\ & \G6|word_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G6|word_count\(1),
	datac => \G6|state.d2~regout\,
	datad => \G6|word_count\(0),
	combout => \G6|Selector30~0_combout\);

-- Location: LCCOMB_X37_Y25_N4
\G6|Selector30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~5_combout\ = (\G6|state.d0~regout\) # ((!\G6|word_count\(0) & ((\G6|state.a5~regout\) # (\G6|state.d2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|state.d0~regout\,
	datab => \G6|word_count\(0),
	datac => \G6|state.a5~regout\,
	datad => \G6|state.d2~regout\,
	combout => \G6|Selector30~5_combout\);

-- Location: LCCOMB_X37_Y25_N20
\G6|Selector30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~7_combout\ = (\G6|state.d3~regout\) # ((!\G6|word_count\(1) & ((\G6|state.d6~regout\) # (\G6|state.d4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|word_count\(1),
	datab => \G6|state.d3~regout\,
	datac => \G6|state.d6~regout\,
	datad => \G6|state.d4~regout\,
	combout => \G6|Selector30~7_combout\);

-- Location: LCCOMB_X37_Y25_N0
\G6|Selector30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~8_combout\ = (\G6|word_count\(0) & (\G6|Selector30~7_combout\)) # (!\G6|word_count\(0) & (((!\G6|word_count\(1) & \G6|state.a3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|word_count\(0),
	datab => \G6|Selector30~7_combout\,
	datac => \G6|word_count\(1),
	datad => \G6|state.a3~regout\,
	combout => \G6|Selector30~8_combout\);

-- Location: LCFF_X39_Y25_N31
\G6|state.initialize\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|Selector0~1_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.initialize~regout\);

-- Location: LCCOMB_X37_Y25_N12
\G6|Selector30~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~12_combout\ = ((!\G6|word_count\(0) & (!\G6|word_count\(1) & \G6|state.a6~regout\))) # (!\G6|state.initialize~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|word_count\(0),
	datab => \G6|state.initialize~regout\,
	datac => \G6|word_count\(1),
	datad => \G6|state.a6~regout\,
	combout => \G6|Selector30~12_combout\);

-- Location: LCFF_X34_Y14_N1
\G1|activated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G1|activated~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G1|activated~regout\);

-- Location: LCCOMB_X34_Y15_N16
\G1|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G1|output~0_combout\ = (!\button_count~combout\ & !\G1|activated~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_count~combout\,
	datad => \G1|activated~regout\,
	combout => \G1|output~0_combout\);

-- Location: LCFF_X36_Y15_N13
\G8|index[4]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|index[4]~data_lut_combout\,
	aclr => \G8|index[4]~clear_lut_combout\,
	ena => \G8|index[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|index[4]~_emulated_regout\);

-- Location: LCFF_X35_Y19_N7
\G7|wait_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Add1~2_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|wait_counter\(1));

-- Location: LCFF_X35_Y19_N11
\G7|wait_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Add1~6_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|wait_counter\(3));

-- Location: LCCOMB_X35_Y19_N2
\G7|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Equal0~0_combout\ = (!\G7|wait_counter\(3) & (!\G7|wait_counter\(0) & (!\G7|wait_counter\(2) & !\G7|wait_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|wait_counter\(3),
	datab => \G7|wait_counter\(0),
	datac => \G7|wait_counter\(2),
	datad => \G7|wait_counter\(1),
	combout => \G7|Equal0~0_combout\);

-- Location: LCFF_X35_Y19_N13
\G7|wait_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Add1~8_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|wait_counter\(4));

-- Location: LCCOMB_X33_Y15_N14
\G8|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux13~0_combout\ = (\G2|output\(2) & (!\G2|output\(3) & ((\G2|output\(0)) # (\G2|output\(1))))) # (!\G2|output\(2) & (((\G2|output\(3) & !\G2|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(0),
	datac => \G2|output\(3),
	datad => \G2|output\(1),
	combout => \G8|Mux13~0_combout\);

-- Location: LCCOMB_X36_Y15_N6
\G8|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux10~0_combout\ = (\G2|output\(0) & ((\G2|output\(1) & (!\G2|output\(3) & \G2|output\(2))) # (!\G2|output\(1) & (\G2|output\(3) & !\G2|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(1),
	datab => \G2|output\(3),
	datac => \G2|output\(0),
	datad => \G2|output\(2),
	combout => \G8|Mux10~0_combout\);

-- Location: LCCOMB_X36_Y15_N16
\G8|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux14~0_combout\ = (\G8|index\(0) & (\G8|Mux10~0_combout\)) # (!\G8|index\(0) & (((\G8|index[2]~head_lut_combout\) # (!\G8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|Mux10~0_combout\,
	datab => \G8|index\(0),
	datac => \G8|Mux0~0_combout\,
	datad => \G8|index[2]~head_lut_combout\,
	combout => \G8|Mux14~0_combout\);

-- Location: LCCOMB_X33_Y15_N30
\G8|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux14~2_combout\ = (\G2|output\(2) & (((!\G2|output\(3))))) # (!\G2|output\(2) & ((\G2|output\(1) & (!\G2|output\(3))) # (!\G2|output\(1) & (\G2|output\(3) & \G2|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(1),
	datac => \G2|output\(3),
	datad => \G2|output\(0),
	combout => \G8|Mux14~2_combout\);

-- Location: LCCOMB_X33_Y15_N12
\G8|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux4~0_combout\ = (\G2|output\(2) & (((!\G2|output\(3))))) # (!\G2|output\(2) & ((\G2|output\(3) & (!\G2|output\(0) & !\G2|output\(1))) # (!\G2|output\(3) & ((\G2|output\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(0),
	datac => \G2|output\(3),
	datad => \G2|output\(1),
	combout => \G8|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y18_N18
\G9|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux10~0_combout\ = (\G3|output\(0) & ((\G3|output\(3) & (!\G3|output\(2) & !\G3|output\(1))) # (!\G3|output\(3) & (\G3|output\(2) & \G3|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(3),
	datab => \G3|output\(0),
	datac => \G3|output\(2),
	datad => \G3|output\(1),
	combout => \G9|Mux10~0_combout\);

-- Location: LCCOMB_X32_Y18_N30
\G9|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux14~2_combout\ = (\G3|output\(3) & (\G3|output\(0) & (!\G3|output\(2) & !\G3|output\(1)))) # (!\G3|output\(3) & (((\G3|output\(2)) # (\G3|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(0),
	datab => \G3|output\(3),
	datac => \G3|output\(2),
	datad => \G3|output\(1),
	combout => \G9|Mux14~2_combout\);

-- Location: LCCOMB_X39_Y25_N30
\G6|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector0~1_combout\ = (\G6|I2C_SCLK~combout\ & (((\G6|Equal0~0_combout\)) # (!\G6|Selector0~0_combout\))) # (!\G6|I2C_SCLK~combout\ & (\G6|state.initialize~regout\ & ((\G6|Equal0~0_combout\) # (!\G6|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|I2C_SCLK~combout\,
	datab => \G6|Selector0~0_combout\,
	datac => \G6|state.initialize~regout\,
	datad => \G6|Equal0~0_combout\,
	combout => \G6|Selector0~1_combout\);

-- Location: LCCOMB_X36_Y15_N12
\G8|index[4]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[4]~data_lut_combout\ = \G8|index[4]~latch_combout\ $ (\G8|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G8|index[4]~latch_combout\,
	datad => \G8|Add1~6_combout\,
	combout => \G8|index[4]~data_lut_combout\);

-- Location: LCCOMB_X34_Y15_N24
\G8|index[4]~clear_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[4]~clear_lut_combout\ = (\button_reset~combout\) # (\G8|index[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_reset~combout\,
	datad => \G8|index[4]~6_combout\,
	combout => \G8|index[4]~clear_lut_combout\);

-- Location: LCCOMB_X32_Y15_N24
\G9|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|LessThan0~2_combout\ = (!\G9|cnt\(17) & (!\G9|cnt\(15) & !\G9|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(17),
	datac => \G9|cnt\(15),
	datad => \G9|cnt\(16),
	combout => \G9|LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y14_N0
\G1|activated~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G1|activated~0_combout\ = !\button_count~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button_count~combout\,
	combout => \G1|activated~0_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button_count~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_button_count,
	combout => \button_count~combout\);

-- Location: CLKCTRL_G5
\G2|over~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G2|over~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G2|over~clkctrl_outclk\);

-- Location: CLKCTRL_G10
\G6|I2C_SCLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G6|I2C_SCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G6|I2C_SCLK~clkctrl_outclk\);

-- Location: CLKCTRL_G6
\G1|output~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G1|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G1|output~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y25_N30
\G6|word_count[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|word_count[0]~2_combout\ = !\G6|word_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G6|word_count\(0),
	combout => \G6|word_count[0]~2_combout\);

-- Location: LCCOMB_X39_Y25_N0
\G6|i2c_counter[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|i2c_counter[0]~27_combout\ = !\G6|i2c_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G6|i2c_counter\(0),
	combout => \G6|i2c_counter[0]~27_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button_reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_button_reset,
	combout => \button_reset~combout\);

-- Location: LCFF_X39_Y25_N1
\G6|i2c_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|i2c_counter[0]~27_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|i2c_counter\(0));

-- Location: LCCOMB_X39_Y25_N14
\G6|i2c_counter[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|i2c_counter[2]~11_combout\ = (\G6|i2c_counter\(2) & (!\G6|i2c_counter[1]~10\)) # (!\G6|i2c_counter\(2) & ((\G6|i2c_counter[1]~10\) # (GND)))
-- \G6|i2c_counter[2]~12\ = CARRY((!\G6|i2c_counter[1]~10\) # (!\G6|i2c_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G6|i2c_counter\(2),
	datad => VCC,
	cin => \G6|i2c_counter[1]~10\,
	combout => \G6|i2c_counter[2]~11_combout\,
	cout => \G6|i2c_counter[2]~12\);

-- Location: LCFF_X39_Y25_N15
\G6|i2c_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|i2c_counter[2]~11_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|i2c_counter\(2));

-- Location: LCCOMB_X39_Y25_N18
\G6|i2c_counter[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|i2c_counter[4]~15_combout\ = (\G6|i2c_counter\(4) & (!\G6|i2c_counter[3]~14\)) # (!\G6|i2c_counter\(4) & ((\G6|i2c_counter[3]~14\) # (GND)))
-- \G6|i2c_counter[4]~16\ = CARRY((!\G6|i2c_counter[3]~14\) # (!\G6|i2c_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G6|i2c_counter\(4),
	datad => VCC,
	cin => \G6|i2c_counter[3]~14\,
	combout => \G6|i2c_counter[4]~15_combout\,
	cout => \G6|i2c_counter[4]~16\);

-- Location: LCFF_X39_Y25_N19
\G6|i2c_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|i2c_counter[4]~15_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|i2c_counter\(4));

-- Location: LCCOMB_X39_Y25_N22
\G6|i2c_counter[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|i2c_counter[6]~19_combout\ = (\G6|i2c_counter\(6) & (!\G6|i2c_counter[5]~18\)) # (!\G6|i2c_counter\(6) & ((\G6|i2c_counter[5]~18\) # (GND)))
-- \G6|i2c_counter[6]~20\ = CARRY((!\G6|i2c_counter[5]~18\) # (!\G6|i2c_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G6|i2c_counter\(6),
	datad => VCC,
	cin => \G6|i2c_counter[5]~18\,
	combout => \G6|i2c_counter[6]~19_combout\,
	cout => \G6|i2c_counter[6]~20\);

-- Location: LCFF_X39_Y25_N23
\G6|i2c_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|i2c_counter[6]~19_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|i2c_counter\(6));

-- Location: LCCOMB_X39_Y25_N24
\G6|i2c_counter[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|i2c_counter[7]~21_combout\ = (\G6|i2c_counter\(7) & (\G6|i2c_counter[6]~20\ $ (GND))) # (!\G6|i2c_counter\(7) & (!\G6|i2c_counter[6]~20\ & VCC))
-- \G6|i2c_counter[7]~22\ = CARRY((\G6|i2c_counter\(7) & !\G6|i2c_counter[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G6|i2c_counter\(7),
	datad => VCC,
	cin => \G6|i2c_counter[6]~20\,
	combout => \G6|i2c_counter[7]~21_combout\,
	cout => \G6|i2c_counter[7]~22\);

-- Location: LCFF_X39_Y25_N25
\G6|i2c_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|i2c_counter[7]~21_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|i2c_counter\(7));

-- Location: LCCOMB_X39_Y25_N26
\G6|i2c_counter[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|i2c_counter[8]~23_combout\ = (\G6|i2c_counter\(8) & (!\G6|i2c_counter[7]~22\)) # (!\G6|i2c_counter\(8) & ((\G6|i2c_counter[7]~22\) # (GND)))
-- \G6|i2c_counter[8]~24\ = CARRY((!\G6|i2c_counter[7]~22\) # (!\G6|i2c_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G6|i2c_counter\(8),
	datad => VCC,
	cin => \G6|i2c_counter[7]~22\,
	combout => \G6|i2c_counter[8]~23_combout\,
	cout => \G6|i2c_counter[8]~24\);

-- Location: LCFF_X39_Y25_N27
\G6|i2c_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|i2c_counter[8]~23_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|i2c_counter\(8));

-- Location: LCCOMB_X39_Y25_N28
\G6|i2c_counter[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|i2c_counter[9]~25_combout\ = \G6|i2c_counter[8]~24\ $ (!\G6|i2c_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \G6|i2c_counter\(9),
	cin => \G6|i2c_counter[8]~24\,
	combout => \G6|i2c_counter[9]~25_combout\);

-- Location: LCFF_X39_Y25_N29
\G6|i2c_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|i2c_counter[9]~25_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|i2c_counter\(9));

-- Location: LCCOMB_X39_Y25_N10
\G6|I2C_SCLK\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|I2C_SCLK~combout\ = LCELL((\G6|state.b_end~regout\) # ((\G6|state.b_stop1~regout\) # (\G6|i2c_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G6|state.b_end~regout\,
	datac => \G6|state.b_stop1~regout\,
	datad => \G6|i2c_counter\(9),
	combout => \G6|I2C_SCLK~combout\);

-- Location: LCFF_X39_Y25_N11
\G6|sck0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|I2C_SCLK~combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|sck0~regout\);

-- Location: LCFF_X36_Y25_N29
\G6|sck1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|sck0~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|sck1~regout\);

-- Location: LCCOMB_X36_Y25_N16
\G6|next_state_i2c~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|next_state_i2c~0_combout\ = (\G6|sck1~regout\ & !\G6|sck0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G6|sck1~regout\,
	datad => \G6|sck0~regout\,
	combout => \G6|next_state_i2c~0_combout\);

-- Location: LCCOMB_X40_Y25_N8
\G6|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector1~0_combout\ = (\G6|state.initialize~regout\ & (!\G6|next_state_i2c~0_combout\ & (\G6|state.start~regout\))) # (!\G6|state.initialize~regout\ & ((\G6|I2C_SCLK~combout\) # ((!\G6|next_state_i2c~0_combout\ & \G6|state.start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|state.initialize~regout\,
	datab => \G6|next_state_i2c~0_combout\,
	datac => \G6|state.start~regout\,
	datad => \G6|I2C_SCLK~combout\,
	combout => \G6|Selector1~0_combout\);

-- Location: LCFF_X40_Y25_N9
\G6|state.start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|Selector1~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.start~regout\);

-- Location: LCFF_X40_Y25_N11
\G6|state.b0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.start~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.b0~regout\);

-- Location: LCCOMB_X40_Y25_N14
\G6|state.b1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|state.b1~feeder_combout\ = \G6|state.b0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G6|state.b0~regout\,
	combout => \G6|state.b1~feeder_combout\);

-- Location: LCFF_X40_Y25_N15
\G6|state.b1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|state.b1~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.b1~regout\);

-- Location: LCFF_X40_Y25_N29
\G6|state.b2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.b1~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.b2~regout\);

-- Location: LCFF_X40_Y25_N19
\G6|state.b3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.b2~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.b3~regout\);

-- Location: LCCOMB_X40_Y25_N26
\G6|state.b4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|state.b4~feeder_combout\ = \G6|state.b3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G6|state.b3~regout\,
	combout => \G6|state.b4~feeder_combout\);

-- Location: LCFF_X40_Y25_N27
\G6|state.b4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|state.b4~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.b4~regout\);

-- Location: LCCOMB_X40_Y25_N22
\G6|state.b5~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|state.b5~feeder_combout\ = \G6|state.b4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G6|state.b4~regout\,
	combout => \G6|state.b5~feeder_combout\);

-- Location: LCFF_X40_Y25_N23
\G6|state.b5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|state.b5~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.b5~regout\);

-- Location: LCCOMB_X40_Y25_N2
\G6|state.b6~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|state.b6~feeder_combout\ = \G6|state.b5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G6|state.b5~regout\,
	combout => \G6|state.b6~feeder_combout\);

-- Location: LCFF_X40_Y25_N3
\G6|state.b6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|state.b6~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.b6~regout\);

-- Location: LCCOMB_X40_Y25_N4
\G6|state.b7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|state.b7~feeder_combout\ = \G6|state.b6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G6|state.b6~regout\,
	combout => \G6|state.b7~feeder_combout\);

-- Location: LCFF_X40_Y25_N5
\G6|state.b7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|state.b7~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.b7~regout\);

-- Location: LCFF_X40_Y25_N1
\G6|state.b_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.b7~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.b_ack~regout\);

-- Location: LCCOMB_X40_Y25_N6
\G6|state.a0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|state.a0~feeder_combout\ = \G6|state.b_ack~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G6|state.b_ack~regout\,
	combout => \G6|state.a0~feeder_combout\);

-- Location: LCFF_X40_Y25_N7
\G6|state.a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|state.a0~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.a0~regout\);

-- Location: LCCOMB_X40_Y25_N12
\G6|state.a1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|state.a1~feeder_combout\ = \G6|state.a0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G6|state.a0~regout\,
	combout => \G6|state.a1~feeder_combout\);

-- Location: LCFF_X40_Y25_N13
\G6|state.a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|state.a1~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.a1~regout\);

-- Location: LCCOMB_X40_Y25_N30
\G6|state.a2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|state.a2~feeder_combout\ = \G6|state.a1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G6|state.a1~regout\,
	combout => \G6|state.a2~feeder_combout\);

-- Location: LCFF_X40_Y25_N31
\G6|state.a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|state.a2~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.a2~regout\);

-- Location: LCFF_X37_Y25_N11
\G6|state.a3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.a2~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.a3~regout\);

-- Location: LCFF_X36_Y25_N5
\G6|state.a4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.a3~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.a4~regout\);

-- Location: LCFF_X37_Y25_N5
\G6|state.a5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.a4~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.a5~regout\);

-- Location: LCFF_X37_Y25_N7
\G6|state.a6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.a5~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.a6~regout\);

-- Location: LCCOMB_X36_Y25_N12
\G6|state.a7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|state.a7~feeder_combout\ = \G6|state.a6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G6|state.a6~regout\,
	combout => \G6|state.a7~feeder_combout\);

-- Location: LCFF_X36_Y25_N13
\G6|state.a7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|state.a7~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.a7~regout\);

-- Location: LCCOMB_X40_Y25_N20
\G6|state.a_ack~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|state.a_ack~feeder_combout\ = \G6|state.a7~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G6|state.a7~regout\,
	combout => \G6|state.a_ack~feeder_combout\);

-- Location: LCFF_X40_Y25_N21
\G6|state.a_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|state.a_ack~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.a_ack~regout\);

-- Location: LCFF_X40_Y25_N17
\G6|state.d0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.a_ack~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.d0~regout\);

-- Location: LCFF_X37_Y25_N19
\G6|state.d1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.d0~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.d1~regout\);

-- Location: LCFF_X37_Y25_N17
\G6|state.d2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.d1~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.d2~regout\);

-- Location: LCFF_X36_Y25_N23
\G6|state.d3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.d2~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.d3~regout\);

-- Location: LCCOMB_X36_Y25_N24
\G6|state.d4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|state.d4~feeder_combout\ = \G6|state.d3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G6|state.d3~regout\,
	combout => \G6|state.d4~feeder_combout\);

-- Location: LCFF_X36_Y25_N25
\G6|state.d4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|state.d4~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.d4~regout\);

-- Location: LCFF_X36_Y25_N27
\G6|state.d5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.d4~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.d5~regout\);

-- Location: LCFF_X37_Y25_N21
\G6|state.d6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.d5~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.d6~regout\);

-- Location: LCFF_X37_Y25_N9
\G6|state.d7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.d6~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.d7~regout\);

-- Location: LCFF_X37_Y25_N15
\G6|state.d_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|state.d7~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \G6|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.d_ack~regout\);

-- Location: LCCOMB_X36_Y25_N14
\G6|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector0~0_combout\ = (!\G6|sck0~regout\ & (\G6|sck1~regout\ & \G6|state.d_ack~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|sck0~regout\,
	datab => \G6|sck1~regout\,
	datad => \G6|state.d_ack~regout\,
	combout => \G6|Selector0~0_combout\);

-- Location: LCCOMB_X37_Y25_N26
\G6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Mux1~0_combout\ = \G6|word_count\(2) $ (((\G6|word_count\(0) & \G6|word_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G6|word_count\(0),
	datac => \G6|word_count\(2),
	datad => \G6|word_count\(1),
	combout => \G6|Mux1~0_combout\);

-- Location: LCFF_X37_Y25_N27
\G6|word_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G6|ALT_INV_I2C_SCLK~clkctrl_outclk\,
	datain => \G6|Mux1~0_combout\,
	aclr => \G6|word_counter~0_combout\,
	ena => \G6|state.d_ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|word_count\(2));

-- Location: LCCOMB_X37_Y25_N14
\G6|word_count[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|word_count[3]~0_combout\ = (\G6|word_count\(1) & (\G6|word_count\(2) & (\G6|state.d_ack~regout\ & \G6|word_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|word_count\(1),
	datab => \G6|word_count\(2),
	datac => \G6|state.d_ack~regout\,
	datad => \G6|word_count\(0),
	combout => \G6|word_count[3]~0_combout\);

-- Location: LCCOMB_X38_Y25_N24
\G6|word_count[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|word_count[3]~1_combout\ = \G6|word_count\(3) $ (\G6|word_count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G6|word_count\(3),
	datad => \G6|word_count[3]~0_combout\,
	combout => \G6|word_count[3]~1_combout\);

-- Location: LCFF_X38_Y25_N25
\G6|word_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G6|ALT_INV_I2C_SCLK~clkctrl_outclk\,
	datain => \G6|word_count[3]~1_combout\,
	aclr => \G6|word_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|word_count\(3));

-- Location: LCCOMB_X37_Y25_N28
\G6|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Equal0~0_combout\ = (!\G6|word_count\(1) & (!\G6|word_count\(2) & (\G6|word_count\(0) & \G6|word_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|word_count\(1),
	datab => \G6|word_count\(2),
	datac => \G6|word_count\(0),
	datad => \G6|word_count\(3),
	combout => \G6|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y25_N6
\G6|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector29~0_combout\ = (\G6|I2C_SCLK~combout\ & (\G6|Selector0~0_combout\ & ((\G6|Equal0~0_combout\)))) # (!\G6|I2C_SCLK~combout\ & ((\G6|state.b_stop0~regout\) # ((\G6|Selector0~0_combout\ & \G6|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|I2C_SCLK~combout\,
	datab => \G6|Selector0~0_combout\,
	datac => \G6|state.b_stop0~regout\,
	datad => \G6|Equal0~0_combout\,
	combout => \G6|Selector29~0_combout\);

-- Location: LCFF_X39_Y25_N7
\G6|state.b_stop0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|Selector29~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.b_stop0~regout\);

-- Location: LCCOMB_X39_Y25_N4
\G6|next_state.b_stop1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|next_state.b_stop1~0_combout\ = (\G6|I2C_SCLK~combout\ & \G6|state.b_stop0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|I2C_SCLK~combout\,
	datad => \G6|state.b_stop0~regout\,
	combout => \G6|next_state.b_stop1~0_combout\);

-- Location: LCFF_X39_Y25_N5
\G6|state.b_stop1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \G6|next_state.b_stop1~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.b_stop1~regout\);

-- Location: LCCOMB_X39_Y25_N8
\G6|I2C_SCLK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|I2C_SCLK~0_combout\ = (\G6|state.b_stop1~regout\) # (\G6|state.b_end~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G6|state.b_stop1~regout\,
	datac => \G6|state.b_end~regout\,
	combout => \G6|I2C_SCLK~0_combout\);

-- Location: LCFF_X39_Y25_N9
\G6|state.b_end\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \G6|I2C_SCLK~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|state.b_end~regout\);

-- Location: LCCOMB_X39_Y25_N2
\G6|word_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|word_counter~0_combout\ = (\G6|state.b_end~regout\) # (!\button_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G6|state.b_end~regout\,
	datad => \button_reset~combout\,
	combout => \G6|word_counter~0_combout\);

-- Location: LCFF_X37_Y25_N31
\G6|word_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G6|ALT_INV_I2C_SCLK~clkctrl_outclk\,
	datain => \G6|word_count[0]~2_combout\,
	aclr => \G6|word_counter~0_combout\,
	ena => \G6|state.d_ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|word_count\(0));

-- Location: LCCOMB_X37_Y25_N24
\G6|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Mux10~0_combout\ = \G6|word_count\(1) $ (\G6|word_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G6|word_count\(1),
	datad => \G6|word_count\(0),
	combout => \G6|Mux10~0_combout\);

-- Location: LCFF_X37_Y25_N25
\G6|word_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G6|ALT_INV_I2C_SCLK~clkctrl_outclk\,
	datain => \G6|Mux10~0_combout\,
	aclr => \G6|word_counter~0_combout\,
	ena => \G6|state.d_ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|word_count\(1));

-- Location: LCCOMB_X36_Y25_N26
\G6|Selector30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~4_combout\ = (\G6|state.a7~regout\ & (\G6|word_count\(0) $ (((\G6|word_count\(1)))))) # (!\G6|state.a7~regout\ & (\G6|state.d5~regout\ & (\G6|word_count\(0) $ (\G6|word_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|state.a7~regout\,
	datab => \G6|word_count\(0),
	datac => \G6|state.d5~regout\,
	datad => \G6|word_count\(1),
	combout => \G6|Selector30~4_combout\);

-- Location: LCCOMB_X36_Y25_N22
\G6|Selector30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~6_combout\ = (\G6|Selector30~4_combout\) # ((\G6|word_count\(1) & ((\G6|Selector30~5_combout\) # (\G6|state.d3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Selector30~5_combout\,
	datab => \G6|word_count\(1),
	datac => \G6|state.d3~regout\,
	datad => \G6|Selector30~4_combout\,
	combout => \G6|Selector30~6_combout\);

-- Location: LCCOMB_X37_Y25_N6
\G6|Selector30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~2_combout\ = (\G6|state.a6~regout\) # ((\G6|word_count\(1) & (\G6|state.d6~regout\)) # (!\G6|word_count\(1) & ((\G6|state.d5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|state.d6~regout\,
	datab => \G6|word_count\(1),
	datac => \G6|state.a6~regout\,
	datad => \G6|state.d5~regout\,
	combout => \G6|Selector30~2_combout\);

-- Location: LCCOMB_X37_Y25_N10
\G6|Selector30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~1_combout\ = (\G6|word_count\(0) & ((\G6|word_count\(1) & ((\G6|state.a3~regout\))) # (!\G6|word_count\(1) & (\G6|state.a5~regout\)))) # (!\G6|word_count\(0) & (\G6|state.a5~regout\ & ((\G6|word_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|word_count\(0),
	datab => \G6|state.a5~regout\,
	datac => \G6|state.a3~regout\,
	datad => \G6|word_count\(1),
	combout => \G6|Selector30~1_combout\);

-- Location: LCCOMB_X37_Y25_N22
\G6|Selector30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~3_combout\ = (\G6|Selector30~0_combout\) # ((\G6|Selector30~1_combout\) # ((\G6|Selector30~2_combout\ & !\G6|word_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Selector30~0_combout\,
	datab => \G6|Selector30~2_combout\,
	datac => \G6|word_count\(0),
	datad => \G6|Selector30~1_combout\,
	combout => \G6|Selector30~3_combout\);

-- Location: LCCOMB_X36_Y25_N10
\G6|Selector30~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~9_combout\ = (\G6|word_count\(2) & (((\G6|Selector30~3_combout\)))) # (!\G6|word_count\(2) & ((\G6|Selector30~8_combout\) # ((\G6|Selector30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Selector30~8_combout\,
	datab => \G6|Selector30~6_combout\,
	datac => \G6|word_count\(2),
	datad => \G6|Selector30~3_combout\,
	combout => \G6|Selector30~9_combout\);

-- Location: LCCOMB_X37_Y25_N2
\G6|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Mux12~0_combout\ = (\G6|word_count\(3)) # (\G6|word_count\(0) $ (((\G6|word_count\(1)) # (\G6|word_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|word_count\(1),
	datab => \G6|word_count\(0),
	datac => \G6|word_count\(3),
	datad => \G6|word_count\(2),
	combout => \G6|Mux12~0_combout\);

-- Location: LCCOMB_X37_Y25_N8
\G6|Selector30~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~13_combout\ = (\G6|Selector30~12_combout\) # ((\G6|I2C_SCLK~0_combout\) # ((\G6|Mux12~0_combout\ & \G6|state.d7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Selector30~12_combout\,
	datab => \G6|Mux12~0_combout\,
	datac => \G6|state.d7~regout\,
	datad => \G6|I2C_SCLK~0_combout\,
	combout => \G6|Selector30~13_combout\);

-- Location: LCCOMB_X37_Y25_N18
\G6|Selector30~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~11_combout\ = (\G6|state.d1~regout\ & (\G6|word_count\(1) $ (((\G6|word_count\(0) & \G6|word_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|word_count\(1),
	datab => \G6|word_count\(0),
	datac => \G6|state.d1~regout\,
	datad => \G6|word_count\(2),
	combout => \G6|Selector30~11_combout\);

-- Location: LCCOMB_X36_Y25_N4
\G6|Selector30~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~14_combout\ = (\G6|Selector30~13_combout\) # ((\G6|Selector30~11_combout\) # ((\G6|Mux1~0_combout\ & \G6|state.a4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Mux1~0_combout\,
	datab => \G6|Selector30~13_combout\,
	datac => \G6|state.a4~regout\,
	datad => \G6|Selector30~11_combout\,
	combout => \G6|Selector30~14_combout\);

-- Location: LCCOMB_X40_Y25_N28
\G6|Selector30~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~10_combout\ = (\G6|state.b5~regout\) # ((\G6|state.b2~regout\) # (\G6|state.b3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G6|state.b5~regout\,
	datac => \G6|state.b2~regout\,
	datad => \G6|state.b3~regout\,
	combout => \G6|Selector30~10_combout\);

-- Location: LCCOMB_X40_Y25_N24
\G6|Selector30~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Selector30~15_combout\ = (\G6|Selector30~9_combout\) # ((\G6|Selector30~14_combout\) # (\G6|Selector30~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Selector30~9_combout\,
	datac => \G6|Selector30~14_combout\,
	datad => \G6|Selector30~10_combout\,
	combout => \G6|Selector30~15_combout\);

-- Location: LCCOMB_X40_Y25_N0
\G6|WideOr32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|WideOr32~0_combout\ = (!\G6|state.a_ack~regout\ & (!\G6|state.b_ack~regout\ & !\G6|state.d_ack~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|state.a_ack~regout\,
	datac => \G6|state.b_ack~regout\,
	datad => \G6|state.d_ack~regout\,
	combout => \G6|WideOr32~0_combout\);

-- Location: LCCOMB_X33_Y18_N30
\G3|output[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G3|output[0]~3_combout\ = !\G3|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G3|output\(0),
	combout => \G3|output[0]~3_combout\);

-- Location: LCFF_X33_Y18_N31
\G3|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G2|over~clkctrl_outclk\,
	datain => \G3|output[0]~3_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G3|output\(0));

-- Location: LCCOMB_X33_Y18_N22
\G3|output[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G3|output[2]~1_combout\ = \G3|output\(2) $ (((\G3|output\(0) & \G3|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G3|output\(0),
	datac => \G3|output\(2),
	datad => \G3|output\(1),
	combout => \G3|output[2]~1_combout\);

-- Location: LCFF_X33_Y18_N23
\G3|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G2|over~clkctrl_outclk\,
	datain => \G3|output[2]~1_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G3|output\(2));

-- Location: LCCOMB_X33_Y18_N28
\G3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G3|output~0_combout\ = (\G3|output\(0) & (!\G3|output\(1) & ((\G3|output\(2)) # (!\G3|output\(3))))) # (!\G3|output\(0) & (((\G3|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(3),
	datab => \G3|output\(0),
	datac => \G3|output\(1),
	datad => \G3|output\(2),
	combout => \G3|output~0_combout\);

-- Location: LCFF_X33_Y18_N29
\G3|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G2|over~clkctrl_outclk\,
	datain => \G3|output~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G3|output\(1));

-- Location: LCCOMB_X33_Y18_N8
\G3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G3|output~2_combout\ = (\G3|output\(0) & ((\G3|output\(1) & (\G3|output\(3) $ (\G3|output\(2)))) # (!\G3|output\(1) & (\G3|output\(3) & \G3|output\(2))))) # (!\G3|output\(0) & (((\G3|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(0),
	datab => \G3|output\(1),
	datac => \G3|output\(3),
	datad => \G3|output\(2),
	combout => \G3|output~2_combout\);

-- Location: LCFF_X33_Y18_N9
\G3|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G2|over~clkctrl_outclk\,
	datain => \G3|output~2_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G3|output\(3));

-- Location: LCCOMB_X32_Y18_N24
\G5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux6~0_combout\ = (\G3|output\(3) & (\G3|output\(0) & (\G3|output\(1) $ (\G3|output\(2))))) # (!\G3|output\(3) & (!\G3|output\(1) & (\G3|output\(2) $ (\G3|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(3),
	datab => \G3|output\(1),
	datac => \G3|output\(2),
	datad => \G3|output\(0),
	combout => \G5|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y18_N26
\G5|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux5~0_combout\ = (\G3|output\(3) & ((\G3|output\(0) & (\G3|output\(1))) # (!\G3|output\(0) & ((\G3|output\(2)))))) # (!\G3|output\(3) & (\G3|output\(2) & (\G3|output\(1) $ (\G3|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(3),
	datab => \G3|output\(1),
	datac => \G3|output\(2),
	datad => \G3|output\(0),
	combout => \G5|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y18_N20
\G5|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux4~0_combout\ = (\G3|output\(3) & (\G3|output\(2) & ((\G3|output\(1)) # (!\G3|output\(0))))) # (!\G3|output\(3) & (\G3|output\(1) & (!\G3|output\(2) & !\G3|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(3),
	datab => \G3|output\(1),
	datac => \G3|output\(2),
	datad => \G3|output\(0),
	combout => \G5|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y18_N14
\G5|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux3~0_combout\ = (\G3|output\(1) & ((\G3|output\(2) & ((\G3|output\(0)))) # (!\G3|output\(2) & (\G3|output\(3) & !\G3|output\(0))))) # (!\G3|output\(1) & (!\G3|output\(3) & (\G3|output\(2) $ (\G3|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(3),
	datab => \G3|output\(1),
	datac => \G3|output\(2),
	datad => \G3|output\(0),
	combout => \G5|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y18_N8
\G5|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux2~0_combout\ = (\G3|output\(1) & (!\G3|output\(3) & ((\G3|output\(0))))) # (!\G3|output\(1) & ((\G3|output\(2) & (!\G3|output\(3))) # (!\G3|output\(2) & ((\G3|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(3),
	datab => \G3|output\(1),
	datac => \G3|output\(2),
	datad => \G3|output\(0),
	combout => \G5|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y18_N10
\G5|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux1~0_combout\ = (\G3|output\(1) & (!\G3|output\(3) & ((\G3|output\(0)) # (!\G3|output\(2))))) # (!\G3|output\(1) & (\G3|output\(0) & (\G3|output\(3) $ (!\G3|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(3),
	datab => \G3|output\(1),
	datac => \G3|output\(2),
	datad => \G3|output\(0),
	combout => \G5|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y18_N4
\G5|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux0~0_combout\ = (\G3|output\(0) & ((\G3|output\(3)) # (\G3|output\(1) $ (\G3|output\(2))))) # (!\G3|output\(0) & ((\G3|output\(1)) # (\G3|output\(3) $ (\G3|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(3),
	datab => \G3|output\(1),
	datac => \G3|output\(2),
	datad => \G3|output\(0),
	combout => \G5|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y15_N16
\G2|output[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G2|output[0]~3_combout\ = !\G2|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G2|output\(0),
	combout => \G2|output[0]~3_combout\);

-- Location: LCFF_X35_Y15_N17
\G2|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G1|output~clkctrl_outclk\,
	datain => \G2|output[0]~3_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G2|output\(0));

-- Location: LCCOMB_X35_Y15_N12
\G2|output[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G2|output[2]~1_combout\ = \G2|output\(2) $ (((\G2|output\(1) & \G2|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(1),
	datac => \G2|output\(2),
	datad => \G2|output\(0),
	combout => \G2|output[2]~1_combout\);

-- Location: LCFF_X35_Y15_N13
\G2|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G1|output~clkctrl_outclk\,
	datain => \G2|output[2]~1_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G2|output\(2));

-- Location: LCCOMB_X35_Y15_N10
\G2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G2|output~0_combout\ = (\G2|output\(0) & (!\G2|output\(1) & ((\G2|output\(2)) # (!\G2|output\(3))))) # (!\G2|output\(0) & (((\G2|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(0),
	datab => \G2|output\(2),
	datac => \G2|output\(1),
	datad => \G2|output\(3),
	combout => \G2|output~0_combout\);

-- Location: LCFF_X35_Y15_N11
\G2|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G1|output~clkctrl_outclk\,
	datain => \G2|output~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G2|output\(1));

-- Location: LCCOMB_X35_Y15_N14
\G2|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G2|output~2_combout\ = (\G2|output\(0) & ((\G2|output\(2) & (\G2|output\(3) $ (\G2|output\(1)))) # (!\G2|output\(2) & (\G2|output\(3) & \G2|output\(1))))) # (!\G2|output\(0) & (((\G2|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(0),
	datab => \G2|output\(2),
	datac => \G2|output\(3),
	datad => \G2|output\(1),
	combout => \G2|output~2_combout\);

-- Location: LCFF_X35_Y15_N15
\G2|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G1|output~clkctrl_outclk\,
	datain => \G2|output~2_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G2|output\(3));

-- Location: LCCOMB_X33_Y15_N8
\G4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux6~0_combout\ = (\G2|output\(2) & (!\G2|output\(1) & (\G2|output\(0) $ (!\G2|output\(3))))) # (!\G2|output\(2) & (\G2|output\(0) & (\G2|output\(3) $ (!\G2|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(0),
	datac => \G2|output\(3),
	datad => \G2|output\(1),
	combout => \G4|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y15_N20
\G4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux5~0_combout\ = (\G2|output\(3) & ((\G2|output\(0) & ((\G2|output\(1)))) # (!\G2|output\(0) & (\G2|output\(2))))) # (!\G2|output\(3) & (\G2|output\(2) & (\G2|output\(0) $ (\G2|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(0),
	datac => \G2|output\(3),
	datad => \G2|output\(1),
	combout => \G4|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y15_N24
\G4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux4~0_combout\ = (\G2|output\(2) & (\G2|output\(3) & ((\G2|output\(1)) # (!\G2|output\(0))))) # (!\G2|output\(2) & (!\G2|output\(0) & (!\G2|output\(3) & \G2|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(0),
	datac => \G2|output\(3),
	datad => \G2|output\(1),
	combout => \G4|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y15_N18
\G4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux3~0_combout\ = (\G2|output\(1) & ((\G2|output\(2) & (\G2|output\(0))) # (!\G2|output\(2) & (!\G2|output\(0) & \G2|output\(3))))) # (!\G2|output\(1) & (!\G2|output\(3) & (\G2|output\(2) $ (\G2|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(0),
	datac => \G2|output\(3),
	datad => \G2|output\(1),
	combout => \G4|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y15_N28
\G4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux2~0_combout\ = (\G2|output\(1) & (((\G2|output\(0) & !\G2|output\(3))))) # (!\G2|output\(1) & ((\G2|output\(2) & ((!\G2|output\(3)))) # (!\G2|output\(2) & (\G2|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(0),
	datac => \G2|output\(3),
	datad => \G2|output\(1),
	combout => \G4|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y15_N22
\G4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux1~0_combout\ = (\G2|output\(2) & (\G2|output\(0) & (\G2|output\(3) $ (\G2|output\(1))))) # (!\G2|output\(2) & (!\G2|output\(3) & ((\G2|output\(0)) # (\G2|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(0),
	datac => \G2|output\(3),
	datad => \G2|output\(1),
	combout => \G4|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y15_N26
\G4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux0~0_combout\ = (\G2|output\(0) & ((\G2|output\(3)) # (\G2|output\(2) $ (\G2|output\(1))))) # (!\G2|output\(0) & ((\G2|output\(1)) # (\G2|output\(2) $ (\G2|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(0),
	datac => \G2|output\(3),
	datad => \G2|output\(1),
	combout => \G4|Mux0~0_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y15_N30
\G8|index[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[4]~6_combout\ = (\G1|output~regout\ & !\button_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1|output~regout\,
	datac => \button_reset~combout\,
	combout => \G8|index[4]~6_combout\);

-- Location: LCCOMB_X36_Y15_N30
\G8|index[4]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[4]~latch_combout\ = (!\G8|index[4]~6_combout\ & ((\button_reset~combout\) # (\G8|index[4]~latch_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \G8|index[4]~6_combout\,
	datad => \G8|index[4]~latch_combout\,
	combout => \G8|index[4]~latch_combout\);

-- Location: LCCOMB_X36_Y15_N14
\G8|index[4]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[4]~head_lut_combout\ = (!\G8|index[4]~6_combout\ & ((\button_reset~combout\) # (\G8|index[4]~_emulated_regout\ $ (\G8|index[4]~latch_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index[4]~_emulated_regout\,
	datab => \G8|index[4]~latch_combout\,
	datac => \button_reset~combout\,
	datad => \G8|index[4]~6_combout\,
	combout => \G8|index[4]~head_lut_combout\);

-- Location: LCCOMB_X35_Y15_N0
\G8|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux0~0_combout\ = (\G2|output\(2) & (!\G2|output\(3) & ((!\G2|output\(1)) # (!\G2|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(3),
	datac => \G2|output\(0),
	datad => \G2|output\(1),
	combout => \G8|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y15_N18
\G8|index[3]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[3]~latch_combout\ = (!\button_reset~combout\ & ((GLOBAL(\G8|index[4]~6clkctrl_outclk\) & ((!\G8|Mux0~0_combout\))) # (!GLOBAL(\G8|index[4]~6clkctrl_outclk\) & (\G8|index[3]~latch_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index[4]~6clkctrl_outclk\,
	datab => \G8|index[3]~latch_combout\,
	datac => \button_reset~combout\,
	datad => \G8|Mux0~0_combout\,
	combout => \G8|index[3]~latch_combout\);

-- Location: LCCOMB_X35_Y15_N8
\G8|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux1~0_combout\ = (\G2|output\(0) & (((!\G2|output\(3) & \G2|output\(1))))) # (!\G2|output\(0) & (!\G2|output\(2) & (\G2|output\(3) $ (\G2|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(3),
	datac => \G2|output\(0),
	datad => \G2|output\(1),
	combout => \G8|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y15_N30
\G8|index[2]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[2]~latch_combout\ = (!\button_reset~combout\ & ((GLOBAL(\G8|index[4]~6clkctrl_outclk\) & ((\G8|Mux1~0_combout\))) # (!GLOBAL(\G8|index[4]~6clkctrl_outclk\) & (\G8|index[2]~latch_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index[4]~6clkctrl_outclk\,
	datab => \G8|index[2]~latch_combout\,
	datac => \G8|Mux1~0_combout\,
	datad => \button_reset~combout\,
	combout => \G8|index[2]~latch_combout\);

-- Location: LCCOMB_X36_Y15_N4
\G8|index[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[0]~11_combout\ = !\G8|index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G8|index\(0),
	combout => \G8|index[0]~11_combout\);

-- Location: LCCOMB_X34_Y15_N0
\G8|finished~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|finished~2_combout\ = (\G1|output~regout\) # (\button_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1|output~regout\,
	datac => \button_reset~combout\,
	combout => \G8|finished~2_combout\);

-- Location: LCCOMB_X37_Y16_N14
\G8|cnt[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[2]~27_combout\ = (\G8|cnt\(2) & (\G8|cnt[1]~26\ $ (GND))) # (!\G8|cnt\(2) & (!\G8|cnt[1]~26\ & VCC))
-- \G8|cnt[2]~28\ = CARRY((\G8|cnt\(2) & !\G8|cnt[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(2),
	datad => VCC,
	cin => \G8|cnt[1]~26\,
	combout => \G8|cnt[2]~27_combout\,
	cout => \G8|cnt[2]~28\);

-- Location: LCCOMB_X37_Y15_N10
\G8|cnt[16]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[16]~55_combout\ = (\G8|cnt\(16) & (\G8|cnt[15]~54\ $ (GND))) # (!\G8|cnt\(16) & (!\G8|cnt[15]~54\ & VCC))
-- \G8|cnt[16]~56\ = CARRY((\G8|cnt\(16) & !\G8|cnt[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(16),
	datad => VCC,
	cin => \G8|cnt[15]~54\,
	combout => \G8|cnt[16]~55_combout\,
	cout => \G8|cnt[16]~56\);

-- Location: LCFF_X37_Y15_N11
\G8|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[16]~55_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(16));

-- Location: LCCOMB_X37_Y15_N28
\G8|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|LessThan0~3_combout\ = (!\G8|cnt\(17) & (!\G8|cnt\(15) & !\G8|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(17),
	datac => \G8|cnt\(15),
	datad => \G8|cnt\(16),
	combout => \G8|LessThan0~3_combout\);

-- Location: LCCOMB_X37_Y16_N8
\G8|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|LessThan0~0_combout\ = (((!\G8|cnt\(7) & !\G8|cnt\(6))) # (!\G8|cnt\(9))) # (!\G8|cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(7),
	datab => \G8|cnt\(8),
	datac => \G8|cnt\(9),
	datad => \G8|cnt\(6),
	combout => \G8|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y15_N24
\G8|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|LessThan0~1_combout\ = ((\G8|LessThan0~0_combout\ & !\G8|cnt\(10))) # (!\G8|cnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(11),
	datac => \G8|LessThan0~0_combout\,
	datad => \G8|cnt\(10),
	combout => \G8|LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y15_N26
\G8|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|LessThan0~2_combout\ = ((!\G8|cnt\(13) & (\G8|LessThan0~1_combout\ & !\G8|cnt\(12)))) # (!\G8|cnt\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(14),
	datab => \G8|cnt\(13),
	datac => \G8|LessThan0~1_combout\,
	datad => \G8|cnt\(12),
	combout => \G8|LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y15_N30
\G8|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|LessThan0~4_combout\ = (((\G8|LessThan0~3_combout\ & \G8|LessThan0~2_combout\)) # (!\G8|cnt\(18))) # (!\G8|cnt\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(19),
	datab => \G8|LessThan0~3_combout\,
	datac => \G8|cnt\(18),
	datad => \G8|LessThan0~2_combout\,
	combout => \G8|LessThan0~4_combout\);

-- Location: LCCOMB_X36_Y15_N2
\G8|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|LessThan0~5_combout\ = (\G8|cnt\(22) & ((\G8|cnt\(21)) # ((\G8|cnt\(20)) # (!\G8|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(21),
	datab => \G8|cnt\(22),
	datac => \G8|LessThan0~4_combout\,
	datad => \G8|cnt\(20),
	combout => \G8|LessThan0~5_combout\);

-- Location: LCFF_X37_Y16_N15
\G8|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[2]~27_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(2));

-- Location: LCCOMB_X37_Y16_N18
\G8|cnt[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[4]~31_combout\ = (\G8|cnt\(4) & (\G8|cnt[3]~30\ $ (GND))) # (!\G8|cnt\(4) & (!\G8|cnt[3]~30\ & VCC))
-- \G8|cnt[4]~32\ = CARRY((\G8|cnt\(4) & !\G8|cnt[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(4),
	datad => VCC,
	cin => \G8|cnt[3]~30\,
	combout => \G8|cnt[4]~31_combout\,
	cout => \G8|cnt[4]~32\);

-- Location: LCFF_X37_Y16_N19
\G8|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[4]~31_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(4));

-- Location: LCCOMB_X37_Y16_N22
\G8|cnt[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[6]~35_combout\ = (\G8|cnt\(6) & (\G8|cnt[5]~34\ $ (GND))) # (!\G8|cnt\(6) & (!\G8|cnt[5]~34\ & VCC))
-- \G8|cnt[6]~36\ = CARRY((\G8|cnt\(6) & !\G8|cnt[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(6),
	datad => VCC,
	cin => \G8|cnt[5]~34\,
	combout => \G8|cnt[6]~35_combout\,
	cout => \G8|cnt[6]~36\);

-- Location: LCFF_X37_Y16_N23
\G8|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[6]~35_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(6));

-- Location: LCCOMB_X37_Y16_N26
\G8|cnt[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[8]~39_combout\ = (\G8|cnt\(8) & (\G8|cnt[7]~38\ $ (GND))) # (!\G8|cnt\(8) & (!\G8|cnt[7]~38\ & VCC))
-- \G8|cnt[8]~40\ = CARRY((\G8|cnt\(8) & !\G8|cnt[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(8),
	datad => VCC,
	cin => \G8|cnt[7]~38\,
	combout => \G8|cnt[8]~39_combout\,
	cout => \G8|cnt[8]~40\);

-- Location: LCFF_X37_Y16_N27
\G8|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[8]~39_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(8));

-- Location: LCCOMB_X37_Y16_N28
\G8|cnt[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[9]~41_combout\ = (\G8|cnt\(9) & (!\G8|cnt[8]~40\)) # (!\G8|cnt\(9) & ((\G8|cnt[8]~40\) # (GND)))
-- \G8|cnt[9]~42\ = CARRY((!\G8|cnt[8]~40\) # (!\G8|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(9),
	datad => VCC,
	cin => \G8|cnt[8]~40\,
	combout => \G8|cnt[9]~41_combout\,
	cout => \G8|cnt[9]~42\);

-- Location: LCFF_X37_Y16_N29
\G8|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[9]~41_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(9));

-- Location: LCCOMB_X37_Y16_N30
\G8|cnt[10]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[10]~43_combout\ = (\G8|cnt\(10) & (\G8|cnt[9]~42\ $ (GND))) # (!\G8|cnt\(10) & (!\G8|cnt[9]~42\ & VCC))
-- \G8|cnt[10]~44\ = CARRY((\G8|cnt\(10) & !\G8|cnt[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(10),
	datad => VCC,
	cin => \G8|cnt[9]~42\,
	combout => \G8|cnt[10]~43_combout\,
	cout => \G8|cnt[10]~44\);

-- Location: LCFF_X37_Y16_N31
\G8|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[10]~43_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(10));

-- Location: LCCOMB_X37_Y15_N0
\G8|cnt[11]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[11]~45_combout\ = (\G8|cnt\(11) & (!\G8|cnt[10]~44\)) # (!\G8|cnt\(11) & ((\G8|cnt[10]~44\) # (GND)))
-- \G8|cnt[11]~46\ = CARRY((!\G8|cnt[10]~44\) # (!\G8|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(11),
	datad => VCC,
	cin => \G8|cnt[10]~44\,
	combout => \G8|cnt[11]~45_combout\,
	cout => \G8|cnt[11]~46\);

-- Location: LCFF_X37_Y15_N1
\G8|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[11]~45_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(11));

-- Location: LCCOMB_X37_Y15_N2
\G8|cnt[12]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[12]~47_combout\ = (\G8|cnt\(12) & (\G8|cnt[11]~46\ $ (GND))) # (!\G8|cnt\(12) & (!\G8|cnt[11]~46\ & VCC))
-- \G8|cnt[12]~48\ = CARRY((\G8|cnt\(12) & !\G8|cnt[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(12),
	datad => VCC,
	cin => \G8|cnt[11]~46\,
	combout => \G8|cnt[12]~47_combout\,
	cout => \G8|cnt[12]~48\);

-- Location: LCFF_X37_Y15_N3
\G8|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[12]~47_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(12));

-- Location: LCCOMB_X37_Y15_N4
\G8|cnt[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[13]~49_combout\ = (\G8|cnt\(13) & (!\G8|cnt[12]~48\)) # (!\G8|cnt\(13) & ((\G8|cnt[12]~48\) # (GND)))
-- \G8|cnt[13]~50\ = CARRY((!\G8|cnt[12]~48\) # (!\G8|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(13),
	datad => VCC,
	cin => \G8|cnt[12]~48\,
	combout => \G8|cnt[13]~49_combout\,
	cout => \G8|cnt[13]~50\);

-- Location: LCFF_X37_Y15_N5
\G8|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[13]~49_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(13));

-- Location: LCCOMB_X37_Y15_N8
\G8|cnt[15]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[15]~53_combout\ = (\G8|cnt\(15) & (!\G8|cnt[14]~52\)) # (!\G8|cnt\(15) & ((\G8|cnt[14]~52\) # (GND)))
-- \G8|cnt[15]~54\ = CARRY((!\G8|cnt[14]~52\) # (!\G8|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(15),
	datad => VCC,
	cin => \G8|cnt[14]~52\,
	combout => \G8|cnt[15]~53_combout\,
	cout => \G8|cnt[15]~54\);

-- Location: LCFF_X37_Y15_N9
\G8|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[15]~53_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(15));

-- Location: LCCOMB_X37_Y15_N14
\G8|cnt[18]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[18]~59_combout\ = (\G8|cnt\(18) & (\G8|cnt[17]~58\ $ (GND))) # (!\G8|cnt\(18) & (!\G8|cnt[17]~58\ & VCC))
-- \G8|cnt[18]~60\ = CARRY((\G8|cnt\(18) & !\G8|cnt[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(18),
	datad => VCC,
	cin => \G8|cnt[17]~58\,
	combout => \G8|cnt[18]~59_combout\,
	cout => \G8|cnt[18]~60\);

-- Location: LCFF_X37_Y15_N15
\G8|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[18]~59_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(18));

-- Location: LCCOMB_X37_Y15_N18
\G8|cnt[20]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[20]~63_combout\ = (\G8|cnt\(20) & (\G8|cnt[19]~62\ $ (GND))) # (!\G8|cnt\(20) & (!\G8|cnt[19]~62\ & VCC))
-- \G8|cnt[20]~64\ = CARRY((\G8|cnt\(20) & !\G8|cnt[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(20),
	datad => VCC,
	cin => \G8|cnt[19]~62\,
	combout => \G8|cnt[20]~63_combout\,
	cout => \G8|cnt[20]~64\);

-- Location: LCFF_X37_Y15_N19
\G8|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[20]~63_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(20));

-- Location: LCCOMB_X37_Y15_N20
\G8|cnt[21]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[21]~65_combout\ = (\G8|cnt\(21) & (!\G8|cnt[20]~64\)) # (!\G8|cnt\(21) & ((\G8|cnt[20]~64\) # (GND)))
-- \G8|cnt[21]~66\ = CARRY((!\G8|cnt[20]~64\) # (!\G8|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G8|cnt\(21),
	datad => VCC,
	cin => \G8|cnt[20]~64\,
	combout => \G8|cnt[21]~65_combout\,
	cout => \G8|cnt[21]~66\);

-- Location: LCCOMB_X37_Y15_N22
\G8|cnt[22]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|cnt[22]~67_combout\ = \G8|cnt[21]~66\ $ (!\G8|cnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \G8|cnt\(22),
	cin => \G8|cnt[21]~66\,
	combout => \G8|cnt[22]~67_combout\);

-- Location: LCFF_X37_Y15_N23
\G8|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[22]~67_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(22));

-- Location: LCFF_X37_Y15_N21
\G8|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|cnt[21]~65_combout\,
	aclr => \G8|finished~2_combout\,
	sclr => \G8|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|cnt\(21));

-- Location: LCCOMB_X36_Y15_N18
\G8|index[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[4]~9_combout\ = (\G8|cnt\(20)) # ((\G8|cnt\(21)) # (!\G8|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G8|cnt\(20),
	datac => \G8|cnt\(21),
	datad => \G8|LessThan0~4_combout\,
	combout => \G8|index[4]~9_combout\);

-- Location: LCCOMB_X36_Y15_N20
\G8|index[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[4]~10_combout\ = (\G8|cnt\(22) & (\G8|index[4]~9_combout\ & ((\G8|index[3]~head_lut_combout\) # (!\G8|index[4]~head_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index[3]~head_lut_combout\,
	datab => \G8|cnt\(22),
	datac => \G8|index[4]~head_lut_combout\,
	datad => \G8|index[4]~9_combout\,
	combout => \G8|index[4]~10_combout\);

-- Location: LCFF_X36_Y15_N5
\G8|index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|index[0]~11_combout\,
	aclr => \G8|finished~2_combout\,
	ena => \G8|index[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|index\(0));

-- Location: LCCOMB_X36_Y15_N22
\G8|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Add1~0_combout\ = (\G8|index[1]~head_lut_combout\ & (\G8|index\(0) $ (VCC))) # (!\G8|index[1]~head_lut_combout\ & (\G8|index\(0) & VCC))
-- \G8|Add1~1\ = CARRY((\G8|index[1]~head_lut_combout\ & \G8|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index[1]~head_lut_combout\,
	datab => \G8|index\(0),
	datad => VCC,
	combout => \G8|Add1~0_combout\,
	cout => \G8|Add1~1\);

-- Location: LCCOMB_X36_Y15_N24
\G8|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Add1~2_combout\ = (\G8|index[2]~head_lut_combout\ & (!\G8|Add1~1\)) # (!\G8|index[2]~head_lut_combout\ & ((\G8|Add1~1\) # (GND)))
-- \G8|Add1~3\ = CARRY((!\G8|Add1~1\) # (!\G8|index[2]~head_lut_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G8|index[2]~head_lut_combout\,
	datad => VCC,
	cin => \G8|Add1~1\,
	combout => \G8|Add1~2_combout\,
	cout => \G8|Add1~3\);

-- Location: LCCOMB_X34_Y15_N4
\G8|index[2]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[2]~data_lut_combout\ = \G8|index[2]~latch_combout\ $ (\G8|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G8|index[2]~latch_combout\,
	datad => \G8|Add1~2_combout\,
	combout => \G8|index[2]~data_lut_combout\);

-- Location: LCCOMB_X34_Y15_N10
\G8|index[3]~clear_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[3]~clear_lut_combout\ = (\button_reset~combout\) # (\G8|index[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_reset~combout\,
	datad => \G8|index[4]~6_combout\,
	combout => \G8|index[3]~clear_lut_combout\);

-- Location: LCFF_X34_Y15_N5
\G8|index[2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|index[2]~data_lut_combout\,
	aclr => \G8|index[3]~clear_lut_combout\,
	ena => \G8|index[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|index[2]~_emulated_regout\);

-- Location: LCCOMB_X35_Y15_N26
\G8|index[2]~tail_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[2]~tail_lut_combout\ = \G8|index[2]~_emulated_regout\ $ (\G8|index[2]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G8|index[2]~_emulated_regout\,
	datad => \G8|index[2]~latch_combout\,
	combout => \G8|index[2]~tail_lut_combout\);

-- Location: LCCOMB_X35_Y15_N28
\G8|index[2]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[2]~head_lut_combout\ = (!\button_reset~combout\ & ((\G8|index[4]~6_combout\ & (\G8|Mux1~0_combout\)) # (!\G8|index[4]~6_combout\ & ((\G8|index[2]~tail_lut_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index[4]~6_combout\,
	datab => \button_reset~combout\,
	datac => \G8|Mux1~0_combout\,
	datad => \G8|index[2]~tail_lut_combout\,
	combout => \G8|index[2]~head_lut_combout\);

-- Location: LCCOMB_X34_Y15_N26
\G8|index[3]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[3]~data_lut_combout\ = \G8|index[3]~latch_combout\ $ (!\G8|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G8|index[3]~latch_combout\,
	datad => \G8|Add1~4_combout\,
	combout => \G8|index[3]~data_lut_combout\);

-- Location: LCFF_X34_Y15_N27
\G8|index[3]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|index[3]~data_lut_combout\,
	aclr => \G8|index[3]~clear_lut_combout\,
	ena => \G8|index[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|index[3]~_emulated_regout\);

-- Location: LCCOMB_X36_Y15_N0
\G8|index[3]~tail_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[3]~tail_lut_combout\ = \G8|index[3]~_emulated_regout\ $ (\G8|index[3]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G8|index[3]~_emulated_regout\,
	datad => \G8|index[3]~latch_combout\,
	combout => \G8|index[3]~tail_lut_combout\);

-- Location: LCCOMB_X36_Y15_N10
\G8|index[3]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[3]~head_lut_combout\ = (!\button_reset~combout\ & ((\G8|index[4]~6_combout\ & (!\G8|Mux0~0_combout\)) # (!\G8|index[4]~6_combout\ & ((\G8|index[3]~tail_lut_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index[4]~6_combout\,
	datab => \button_reset~combout\,
	datac => \G8|Mux0~0_combout\,
	datad => \G8|index[3]~tail_lut_combout\,
	combout => \G8|index[3]~head_lut_combout\);

-- Location: LCCOMB_X36_Y15_N8
\G8|finished~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|finished~3_combout\ = (\G8|finished~regout\) # ((\G8|LessThan0~5_combout\ & (\G8|index[4]~head_lut_combout\ & !\G8|index[3]~head_lut_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|LessThan0~5_combout\,
	datab => \G8|index[4]~head_lut_combout\,
	datac => \G8|finished~regout\,
	datad => \G8|index[3]~head_lut_combout\,
	combout => \G8|finished~3_combout\);

-- Location: LCFF_X36_Y15_N9
\G8|finished\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|finished~3_combout\,
	aclr => \G8|finished~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|finished~regout\);

-- Location: LCCOMB_X33_Y15_N0
\G2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G2|Equal0~0_combout\ = (\G2|output\(0) & (!\G2|output\(2) & (\G2|output\(3) & !\G2|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(0),
	datab => \G2|output\(2),
	datac => \G2|output\(3),
	datad => \G2|output\(1),
	combout => \G2|Equal0~0_combout\);

-- Location: LCFF_X33_Y15_N17
\G2|over\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G1|output~clkctrl_outclk\,
	sdata => \G2|Equal0~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G2|over~regout\);

-- Location: LCCOMB_X33_Y15_N16
\overflowed~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \overflowed~0_combout\ = (\button_reset~combout\ & ((\G2|over~regout\) # (\overflowed~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datac => \G2|over~regout\,
	datad => \overflowed~0_combout\,
	combout => \overflowed~0_combout\);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AUD_DACLRCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_AUD_DACLRCK,
	combout => \AUD_DACLRCK~combout\);

-- Location: LCFF_X36_Y25_N17
\G6|dack0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \AUD_DACLRCK~combout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|dack0~regout\);

-- Location: LCCOMB_X36_Y25_N18
\G6|dack1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|dack1~feeder_combout\ = \G6|dack0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G6|dack0~regout\,
	combout => \G6|dack1~feeder_combout\);

-- Location: LCFF_X36_Y25_N19
\G6|dack1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|dack1~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|dack1~regout\);

-- Location: LCCOMB_X36_Y18_N26
\G6|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Add0~10_combout\ = (!\G6|Bcount\(0) & ((\G6|dack1~regout\) # (!\G6|dack0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|dack0~regout\,
	datac => \G6|Bcount\(0),
	datad => \G6|dack1~regout\,
	combout => \G6|Add0~10_combout\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AUD_BCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_AUD_BCLK,
	combout => \AUD_BCLK~combout\);

-- Location: LCFF_X36_Y25_N31
\G6|bck0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \AUD_BCLK~combout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|bck0~regout\);

-- Location: LCFF_X36_Y25_N1
\G6|bck1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G6|bck0~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|bck1~regout\);

-- Location: LCCOMB_X36_Y25_N0
\G6|Bcount[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Bcount[2]~0_combout\ = (\G6|bck0~regout\ & (!\G6|dack1~regout\ & ((\G6|dack0~regout\)))) # (!\G6|bck0~regout\ & ((\G6|bck1~regout\) # ((!\G6|dack1~regout\ & \G6|dack0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|bck0~regout\,
	datab => \G6|dack1~regout\,
	datac => \G6|bck1~regout\,
	datad => \G6|dack0~regout\,
	combout => \G6|Bcount[2]~0_combout\);

-- Location: LCFF_X36_Y18_N27
\G6|Bcount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|Add0~10_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|Bcount[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|Bcount\(0));

-- Location: LCCOMB_X35_Y18_N2
\G7|index[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|index[1]~9_combout\ = (\G7|index\(0) & (\G7|index\(1) $ (VCC))) # (!\G7|index\(0) & (\G7|index\(1) & VCC))
-- \G7|index[1]~10\ = CARRY((\G7|index\(0) & \G7|index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(0),
	datab => \G7|index\(1),
	datad => VCC,
	combout => \G7|index[1]~9_combout\,
	cout => \G7|index[1]~10\);

-- Location: LCFF_X34_Y16_N25
\G22|activated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G8|finished~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G22|activated~regout\);

-- Location: LCCOMB_X34_Y16_N24
\G22|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G22|output~0_combout\ = (\G8|finished~regout\ & !\G22|activated~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G8|finished~regout\,
	datac => \G22|activated~regout\,
	combout => \G22|output~0_combout\);

-- Location: LCFF_X33_Y18_N27
\G22|output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \G22|output~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G22|output~regout\);

-- Location: LCCOMB_X33_Y18_N2
\G9|index[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[4]~8_combout\ = (\overflowed~0_combout\ & (!\button_reset~combout\ & \G22|output~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \overflowed~0_combout\,
	datac => \button_reset~combout\,
	datad => \G22|output~regout\,
	combout => \G9|index[4]~8_combout\);

-- Location: LCCOMB_X34_Y18_N30
\G9|index[4]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[4]~latch_combout\ = (!\G9|index[4]~8_combout\ & ((\button_reset~combout\) # (\G9|index[4]~latch_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \G9|index[4]~8_combout\,
	datad => \G9|index[4]~latch_combout\,
	combout => \G9|index[4]~latch_combout\);

-- Location: LCCOMB_X33_Y15_N2
\G9|index[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[0]~11_combout\ = !\G9|index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G9|index\(0),
	combout => \G9|index[0]~11_combout\);

-- Location: LCCOMB_X33_Y15_N4
\G9|finished~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|finished~0_combout\ = (\button_reset~combout\) # ((\overflowed~0_combout\ & \G22|output~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \overflowed~0_combout\,
	datad => \G22|output~regout\,
	combout => \G9|finished~0_combout\);

-- Location: LCCOMB_X32_Y16_N14
\G9|cnt[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[2]~27_combout\ = (\G9|cnt\(2) & (\G9|cnt[1]~26\ $ (GND))) # (!\G9|cnt\(2) & (!\G9|cnt[1]~26\ & VCC))
-- \G9|cnt[2]~28\ = CARRY((\G9|cnt\(2) & !\G9|cnt[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(2),
	datad => VCC,
	cin => \G9|cnt[1]~26\,
	combout => \G9|cnt[2]~27_combout\,
	cout => \G9|cnt[2]~28\);

-- Location: LCCOMB_X32_Y15_N20
\G9|cnt[21]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[21]~65_combout\ = (\G9|cnt\(21) & (!\G9|cnt[20]~64\)) # (!\G9|cnt\(21) & ((\G9|cnt[20]~64\) # (GND)))
-- \G9|cnt[21]~66\ = CARRY((!\G9|cnt[20]~64\) # (!\G9|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(21),
	datad => VCC,
	cin => \G9|cnt[20]~64\,
	combout => \G9|cnt[21]~65_combout\,
	cout => \G9|cnt[21]~66\);

-- Location: LCCOMB_X32_Y15_N22
\G9|cnt[22]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[22]~67_combout\ = \G9|cnt[21]~66\ $ (!\G9|cnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \G9|cnt\(22),
	cin => \G9|cnt[21]~66\,
	combout => \G9|cnt[22]~67_combout\);

-- Location: LCFF_X32_Y15_N23
\G9|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[22]~67_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(22));

-- Location: LCCOMB_X32_Y15_N16
\G9|cnt[19]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[19]~61_combout\ = (\G9|cnt\(19) & (!\G9|cnt[18]~60\)) # (!\G9|cnt\(19) & ((\G9|cnt[18]~60\) # (GND)))
-- \G9|cnt[19]~62\ = CARRY((!\G9|cnt[18]~60\) # (!\G9|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(19),
	datad => VCC,
	cin => \G9|cnt[18]~60\,
	combout => \G9|cnt[19]~61_combout\,
	cout => \G9|cnt[19]~62\);

-- Location: LCFF_X32_Y15_N17
\G9|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[19]~61_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(19));

-- Location: LCCOMB_X32_Y16_N8
\G9|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|LessThan0~3_combout\ = (((!\G9|cnt\(7) & !\G9|cnt\(6))) # (!\G9|cnt\(8))) # (!\G9|cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(7),
	datab => \G9|cnt\(9),
	datac => \G9|cnt\(8),
	datad => \G9|cnt\(6),
	combout => \G9|LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y15_N26
\G9|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|LessThan0~4_combout\ = (\G9|cnt\(11) & ((\G9|cnt\(10)) # (!\G9|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(11),
	datac => \G9|cnt\(10),
	datad => \G9|LessThan0~3_combout\,
	combout => \G9|LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y15_N28
\G9|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|LessThan0~5_combout\ = (\G9|cnt\(14) & ((\G9|cnt\(12)) # ((\G9|cnt\(13)) # (\G9|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(14),
	datab => \G9|cnt\(12),
	datac => \G9|cnt\(13),
	datad => \G9|LessThan0~4_combout\,
	combout => \G9|LessThan0~5_combout\);

-- Location: LCCOMB_X32_Y15_N30
\G9|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|LessThan0~6_combout\ = (((\G9|LessThan0~2_combout\ & !\G9|LessThan0~5_combout\)) # (!\G9|cnt\(19))) # (!\G9|cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|LessThan0~2_combout\,
	datab => \G9|cnt\(18),
	datac => \G9|cnt\(19),
	datad => \G9|LessThan0~5_combout\,
	combout => \G9|LessThan0~6_combout\);

-- Location: LCCOMB_X32_Y16_N2
\G9|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|LessThan0~7_combout\ = (\G9|cnt\(22) & ((\G9|cnt\(21)) # ((\G9|cnt\(20)) # (!\G9|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(21),
	datab => \G9|cnt\(22),
	datac => \G9|cnt\(20),
	datad => \G9|LessThan0~6_combout\,
	combout => \G9|LessThan0~7_combout\);

-- Location: LCFF_X32_Y16_N15
\G9|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[2]~27_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(2));

-- Location: LCCOMB_X32_Y16_N18
\G9|cnt[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[4]~31_combout\ = (\G9|cnt\(4) & (\G9|cnt[3]~30\ $ (GND))) # (!\G9|cnt\(4) & (!\G9|cnt[3]~30\ & VCC))
-- \G9|cnt[4]~32\ = CARRY((\G9|cnt\(4) & !\G9|cnt[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(4),
	datad => VCC,
	cin => \G9|cnt[3]~30\,
	combout => \G9|cnt[4]~31_combout\,
	cout => \G9|cnt[4]~32\);

-- Location: LCFF_X32_Y16_N19
\G9|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[4]~31_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(4));

-- Location: LCCOMB_X32_Y16_N22
\G9|cnt[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[6]~35_combout\ = (\G9|cnt\(6) & (\G9|cnt[5]~34\ $ (GND))) # (!\G9|cnt\(6) & (!\G9|cnt[5]~34\ & VCC))
-- \G9|cnt[6]~36\ = CARRY((\G9|cnt\(6) & !\G9|cnt[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(6),
	datad => VCC,
	cin => \G9|cnt[5]~34\,
	combout => \G9|cnt[6]~35_combout\,
	cout => \G9|cnt[6]~36\);

-- Location: LCFF_X32_Y16_N23
\G9|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[6]~35_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(6));

-- Location: LCCOMB_X32_Y16_N26
\G9|cnt[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[8]~39_combout\ = (\G9|cnt\(8) & (\G9|cnt[7]~38\ $ (GND))) # (!\G9|cnt\(8) & (!\G9|cnt[7]~38\ & VCC))
-- \G9|cnt[8]~40\ = CARRY((\G9|cnt\(8) & !\G9|cnt[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(8),
	datad => VCC,
	cin => \G9|cnt[7]~38\,
	combout => \G9|cnt[8]~39_combout\,
	cout => \G9|cnt[8]~40\);

-- Location: LCFF_X32_Y16_N27
\G9|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[8]~39_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(8));

-- Location: LCCOMB_X32_Y16_N28
\G9|cnt[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[9]~41_combout\ = (\G9|cnt\(9) & (!\G9|cnt[8]~40\)) # (!\G9|cnt\(9) & ((\G9|cnt[8]~40\) # (GND)))
-- \G9|cnt[9]~42\ = CARRY((!\G9|cnt[8]~40\) # (!\G9|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(9),
	datad => VCC,
	cin => \G9|cnt[8]~40\,
	combout => \G9|cnt[9]~41_combout\,
	cout => \G9|cnt[9]~42\);

-- Location: LCFF_X32_Y16_N29
\G9|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[9]~41_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(9));

-- Location: LCCOMB_X32_Y16_N30
\G9|cnt[10]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[10]~43_combout\ = (\G9|cnt\(10) & (\G9|cnt[9]~42\ $ (GND))) # (!\G9|cnt\(10) & (!\G9|cnt[9]~42\ & VCC))
-- \G9|cnt[10]~44\ = CARRY((\G9|cnt\(10) & !\G9|cnt[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(10),
	datad => VCC,
	cin => \G9|cnt[9]~42\,
	combout => \G9|cnt[10]~43_combout\,
	cout => \G9|cnt[10]~44\);

-- Location: LCFF_X32_Y16_N31
\G9|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[10]~43_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(10));

-- Location: LCCOMB_X32_Y15_N0
\G9|cnt[11]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[11]~45_combout\ = (\G9|cnt\(11) & (!\G9|cnt[10]~44\)) # (!\G9|cnt\(11) & ((\G9|cnt[10]~44\) # (GND)))
-- \G9|cnt[11]~46\ = CARRY((!\G9|cnt[10]~44\) # (!\G9|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(11),
	datad => VCC,
	cin => \G9|cnt[10]~44\,
	combout => \G9|cnt[11]~45_combout\,
	cout => \G9|cnt[11]~46\);

-- Location: LCFF_X32_Y15_N1
\G9|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[11]~45_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(11));

-- Location: LCCOMB_X32_Y15_N2
\G9|cnt[12]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[12]~47_combout\ = (\G9|cnt\(12) & (\G9|cnt[11]~46\ $ (GND))) # (!\G9|cnt\(12) & (!\G9|cnt[11]~46\ & VCC))
-- \G9|cnt[12]~48\ = CARRY((\G9|cnt\(12) & !\G9|cnt[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(12),
	datad => VCC,
	cin => \G9|cnt[11]~46\,
	combout => \G9|cnt[12]~47_combout\,
	cout => \G9|cnt[12]~48\);

-- Location: LCFF_X32_Y15_N3
\G9|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[12]~47_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(12));

-- Location: LCCOMB_X32_Y15_N4
\G9|cnt[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[13]~49_combout\ = (\G9|cnt\(13) & (!\G9|cnt[12]~48\)) # (!\G9|cnt\(13) & ((\G9|cnt[12]~48\) # (GND)))
-- \G9|cnt[13]~50\ = CARRY((!\G9|cnt[12]~48\) # (!\G9|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(13),
	datad => VCC,
	cin => \G9|cnt[12]~48\,
	combout => \G9|cnt[13]~49_combout\,
	cout => \G9|cnt[13]~50\);

-- Location: LCFF_X32_Y15_N5
\G9|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[13]~49_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(13));

-- Location: LCCOMB_X32_Y15_N8
\G9|cnt[15]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[15]~53_combout\ = (\G9|cnt\(15) & (!\G9|cnt[14]~52\)) # (!\G9|cnt\(15) & ((\G9|cnt[14]~52\) # (GND)))
-- \G9|cnt[15]~54\ = CARRY((!\G9|cnt[14]~52\) # (!\G9|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(15),
	datad => VCC,
	cin => \G9|cnt[14]~52\,
	combout => \G9|cnt[15]~53_combout\,
	cout => \G9|cnt[15]~54\);

-- Location: LCFF_X32_Y15_N9
\G9|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[15]~53_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(15));

-- Location: LCCOMB_X32_Y15_N14
\G9|cnt[18]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[18]~59_combout\ = (\G9|cnt\(18) & (\G9|cnt[17]~58\ $ (GND))) # (!\G9|cnt\(18) & (!\G9|cnt[17]~58\ & VCC))
-- \G9|cnt[18]~60\ = CARRY((\G9|cnt\(18) & !\G9|cnt[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(18),
	datad => VCC,
	cin => \G9|cnt[17]~58\,
	combout => \G9|cnt[18]~59_combout\,
	cout => \G9|cnt[18]~60\);

-- Location: LCFF_X32_Y15_N15
\G9|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[18]~59_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(18));

-- Location: LCCOMB_X32_Y15_N18
\G9|cnt[20]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|cnt[20]~63_combout\ = (\G9|cnt\(20) & (\G9|cnt[19]~62\ $ (GND))) # (!\G9|cnt\(20) & (!\G9|cnt[19]~62\ & VCC))
-- \G9|cnt[20]~64\ = CARRY((\G9|cnt\(20) & !\G9|cnt[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G9|cnt\(20),
	datad => VCC,
	cin => \G9|cnt[19]~62\,
	combout => \G9|cnt[20]~63_combout\,
	cout => \G9|cnt[20]~64\);

-- Location: LCFF_X32_Y15_N19
\G9|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[20]~63_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(20));

-- Location: LCFF_X32_Y15_N21
\G9|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|cnt[21]~65_combout\,
	aclr => \G9|finished~0_combout\,
	sclr => \G9|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|cnt\(21));

-- Location: LCCOMB_X33_Y18_N20
\G9|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux7~0_combout\ = (!\G3|output\(3) & (\G3|output\(2) & ((!\G3|output\(1)) # (!\G3|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(3),
	datab => \G3|output\(0),
	datac => \G3|output\(1),
	datad => \G3|output\(2),
	combout => \G9|Mux7~0_combout\);

-- Location: CLKCTRL_G7
\G9|index[4]~8clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G9|index[4]~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G9|index[4]~8clkctrl_outclk\);

-- Location: LCCOMB_X33_Y18_N6
\G9|index[3]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[3]~latch_combout\ = (!\button_reset~combout\ & ((GLOBAL(\G9|index[4]~8clkctrl_outclk\) & ((!\G9|Mux7~0_combout\))) # (!GLOBAL(\G9|index[4]~8clkctrl_outclk\) & (\G9|index[3]~latch_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \G9|index[3]~latch_combout\,
	datac => \G9|Mux7~0_combout\,
	datad => \G9|index[4]~8clkctrl_outclk\,
	combout => \G9|index[3]~latch_combout\);

-- Location: LCCOMB_X34_Y18_N10
\G9|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Add1~4_combout\ = (\G9|index[3]~head_lut_combout\ & (!\G9|Add1~3\ & VCC)) # (!\G9|index[3]~head_lut_combout\ & (\G9|Add1~3\ $ (GND)))
-- \G9|Add1~5\ = CARRY((!\G9|index[3]~head_lut_combout\ & !\G9|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index[3]~head_lut_combout\,
	datad => VCC,
	cin => \G9|Add1~3\,
	combout => \G9|Add1~4_combout\,
	cout => \G9|Add1~5\);

-- Location: LCCOMB_X33_Y17_N2
\G9|index[3]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[3]~data_lut_combout\ = \G9|index[3]~latch_combout\ $ (!\G9|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G9|index[3]~latch_combout\,
	datad => \G9|Add1~4_combout\,
	combout => \G9|index[3]~data_lut_combout\);

-- Location: LCCOMB_X33_Y18_N16
\G9|index[2]~clear_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[2]~clear_lut_combout\ = (\button_reset~combout\) # (\G9|index[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_reset~combout\,
	datad => \G9|index[4]~8_combout\,
	combout => \G9|index[2]~clear_lut_combout\);

-- Location: LCFF_X33_Y17_N3
\G9|index[3]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|index[3]~data_lut_combout\,
	aclr => \G9|index[2]~clear_lut_combout\,
	ena => \G9|index[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|index[3]~_emulated_regout\);

-- Location: LCCOMB_X33_Y17_N28
\G9|index[3]~tail_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[3]~tail_lut_combout\ = \G9|index[3]~_emulated_regout\ $ (\G9|index[3]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G9|index[3]~_emulated_regout\,
	datad => \G9|index[3]~latch_combout\,
	combout => \G9|index[3]~tail_lut_combout\);

-- Location: LCCOMB_X34_Y18_N20
\G9|index[3]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[3]~head_lut_combout\ = (!\button_reset~combout\ & ((\G9|index[4]~8_combout\ & (!\G9|Mux7~0_combout\)) # (!\G9|index[4]~8_combout\ & ((\G9|index[3]~tail_lut_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|Mux7~0_combout\,
	datab => \button_reset~combout\,
	datac => \G9|index[3]~tail_lut_combout\,
	datad => \G9|index[4]~8_combout\,
	combout => \G9|index[3]~head_lut_combout\);

-- Location: LCCOMB_X34_Y18_N26
\G9|index[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[4]~9_combout\ = (\G9|cnt\(22) & ((\G9|index[3]~head_lut_combout\) # (!\G9|index[4]~head_lut_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(22),
	datac => \G9|index[4]~head_lut_combout\,
	datad => \G9|index[3]~head_lut_combout\,
	combout => \G9|index[4]~9_combout\);

-- Location: LCCOMB_X34_Y18_N4
\G9|index[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[4]~10_combout\ = (\G9|index[4]~9_combout\ & ((\G9|cnt\(20)) # ((\G9|cnt\(21)) # (!\G9|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|cnt\(20),
	datab => \G9|cnt\(21),
	datac => \G9|LessThan0~6_combout\,
	datad => \G9|index[4]~9_combout\,
	combout => \G9|index[4]~10_combout\);

-- Location: LCFF_X33_Y15_N3
\G9|index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|index[0]~11_combout\,
	aclr => \G9|finished~0_combout\,
	ena => \G9|index[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|index\(0));

-- Location: LCCOMB_X34_Y18_N6
\G9|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Add1~0_combout\ = (\G9|index[1]~head_lut_combout\ & (\G9|index\(0) $ (VCC))) # (!\G9|index[1]~head_lut_combout\ & (\G9|index\(0) & VCC))
-- \G9|Add1~1\ = CARRY((\G9|index[1]~head_lut_combout\ & \G9|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index[1]~head_lut_combout\,
	datab => \G9|index\(0),
	datad => VCC,
	combout => \G9|Add1~0_combout\,
	cout => \G9|Add1~1\);

-- Location: LCCOMB_X34_Y18_N8
\G9|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Add1~2_combout\ = (\G9|index[2]~head_lut_combout\ & (!\G9|Add1~1\)) # (!\G9|index[2]~head_lut_combout\ & ((\G9|Add1~1\) # (GND)))
-- \G9|Add1~3\ = CARRY((!\G9|Add1~1\) # (!\G9|index[2]~head_lut_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index[2]~head_lut_combout\,
	datad => VCC,
	cin => \G9|Add1~1\,
	combout => \G9|Add1~2_combout\,
	cout => \G9|Add1~3\);

-- Location: LCCOMB_X34_Y18_N12
\G9|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Add1~6_combout\ = \G9|index[4]~head_lut_combout\ $ (\G9|Add1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index[4]~head_lut_combout\,
	cin => \G9|Add1~5\,
	combout => \G9|Add1~6_combout\);

-- Location: LCCOMB_X34_Y18_N22
\G9|index[4]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[4]~data_lut_combout\ = \G9|index[4]~latch_combout\ $ (\G9|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G9|index[4]~latch_combout\,
	datad => \G9|Add1~6_combout\,
	combout => \G9|index[4]~data_lut_combout\);

-- Location: LCCOMB_X33_Y18_N26
\G9|index[4]~clear_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[4]~clear_lut_combout\ = (\button_reset~combout\) # (\G9|index[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_reset~combout\,
	datad => \G9|index[4]~8_combout\,
	combout => \G9|index[4]~clear_lut_combout\);

-- Location: LCFF_X34_Y18_N23
\G9|index[4]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|index[4]~data_lut_combout\,
	aclr => \G9|index[4]~clear_lut_combout\,
	ena => \G9|index[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|index[4]~_emulated_regout\);

-- Location: LCCOMB_X34_Y18_N24
\G9|index[4]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[4]~head_lut_combout\ = (!\G9|index[4]~8_combout\ & ((\button_reset~combout\) # (\G9|index[4]~latch_combout\ $ (\G9|index[4]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index[4]~latch_combout\,
	datab => \G9|index[4]~_emulated_regout\,
	datac => \button_reset~combout\,
	datad => \G9|index[4]~8_combout\,
	combout => \G9|index[4]~head_lut_combout\);

-- Location: LCCOMB_X33_Y18_N14
\G9|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux2~0_combout\ = (\G3|output\(0) & (((!\G3|output\(1) & !\G3|output\(2))) # (!\G3|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(1),
	datab => \G3|output\(0),
	datac => \G3|output\(3),
	datad => \G3|output\(2),
	combout => \G9|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y18_N18
\G9|index[1]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[1]~latch_combout\ = (!\button_reset~combout\ & ((GLOBAL(\G9|index[4]~8clkctrl_outclk\) & ((\G9|Mux2~0_combout\))) # (!GLOBAL(\G9|index[4]~8clkctrl_outclk\) & (\G9|index[1]~latch_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index[1]~latch_combout\,
	datab => \button_reset~combout\,
	datac => \G9|Mux2~0_combout\,
	datad => \G9|index[4]~8clkctrl_outclk\,
	combout => \G9|index[1]~latch_combout\);

-- Location: LCCOMB_X34_Y18_N14
\G9|index[1]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[1]~data_lut_combout\ = \G9|index[1]~latch_combout\ $ (\G9|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G9|index[1]~latch_combout\,
	datad => \G9|Add1~0_combout\,
	combout => \G9|index[1]~data_lut_combout\);

-- Location: LCFF_X34_Y18_N15
\G9|index[1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|index[1]~data_lut_combout\,
	aclr => \G9|index[2]~clear_lut_combout\,
	ena => \G9|index[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|index[1]~_emulated_regout\);

-- Location: LCCOMB_X34_Y18_N16
\G9|index[1]~tail_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[1]~tail_lut_combout\ = \G9|index[1]~_emulated_regout\ $ (\G9|index[1]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G9|index[1]~_emulated_regout\,
	datad => \G9|index[1]~latch_combout\,
	combout => \G9|index[1]~tail_lut_combout\);

-- Location: LCCOMB_X34_Y18_N2
\G9|index[1]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[1]~head_lut_combout\ = (!\button_reset~combout\ & ((\G9|index[4]~8_combout\ & ((\G9|Mux2~0_combout\))) # (!\G9|index[4]~8_combout\ & (\G9|index[1]~tail_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index[4]~8_combout\,
	datab => \button_reset~combout\,
	datac => \G9|index[1]~tail_lut_combout\,
	datad => \G9|Mux2~0_combout\,
	combout => \G9|index[1]~head_lut_combout\);

-- Location: LCCOMB_X32_Y18_N0
\G9|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux13~0_combout\ = (\G3|output\(2) & (!\G3|output\(3) & ((\G3|output\(0)) # (\G3|output\(1))))) # (!\G3|output\(2) & (((!\G3|output\(1) & \G3|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(0),
	datab => \G3|output\(1),
	datac => \G3|output\(2),
	datad => \G3|output\(3),
	combout => \G9|Mux13~0_combout\);

-- Location: LCCOMB_X32_Y18_N6
\G3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G3|Equal0~0_combout\ = (\G3|output\(0) & (!\G3|output\(1) & (!\G3|output\(2) & \G3|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(0),
	datab => \G3|output\(1),
	datac => \G3|output\(2),
	datad => \G3|output\(3),
	combout => \G3|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y15_N10
\comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ((\G9|index[1]~head_lut_combout\ & (!\G9|Mux13~0_combout\)) # (!\G9|index[1]~head_lut_combout\ & ((\G3|Equal0~0_combout\)))) # (!\G9|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index\(0),
	datab => \G9|Mux13~0_combout\,
	datac => \G3|Equal0~0_combout\,
	datad => \G9|index[1]~head_lut_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X34_Y18_N0
\comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\G9|index[2]~head_lut_combout\ & (!\G9|index\(0) & (!\G9|index[1]~head_lut_combout\))) # (!\G9|index[2]~head_lut_combout\ & ((\comb~3_combout\) # ((!\G9|index\(0) & !\G9|index[1]~head_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index[2]~head_lut_combout\,
	datab => \G9|index\(0),
	datac => \G9|index[1]~head_lut_combout\,
	datad => \comb~3_combout\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X34_Y18_N18
\comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\G9|index[3]~head_lut_combout\ & (\G9|index[4]~head_lut_combout\ & \comb~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index[3]~head_lut_combout\,
	datac => \G9|index[4]~head_lut_combout\,
	datad => \comb~4_combout\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X35_Y19_N4
\G7|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Add1~0_combout\ = \G7|wait_counter\(0) $ (VCC)
-- \G7|Add1~1\ = CARRY(\G7|wait_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G7|wait_counter\(0),
	datad => VCC,
	combout => \G7|Add1~0_combout\,
	cout => \G7|Add1~1\);

-- Location: LCCOMB_X35_Y18_N16
\G7|wait_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|wait_counter~0_combout\ = (!\G7|Equal0~2_combout\ & \G7|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G7|Equal0~2_combout\,
	datac => \G7|Add1~0_combout\,
	combout => \G7|wait_counter~0_combout\);

-- Location: CLKCTRL_G4
\G8|index[4]~6clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G8|index[4]~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G8|index[4]~6clkctrl_outclk\);

-- Location: LCCOMB_X35_Y15_N6
\G8|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux2~0_combout\ = (\G2|output\(0) & (((!\G2|output\(2) & !\G2|output\(1))) # (!\G2|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(3),
	datac => \G2|output\(0),
	datad => \G2|output\(1),
	combout => \G8|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y15_N4
\G8|index[1]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[1]~latch_combout\ = (!\button_reset~combout\ & ((GLOBAL(\G8|index[4]~6clkctrl_outclk\) & ((\G8|Mux2~0_combout\))) # (!GLOBAL(\G8|index[4]~6clkctrl_outclk\) & (\G8|index[1]~latch_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index[1]~latch_combout\,
	datab => \G8|index[4]~6clkctrl_outclk\,
	datac => \button_reset~combout\,
	datad => \G8|Mux2~0_combout\,
	combout => \G8|index[1]~latch_combout\);

-- Location: LCCOMB_X34_Y15_N8
\G8|index[1]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[1]~data_lut_combout\ = \G8|Add1~0_combout\ $ (\G8|index[1]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G8|Add1~0_combout\,
	datad => \G8|index[1]~latch_combout\,
	combout => \G8|index[1]~data_lut_combout\);

-- Location: LCFF_X34_Y15_N9
\G8|index[1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G8|index[1]~data_lut_combout\,
	aclr => \G8|index[3]~clear_lut_combout\,
	ena => \G8|index[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G8|index[1]~_emulated_regout\);

-- Location: LCCOMB_X34_Y15_N20
\G8|index[1]~tail_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[1]~tail_lut_combout\ = \G8|index[1]~_emulated_regout\ $ (\G8|index[1]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G8|index[1]~_emulated_regout\,
	datad => \G8|index[1]~latch_combout\,
	combout => \G8|index[1]~tail_lut_combout\);

-- Location: LCCOMB_X34_Y15_N18
\G8|index[1]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|index[1]~head_lut_combout\ = (!\button_reset~combout\ & ((\G8|index[4]~6_combout\ & (\G8|Mux2~0_combout\)) # (!\G8|index[4]~6_combout\ & ((\G8|index[1]~tail_lut_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|Mux2~0_combout\,
	datab => \button_reset~combout\,
	datac => \G8|index[1]~tail_lut_combout\,
	datad => \G8|index[4]~6_combout\,
	combout => \G8|index[1]~head_lut_combout\);

-- Location: LCCOMB_X34_Y15_N6
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ((\G8|index[1]~head_lut_combout\ & (!\G8|Mux13~0_combout\)) # (!\G8|index[1]~head_lut_combout\ & ((\G2|Equal0~0_combout\)))) # (!\G8|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|Mux13~0_combout\,
	datab => \G2|Equal0~0_combout\,
	datac => \G8|index\(0),
	datad => \G8|index[1]~head_lut_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X34_Y15_N22
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\G8|index\(0) & (!\G8|index[2]~head_lut_combout\ & ((\comb~0_combout\)))) # (!\G8|index\(0) & (((!\G8|index[2]~head_lut_combout\ & \comb~0_combout\)) # (!\G8|index[1]~head_lut_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index\(0),
	datab => \G8|index[2]~head_lut_combout\,
	datac => \G8|index[1]~head_lut_combout\,
	datad => \comb~0_combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X34_Y15_N2
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\G8|index[3]~head_lut_combout\ & (\G8|index[4]~head_lut_combout\ & \comb~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G8|index[3]~head_lut_combout\,
	datac => \G8|index[4]~head_lut_combout\,
	datad => \comb~1_combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X33_Y18_N12
\G9|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux1~0_combout\ = (\G3|output\(0) & (!\G3|output\(3) & (\G3|output\(1)))) # (!\G3|output\(0) & (!\G3|output\(2) & (\G3|output\(3) $ (\G3|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(3),
	datab => \G3|output\(0),
	datac => \G3|output\(1),
	datad => \G3|output\(2),
	combout => \G9|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y18_N24
\G9|index[2]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[2]~latch_combout\ = (!\button_reset~combout\ & ((GLOBAL(\G9|index[4]~8clkctrl_outclk\) & ((\G9|Mux1~0_combout\))) # (!GLOBAL(\G9|index[4]~8clkctrl_outclk\) & (\G9|index[2]~latch_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index[2]~latch_combout\,
	datab => \button_reset~combout\,
	datac => \G9|Mux1~0_combout\,
	datad => \G9|index[4]~8clkctrl_outclk\,
	combout => \G9|index[2]~latch_combout\);

-- Location: LCCOMB_X33_Y17_N0
\G9|index[2]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[2]~data_lut_combout\ = \G9|index[2]~latch_combout\ $ (\G9|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G9|index[2]~latch_combout\,
	datad => \G9|Add1~2_combout\,
	combout => \G9|index[2]~data_lut_combout\);

-- Location: LCFF_X33_Y17_N1
\G9|index[2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G9|index[2]~data_lut_combout\,
	aclr => \G9|index[2]~clear_lut_combout\,
	ena => \G9|index[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G9|index[2]~_emulated_regout\);

-- Location: LCCOMB_X33_Y18_N4
\G9|index[2]~tail_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[2]~tail_lut_combout\ = \G9|index[2]~_emulated_regout\ $ (\G9|index[2]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G9|index[2]~_emulated_regout\,
	datac => \G9|index[2]~latch_combout\,
	combout => \G9|index[2]~tail_lut_combout\);

-- Location: LCCOMB_X33_Y18_N0
\G9|index[2]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|index[2]~head_lut_combout\ = (!\button_reset~combout\ & ((\G9|index[4]~8_combout\ & (\G9|Mux1~0_combout\)) # (!\G9|index[4]~8_combout\ & ((\G9|index[2]~tail_lut_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|Mux1~0_combout\,
	datab => \G9|index[2]~tail_lut_combout\,
	datac => \button_reset~combout\,
	datad => \G9|index[4]~8_combout\,
	combout => \G9|index[2]~head_lut_combout\);

-- Location: LCCOMB_X34_Y18_N28
\G9|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux14~0_combout\ = (\G9|index\(0) & (\G9|Mux10~0_combout\)) # (!\G9|index\(0) & (((\G9|index[2]~head_lut_combout\) # (!\G9|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|Mux10~0_combout\,
	datab => \G9|index\(0),
	datac => \G9|Mux7~0_combout\,
	datad => \G9|index[2]~head_lut_combout\,
	combout => \G9|Mux14~0_combout\);

-- Location: LCCOMB_X33_Y18_N10
\G9|Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux14~6_combout\ = (\G3|output\(3) & (!\G3|output\(1) & (!\G3|output\(2)))) # (!\G3|output\(3) & ((\G9|index[2]~head_lut_combout\ & ((\G3|output\(2)))) # (!\G9|index[2]~head_lut_combout\ & (\G3|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(1),
	datab => \G3|output\(2),
	datac => \G3|output\(3),
	datad => \G9|index[2]~head_lut_combout\,
	combout => \G9|Mux14~6_combout\);

-- Location: LCCOMB_X35_Y18_N12
\G9|Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux14~7_combout\ = (\G3|output\(2) & (!\G3|output\(3) & ((\G9|index[2]~head_lut_combout\) # (!\G3|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(2),
	datab => \G3|output\(1),
	datac => \G3|output\(3),
	datad => \G9|index[2]~head_lut_combout\,
	combout => \G9|Mux14~7_combout\);

-- Location: LCCOMB_X35_Y18_N14
\G9|Mux14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux14~8_combout\ = (\G3|output\(0) & ((\G9|Mux14~6_combout\ & (!\G9|index\(0))) # (!\G9|Mux14~6_combout\ & ((!\G9|Mux14~7_combout\))))) # (!\G3|output\(0) & (((!\G9|Mux14~7_combout\)) # (!\G9|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(0),
	datab => \G9|index\(0),
	datac => \G9|Mux14~6_combout\,
	datad => \G9|Mux14~7_combout\,
	combout => \G9|Mux14~8_combout\);

-- Location: LCCOMB_X32_Y18_N16
\G9|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux4~0_combout\ = (\G3|output\(3) & (!\G3|output\(0) & (!\G3|output\(2) & !\G3|output\(1)))) # (!\G3|output\(3) & (((\G3|output\(2)) # (\G3|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(0),
	datab => \G3|output\(3),
	datac => \G3|output\(2),
	datad => \G3|output\(1),
	combout => \G9|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y18_N0
\G9|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux14~4_combout\ = (\G9|index[2]~head_lut_combout\ & ((\G9|index\(0) & (\G3|Equal0~0_combout\)) # (!\G9|index\(0) & ((!\G9|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|Equal0~0_combout\,
	datab => \G9|index\(0),
	datac => \G9|Mux4~0_combout\,
	datad => \G9|index[2]~head_lut_combout\,
	combout => \G9|Mux14~4_combout\);

-- Location: LCCOMB_X32_Y18_N12
\G9|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux14~1_combout\ = (\G3|output\(0) & (!\G3|output\(3))) # (!\G3|output\(0) & ((\G3|output\(3) & (!\G3|output\(2) & !\G3|output\(1))) # (!\G3|output\(3) & (\G3|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(0),
	datab => \G3|output\(3),
	datac => \G3|output\(2),
	datad => \G3|output\(1),
	combout => \G9|Mux14~1_combout\);

-- Location: LCCOMB_X35_Y18_N30
\G9|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux14~3_combout\ = (\G9|Mux14~2_combout\ & ((\G9|index\(0)) # ((\G9|Mux14~1_combout\) # (!\G9|index[2]~head_lut_combout\)))) # (!\G9|Mux14~2_combout\ & (((\G9|Mux14~1_combout\ & !\G9|index[2]~head_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|Mux14~2_combout\,
	datab => \G9|index\(0),
	datac => \G9|Mux14~1_combout\,
	datad => \G9|index[2]~head_lut_combout\,
	combout => \G9|Mux14~3_combout\);

-- Location: LCCOMB_X35_Y18_N18
\G9|Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux14~5_combout\ = (\G9|index[1]~head_lut_combout\ & (((!\G9|Mux14~3_combout\) # (!\G9|index[3]~head_lut_combout\)))) # (!\G9|index[1]~head_lut_combout\ & (\G9|Mux14~4_combout\ & (\G9|index[3]~head_lut_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index[1]~head_lut_combout\,
	datab => \G9|Mux14~4_combout\,
	datac => \G9|index[3]~head_lut_combout\,
	datad => \G9|Mux14~3_combout\,
	combout => \G9|Mux14~5_combout\);

-- Location: LCCOMB_X35_Y18_N24
\G9|Mux14~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \G9|Mux14~9_combout\ = (\G9|index[3]~head_lut_combout\ & (((\G9|Mux14~5_combout\)))) # (!\G9|index[3]~head_lut_combout\ & ((\G9|Mux14~5_combout\ & ((\G9|Mux14~8_combout\))) # (!\G9|Mux14~5_combout\ & (\G9|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G9|index[3]~head_lut_combout\,
	datab => \G9|Mux14~0_combout\,
	datac => \G9|Mux14~8_combout\,
	datad => \G9|Mux14~5_combout\,
	combout => \G9|Mux14~9_combout\);

-- Location: LCCOMB_X35_Y15_N24
\G8|Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux14~6_combout\ = (\G2|output\(3) & (!\G2|output\(1) & (!\G2|output\(2)))) # (!\G2|output\(3) & ((\G8|index[2]~head_lut_combout\ & ((\G2|output\(2)))) # (!\G8|index[2]~head_lut_combout\ & (\G2|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(1),
	datab => \G2|output\(3),
	datac => \G2|output\(2),
	datad => \G8|index[2]~head_lut_combout\,
	combout => \G8|Mux14~6_combout\);

-- Location: LCCOMB_X35_Y15_N2
\G8|Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux14~7_combout\ = (!\G2|output\(3) & (\G2|output\(2) & ((\G8|index[2]~head_lut_combout\) # (!\G2|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(1),
	datab => \G2|output\(3),
	datac => \G2|output\(2),
	datad => \G8|index[2]~head_lut_combout\,
	combout => \G8|Mux14~7_combout\);

-- Location: LCCOMB_X35_Y15_N20
\G8|Mux14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux14~8_combout\ = (\G2|output\(0) & ((\G8|Mux14~6_combout\ & (!\G8|index\(0))) # (!\G8|Mux14~6_combout\ & ((!\G8|Mux14~7_combout\))))) # (!\G2|output\(0) & (((!\G8|Mux14~7_combout\)) # (!\G8|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(0),
	datab => \G8|index\(0),
	datac => \G8|Mux14~6_combout\,
	datad => \G8|Mux14~7_combout\,
	combout => \G8|Mux14~8_combout\);

-- Location: LCCOMB_X33_Y15_N6
\G8|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux14~1_combout\ = (\G2|output\(2) & (((!\G2|output\(3))))) # (!\G2|output\(2) & ((\G2|output\(0) & (!\G2|output\(3))) # (!\G2|output\(0) & (\G2|output\(3) & !\G2|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(2),
	datab => \G2|output\(0),
	datac => \G2|output\(3),
	datad => \G2|output\(1),
	combout => \G8|Mux14~1_combout\);

-- Location: LCCOMB_X34_Y15_N14
\G8|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux14~3_combout\ = (\G8|Mux14~2_combout\ & ((\G8|index\(0)) # ((\G8|Mux14~1_combout\) # (!\G8|index[2]~head_lut_combout\)))) # (!\G8|Mux14~2_combout\ & (((\G8|Mux14~1_combout\ & !\G8|index[2]~head_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|Mux14~2_combout\,
	datab => \G8|index\(0),
	datac => \G8|Mux14~1_combout\,
	datad => \G8|index[2]~head_lut_combout\,
	combout => \G8|Mux14~3_combout\);

-- Location: LCCOMB_X34_Y15_N28
\G8|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux14~4_combout\ = (\G8|index[2]~head_lut_combout\ & ((\G8|index\(0) & ((\G2|Equal0~0_combout\))) # (!\G8|index\(0) & (!\G8|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|Mux4~0_combout\,
	datab => \G8|index\(0),
	datac => \G2|Equal0~0_combout\,
	datad => \G8|index[2]~head_lut_combout\,
	combout => \G8|Mux14~4_combout\);

-- Location: LCCOMB_X34_Y15_N12
\G8|Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux14~5_combout\ = (\G8|index[1]~head_lut_combout\ & (((!\G8|index[3]~head_lut_combout\)) # (!\G8|Mux14~3_combout\))) # (!\G8|index[1]~head_lut_combout\ & (((\G8|index[3]~head_lut_combout\ & \G8|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index[1]~head_lut_combout\,
	datab => \G8|Mux14~3_combout\,
	datac => \G8|index[3]~head_lut_combout\,
	datad => \G8|Mux14~4_combout\,
	combout => \G8|Mux14~5_combout\);

-- Location: LCCOMB_X35_Y15_N22
\G8|Mux14~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \G8|Mux14~9_combout\ = (\G8|index[3]~head_lut_combout\ & (((\G8|Mux14~5_combout\)))) # (!\G8|index[3]~head_lut_combout\ & ((\G8|Mux14~5_combout\ & ((\G8|Mux14~8_combout\))) # (!\G8|Mux14~5_combout\ & (\G8|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|Mux14~0_combout\,
	datab => \G8|index[3]~head_lut_combout\,
	datac => \G8|Mux14~8_combout\,
	datad => \G8|Mux14~5_combout\,
	combout => \G8|Mux14~9_combout\);

-- Location: LCCOMB_X35_Y18_N26
\comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\G8|index[4]~head_lut_combout\ & (!\G9|index[4]~head_lut_combout\ & (\G9|Mux14~9_combout\))) # (!\G8|index[4]~head_lut_combout\ & ((\G8|Mux14~9_combout\) # ((!\G9|index[4]~head_lut_combout\ & \G9|Mux14~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index[4]~head_lut_combout\,
	datab => \G9|index[4]~head_lut_combout\,
	datac => \G9|Mux14~9_combout\,
	datad => \G8|Mux14~9_combout\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X35_Y18_N22
\comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\comb~5_combout\) # ((\comb~2_combout\) # (\comb~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~5_combout\,
	datac => \comb~2_combout\,
	datad => \comb~6_combout\,
	combout => \comb~7_combout\);

-- Location: LCFF_X35_Y18_N17
\G7|wait_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|wait_counter~0_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|wait_counter\(0));

-- Location: LCCOMB_X35_Y19_N8
\G7|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Add1~4_combout\ = (\G7|wait_counter\(2) & (\G7|Add1~3\ $ (GND))) # (!\G7|wait_counter\(2) & (!\G7|Add1~3\ & VCC))
-- \G7|Add1~5\ = CARRY((\G7|wait_counter\(2) & !\G7|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G7|wait_counter\(2),
	datad => VCC,
	cin => \G7|Add1~3\,
	combout => \G7|Add1~4_combout\,
	cout => \G7|Add1~5\);

-- Location: LCFF_X35_Y19_N9
\G7|wait_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Add1~4_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|wait_counter\(2));

-- Location: LCCOMB_X35_Y19_N14
\G7|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Add1~10_combout\ = (\G7|wait_counter\(5) & (!\G7|Add1~9\)) # (!\G7|wait_counter\(5) & ((\G7|Add1~9\) # (GND)))
-- \G7|Add1~11\ = CARRY((!\G7|Add1~9\) # (!\G7|wait_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G7|wait_counter\(5),
	datad => VCC,
	cin => \G7|Add1~9\,
	combout => \G7|Add1~10_combout\,
	cout => \G7|Add1~11\);

-- Location: LCCOMB_X35_Y18_N20
\G7|wait_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|wait_counter~1_combout\ = (!\G7|Equal0~2_combout\ & \G7|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G7|Equal0~2_combout\,
	datac => \G7|Add1~10_combout\,
	combout => \G7|wait_counter~1_combout\);

-- Location: LCFF_X35_Y18_N21
\G7|wait_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|wait_counter~1_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|wait_counter\(5));

-- Location: LCCOMB_X35_Y19_N16
\G7|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Add1~12_combout\ = (\G7|wait_counter\(6) & (\G7|Add1~11\ $ (GND))) # (!\G7|wait_counter\(6) & (!\G7|Add1~11\ & VCC))
-- \G7|Add1~13\ = CARRY((\G7|wait_counter\(6) & !\G7|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G7|wait_counter\(6),
	datad => VCC,
	cin => \G7|Add1~11\,
	combout => \G7|Add1~12_combout\,
	cout => \G7|Add1~13\);

-- Location: LCCOMB_X35_Y19_N18
\G7|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Add1~14_combout\ = (\G7|wait_counter\(7) & (!\G7|Add1~13\)) # (!\G7|wait_counter\(7) & ((\G7|Add1~13\) # (GND)))
-- \G7|Add1~15\ = CARRY((!\G7|Add1~13\) # (!\G7|wait_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G7|wait_counter\(7),
	datad => VCC,
	cin => \G7|Add1~13\,
	combout => \G7|Add1~14_combout\,
	cout => \G7|Add1~15\);

-- Location: LCFF_X35_Y19_N19
\G7|wait_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Add1~14_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|wait_counter\(7));

-- Location: LCCOMB_X35_Y19_N20
\G7|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Add1~16_combout\ = (\G7|wait_counter\(8) & (\G7|Add1~15\ $ (GND))) # (!\G7|wait_counter\(8) & (!\G7|Add1~15\ & VCC))
-- \G7|Add1~17\ = CARRY((\G7|wait_counter\(8) & !\G7|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G7|wait_counter\(8),
	datad => VCC,
	cin => \G7|Add1~15\,
	combout => \G7|Add1~16_combout\,
	cout => \G7|Add1~17\);

-- Location: LCCOMB_X35_Y19_N26
\G7|wait_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|wait_counter~2_combout\ = (\G7|Add1~16_combout\ & !\G7|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G7|Add1~16_combout\,
	datad => \G7|Equal0~2_combout\,
	combout => \G7|wait_counter~2_combout\);

-- Location: LCFF_X35_Y19_N27
\G7|wait_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|wait_counter~2_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|wait_counter\(8));

-- Location: LCCOMB_X35_Y19_N22
\G7|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Add1~18_combout\ = \G7|Add1~17\ $ (\G7|wait_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \G7|wait_counter\(9),
	cin => \G7|Add1~17\,
	combout => \G7|Add1~18_combout\);

-- Location: LCCOMB_X35_Y19_N28
\G7|wait_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|wait_counter~3_combout\ = (\G7|Add1~18_combout\ & !\G7|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G7|Add1~18_combout\,
	datad => \G7|Equal0~2_combout\,
	combout => \G7|wait_counter~3_combout\);

-- Location: LCFF_X35_Y19_N29
\G7|wait_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|wait_counter~3_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|wait_counter\(9));

-- Location: LCFF_X35_Y19_N17
\G7|wait_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Add1~12_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|wait_counter\(6));

-- Location: LCCOMB_X35_Y19_N24
\G7|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Equal0~1_combout\ = (!\G7|wait_counter\(4) & (\G7|wait_counter\(5) & (!\G7|wait_counter\(6) & !\G7|wait_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|wait_counter\(4),
	datab => \G7|wait_counter\(5),
	datac => \G7|wait_counter\(6),
	datad => \G7|wait_counter\(7),
	combout => \G7|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y19_N30
\G7|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Equal0~2_combout\ = (\G7|Equal0~0_combout\ & (\G7|wait_counter\(9) & (\G7|Equal0~1_combout\ & \G7|wait_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|Equal0~0_combout\,
	datab => \G7|wait_counter\(9),
	datac => \G7|Equal0~1_combout\,
	datad => \G7|wait_counter\(8),
	combout => \G7|Equal0~2_combout\);

-- Location: LCCOMB_X35_Y18_N28
\G7|index[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|index[5]~13_combout\ = (\G7|Equal0~2_combout\ & ((\comb~2_combout\) # ((\comb~5_combout\) # (\comb~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datab => \comb~5_combout\,
	datac => \G7|Equal0~2_combout\,
	datad => \comb~6_combout\,
	combout => \G7|index[5]~13_combout\);

-- Location: LCFF_X35_Y18_N3
\G7|index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|index[1]~9_combout\,
	ena => \G7|index[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|index\(1));

-- Location: LCCOMB_X35_Y18_N4
\G7|index[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|index[2]~11_combout\ = (\G7|index\(2) & (!\G7|index[1]~10\)) # (!\G7|index\(2) & ((\G7|index[1]~10\) # (GND)))
-- \G7|index[2]~12\ = CARRY((!\G7|index[1]~10\) # (!\G7|index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G7|index\(2),
	datad => VCC,
	cin => \G7|index[1]~10\,
	combout => \G7|index[2]~11_combout\,
	cout => \G7|index[2]~12\);

-- Location: LCFF_X35_Y18_N5
\G7|index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|index[2]~11_combout\,
	ena => \G7|index[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|index\(2));

-- Location: LCCOMB_X35_Y18_N6
\G7|index[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|index[3]~14_combout\ = (\G7|index\(3) & (\G7|index[2]~12\ $ (GND))) # (!\G7|index\(3) & (!\G7|index[2]~12\ & VCC))
-- \G7|index[3]~15\ = CARRY((\G7|index\(3) & !\G7|index[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(3),
	datad => VCC,
	cin => \G7|index[2]~12\,
	combout => \G7|index[3]~14_combout\,
	cout => \G7|index[3]~15\);

-- Location: LCFF_X35_Y18_N7
\G7|index[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|index[3]~14_combout\,
	ena => \G7|index[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|index\(3));

-- Location: LCCOMB_X37_Y19_N26
\G7|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux7~3_combout\ = (\G7|index\(0) & (\G7|index\(3) $ (((\G7|index\(2)) # (\G7|index\(1)))))) # (!\G7|index\(0) & ((\G7|index\(1) & (\G7|index\(2))) # (!\G7|index\(1) & ((\G7|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(0),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux7~3_combout\);

-- Location: LCCOMB_X37_Y19_N22
\G7|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux7~1_combout\ = (\G7|index\(0) & (\G7|index\(3) $ (((!\G7|index\(1)) # (!\G7|index\(2)))))) # (!\G7|index\(0) & (\G7|index\(2) & ((\G7|index\(3)) # (\G7|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(0),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux7~1_combout\);

-- Location: LCCOMB_X37_Y19_N12
\G7|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux7~0_combout\ = (\G7|index\(0) & (\G7|index\(3) $ (((\G7|index\(2) & \G7|index\(1)))))) # (!\G7|index\(0) & (\G7|index\(2) $ (((\G7|index\(3)) # (\G7|index\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(0),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux7~0_combout\);

-- Location: LCCOMB_X35_Y18_N8
\G7|index[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|index[4]~16_combout\ = (\G7|index\(4) & (!\G7|index[3]~15\)) # (!\G7|index\(4) & ((\G7|index[3]~15\) # (GND)))
-- \G7|index[4]~17\ = CARRY((!\G7|index[3]~15\) # (!\G7|index\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G7|index\(4),
	datad => VCC,
	cin => \G7|index[3]~15\,
	combout => \G7|index[4]~16_combout\,
	cout => \G7|index[4]~17\);

-- Location: LCFF_X35_Y18_N9
\G7|index[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|index[4]~16_combout\,
	ena => \G7|index[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|index\(4));

-- Location: LCCOMB_X35_Y18_N10
\G7|index[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|index[5]~18_combout\ = \G7|index[4]~17\ $ (!\G7|index\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \G7|index\(5),
	cin => \G7|index[4]~17\,
	combout => \G7|index[5]~18_combout\);

-- Location: LCFF_X35_Y18_N11
\G7|index[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|index[5]~18_combout\,
	ena => \G7|index[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|index\(5));

-- Location: LCCOMB_X37_Y19_N16
\G7|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux7~2_combout\ = (!\G7|index\(4) & ((\G7|index\(5) & ((\G7|Mux7~0_combout\))) # (!\G7|index\(5) & (\G7|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|Mux7~1_combout\,
	datac => \G7|Mux7~0_combout\,
	datad => \G7|index\(5),
	combout => \G7|Mux7~2_combout\);

-- Location: LCCOMB_X37_Y19_N20
\G7|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux7~4_combout\ = (\G7|Mux7~2_combout\) # ((\G7|index\(4) & (\G7|Mux7~3_combout\ $ (!\G7|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|Mux7~3_combout\,
	datac => \G7|Mux7~2_combout\,
	datad => \G7|index\(5),
	combout => \G7|Mux7~4_combout\);

-- Location: LCCOMB_X36_Y25_N28
\G6|DACData_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|DACData_reg~0_combout\ = (!\G6|dack1~regout\ & \G6|dack0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G6|dack1~regout\,
	datad => \G6|dack0~regout\,
	combout => \G6|DACData_reg~0_combout\);

-- Location: LCFF_X37_Y19_N21
\G6|LRDATA[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux7~4_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(24));

-- Location: LCCOMB_X37_Y19_N28
\G7|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux6~0_combout\ = (\G7|index\(0) & ((\G7|index\(3) & (!\G7|index\(2))) # (!\G7|index\(3) & ((\G7|index\(1)))))) # (!\G7|index\(0) & (\G7|index\(2) & ((!\G7|index\(1)) # (!\G7|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(0),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y19_N6
\G7|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux6~1_combout\ = (\G7|index\(2) & ((\G7|index\(1) & ((\G7|index\(3)))) # (!\G7|index\(1) & (\G7|index\(0))))) # (!\G7|index\(2) & (\G7|index\(0) $ (((\G7|index\(3)) # (\G7|index\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(0),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux6~1_combout\);

-- Location: LCCOMB_X37_Y19_N0
\G7|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux6~2_combout\ = (!\G7|index\(4) & ((\G7|index\(5) & (\G7|Mux6~0_combout\)) # (!\G7|index\(5) & ((\G7|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|Mux6~0_combout\,
	datac => \G7|index\(4),
	datad => \G7|Mux6~1_combout\,
	combout => \G7|Mux6~2_combout\);

-- Location: LCCOMB_X37_Y19_N10
\G7|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux6~3_combout\ = (\G7|index\(2) & (((\G7|index\(0) & !\G7|index\(3))) # (!\G7|index\(1)))) # (!\G7|index\(2) & (\G7|index\(3) & (\G7|index\(0) $ (\G7|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(0),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux6~3_combout\);

-- Location: LCCOMB_X37_Y19_N18
\G7|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux6~4_combout\ = (\G7|Mux6~2_combout\) # ((\G7|index\(4) & (\G7|index\(5) $ (!\G7|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|Mux6~2_combout\,
	datac => \G7|index\(5),
	datad => \G7|Mux6~3_combout\,
	combout => \G7|Mux6~4_combout\);

-- Location: LCFF_X37_Y19_N19
\G6|LRDATA[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux6~4_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(25));

-- Location: LCCOMB_X37_Y19_N30
\G6|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Mux13~0_combout\ = (\G6|Bcount\(1) & ((\G6|Bcount\(0) & (\G6|LRDATA\(24))) # (!\G6|Bcount\(0) & ((\G6|LRDATA\(25)))))) # (!\G6|Bcount\(1) & (!\G6|Bcount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Bcount\(1),
	datab => \G6|Bcount\(0),
	datac => \G6|LRDATA\(24),
	datad => \G6|LRDATA\(25),
	combout => \G6|Mux13~0_combout\);

-- Location: LCCOMB_X36_Y18_N6
\G6|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Add0~7_cout\ = CARRY(!\G6|Bcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G6|Bcount\(0),
	datad => VCC,
	cout => \G6|Add0~7_cout\);

-- Location: LCCOMB_X36_Y18_N0
\G6|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Add0~15_combout\ = (!\G6|Add0~8_combout\ & ((\G6|dack1~regout\) # (!\G6|dack0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|dack0~regout\,
	datac => \G6|Add0~8_combout\,
	datad => \G6|dack1~regout\,
	combout => \G6|Add0~15_combout\);

-- Location: LCFF_X36_Y18_N1
\G6|Bcount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|Add0~15_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|Bcount[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|Bcount\(1));

-- Location: LCCOMB_X34_Y19_N16
\G7|index[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|index[0]~21_combout\ = (!\comb~5_combout\ & (((!\G8|index[4]~head_lut_combout\) # (!\comb~1_combout\)) # (!\G8|index[3]~head_lut_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G8|index[3]~head_lut_combout\,
	datab => \comb~1_combout\,
	datac => \G8|index[4]~head_lut_combout\,
	datad => \comb~5_combout\,
	combout => \G7|index[0]~21_combout\);

-- Location: LCCOMB_X35_Y19_N0
\G7|index[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|index[0]~20_combout\ = \G7|index\(0) $ (((\G7|Equal0~2_combout\ & ((\comb~6_combout\) # (!\G7|index[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|Equal0~2_combout\,
	datab => \comb~6_combout\,
	datac => \G7|index\(0),
	datad => \G7|index[0]~21_combout\,
	combout => \G7|index[0]~20_combout\);

-- Location: LCFF_X35_Y19_N1
\G7|index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|index[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G7|index\(0));

-- Location: LCCOMB_X37_Y18_N0
\G7|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux5~0_combout\ = (\G7|index\(4) & ((\G7|index\(3) & (!\G7|index\(0))) # (!\G7|index\(3) & ((!\G7|index\(1)))))) # (!\G7|index\(4) & ((\G7|index\(3)) # ((\G7|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(3),
	datac => \G7|index\(0),
	datad => \G7|index\(1),
	combout => \G7|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y18_N2
\G7|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux5~1_combout\ = (\G7|index\(3) & ((\G7|index\(0) & ((\G7|index\(4)) # (\G7|index\(1)))) # (!\G7|index\(0) & ((!\G7|index\(1)))))) # (!\G7|index\(3) & ((\G7|index\(4)) # ((!\G7|index\(0) & \G7|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(3),
	datac => \G7|index\(0),
	datad => \G7|index\(1),
	combout => \G7|Mux5~1_combout\);

-- Location: LCCOMB_X37_Y19_N8
\G7|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux5~2_combout\ = (\G7|index\(2) & (\G7|index\(5) $ (((\G7|Mux5~0_combout\) # (!\G7|Mux5~1_combout\))))) # (!\G7|index\(2) & ((\G7|index\(5) & (\G7|Mux5~0_combout\ & !\G7|Mux5~1_combout\)) # (!\G7|index\(5) & ((\G7|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|Mux5~0_combout\,
	datac => \G7|index\(2),
	datad => \G7|Mux5~1_combout\,
	combout => \G7|Mux5~2_combout\);

-- Location: LCFF_X37_Y19_N9
\G6|LRDATA[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux5~2_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(26));

-- Location: LCCOMB_X37_Y19_N2
\G6|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Mux13~1_combout\ = (\G6|Mux13~0_combout\ & ((\G6|LRDATA\(27)) # ((\G6|Bcount\(1))))) # (!\G6|Mux13~0_combout\ & (((!\G6|Bcount\(1) & \G6|LRDATA\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|LRDATA\(27),
	datab => \G6|Mux13~0_combout\,
	datac => \G6|Bcount\(1),
	datad => \G6|LRDATA\(26),
	combout => \G6|Mux13~1_combout\);

-- Location: LCCOMB_X36_Y18_N18
\G6|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Add0~17_combout\ = (!\G6|Add0~11_combout\ & ((\G6|dack1~regout\) # (!\G6|dack0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Add0~11_combout\,
	datab => \G6|dack0~regout\,
	datad => \G6|dack1~regout\,
	combout => \G6|Add0~17_combout\);

-- Location: LCFF_X36_Y18_N19
\G6|Bcount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|Add0~17_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|Bcount[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|Bcount\(2));

-- Location: LCCOMB_X36_Y19_N26
\G7|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux9~2_combout\ = (\G7|index\(4) & ((\G7|index\(2) & (\G7|index\(3))) # (!\G7|index\(2) & ((\G7|index\(0)) # (!\G7|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(2),
	datab => \G7|index\(3),
	datac => \G7|index\(0),
	datad => \G7|index\(4),
	combout => \G7|Mux9~2_combout\);

-- Location: LCCOMB_X36_Y19_N0
\G7|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux9~1_combout\ = (\G7|index\(4) & (\G7|index\(0) $ (((\G7|index\(3)) # (!\G7|index\(2)))))) # (!\G7|index\(4) & ((\G7|index\(2)) # ((!\G7|index\(3) & \G7|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(2),
	datab => \G7|index\(3),
	datac => \G7|index\(0),
	datad => \G7|index\(4),
	combout => \G7|Mux9~1_combout\);

-- Location: LCCOMB_X37_Y18_N24
\G7|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux9~3_combout\ = (\G7|index\(5) & (((\G7|index\(1))))) # (!\G7|index\(5) & ((\G7|index\(1) & ((\G7|Mux9~1_combout\))) # (!\G7|index\(1) & (\G7|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|Mux9~2_combout\,
	datac => \G7|index\(1),
	datad => \G7|Mux9~1_combout\,
	combout => \G7|Mux9~3_combout\);

-- Location: LCCOMB_X37_Y18_N10
\G7|Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux9~4_combout\ = (\G7|index\(4) & (\G7|index\(0) $ (((\G7|index\(3)) # (!\G7|index\(2)))))) # (!\G7|index\(4) & (\G7|index\(2) & ((\G7|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(0),
	datad => \G7|index\(3),
	combout => \G7|Mux9~4_combout\);

-- Location: LCCOMB_X37_Y18_N30
\G7|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux9~0_combout\ = (\G7|index\(0) & (!\G7|index\(4))) # (!\G7|index\(0) & ((\G7|index\(2) & ((!\G7|index\(3)) # (!\G7|index\(4)))) # (!\G7|index\(2) & ((\G7|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(0),
	datad => \G7|index\(3),
	combout => \G7|Mux9~0_combout\);

-- Location: LCCOMB_X36_Y18_N16
\G7|Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux9~5_combout\ = (\G7|index\(5) & ((\G7|Mux9~3_combout\ & (!\G7|Mux9~4_combout\)) # (!\G7|Mux9~3_combout\ & ((\G7|Mux9~0_combout\))))) # (!\G7|index\(5) & (\G7|Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|Mux9~3_combout\,
	datac => \G7|Mux9~4_combout\,
	datad => \G7|Mux9~0_combout\,
	combout => \G7|Mux9~5_combout\);

-- Location: LCFF_X36_Y18_N17
\G6|LRDATA[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux9~5_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(22));

-- Location: LCCOMB_X36_Y18_N4
\G6|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Mux13~2_combout\ = (\G6|Bcount\(1) & (\G6|LRDATA\(20) & ((\G6|Bcount\(0))))) # (!\G6|Bcount\(1) & (((\G6|LRDATA\(22)) # (!\G6|Bcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|LRDATA\(20),
	datab => \G6|Bcount\(1),
	datac => \G6|LRDATA\(22),
	datad => \G6|Bcount\(0),
	combout => \G6|Mux13~2_combout\);

-- Location: LCCOMB_X39_Y18_N16
\G7|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux8~3_combout\ = (\G7|index\(2) & ((\G7|index\(3)) # ((!\G7|index\(1) & \G7|index\(0))))) # (!\G7|index\(2) & ((\G7|index\(3) & ((\G7|index\(0)))) # (!\G7|index\(3) & (\G7|index\(1) & !\G7|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(1),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(0),
	combout => \G7|Mux8~3_combout\);

-- Location: LCCOMB_X39_Y18_N12
\G7|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux8~1_combout\ = (\G7|index\(1) & ((\G7|index\(2) & (\G7|index\(3) $ (!\G7|index\(0)))) # (!\G7|index\(2) & (\G7|index\(3) & !\G7|index\(0))))) # (!\G7|index\(1) & (((\G7|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(1),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(0),
	combout => \G7|Mux8~1_combout\);

-- Location: LCCOMB_X39_Y18_N22
\G7|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux8~2_combout\ = (!\G7|index\(4) & ((\G7|index\(5) & (\G7|Mux8~0_combout\)) # (!\G7|index\(5) & ((\G7|Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|Mux8~0_combout\,
	datab => \G7|index\(4),
	datac => \G7|index\(5),
	datad => \G7|Mux8~1_combout\,
	combout => \G7|Mux8~2_combout\);

-- Location: LCCOMB_X36_Y18_N14
\G7|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux8~4_combout\ = (\G7|Mux8~2_combout\) # ((\G7|index\(4) & (\G7|index\(5) $ (!\G7|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(5),
	datac => \G7|Mux8~3_combout\,
	datad => \G7|Mux8~2_combout\,
	combout => \G7|Mux8~4_combout\);

-- Location: LCFF_X36_Y18_N15
\G6|LRDATA[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux8~4_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(23));

-- Location: LCCOMB_X36_Y18_N24
\G6|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Mux13~3_combout\ = (\G6|Mux13~2_combout\ & (((\G6|LRDATA\(23)) # (\G6|Bcount\(0))))) # (!\G6|Mux13~2_combout\ & (\G6|LRDATA\(21) & ((!\G6|Bcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|LRDATA\(21),
	datab => \G6|Mux13~2_combout\,
	datac => \G6|LRDATA\(23),
	datad => \G6|Bcount\(0),
	combout => \G6|Mux13~3_combout\);

-- Location: LCCOMB_X37_Y18_N18
\G7|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux15~0_combout\ = (\G7|index\(4) & (((!\G7|index\(1))) # (!\G7|index\(2)))) # (!\G7|index\(4) & ((\G7|index\(2) & ((\G7|index\(1)) # (!\G7|index\(3)))) # (!\G7|index\(2) & (!\G7|index\(3) & \G7|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux15~0_combout\);

-- Location: LCCOMB_X38_Y18_N28
\G7|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux15~1_combout\ = (!\G7|index\(0) & ((\G7|index\(5) & (\G7|Mux2~0_combout\)) # (!\G7|index\(5) & ((\G7|Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|Mux2~0_combout\,
	datab => \G7|Mux15~0_combout\,
	datac => \G7|index\(5),
	datad => \G7|index\(0),
	combout => \G7|Mux15~1_combout\);

-- Location: LCCOMB_X38_Y18_N22
\G7|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux15~3_combout\ = (\G7|Mux15~1_combout\) # ((\G7|Mux15~2_combout\ & (!\G7|index\(5) & \G7|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|Mux15~2_combout\,
	datab => \G7|Mux15~1_combout\,
	datac => \G7|index\(5),
	datad => \G7|index\(0),
	combout => \G7|Mux15~3_combout\);

-- Location: LCFF_X38_Y18_N23
\G6|LRDATA[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux15~3_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(16));

-- Location: LCCOMB_X38_Y18_N18
\G7|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux14~0_combout\ = (\G7|index\(5) & (!\G7|index\(0) & ((\G7|index\(2)) # (!\G7|index\(1))))) # (!\G7|index\(5) & (\G7|index\(0) $ (((\G7|index\(2) & \G7|index\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|index\(2),
	datac => \G7|index\(1),
	datad => \G7|index\(0),
	combout => \G7|Mux14~0_combout\);

-- Location: LCCOMB_X38_Y18_N26
\G7|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux14~4_combout\ = (\G7|index\(1) & (\G7|index\(5) & (\G7|index\(2) & \G7|index\(0)))) # (!\G7|index\(1) & (\G7|index\(5) $ (((\G7|index\(2)) # (\G7|index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(5),
	datab => \G7|index\(2),
	datac => \G7|index\(1),
	datad => \G7|index\(0),
	combout => \G7|Mux14~4_combout\);

-- Location: LCCOMB_X38_Y18_N12
\G7|Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux14~5_combout\ = (\G7|Mux14~3_combout\ & (((!\G7|Mux14~4_combout\) # (!\G7|index\(4))))) # (!\G7|Mux14~3_combout\ & (!\G7|Mux14~0_combout\ & (\G7|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|Mux14~3_combout\,
	datab => \G7|Mux14~0_combout\,
	datac => \G7|index\(4),
	datad => \G7|Mux14~4_combout\,
	combout => \G7|Mux14~5_combout\);

-- Location: LCFF_X38_Y18_N13
\G6|LRDATA[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux14~5_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(17));

-- Location: LCCOMB_X38_Y18_N8
\G6|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Mux13~4_combout\ = (\G6|Bcount\(0) & (\G6|LRDATA\(16) & (\G6|Bcount\(1)))) # (!\G6|Bcount\(0) & (((\G6|LRDATA\(17)) # (!\G6|Bcount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Bcount\(0),
	datab => \G6|LRDATA\(16),
	datac => \G6|Bcount\(1),
	datad => \G6|LRDATA\(17),
	combout => \G6|Mux13~4_combout\);

-- Location: LCCOMB_X39_Y18_N18
\G7|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux13~0_combout\ = (\G7|index\(1) & (\G7|index\(0) $ (((!\G7|index\(2) & \G7|index\(5)))))) # (!\G7|index\(1) & (!\G7|index\(2) & ((\G7|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(1),
	datab => \G7|index\(2),
	datac => \G7|index\(5),
	datad => \G7|index\(0),
	combout => \G7|Mux13~0_combout\);

-- Location: LCCOMB_X39_Y18_N20
\G7|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux13~1_combout\ = (\G7|index\(2) & (((\G7|index\(1) & \G7|index\(5))) # (!\G7|index\(0)))) # (!\G7|index\(2) & (!\G7|index\(1) & (\G7|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(1),
	datab => \G7|index\(2),
	datac => \G7|index\(5),
	datad => \G7|index\(0),
	combout => \G7|Mux13~1_combout\);

-- Location: LCCOMB_X37_Y18_N12
\G7|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux13~2_combout\ = (\G7|index\(1) & (\G7|Mux13~1_combout\ & ((\G7|index\(4)) # (\G7|Mux13~0_combout\)))) # (!\G7|index\(1) & (\G7|Mux13~0_combout\ $ (((\G7|index\(4)) # (\G7|Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|Mux13~0_combout\,
	datac => \G7|Mux13~1_combout\,
	datad => \G7|index\(1),
	combout => \G7|Mux13~2_combout\);

-- Location: LCCOMB_X38_Y18_N2
\G7|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux13~4_combout\ = \G7|Mux13~3_combout\ $ (((\G7|index\(3)) # (\G7|Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|Mux13~3_combout\,
	datac => \G7|index\(3),
	datad => \G7|Mux13~2_combout\,
	combout => \G7|Mux13~4_combout\);

-- Location: LCFF_X38_Y18_N3
\G6|LRDATA[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux13~4_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(18));

-- Location: LCCOMB_X38_Y18_N20
\G6|Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Mux13~5_combout\ = (\G6|Bcount\(1) & (((\G6|Mux13~4_combout\)))) # (!\G6|Bcount\(1) & ((\G6|Mux13~4_combout\ & (\G6|LRDATA\(19))) # (!\G6|Mux13~4_combout\ & ((\G6|LRDATA\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|LRDATA\(19),
	datab => \G6|Bcount\(1),
	datac => \G6|Mux13~4_combout\,
	datad => \G6|LRDATA\(18),
	combout => \G6|Mux13~5_combout\);

-- Location: LCCOMB_X36_Y18_N28
\G6|Mux13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Mux13~6_combout\ = (\G6|Bcount\(3) & ((\G6|Bcount\(2) & ((\G6|Mux13~5_combout\))) # (!\G6|Bcount\(2) & (\G6|Mux13~3_combout\)))) # (!\G6|Bcount\(3) & (!\G6|Bcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Bcount\(3),
	datab => \G6|Bcount\(2),
	datac => \G6|Mux13~3_combout\,
	datad => \G6|Mux13~5_combout\,
	combout => \G6|Mux13~6_combout\);

-- Location: LCCOMB_X36_Y18_N20
\G6|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Add0~16_combout\ = (!\G6|Add0~13_combout\ & ((\G6|dack1~regout\) # (!\G6|dack0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Add0~13_combout\,
	datab => \G6|dack0~regout\,
	datad => \G6|dack1~regout\,
	combout => \G6|Add0~16_combout\);

-- Location: LCFF_X36_Y18_N21
\G6|Bcount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G6|Add0~16_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|Bcount[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|Bcount\(3));

-- Location: LCCOMB_X37_Y18_N28
\G7|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux3~0_combout\ = (\G7|index\(4) & (((!\G7|index\(3))) # (!\G7|index\(2)))) # (!\G7|index\(4) & ((\G7|index\(3)) # ((\G7|index\(2) & \G7|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y18_N14
\G7|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux3~2_combout\ = (\G7|Mux3~0_combout\ & (\G7|index\(5) $ (((!\G7|index\(0)) # (!\G7|Mux3~1_combout\))))) # (!\G7|Mux3~0_combout\ & (\G7|index\(5) & ((\G7|Mux3~1_combout\) # (\G7|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|Mux3~1_combout\,
	datab => \G7|index\(0),
	datac => \G7|index\(5),
	datad => \G7|Mux3~0_combout\,
	combout => \G7|Mux3~2_combout\);

-- Location: LCFF_X38_Y18_N15
\G6|LRDATA[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux3~2_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(28));

-- Location: LCCOMB_X37_Y18_N16
\G7|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux2~0_combout\ = (!\G7|index\(4) & (!\G7|index\(2) & (!\G7|index\(3) & !\G7|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G7|index\(4),
	datab => \G7|index\(2),
	datac => \G7|index\(3),
	datad => \G7|index\(1),
	combout => \G7|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y18_N0
\G7|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G7|Mux2~1_combout\ = (\G7|index\(0)) # (!\G7|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G7|index\(0),
	datac => \G7|Mux2~0_combout\,
	combout => \G7|Mux2~1_combout\);

-- Location: LCFF_X38_Y18_N1
\G6|LRDATA[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G7|Mux2~1_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	sclr => \G7|ALT_INV_index\(5),
	ena => \G6|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G6|LRDATA\(29));

-- Location: LCCOMB_X38_Y18_N24
\G6|Mux13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Mux13~7_combout\ = (\G6|Bcount\(0) & ((\G6|Bcount\(1) & (\G6|LRDATA\(28))) # (!\G6|Bcount\(1) & ((\G6|LRDATA\(29)))))) # (!\G6|Bcount\(0) & (((\G6|LRDATA\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Bcount\(0),
	datab => \G6|LRDATA\(28),
	datac => \G6|Bcount\(1),
	datad => \G6|LRDATA\(29),
	combout => \G6|Mux13~7_combout\);

-- Location: LCCOMB_X36_Y18_N22
\G6|Mux13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \G6|Mux13~8_combout\ = (\G6|Mux13~6_combout\ & (((\G6|Bcount\(3)) # (\G6|Mux13~7_combout\)))) # (!\G6|Mux13~6_combout\ & (\G6|Mux13~1_combout\ & (!\G6|Bcount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G6|Mux13~1_combout\,
	datab => \G6|Mux13~6_combout\,
	datac => \G6|Bcount\(3),
	datad => \G6|Mux13~7_combout\,
	combout => \G6|Mux13~8_combout\);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SDAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G6|Selector30~15_combout\,
	oe => \G6|WideOr32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_I2C_SDAT);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_ten[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G5|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_ten(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_ten[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G5|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_ten(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_ten[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G5|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_ten(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_ten[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G5|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_ten(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_ten[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G5|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_ten(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_ten[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G5|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_ten(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_ten[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G5|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_ten(6));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_unit[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G4|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_unit(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_unit[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G4|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_unit(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_unit[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G4|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_unit(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_unit[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_unit(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_unit[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G4|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_unit(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_unit[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G4|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_unit(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt_unit[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G4|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_unit(6));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\temp_audio~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G8|finished~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_temp_audio);

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\temp_audio2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \overflowed~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_temp_audio2);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\init_finish~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G6|state.b_end~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_init_finish);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_MCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G6|i2c_counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_MCLK);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AUD_ADCDAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_AUD_ADCDAT);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACDAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G6|Mux13~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_DACDAT);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AUD_ADCLRCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_AUD_ADCLRCK);

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G6|I2C_SCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_I2C_SCLK);
END structure;


