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

-- DATE "12/15/2014 23:07:22"

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

ENTITY 	morseknopper IS
    PORT (
	I2C_SDAT : OUT std_logic;
	cnt_ten : OUT std_logic_vector(6 DOWNTO 0);
	cnt_unit : OUT std_logic_vector(6 DOWNTO 0);
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
END morseknopper;

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


ARCHITECTURE structure OF morseknopper IS
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
SIGNAL \Ceenheden|over~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Caudio|I2C_SCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Cknop_naar_puls|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Ceenhedenmorse|index[3]~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Ctientallenmorse|index[3]~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Caudio|i2c_counter[1]~9_combout\ : std_logic;
SIGNAL \Caudio|i2c_counter[3]~13_combout\ : std_logic;
SIGNAL \Caudio|i2c_counter[5]~17_combout\ : std_logic;
SIGNAL \Caudio|i2c_counter[7]~21_combout\ : std_logic;
SIGNAL \Ctoongenerator|Add1~1\ : std_logic;
SIGNAL \Ctoongenerator|Add1~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Add1~3\ : std_logic;
SIGNAL \Ctoongenerator|Add1~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|Add1~5\ : std_logic;
SIGNAL \Ctoongenerator|Add1~4_combout\ : std_logic;
SIGNAL \Ctoongenerator|Add1~7\ : std_logic;
SIGNAL \Ctoongenerator|Add1~6_combout\ : std_logic;
SIGNAL \Ctoongenerator|Add1~9\ : std_logic;
SIGNAL \Ctoongenerator|Add1~8_combout\ : std_logic;
SIGNAL \Ctoongenerator|Add1~11\ : std_logic;
SIGNAL \Ctoongenerator|Add1~10_combout\ : std_logic;
SIGNAL \Ctoongenerator|Add1~13\ : std_logic;
SIGNAL \Ctoongenerator|Add1~12_combout\ : std_logic;
SIGNAL \Ctoongenerator|Add1~15\ : std_logic;
SIGNAL \Ctoongenerator|Add1~14_combout\ : std_logic;
SIGNAL \Ctoongenerator|Add1~17\ : std_logic;
SIGNAL \Ctoongenerator|Add1~16_combout\ : std_logic;
SIGNAL \Ctoongenerator|Add1~18_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Add1~0_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[0]~23_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[1]~25_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[3]~29_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[5]~33_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[16]~55_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[21]~66\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[22]~67_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[0]~23_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[1]~25_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[3]~29_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[5]~33_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[7]~37_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[19]~61_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[21]~65_combout\ : std_logic;
SIGNAL \Caudio|Mux13~2_combout\ : std_logic;
SIGNAL \Caudio|Mux13~3_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux6~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux6~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux6~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux7~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux7~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux7~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux4~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux10~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux10~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux10~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux10~3_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux10~4_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux10~5_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux9~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux9~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux9~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux9~3_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux9~4_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux9~5_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux11~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux11~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux11~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux11~3_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux11~4_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux11~5_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux8~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux8~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux8~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux8~3_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux8~4_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux13~3_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux14~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux14~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux14~3_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux15~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux15~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux15~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux15~3_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux12~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux12~1_combout\ : std_logic;
SIGNAL \Caudio|Selector30~0_combout\ : std_logic;
SIGNAL \Caudio|Selector30~7_combout\ : std_logic;
SIGNAL \Caudio|Selector30~8_combout\ : std_logic;
SIGNAL \Caudio|Mux12~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Equal0~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Equal0~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Equal0~2_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux14~2_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux14~1_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux14~2_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux14~3_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux4~0_combout\ : std_logic;
SIGNAL \Caudio|Selector0~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|wait_counter~0_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \Ctoongenerator|wait_counter~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|wait_counter~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|wait_counter~3_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[1]~_emulated_regout\ : std_logic;
SIGNAL \Ctientallenmorse|index[1]~tail_lut_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[1]~data_lut_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[1]~latch_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \Ceenheden|over~clkctrl_outclk\ : std_logic;
SIGNAL \Caudio|I2C_SCLK~clkctrl_outclk\ : std_logic;
SIGNAL \Cknop_naar_puls|output~clkctrl_outclk\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \Caudio|i2c_counter[0]~27_combout\ : std_logic;
SIGNAL \button_reset~combout\ : std_logic;
SIGNAL \Caudio|i2c_counter[1]~10\ : std_logic;
SIGNAL \Caudio|i2c_counter[2]~11_combout\ : std_logic;
SIGNAL \Caudio|i2c_counter[2]~12\ : std_logic;
SIGNAL \Caudio|i2c_counter[3]~14\ : std_logic;
SIGNAL \Caudio|i2c_counter[4]~15_combout\ : std_logic;
SIGNAL \Caudio|i2c_counter[4]~16\ : std_logic;
SIGNAL \Caudio|i2c_counter[5]~18\ : std_logic;
SIGNAL \Caudio|i2c_counter[6]~19_combout\ : std_logic;
SIGNAL \Caudio|i2c_counter[6]~20\ : std_logic;
SIGNAL \Caudio|i2c_counter[7]~22\ : std_logic;
SIGNAL \Caudio|i2c_counter[8]~23_combout\ : std_logic;
SIGNAL \Caudio|i2c_counter[8]~24\ : std_logic;
SIGNAL \Caudio|i2c_counter[9]~25_combout\ : std_logic;
SIGNAL \Caudio|I2C_SCLK~combout\ : std_logic;
SIGNAL \Caudio|word_count[0]~2_combout\ : std_logic;
SIGNAL \Caudio|sck0~regout\ : std_logic;
SIGNAL \Caudio|sck1~regout\ : std_logic;
SIGNAL \Caudio|next_state_i2c~0_combout\ : std_logic;
SIGNAL \Caudio|Selector1~0_combout\ : std_logic;
SIGNAL \Caudio|state.start~regout\ : std_logic;
SIGNAL \Caudio|state.b0~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.b0~regout\ : std_logic;
SIGNAL \Caudio|state.b1~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.b1~regout\ : std_logic;
SIGNAL \Caudio|state.b2~regout\ : std_logic;
SIGNAL \Caudio|state.b3~regout\ : std_logic;
SIGNAL \Caudio|state.b4~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.b4~regout\ : std_logic;
SIGNAL \Caudio|state.b5~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.b5~regout\ : std_logic;
SIGNAL \Caudio|state.b6~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.b6~regout\ : std_logic;
SIGNAL \Caudio|state.b7~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.b7~regout\ : std_logic;
SIGNAL \Caudio|state.b_ack~regout\ : std_logic;
SIGNAL \Caudio|state.a0~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.a0~regout\ : std_logic;
SIGNAL \Caudio|state.a1~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.a1~regout\ : std_logic;
SIGNAL \Caudio|state.a2~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.a2~regout\ : std_logic;
SIGNAL \Caudio|state.a3~regout\ : std_logic;
SIGNAL \Caudio|state.a4~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.a4~regout\ : std_logic;
SIGNAL \Caudio|state.a5~regout\ : std_logic;
SIGNAL \Caudio|state.a6~regout\ : std_logic;
SIGNAL \Caudio|state.a7~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.a7~regout\ : std_logic;
SIGNAL \Caudio|state.a_ack~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.a_ack~regout\ : std_logic;
SIGNAL \Caudio|state.d0~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.d0~regout\ : std_logic;
SIGNAL \Caudio|state.d1~regout\ : std_logic;
SIGNAL \Caudio|state.d2~regout\ : std_logic;
SIGNAL \Caudio|state.d3~regout\ : std_logic;
SIGNAL \Caudio|state.d4~feeder_combout\ : std_logic;
SIGNAL \Caudio|state.d4~regout\ : std_logic;
SIGNAL \Caudio|state.d5~regout\ : std_logic;
SIGNAL \Caudio|state.d6~regout\ : std_logic;
SIGNAL \Caudio|state.d7~regout\ : std_logic;
SIGNAL \Caudio|state.d_ack~regout\ : std_logic;
SIGNAL \Caudio|word_count[3]~0_combout\ : std_logic;
SIGNAL \Caudio|word_count[3]~1_combout\ : std_logic;
SIGNAL \Caudio|Equal0~0_combout\ : std_logic;
SIGNAL \Caudio|Selector29~0_combout\ : std_logic;
SIGNAL \Caudio|state.b_stop0~regout\ : std_logic;
SIGNAL \Caudio|next_state.b_stop1~0_combout\ : std_logic;
SIGNAL \Caudio|state.b_stop1~regout\ : std_logic;
SIGNAL \Caudio|I2C_SCLK~0_combout\ : std_logic;
SIGNAL \Caudio|state.b_end~regout\ : std_logic;
SIGNAL \Caudio|word_counter~0_combout\ : std_logic;
SIGNAL \Caudio|Mux1~0_combout\ : std_logic;
SIGNAL \Caudio|Mux10~0_combout\ : std_logic;
SIGNAL \Caudio|Mux6~0_combout\ : std_logic;
SIGNAL \Caudio|Selector30~11_combout\ : std_logic;
SIGNAL \Caudio|Selector0~1_combout\ : std_logic;
SIGNAL \Caudio|state.initialize~regout\ : std_logic;
SIGNAL \Caudio|Selector30~12_combout\ : std_logic;
SIGNAL \Caudio|Selector30~13_combout\ : std_logic;
SIGNAL \Caudio|Selector30~1_combout\ : std_logic;
SIGNAL \Caudio|Selector30~2_combout\ : std_logic;
SIGNAL \Caudio|Selector30~3_combout\ : std_logic;
SIGNAL \Caudio|Selector30~5_combout\ : std_logic;
SIGNAL \Caudio|Selector30~4_combout\ : std_logic;
SIGNAL \Caudio|Selector30~6_combout\ : std_logic;
SIGNAL \Caudio|Selector30~9_combout\ : std_logic;
SIGNAL \Caudio|Selector30~10_combout\ : std_logic;
SIGNAL \Caudio|Selector30~14_combout\ : std_logic;
SIGNAL \Caudio|WideOr32~0_combout\ : std_logic;
SIGNAL \Ctientallen|output[2]~1_combout\ : std_logic;
SIGNAL \Ctientallen|output[0]~3_combout\ : std_logic;
SIGNAL \Ctientallen|output~2_combout\ : std_logic;
SIGNAL \Ctientallen|output~0_combout\ : std_logic;
SIGNAL \Ctientallenweergave|Mux6~0_combout\ : std_logic;
SIGNAL \Ctientallenweergave|Mux5~0_combout\ : std_logic;
SIGNAL \Ctientallenweergave|Mux4~0_combout\ : std_logic;
SIGNAL \Ctientallenweergave|Mux3~0_combout\ : std_logic;
SIGNAL \Ctientallenweergave|Mux2~0_combout\ : std_logic;
SIGNAL \Ctientallenweergave|Mux1~0_combout\ : std_logic;
SIGNAL \Ctientallenweergave|Mux0~0_combout\ : std_logic;
SIGNAL \Ceenheden|output[0]~3_combout\ : std_logic;
SIGNAL \Ceenheden|output[2]~1_combout\ : std_logic;
SIGNAL \Ceenheden|output~0_combout\ : std_logic;
SIGNAL \Ceenheden|output~2_combout\ : std_logic;
SIGNAL \Ceenhedenweergave|Mux6~0_combout\ : std_logic;
SIGNAL \Ceenhedenweergave|Mux5~0_combout\ : std_logic;
SIGNAL \Ceenhedenweergave|Mux4~0_combout\ : std_logic;
SIGNAL \Ceenhedenweergave|Mux3~0_combout\ : std_logic;
SIGNAL \Ceenhedenweergave|Mux2~0_combout\ : std_logic;
SIGNAL \Ceenhedenweergave|Mux1~0_combout\ : std_logic;
SIGNAL \Ceenhedenweergave|Mux0~0_combout\ : std_logic;
SIGNAL \AUD_DACLRCK~combout\ : std_logic;
SIGNAL \Caudio|dack0~regout\ : std_logic;
SIGNAL \Caudio|dack1~regout\ : std_logic;
SIGNAL \Caudio|Add0~10_combout\ : std_logic;
SIGNAL \AUD_BCLK~combout\ : std_logic;
SIGNAL \Caudio|bck0~feeder_combout\ : std_logic;
SIGNAL \Caudio|bck0~regout\ : std_logic;
SIGNAL \Caudio|bck1~regout\ : std_logic;
SIGNAL \Caudio|Bcount[2]~0_combout\ : std_logic;
SIGNAL \Caudio|Add0~7_cout\ : std_logic;
SIGNAL \Caudio|Add0~8_combout\ : std_logic;
SIGNAL \Caudio|Add0~15_combout\ : std_logic;
SIGNAL \Caudio|Add0~9\ : std_logic;
SIGNAL \Caudio|Add0~11_combout\ : std_logic;
SIGNAL \Caudio|Add0~17_combout\ : std_logic;
SIGNAL \Caudio|Add0~12\ : std_logic;
SIGNAL \Caudio|Add0~13_combout\ : std_logic;
SIGNAL \Caudio|Add0~16_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux2~0_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[0]~24\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[1]~26\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[2]~27_combout\ : std_logic;
SIGNAL \button_count~combout\ : std_logic;
SIGNAL \Cknop_naar_puls|activated~0_combout\ : std_logic;
SIGNAL \Cknop_naar_puls|activated~regout\ : std_logic;
SIGNAL \Cknop_naar_puls|output~0_combout\ : std_logic;
SIGNAL \Cknop_naar_puls|output~regout\ : std_logic;
SIGNAL \Ceenhedenmorse|finished~2_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[2]~28\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[3]~30\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[4]~31_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[4]~32\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[5]~34\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[6]~35_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[6]~36\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[7]~38\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[8]~39_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[8]~40\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[9]~41_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[9]~42\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[10]~43_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[10]~44\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[11]~45_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[11]~46\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[12]~47_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[12]~48\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[13]~49_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[13]~50\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[14]~52\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[15]~53_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[15]~54\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[16]~56\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[17]~58\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[18]~59_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[18]~60\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[19]~62\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[20]~63_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[20]~64\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[21]~65_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[19]~61_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[17]~57_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|LessThan0~3_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[14]~51_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt[7]~37_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|LessThan0~0_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|LessThan0~1_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|LessThan0~2_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|LessThan0~4_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|LessThan0~5_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux1~0_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[3]~7_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[3]~7clkctrl_outclk\ : std_logic;
SIGNAL \Ceenhedenmorse|index[2]~latch_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux2~0_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[1]~latch_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Add1~0_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[1]~data_lut_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[2]~clear_lut_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux7~0_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[3]~latch_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Add1~4_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[3]~data_lut_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[3]~_emulated_regout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[3]~tail_lut_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[3]~head_lut_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[4]~8_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[4]~9_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[1]~_emulated_regout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[1]~tail_lut_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[1]~head_lut_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Add1~1\ : std_logic;
SIGNAL \Ceenhedenmorse|Add1~2_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[2]~data_lut_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[2]~_emulated_regout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[2]~tail_lut_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[2]~head_lut_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Add1~3\ : std_logic;
SIGNAL \Ceenhedenmorse|Add1~5\ : std_logic;
SIGNAL \Ceenhedenmorse|Add1~6_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|finished~3_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|finished~regout\ : std_logic;
SIGNAL \Ceenheden_naar_puls|activated~regout\ : std_logic;
SIGNAL \Ceenheden_naar_puls|output~0_combout\ : std_logic;
SIGNAL \Ceenheden_naar_puls|output~regout\ : std_logic;
SIGNAL \Ctientallenmorse|index[3]~7_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[1]~head_lut_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Add1~1\ : std_logic;
SIGNAL \Ctientallenmorse|Add1~3\ : std_logic;
SIGNAL \Ctientallenmorse|Add1~5\ : std_logic;
SIGNAL \Ctientallenmorse|Add1~6_combout\ : std_logic;
SIGNAL \Ceenheden|Equal0~0_combout\ : std_logic;
SIGNAL \Ceenheden|over~regout\ : std_logic;
SIGNAL \minder_dan_tien~combout\ : std_logic;
SIGNAL \Ctientallenmorse|finished~0_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[0]~24\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[1]~26\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[2]~27_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[20]~64\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[21]~66\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[22]~67_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[16]~55_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[17]~57_combout\ : std_logic;
SIGNAL \Ctientallenmorse|LessThan0~2_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[14]~51_combout\ : std_logic;
SIGNAL \Ctientallenmorse|LessThan0~3_combout\ : std_logic;
SIGNAL \Ctientallenmorse|LessThan0~4_combout\ : std_logic;
SIGNAL \Ctientallenmorse|LessThan0~5_combout\ : std_logic;
SIGNAL \Ctientallenmorse|LessThan0~6_combout\ : std_logic;
SIGNAL \Ctientallenmorse|LessThan0~7_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[2]~28\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[3]~30\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[4]~31_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[4]~32\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[5]~34\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[6]~35_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[6]~36\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[7]~38\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[8]~39_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[8]~40\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[9]~41_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[9]~42\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[10]~43_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[10]~44\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[11]~45_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[11]~46\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[12]~47_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[12]~48\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[13]~49_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[13]~50\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[14]~52\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[15]~53_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[15]~54\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[16]~56\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[17]~58\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[18]~59_combout\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[18]~60\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[19]~62\ : std_logic;
SIGNAL \Ctientallenmorse|cnt[20]~63_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Add1~4_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux7~0_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[3]~7clkctrl_outclk\ : std_logic;
SIGNAL \Ctientallenmorse|index[3]~latch_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[3]~data_lut_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[2]~clear_lut_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[3]~_emulated_regout\ : std_logic;
SIGNAL \Ctientallenmorse|index[3]~tail_lut_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[3]~head_lut_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[4]~8_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[4]~9_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[0]~10_combout\ : std_logic;
SIGNAL \Ctientallen|Equal0~0_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux1~0_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[2]~latch_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Add1~2_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[2]~data_lut_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[2]~_emulated_regout\ : std_logic;
SIGNAL \Ctientallenmorse|index[2]~tail_lut_combout\ : std_logic;
SIGNAL \Ctientallenmorse|index[2]~head_lut_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux14~4_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux14~5_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux14~7_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux14~6_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux14~8_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux10~0_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux14~0_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux14~9_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|index[0]~10_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux10~0_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux14~0_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux14~1_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux14~3_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux4~0_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux14~4_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux14~5_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux14~6_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux14~7_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux14~8_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux14~9_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \Ctientallenmorse|Mux13~0_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|Mux13~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|index[0]~21_combout\ : std_logic;
SIGNAL \Ctoongenerator|index[0]~20_combout\ : std_logic;
SIGNAL \Ctoongenerator|index[1]~10\ : std_logic;
SIGNAL \Ctoongenerator|index[2]~11_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|index[5]~13_combout\ : std_logic;
SIGNAL \Ctoongenerator|index[2]~12\ : std_logic;
SIGNAL \Ctoongenerator|index[3]~15\ : std_logic;
SIGNAL \Ctoongenerator|index[4]~16_combout\ : std_logic;
SIGNAL \Ctoongenerator|index[4]~17\ : std_logic;
SIGNAL \Ctoongenerator|index[5]~18_combout\ : std_logic;
SIGNAL \Ctoongenerator|index[1]~9_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux14~4_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux14~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux14~5_combout\ : std_logic;
SIGNAL \Caudio|DACData_reg~0_combout\ : std_logic;
SIGNAL \Caudio|Mux13~4_combout\ : std_logic;
SIGNAL \Ctoongenerator|index[3]~14_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux13~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux13~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux13~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux13~4_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux12~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux12~3_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux12~4_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux12~5_combout\ : std_logic;
SIGNAL \Caudio|Mux13~5_combout\ : std_logic;
SIGNAL \Caudio|Mux13~6_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux2~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux2~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux3~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux3~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux3~2_combout\ : std_logic;
SIGNAL \Caudio|Mux13~7_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux5~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux5~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux5~2_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux7~3_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux7~4_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux6~3_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux6~4_combout\ : std_logic;
SIGNAL \Caudio|Mux13~0_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux4~1_combout\ : std_logic;
SIGNAL \Ctoongenerator|Mux4~2_combout\ : std_logic;
SIGNAL \Caudio|Mux13~1_combout\ : std_logic;
SIGNAL \Caudio|Mux13~8_combout\ : std_logic;
SIGNAL \Ceenhedenmorse|cnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \Ceenhedenmorse|index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Ctoongenerator|index\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Ctoongenerator|wait_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Caudio|Bcount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Caudio|LRDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Caudio|i2c_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Caudio|word_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Ceenheden|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Ctientallenmorse|index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Ctientallenmorse|cnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \Ctientallen|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Ctoongenerator|ALT_INV_index\ : std_logic_vector(5 DOWNTO 5);
SIGNAL \Ctientallenweergave|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Ceenhedenweergave|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_button_reset~combout\ : std_logic;
SIGNAL \Caudio|ALT_INV_I2C_SCLK~clkctrl_outclk\ : std_logic;

BEGIN

I2C_SDAT <= ww_I2C_SDAT;
cnt_ten <= ww_cnt_ten;
cnt_unit <= ww_cnt_unit;
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

\Ceenheden|over~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Ceenheden|over~regout\);

\Caudio|I2C_SCLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Caudio|I2C_SCLK~combout\);

\Cknop_naar_puls|output~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Cknop_naar_puls|output~regout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\Ceenhedenmorse|index[3]~7clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Ceenhedenmorse|index[3]~7_combout\);

\Ctientallenmorse|index[3]~7clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Ctientallenmorse|index[3]~7_combout\);
\Ctoongenerator|ALT_INV_index\(5) <= NOT \Ctoongenerator|index\(5);
\Ctientallenweergave|ALT_INV_Mux0~0_combout\ <= NOT \Ctientallenweergave|Mux0~0_combout\;
\Ceenhedenweergave|ALT_INV_Mux0~0_combout\ <= NOT \Ceenhedenweergave|Mux0~0_combout\;
\ALT_INV_button_reset~combout\ <= NOT \button_reset~combout\;
\Caudio|ALT_INV_I2C_SCLK~clkctrl_outclk\ <= NOT \Caudio|I2C_SCLK~clkctrl_outclk\;

-- Location: LCFF_X46_Y14_N13
\Caudio|i2c_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|i2c_counter[1]~9_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|i2c_counter\(1));

-- Location: LCCOMB_X46_Y14_N12
\Caudio|i2c_counter[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|i2c_counter[1]~9_combout\ = (\Caudio|i2c_counter\(1) & (\Caudio|i2c_counter\(0) $ (VCC))) # (!\Caudio|i2c_counter\(1) & (\Caudio|i2c_counter\(0) & VCC))
-- \Caudio|i2c_counter[1]~10\ = CARRY((\Caudio|i2c_counter\(1) & \Caudio|i2c_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|i2c_counter\(1),
	datab => \Caudio|i2c_counter\(0),
	datad => VCC,
	combout => \Caudio|i2c_counter[1]~9_combout\,
	cout => \Caudio|i2c_counter[1]~10\);

-- Location: LCFF_X46_Y14_N25
\Caudio|i2c_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|i2c_counter[7]~21_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|i2c_counter\(7));

-- Location: LCFF_X46_Y14_N21
\Caudio|i2c_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|i2c_counter[5]~17_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|i2c_counter\(5));

-- Location: LCFF_X46_Y14_N17
\Caudio|i2c_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|i2c_counter[3]~13_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|i2c_counter\(3));

-- Location: LCCOMB_X46_Y14_N16
\Caudio|i2c_counter[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|i2c_counter[3]~13_combout\ = (\Caudio|i2c_counter\(3) & (\Caudio|i2c_counter[2]~12\ $ (GND))) # (!\Caudio|i2c_counter\(3) & (!\Caudio|i2c_counter[2]~12\ & VCC))
-- \Caudio|i2c_counter[3]~14\ = CARRY((\Caudio|i2c_counter\(3) & !\Caudio|i2c_counter[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|i2c_counter\(3),
	datad => VCC,
	cin => \Caudio|i2c_counter[2]~12\,
	combout => \Caudio|i2c_counter[3]~13_combout\,
	cout => \Caudio|i2c_counter[3]~14\);

-- Location: LCCOMB_X46_Y14_N20
\Caudio|i2c_counter[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|i2c_counter[5]~17_combout\ = (\Caudio|i2c_counter\(5) & (\Caudio|i2c_counter[4]~16\ $ (GND))) # (!\Caudio|i2c_counter\(5) & (!\Caudio|i2c_counter[4]~16\ & VCC))
-- \Caudio|i2c_counter[5]~18\ = CARRY((\Caudio|i2c_counter\(5) & !\Caudio|i2c_counter[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|i2c_counter\(5),
	datad => VCC,
	cin => \Caudio|i2c_counter[4]~16\,
	combout => \Caudio|i2c_counter[5]~17_combout\,
	cout => \Caudio|i2c_counter[5]~18\);

-- Location: LCCOMB_X46_Y14_N24
\Caudio|i2c_counter[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|i2c_counter[7]~21_combout\ = (\Caudio|i2c_counter\(7) & (\Caudio|i2c_counter[6]~20\ $ (GND))) # (!\Caudio|i2c_counter\(7) & (!\Caudio|i2c_counter[6]~20\ & VCC))
-- \Caudio|i2c_counter[7]~22\ = CARRY((\Caudio|i2c_counter\(7) & !\Caudio|i2c_counter[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|i2c_counter\(7),
	datad => VCC,
	cin => \Caudio|i2c_counter[6]~20\,
	combout => \Caudio|i2c_counter[7]~21_combout\,
	cout => \Caudio|i2c_counter[7]~22\);

-- Location: LCCOMB_X42_Y19_N4
\Ctoongenerator|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Add1~0_combout\ = \Ctoongenerator|wait_counter\(0) $ (VCC)
-- \Ctoongenerator|Add1~1\ = CARRY(\Ctoongenerator|wait_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctoongenerator|wait_counter\(0),
	datad => VCC,
	combout => \Ctoongenerator|Add1~0_combout\,
	cout => \Ctoongenerator|Add1~1\);

-- Location: LCCOMB_X42_Y19_N6
\Ctoongenerator|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Add1~2_combout\ = (\Ctoongenerator|wait_counter\(1) & (!\Ctoongenerator|Add1~1\)) # (!\Ctoongenerator|wait_counter\(1) & ((\Ctoongenerator|Add1~1\) # (GND)))
-- \Ctoongenerator|Add1~3\ = CARRY((!\Ctoongenerator|Add1~1\) # (!\Ctoongenerator|wait_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|wait_counter\(1),
	datad => VCC,
	cin => \Ctoongenerator|Add1~1\,
	combout => \Ctoongenerator|Add1~2_combout\,
	cout => \Ctoongenerator|Add1~3\);

-- Location: LCCOMB_X42_Y19_N8
\Ctoongenerator|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Add1~4_combout\ = (\Ctoongenerator|wait_counter\(2) & (\Ctoongenerator|Add1~3\ $ (GND))) # (!\Ctoongenerator|wait_counter\(2) & (!\Ctoongenerator|Add1~3\ & VCC))
-- \Ctoongenerator|Add1~5\ = CARRY((\Ctoongenerator|wait_counter\(2) & !\Ctoongenerator|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctoongenerator|wait_counter\(2),
	datad => VCC,
	cin => \Ctoongenerator|Add1~3\,
	combout => \Ctoongenerator|Add1~4_combout\,
	cout => \Ctoongenerator|Add1~5\);

-- Location: LCCOMB_X42_Y19_N10
\Ctoongenerator|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Add1~6_combout\ = (\Ctoongenerator|wait_counter\(3) & (!\Ctoongenerator|Add1~5\)) # (!\Ctoongenerator|wait_counter\(3) & ((\Ctoongenerator|Add1~5\) # (GND)))
-- \Ctoongenerator|Add1~7\ = CARRY((!\Ctoongenerator|Add1~5\) # (!\Ctoongenerator|wait_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|wait_counter\(3),
	datad => VCC,
	cin => \Ctoongenerator|Add1~5\,
	combout => \Ctoongenerator|Add1~6_combout\,
	cout => \Ctoongenerator|Add1~7\);

-- Location: LCCOMB_X42_Y19_N12
\Ctoongenerator|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Add1~8_combout\ = (\Ctoongenerator|wait_counter\(4) & (\Ctoongenerator|Add1~7\ $ (GND))) # (!\Ctoongenerator|wait_counter\(4) & (!\Ctoongenerator|Add1~7\ & VCC))
-- \Ctoongenerator|Add1~9\ = CARRY((\Ctoongenerator|wait_counter\(4) & !\Ctoongenerator|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|wait_counter\(4),
	datad => VCC,
	cin => \Ctoongenerator|Add1~7\,
	combout => \Ctoongenerator|Add1~8_combout\,
	cout => \Ctoongenerator|Add1~9\);

-- Location: LCCOMB_X42_Y19_N14
\Ctoongenerator|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Add1~10_combout\ = (\Ctoongenerator|wait_counter\(5) & (!\Ctoongenerator|Add1~9\)) # (!\Ctoongenerator|wait_counter\(5) & ((\Ctoongenerator|Add1~9\) # (GND)))
-- \Ctoongenerator|Add1~11\ = CARRY((!\Ctoongenerator|Add1~9\) # (!\Ctoongenerator|wait_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|wait_counter\(5),
	datad => VCC,
	cin => \Ctoongenerator|Add1~9\,
	combout => \Ctoongenerator|Add1~10_combout\,
	cout => \Ctoongenerator|Add1~11\);

-- Location: LCCOMB_X42_Y19_N16
\Ctoongenerator|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Add1~12_combout\ = (\Ctoongenerator|wait_counter\(6) & (\Ctoongenerator|Add1~11\ $ (GND))) # (!\Ctoongenerator|wait_counter\(6) & (!\Ctoongenerator|Add1~11\ & VCC))
-- \Ctoongenerator|Add1~13\ = CARRY((\Ctoongenerator|wait_counter\(6) & !\Ctoongenerator|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|wait_counter\(6),
	datad => VCC,
	cin => \Ctoongenerator|Add1~11\,
	combout => \Ctoongenerator|Add1~12_combout\,
	cout => \Ctoongenerator|Add1~13\);

-- Location: LCCOMB_X42_Y19_N18
\Ctoongenerator|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Add1~14_combout\ = (\Ctoongenerator|wait_counter\(7) & (!\Ctoongenerator|Add1~13\)) # (!\Ctoongenerator|wait_counter\(7) & ((\Ctoongenerator|Add1~13\) # (GND)))
-- \Ctoongenerator|Add1~15\ = CARRY((!\Ctoongenerator|Add1~13\) # (!\Ctoongenerator|wait_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctoongenerator|wait_counter\(7),
	datad => VCC,
	cin => \Ctoongenerator|Add1~13\,
	combout => \Ctoongenerator|Add1~14_combout\,
	cout => \Ctoongenerator|Add1~15\);

-- Location: LCCOMB_X42_Y19_N20
\Ctoongenerator|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Add1~16_combout\ = (\Ctoongenerator|wait_counter\(8) & (\Ctoongenerator|Add1~15\ $ (GND))) # (!\Ctoongenerator|wait_counter\(8) & (!\Ctoongenerator|Add1~15\ & VCC))
-- \Ctoongenerator|Add1~17\ = CARRY((\Ctoongenerator|wait_counter\(8) & !\Ctoongenerator|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctoongenerator|wait_counter\(8),
	datad => VCC,
	cin => \Ctoongenerator|Add1~15\,
	combout => \Ctoongenerator|Add1~16_combout\,
	cout => \Ctoongenerator|Add1~17\);

-- Location: LCCOMB_X42_Y19_N22
\Ctoongenerator|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Add1~18_combout\ = \Ctoongenerator|wait_counter\(9) $ (\Ctoongenerator|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|wait_counter\(9),
	cin => \Ctoongenerator|Add1~17\,
	combout => \Ctoongenerator|Add1~18_combout\);

-- Location: LCFF_X38_Y20_N23
\Ceenhedenmorse|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[22]~67_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(22));

-- Location: LCFF_X38_Y20_N11
\Ceenhedenmorse|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[16]~55_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(16));

-- Location: LCFF_X38_Y17_N17
\Ctientallenmorse|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[19]~61_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(19));

-- Location: LCFF_X38_Y18_N25
\Ctientallenmorse|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[7]~37_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(7));

-- Location: LCFF_X38_Y17_N21
\Ctientallenmorse|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[21]~65_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(21));

-- Location: LCCOMB_X40_Y17_N20
\Ctientallenmorse|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Add1~0_combout\ = (\Ctientallenmorse|index\(0) & (\Ctientallenmorse|index[1]~head_lut_combout\ $ (VCC))) # (!\Ctientallenmorse|index\(0) & (\Ctientallenmorse|index[1]~head_lut_combout\ & VCC))
-- \Ctientallenmorse|Add1~1\ = CARRY((\Ctientallenmorse|index\(0) & \Ctientallenmorse|index[1]~head_lut_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|index\(0),
	datab => \Ctientallenmorse|index[1]~head_lut_combout\,
	datad => VCC,
	combout => \Ctientallenmorse|Add1~0_combout\,
	cout => \Ctientallenmorse|Add1~1\);

-- Location: LCFF_X38_Y21_N21
\Ceenhedenmorse|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[5]~33_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(5));

-- Location: LCFF_X38_Y21_N17
\Ceenhedenmorse|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[3]~29_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(3));

-- Location: LCFF_X38_Y21_N13
\Ceenhedenmorse|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[1]~25_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(1));

-- Location: LCFF_X38_Y21_N11
\Ceenhedenmorse|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[0]~23_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(0));

-- Location: LCCOMB_X38_Y21_N10
\Ceenhedenmorse|cnt[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[0]~23_combout\ = \Ceenhedenmorse|cnt\(0) $ (VCC)
-- \Ceenhedenmorse|cnt[0]~24\ = CARRY(\Ceenhedenmorse|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(0),
	datad => VCC,
	combout => \Ceenhedenmorse|cnt[0]~23_combout\,
	cout => \Ceenhedenmorse|cnt[0]~24\);

-- Location: LCCOMB_X38_Y21_N12
\Ceenhedenmorse|cnt[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[1]~25_combout\ = (\Ceenhedenmorse|cnt\(1) & (!\Ceenhedenmorse|cnt[0]~24\)) # (!\Ceenhedenmorse|cnt\(1) & ((\Ceenhedenmorse|cnt[0]~24\) # (GND)))
-- \Ceenhedenmorse|cnt[1]~26\ = CARRY((!\Ceenhedenmorse|cnt[0]~24\) # (!\Ceenhedenmorse|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(1),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[0]~24\,
	combout => \Ceenhedenmorse|cnt[1]~25_combout\,
	cout => \Ceenhedenmorse|cnt[1]~26\);

-- Location: LCCOMB_X38_Y21_N16
\Ceenhedenmorse|cnt[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[3]~29_combout\ = (\Ceenhedenmorse|cnt\(3) & (!\Ceenhedenmorse|cnt[2]~28\)) # (!\Ceenhedenmorse|cnt\(3) & ((\Ceenhedenmorse|cnt[2]~28\) # (GND)))
-- \Ceenhedenmorse|cnt[3]~30\ = CARRY((!\Ceenhedenmorse|cnt[2]~28\) # (!\Ceenhedenmorse|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(3),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[2]~28\,
	combout => \Ceenhedenmorse|cnt[3]~29_combout\,
	cout => \Ceenhedenmorse|cnt[3]~30\);

-- Location: LCCOMB_X38_Y21_N20
\Ceenhedenmorse|cnt[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[5]~33_combout\ = (\Ceenhedenmorse|cnt\(5) & (!\Ceenhedenmorse|cnt[4]~32\)) # (!\Ceenhedenmorse|cnt\(5) & ((\Ceenhedenmorse|cnt[4]~32\) # (GND)))
-- \Ceenhedenmorse|cnt[5]~34\ = CARRY((!\Ceenhedenmorse|cnt[4]~32\) # (!\Ceenhedenmorse|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(5),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[4]~32\,
	combout => \Ceenhedenmorse|cnt[5]~33_combout\,
	cout => \Ceenhedenmorse|cnt[5]~34\);

-- Location: LCCOMB_X38_Y20_N10
\Ceenhedenmorse|cnt[16]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[16]~55_combout\ = (\Ceenhedenmorse|cnt\(16) & (\Ceenhedenmorse|cnt[15]~54\ $ (GND))) # (!\Ceenhedenmorse|cnt\(16) & (!\Ceenhedenmorse|cnt[15]~54\ & VCC))
-- \Ceenhedenmorse|cnt[16]~56\ = CARRY((\Ceenhedenmorse|cnt\(16) & !\Ceenhedenmorse|cnt[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(16),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[15]~54\,
	combout => \Ceenhedenmorse|cnt[16]~55_combout\,
	cout => \Ceenhedenmorse|cnt[16]~56\);

-- Location: LCCOMB_X38_Y20_N20
\Ceenhedenmorse|cnt[21]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[21]~65_combout\ = (\Ceenhedenmorse|cnt\(21) & (!\Ceenhedenmorse|cnt[20]~64\)) # (!\Ceenhedenmorse|cnt\(21) & ((\Ceenhedenmorse|cnt[20]~64\) # (GND)))
-- \Ceenhedenmorse|cnt[21]~66\ = CARRY((!\Ceenhedenmorse|cnt[20]~64\) # (!\Ceenhedenmorse|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(21),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[20]~64\,
	combout => \Ceenhedenmorse|cnt[21]~65_combout\,
	cout => \Ceenhedenmorse|cnt[21]~66\);

-- Location: LCCOMB_X38_Y20_N22
\Ceenhedenmorse|cnt[22]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[22]~67_combout\ = \Ceenhedenmorse|cnt[21]~66\ $ (!\Ceenhedenmorse|cnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ceenhedenmorse|cnt\(22),
	cin => \Ceenhedenmorse|cnt[21]~66\,
	combout => \Ceenhedenmorse|cnt[22]~67_combout\);

-- Location: LCFF_X38_Y18_N21
\Ctientallenmorse|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[5]~33_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(5));

-- Location: LCFF_X38_Y18_N17
\Ctientallenmorse|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[3]~29_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(3));

-- Location: LCFF_X38_Y18_N13
\Ctientallenmorse|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[1]~25_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(1));

-- Location: LCFF_X38_Y18_N11
\Ctientallenmorse|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[0]~23_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(0));

-- Location: LCCOMB_X38_Y18_N10
\Ctientallenmorse|cnt[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[0]~23_combout\ = \Ctientallenmorse|cnt\(0) $ (VCC)
-- \Ctientallenmorse|cnt[0]~24\ = CARRY(\Ctientallenmorse|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(0),
	datad => VCC,
	combout => \Ctientallenmorse|cnt[0]~23_combout\,
	cout => \Ctientallenmorse|cnt[0]~24\);

-- Location: LCCOMB_X38_Y18_N12
\Ctientallenmorse|cnt[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[1]~25_combout\ = (\Ctientallenmorse|cnt\(1) & (!\Ctientallenmorse|cnt[0]~24\)) # (!\Ctientallenmorse|cnt\(1) & ((\Ctientallenmorse|cnt[0]~24\) # (GND)))
-- \Ctientallenmorse|cnt[1]~26\ = CARRY((!\Ctientallenmorse|cnt[0]~24\) # (!\Ctientallenmorse|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(1),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[0]~24\,
	combout => \Ctientallenmorse|cnt[1]~25_combout\,
	cout => \Ctientallenmorse|cnt[1]~26\);

-- Location: LCCOMB_X38_Y18_N16
\Ctientallenmorse|cnt[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[3]~29_combout\ = (\Ctientallenmorse|cnt\(3) & (!\Ctientallenmorse|cnt[2]~28\)) # (!\Ctientallenmorse|cnt\(3) & ((\Ctientallenmorse|cnt[2]~28\) # (GND)))
-- \Ctientallenmorse|cnt[3]~30\ = CARRY((!\Ctientallenmorse|cnt[2]~28\) # (!\Ctientallenmorse|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(3),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[2]~28\,
	combout => \Ctientallenmorse|cnt[3]~29_combout\,
	cout => \Ctientallenmorse|cnt[3]~30\);

-- Location: LCCOMB_X38_Y18_N20
\Ctientallenmorse|cnt[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[5]~33_combout\ = (\Ctientallenmorse|cnt\(5) & (!\Ctientallenmorse|cnt[4]~32\)) # (!\Ctientallenmorse|cnt\(5) & ((\Ctientallenmorse|cnt[4]~32\) # (GND)))
-- \Ctientallenmorse|cnt[5]~34\ = CARRY((!\Ctientallenmorse|cnt[4]~32\) # (!\Ctientallenmorse|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(5),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[4]~32\,
	combout => \Ctientallenmorse|cnt[5]~33_combout\,
	cout => \Ctientallenmorse|cnt[5]~34\);

-- Location: LCCOMB_X38_Y18_N24
\Ctientallenmorse|cnt[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[7]~37_combout\ = (\Ctientallenmorse|cnt\(7) & (!\Ctientallenmorse|cnt[6]~36\)) # (!\Ctientallenmorse|cnt\(7) & ((\Ctientallenmorse|cnt[6]~36\) # (GND)))
-- \Ctientallenmorse|cnt[7]~38\ = CARRY((!\Ctientallenmorse|cnt[6]~36\) # (!\Ctientallenmorse|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(7),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[6]~36\,
	combout => \Ctientallenmorse|cnt[7]~37_combout\,
	cout => \Ctientallenmorse|cnt[7]~38\);

-- Location: LCCOMB_X38_Y17_N16
\Ctientallenmorse|cnt[19]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[19]~61_combout\ = (\Ctientallenmorse|cnt\(19) & (!\Ctientallenmorse|cnt[18]~60\)) # (!\Ctientallenmorse|cnt\(19) & ((\Ctientallenmorse|cnt[18]~60\) # (GND)))
-- \Ctientallenmorse|cnt[19]~62\ = CARRY((!\Ctientallenmorse|cnt[18]~60\) # (!\Ctientallenmorse|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(19),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[18]~60\,
	combout => \Ctientallenmorse|cnt[19]~61_combout\,
	cout => \Ctientallenmorse|cnt[19]~62\);

-- Location: LCCOMB_X38_Y17_N20
\Ctientallenmorse|cnt[21]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[21]~65_combout\ = (\Ctientallenmorse|cnt\(21) & (!\Ctientallenmorse|cnt[20]~64\)) # (!\Ctientallenmorse|cnt\(21) & ((\Ctientallenmorse|cnt[20]~64\) # (GND)))
-- \Ctientallenmorse|cnt[21]~66\ = CARRY((!\Ctientallenmorse|cnt[20]~64\) # (!\Ctientallenmorse|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(21),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[20]~64\,
	combout => \Ctientallenmorse|cnt[21]~65_combout\,
	cout => \Ctientallenmorse|cnt[21]~66\);

-- Location: LCFF_X39_Y18_N15
\Caudio|LRDATA[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux10~5_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(21));

-- Location: LCFF_X39_Y18_N25
\Caudio|LRDATA[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux9~5_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(22));

-- Location: LCFF_X39_Y18_N11
\Caudio|LRDATA[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux11~5_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(20));

-- Location: LCCOMB_X39_Y18_N12
\Caudio|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux13~2_combout\ = (\Caudio|Bcount\(1) & (\Caudio|LRDATA\(20) & ((\Caudio|Bcount\(0))))) # (!\Caudio|Bcount\(1) & (((\Caudio|LRDATA\(22)) # (!\Caudio|Bcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|LRDATA\(20),
	datab => \Caudio|Bcount\(1),
	datac => \Caudio|LRDATA\(22),
	datad => \Caudio|Bcount\(0),
	combout => \Caudio|Mux13~2_combout\);

-- Location: LCFF_X39_Y18_N31
\Caudio|LRDATA[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux8~4_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(23));

-- Location: LCCOMB_X39_Y18_N16
\Caudio|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux13~3_combout\ = (\Caudio|Mux13~2_combout\ & ((\Caudio|LRDATA\(23)) # ((\Caudio|Bcount\(0))))) # (!\Caudio|Mux13~2_combout\ & (((\Caudio|LRDATA\(21) & !\Caudio|Bcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Mux13~2_combout\,
	datab => \Caudio|LRDATA\(23),
	datac => \Caudio|LRDATA\(21),
	datad => \Caudio|Bcount\(0),
	combout => \Caudio|Mux13~3_combout\);

-- Location: LCFF_X40_Y18_N17
\Caudio|LRDATA[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux15~3_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(16));

-- Location: LCCOMB_X43_Y18_N24
\Ctoongenerator|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux6~0_combout\ = (\Ctoongenerator|index\(2) & ((\Ctoongenerator|index\(1) & ((!\Ctoongenerator|index\(3)))) # (!\Ctoongenerator|index\(1) & (!\Ctoongenerator|index\(0))))) # (!\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(0) & 
-- ((\Ctoongenerator|index\(1)) # (\Ctoongenerator|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux6~0_combout\);

-- Location: LCCOMB_X43_Y18_N18
\Ctoongenerator|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux6~1_combout\ = (\Ctoongenerator|index\(1) & ((\Ctoongenerator|index\(2) & ((\Ctoongenerator|index\(3)))) # (!\Ctoongenerator|index\(2) & (!\Ctoongenerator|index\(0))))) # (!\Ctoongenerator|index\(1) & (\Ctoongenerator|index\(0) $ 
-- (((!\Ctoongenerator|index\(2) & \Ctoongenerator|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux6~1_combout\);

-- Location: LCCOMB_X42_Y18_N24
\Ctoongenerator|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux6~2_combout\ = (!\Ctoongenerator|index\(4) & ((\Ctoongenerator|index\(5) & ((\Ctoongenerator|Mux6~0_combout\))) # (!\Ctoongenerator|index\(5) & (\Ctoongenerator|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(4),
	datab => \Ctoongenerator|Mux6~1_combout\,
	datac => \Ctoongenerator|index\(5),
	datad => \Ctoongenerator|Mux6~0_combout\,
	combout => \Ctoongenerator|Mux6~2_combout\);

-- Location: LCCOMB_X43_Y18_N4
\Ctoongenerator|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux7~0_combout\ = (\Ctoongenerator|index\(1) & (\Ctoongenerator|index\(2) $ (((\Ctoongenerator|index\(3)) # (!\Ctoongenerator|index\(0)))))) # (!\Ctoongenerator|index\(1) & (\Ctoongenerator|index\(3) $ (((\Ctoongenerator|index\(2) & 
-- !\Ctoongenerator|index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux7~0_combout\);

-- Location: LCCOMB_X43_Y18_N30
\Ctoongenerator|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux7~1_combout\ = (\Ctoongenerator|index\(0) & (\Ctoongenerator|index\(3) $ (((!\Ctoongenerator|index\(2)) # (!\Ctoongenerator|index\(1)))))) # (!\Ctoongenerator|index\(0) & (\Ctoongenerator|index\(2) & ((\Ctoongenerator|index\(1)) # 
-- (\Ctoongenerator|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux7~1_combout\);

-- Location: LCCOMB_X42_Y18_N20
\Ctoongenerator|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux7~2_combout\ = (!\Ctoongenerator|index\(4) & ((\Ctoongenerator|index\(5) & (\Ctoongenerator|Mux7~0_combout\)) # (!\Ctoongenerator|index\(5) & ((\Ctoongenerator|Mux7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux7~0_combout\,
	datab => \Ctoongenerator|index\(4),
	datac => \Ctoongenerator|index\(5),
	datad => \Ctoongenerator|Mux7~1_combout\,
	combout => \Ctoongenerator|Mux7~2_combout\);

-- Location: LCCOMB_X43_Y18_N16
\Ctoongenerator|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux4~0_combout\ = (\Ctoongenerator|index\(1) & (\Ctoongenerator|index\(3) $ ((!\Ctoongenerator|index\(4))))) # (!\Ctoongenerator|index\(1) & (\Ctoongenerator|index\(3) & ((!\Ctoongenerator|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(2),
	combout => \Ctoongenerator|Mux4~0_combout\);

-- Location: LCCOMB_X40_Y18_N18
\Ctoongenerator|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux10~0_combout\ = (\Ctoongenerator|index\(0) & ((\Ctoongenerator|index\(4) $ (\Ctoongenerator|index\(2))) # (!\Ctoongenerator|index\(3)))) # (!\Ctoongenerator|index\(0) & ((\Ctoongenerator|index\(4) & (\Ctoongenerator|index\(2))) # 
-- (!\Ctoongenerator|index\(4) & ((\Ctoongenerator|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(4),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux10~0_combout\);

-- Location: LCCOMB_X40_Y18_N28
\Ctoongenerator|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux10~1_combout\ = (\Ctoongenerator|index\(4) & (\Ctoongenerator|index\(3) $ (((\Ctoongenerator|index\(2) & \Ctoongenerator|index\(0)))))) # (!\Ctoongenerator|index\(4) & ((\Ctoongenerator|index\(2) & ((\Ctoongenerator|index\(0)) # 
-- (!\Ctoongenerator|index\(3)))) # (!\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(0) $ (\Ctoongenerator|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(4),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux10~1_combout\);

-- Location: LCCOMB_X40_Y18_N22
\Ctoongenerator|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux10~2_combout\ = (\Ctoongenerator|index\(2) & (!\Ctoongenerator|index\(3) & (\Ctoongenerator|index\(4) $ (!\Ctoongenerator|index\(0))))) # (!\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(4) $ ((\Ctoongenerator|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(4),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux10~2_combout\);

-- Location: LCCOMB_X40_Y18_N24
\Ctoongenerator|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux10~3_combout\ = (\Ctoongenerator|index\(1) & (((\Ctoongenerator|index\(5))) # (!\Ctoongenerator|Mux10~1_combout\))) # (!\Ctoongenerator|index\(1) & (((\Ctoongenerator|Mux10~2_combout\ & !\Ctoongenerator|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux10~1_combout\,
	datab => \Ctoongenerator|index\(1),
	datac => \Ctoongenerator|Mux10~2_combout\,
	datad => \Ctoongenerator|index\(5),
	combout => \Ctoongenerator|Mux10~3_combout\);

-- Location: LCCOMB_X40_Y18_N10
\Ctoongenerator|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux10~4_combout\ = (\Ctoongenerator|index\(0) & (\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(4) $ (\Ctoongenerator|index\(3))))) # (!\Ctoongenerator|index\(0) & (((\Ctoongenerator|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(4),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux10~4_combout\);

-- Location: LCCOMB_X39_Y18_N14
\Ctoongenerator|Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux10~5_combout\ = (\Ctoongenerator|index\(5) & ((\Ctoongenerator|Mux10~3_combout\ & (\Ctoongenerator|Mux10~4_combout\)) # (!\Ctoongenerator|Mux10~3_combout\ & ((\Ctoongenerator|Mux10~0_combout\))))) # (!\Ctoongenerator|index\(5) & 
-- (\Ctoongenerator|Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(5),
	datab => \Ctoongenerator|Mux10~3_combout\,
	datac => \Ctoongenerator|Mux10~4_combout\,
	datad => \Ctoongenerator|Mux10~0_combout\,
	combout => \Ctoongenerator|Mux10~5_combout\);

-- Location: LCCOMB_X40_Y18_N4
\Ctoongenerator|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux9~0_combout\ = (\Ctoongenerator|index\(0) & (!\Ctoongenerator|index\(4))) # (!\Ctoongenerator|index\(0) & ((\Ctoongenerator|index\(2) & ((!\Ctoongenerator|index\(3)) # (!\Ctoongenerator|index\(4)))) # (!\Ctoongenerator|index\(2) & 
-- ((\Ctoongenerator|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(4),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux9~0_combout\);

-- Location: LCCOMB_X37_Y18_N0
\Ctoongenerator|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux9~1_combout\ = (\Ctoongenerator|index\(4) & (\Ctoongenerator|index\(0) $ (((\Ctoongenerator|index\(3)) # (!\Ctoongenerator|index\(2)))))) # (!\Ctoongenerator|index\(4) & ((\Ctoongenerator|index\(2)) # ((\Ctoongenerator|index\(0) & 
-- !\Ctoongenerator|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(0),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(2),
	datad => \Ctoongenerator|index\(4),
	combout => \Ctoongenerator|Mux9~1_combout\);

-- Location: LCCOMB_X37_Y18_N2
\Ctoongenerator|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux9~2_combout\ = (\Ctoongenerator|index\(4) & ((\Ctoongenerator|index\(3) & ((\Ctoongenerator|index\(0)) # (\Ctoongenerator|index\(2)))) # (!\Ctoongenerator|index\(3) & ((!\Ctoongenerator|index\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(0),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(2),
	datad => \Ctoongenerator|index\(4),
	combout => \Ctoongenerator|Mux9~2_combout\);

-- Location: LCCOMB_X37_Y18_N12
\Ctoongenerator|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux9~3_combout\ = (\Ctoongenerator|index\(1) & (((\Ctoongenerator|index\(5)) # (\Ctoongenerator|Mux9~1_combout\)))) # (!\Ctoongenerator|index\(1) & (\Ctoongenerator|Mux9~2_combout\ & (!\Ctoongenerator|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|Mux9~2_combout\,
	datac => \Ctoongenerator|index\(5),
	datad => \Ctoongenerator|Mux9~1_combout\,
	combout => \Ctoongenerator|Mux9~3_combout\);

-- Location: LCCOMB_X37_Y18_N6
\Ctoongenerator|Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux9~4_combout\ = (\Ctoongenerator|index\(4) & (\Ctoongenerator|index\(0) $ (((\Ctoongenerator|index\(3)) # (!\Ctoongenerator|index\(2)))))) # (!\Ctoongenerator|index\(4) & (\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(4),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|index\(3),
	datad => \Ctoongenerator|index\(0),
	combout => \Ctoongenerator|Mux9~4_combout\);

-- Location: LCCOMB_X39_Y18_N24
\Ctoongenerator|Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux9~5_combout\ = (\Ctoongenerator|index\(5) & ((\Ctoongenerator|Mux9~3_combout\ & (!\Ctoongenerator|Mux9~4_combout\)) # (!\Ctoongenerator|Mux9~3_combout\ & ((\Ctoongenerator|Mux9~0_combout\))))) # (!\Ctoongenerator|index\(5) & 
-- (((\Ctoongenerator|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(5),
	datab => \Ctoongenerator|Mux9~4_combout\,
	datac => \Ctoongenerator|Mux9~3_combout\,
	datad => \Ctoongenerator|Mux9~0_combout\,
	combout => \Ctoongenerator|Mux9~5_combout\);

-- Location: LCCOMB_X38_Y19_N2
\Ctoongenerator|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux11~0_combout\ = (\Ctoongenerator|index\(4) & (((\Ctoongenerator|index\(3)) # (!\Ctoongenerator|index\(5))))) # (!\Ctoongenerator|index\(4) & ((\Ctoongenerator|index\(2)) # ((\Ctoongenerator|index\(3) & \Ctoongenerator|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(2),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(5),
	combout => \Ctoongenerator|Mux11~0_combout\);

-- Location: LCCOMB_X38_Y19_N28
\Ctoongenerator|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux11~1_combout\ = (\Ctoongenerator|index\(4) & ((\Ctoongenerator|index\(2)) # ((!\Ctoongenerator|index\(5))))) # (!\Ctoongenerator|index\(4) & ((\Ctoongenerator|index\(3) & ((!\Ctoongenerator|index\(5)))) # (!\Ctoongenerator|index\(3) & 
-- (\Ctoongenerator|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(2),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(5),
	combout => \Ctoongenerator|Mux11~1_combout\);

-- Location: LCCOMB_X38_Y19_N30
\Ctoongenerator|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux11~2_combout\ = (\Ctoongenerator|index\(5) & (\Ctoongenerator|index\(3) & (\Ctoongenerator|index\(2) $ (\Ctoongenerator|index\(4))))) # (!\Ctoongenerator|index\(5) & (\Ctoongenerator|index\(3) $ (((\Ctoongenerator|index\(2)) # 
-- (\Ctoongenerator|index\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(2),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(5),
	combout => \Ctoongenerator|Mux11~2_combout\);

-- Location: LCCOMB_X38_Y19_N8
\Ctoongenerator|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux11~3_combout\ = (\Ctoongenerator|index\(0) & (((\Ctoongenerator|index\(1)) # (\Ctoongenerator|Mux11~1_combout\)))) # (!\Ctoongenerator|index\(0) & (\Ctoongenerator|Mux11~2_combout\ & (!\Ctoongenerator|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(0),
	datab => \Ctoongenerator|Mux11~2_combout\,
	datac => \Ctoongenerator|index\(1),
	datad => \Ctoongenerator|Mux11~1_combout\,
	combout => \Ctoongenerator|Mux11~3_combout\);

-- Location: LCCOMB_X38_Y19_N26
\Ctoongenerator|Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux11~4_combout\ = (\Ctoongenerator|index\(3) & (((!\Ctoongenerator|index\(4) & !\Ctoongenerator|index\(5))) # (!\Ctoongenerator|index\(2)))) # (!\Ctoongenerator|index\(3) & (((\Ctoongenerator|index\(4) & \Ctoongenerator|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(2),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(5),
	combout => \Ctoongenerator|Mux11~4_combout\);

-- Location: LCCOMB_X39_Y18_N10
\Ctoongenerator|Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux11~5_combout\ = (\Ctoongenerator|Mux11~3_combout\ & (((\Ctoongenerator|Mux11~4_combout\) # (!\Ctoongenerator|index\(1))))) # (!\Ctoongenerator|Mux11~3_combout\ & (!\Ctoongenerator|Mux11~0_combout\ & ((\Ctoongenerator|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux11~3_combout\,
	datab => \Ctoongenerator|Mux11~0_combout\,
	datac => \Ctoongenerator|Mux11~4_combout\,
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux11~5_combout\);

-- Location: LCCOMB_X40_Y18_N6
\Ctoongenerator|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux8~0_combout\ = (\Ctoongenerator|index\(3) & (\Ctoongenerator|index\(1) & (\Ctoongenerator|index\(0) $ (\Ctoongenerator|index\(2))))) # (!\Ctoongenerator|index\(3) & ((\Ctoongenerator|index\(0)) # (\Ctoongenerator|index\(2) $ 
-- (\Ctoongenerator|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(3),
	datab => \Ctoongenerator|index\(0),
	datac => \Ctoongenerator|index\(2),
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux8~0_combout\);

-- Location: LCCOMB_X40_Y18_N0
\Ctoongenerator|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux8~1_combout\ = (\Ctoongenerator|index\(3) & ((\Ctoongenerator|index\(0) $ (!\Ctoongenerator|index\(2))) # (!\Ctoongenerator|index\(1)))) # (!\Ctoongenerator|index\(3) & (!\Ctoongenerator|index\(0) & (\Ctoongenerator|index\(2) & 
-- \Ctoongenerator|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(3),
	datab => \Ctoongenerator|index\(0),
	datac => \Ctoongenerator|index\(2),
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux8~1_combout\);

-- Location: LCCOMB_X40_Y18_N2
\Ctoongenerator|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux8~2_combout\ = (!\Ctoongenerator|index\(4) & ((\Ctoongenerator|index\(5) & (\Ctoongenerator|Mux8~0_combout\)) # (!\Ctoongenerator|index\(5) & ((\Ctoongenerator|Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux8~0_combout\,
	datab => \Ctoongenerator|index\(5),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|Mux8~1_combout\,
	combout => \Ctoongenerator|Mux8~2_combout\);

-- Location: LCCOMB_X40_Y18_N12
\Ctoongenerator|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux8~3_combout\ = (\Ctoongenerator|index\(3) & ((\Ctoongenerator|index\(0)) # ((\Ctoongenerator|index\(2))))) # (!\Ctoongenerator|index\(3) & ((\Ctoongenerator|index\(0) & (\Ctoongenerator|index\(2) & !\Ctoongenerator|index\(1))) # 
-- (!\Ctoongenerator|index\(0) & (!\Ctoongenerator|index\(2) & \Ctoongenerator|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(3),
	datab => \Ctoongenerator|index\(0),
	datac => \Ctoongenerator|index\(2),
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux8~3_combout\);

-- Location: LCCOMB_X39_Y18_N30
\Ctoongenerator|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux8~4_combout\ = (\Ctoongenerator|Mux8~2_combout\) # ((\Ctoongenerator|index\(4) & (\Ctoongenerator|Mux8~3_combout\ $ (!\Ctoongenerator|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(4),
	datab => \Ctoongenerator|Mux8~3_combout\,
	datac => \Ctoongenerator|index\(5),
	datad => \Ctoongenerator|Mux8~2_combout\,
	combout => \Ctoongenerator|Mux8~4_combout\);

-- Location: LCCOMB_X43_Y18_N10
\Ctoongenerator|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux13~3_combout\ = (\Ctoongenerator|index\(4) & (\Ctoongenerator|Mux13~1_combout\ & ((!\Ctoongenerator|Mux13~0_combout\) # (!\Ctoongenerator|index\(1))))) # (!\Ctoongenerator|index\(4) & (\Ctoongenerator|index\(1) $ 
-- (((!\Ctoongenerator|Mux13~1_combout\ & \Ctoongenerator|Mux13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|Mux13~1_combout\,
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|Mux13~0_combout\,
	combout => \Ctoongenerator|Mux13~3_combout\);

-- Location: LCCOMB_X40_Y18_N8
\Ctoongenerator|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux14~1_combout\ = (\Ctoongenerator|index\(5) & (!\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(0) $ (!\Ctoongenerator|index\(1))))) # (!\Ctoongenerator|index\(5) & ((\Ctoongenerator|index\(0) $ (\Ctoongenerator|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(2),
	datab => \Ctoongenerator|index\(5),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux14~1_combout\);

-- Location: LCCOMB_X40_Y18_N26
\Ctoongenerator|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux14~2_combout\ = (\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(5) $ ((\Ctoongenerator|index\(0))))) # (!\Ctoongenerator|index\(2) & (((\Ctoongenerator|index\(0) & !\Ctoongenerator|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(2),
	datab => \Ctoongenerator|index\(5),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux14~2_combout\);

-- Location: LCCOMB_X40_Y18_N20
\Ctoongenerator|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux14~3_combout\ = (\Ctoongenerator|index\(3) & (((\Ctoongenerator|index\(4))) # (!\Ctoongenerator|Mux14~1_combout\))) # (!\Ctoongenerator|index\(3) & (((!\Ctoongenerator|index\(4) & \Ctoongenerator|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(3),
	datab => \Ctoongenerator|Mux14~1_combout\,
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|Mux14~2_combout\,
	combout => \Ctoongenerator|Mux14~3_combout\);

-- Location: LCCOMB_X38_Y19_N14
\Ctoongenerator|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux15~0_combout\ = (\Ctoongenerator|index\(1) & ((\Ctoongenerator|index\(4) & (!\Ctoongenerator|index\(2))) # (!\Ctoongenerator|index\(4) & ((\Ctoongenerator|index\(2)) # (!\Ctoongenerator|index\(3)))))) # (!\Ctoongenerator|index\(1) & 
-- ((\Ctoongenerator|index\(4)) # ((\Ctoongenerator|index\(2) & !\Ctoongenerator|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(4),
	datac => \Ctoongenerator|index\(2),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux15~0_combout\);

-- Location: LCCOMB_X38_Y19_N24
\Ctoongenerator|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux15~1_combout\ = (!\Ctoongenerator|index\(0) & ((\Ctoongenerator|index\(5) & (\Ctoongenerator|Mux2~0_combout\)) # (!\Ctoongenerator|index\(5) & ((\Ctoongenerator|Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux2~0_combout\,
	datab => \Ctoongenerator|index\(0),
	datac => \Ctoongenerator|Mux15~0_combout\,
	datad => \Ctoongenerator|index\(5),
	combout => \Ctoongenerator|Mux15~1_combout\);

-- Location: LCCOMB_X38_Y19_N10
\Ctoongenerator|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux15~2_combout\ = (\Ctoongenerator|index\(2) & ((\Ctoongenerator|index\(3)) # ((!\Ctoongenerator|index\(1) & !\Ctoongenerator|index\(4))))) # (!\Ctoongenerator|index\(2) & ((\Ctoongenerator|index\(1) & (\Ctoongenerator|index\(4))) # 
-- (!\Ctoongenerator|index\(1) & (!\Ctoongenerator|index\(4) & \Ctoongenerator|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(4),
	datac => \Ctoongenerator|index\(2),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux15~2_combout\);

-- Location: LCCOMB_X40_Y18_N16
\Ctoongenerator|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux15~3_combout\ = (\Ctoongenerator|Mux15~1_combout\) # ((\Ctoongenerator|Mux15~2_combout\ & (\Ctoongenerator|index\(0) & !\Ctoongenerator|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux15~2_combout\,
	datab => \Ctoongenerator|Mux15~1_combout\,
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(5),
	combout => \Ctoongenerator|Mux15~3_combout\);

-- Location: LCCOMB_X38_Y19_N4
\Ctoongenerator|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux12~0_combout\ = (\Ctoongenerator|index\(5) & (\Ctoongenerator|index\(4) $ (((\Ctoongenerator|index\(2)) # (!\Ctoongenerator|index\(3)))))) # (!\Ctoongenerator|index\(5) & ((\Ctoongenerator|index\(4) & ((!\Ctoongenerator|index\(3)))) # 
-- (!\Ctoongenerator|index\(4) & (\Ctoongenerator|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(2),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(5),
	combout => \Ctoongenerator|Mux12~0_combout\);

-- Location: LCCOMB_X38_Y19_N6
\Ctoongenerator|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux12~1_combout\ = (\Ctoongenerator|index\(5) & ((\Ctoongenerator|index\(2) & ((\Ctoongenerator|index\(4)) # (!\Ctoongenerator|index\(3)))) # (!\Ctoongenerator|index\(2) & ((!\Ctoongenerator|index\(4)))))) # (!\Ctoongenerator|index\(5) & 
-- ((\Ctoongenerator|index\(3) $ (\Ctoongenerator|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(2),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(5),
	combout => \Ctoongenerator|Mux12~1_combout\);

-- Location: LCCOMB_X44_Y14_N6
\Caudio|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~0_combout\ = (\Caudio|word_count\(0) & (\Caudio|state.d2~regout\ & !\Caudio|word_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|word_count\(0),
	datac => \Caudio|state.d2~regout\,
	datad => \Caudio|word_count\(1),
	combout => \Caudio|Selector30~0_combout\);

-- Location: LCCOMB_X44_Y14_N0
\Caudio|Selector30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~7_combout\ = (\Caudio|state.d3~regout\) # ((!\Caudio|word_count\(1) & ((\Caudio|state.d4~regout\) # (\Caudio|state.d6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|word_count\(1),
	datab => \Caudio|state.d4~regout\,
	datac => \Caudio|state.d6~regout\,
	datad => \Caudio|state.d3~regout\,
	combout => \Caudio|Selector30~7_combout\);

-- Location: LCCOMB_X44_Y14_N28
\Caudio|Selector30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~8_combout\ = (\Caudio|word_count\(0) & (((\Caudio|Selector30~7_combout\)))) # (!\Caudio|word_count\(0) & (!\Caudio|word_count\(1) & ((\Caudio|state.a3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|word_count\(1),
	datab => \Caudio|Selector30~7_combout\,
	datac => \Caudio|state.a3~regout\,
	datad => \Caudio|word_count\(0),
	combout => \Caudio|Selector30~8_combout\);

-- Location: LCCOMB_X44_Y14_N14
\Caudio|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux12~0_combout\ = (\Caudio|word_count\(3)) # (\Caudio|word_count\(0) $ (((\Caudio|word_count\(2)) # (\Caudio|word_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|word_count\(2),
	datab => \Caudio|word_count\(3),
	datac => \Caudio|word_count\(1),
	datad => \Caudio|word_count\(0),
	combout => \Caudio|Mux12~0_combout\);

-- Location: LCFF_X42_Y19_N1
\Ctoongenerator|wait_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|wait_counter~0_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|wait_counter\(0));

-- Location: LCFF_X42_Y19_N7
\Ctoongenerator|wait_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Add1~2_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|wait_counter\(1));

-- Location: LCFF_X42_Y19_N9
\Ctoongenerator|wait_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Add1~4_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|wait_counter\(2));

-- Location: LCFF_X42_Y19_N11
\Ctoongenerator|wait_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Add1~6_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|wait_counter\(3));

-- Location: LCCOMB_X42_Y19_N2
\Ctoongenerator|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Equal0~0_combout\ = (!\Ctoongenerator|wait_counter\(3) & (!\Ctoongenerator|wait_counter\(0) & (!\Ctoongenerator|wait_counter\(2) & !\Ctoongenerator|wait_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|wait_counter\(3),
	datab => \Ctoongenerator|wait_counter\(0),
	datac => \Ctoongenerator|wait_counter\(2),
	datad => \Ctoongenerator|wait_counter\(1),
	combout => \Ctoongenerator|Equal0~0_combout\);

-- Location: LCFF_X42_Y19_N25
\Ctoongenerator|wait_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|wait_counter~1_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|wait_counter\(5));

-- Location: LCFF_X42_Y19_N13
\Ctoongenerator|wait_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Add1~8_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|wait_counter\(4));

-- Location: LCFF_X42_Y19_N17
\Ctoongenerator|wait_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Add1~12_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|wait_counter\(6));

-- Location: LCFF_X42_Y19_N19
\Ctoongenerator|wait_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Add1~14_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|wait_counter\(7));

-- Location: LCCOMB_X42_Y19_N26
\Ctoongenerator|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Equal0~1_combout\ = (\Ctoongenerator|wait_counter\(5) & (!\Ctoongenerator|wait_counter\(7) & (!\Ctoongenerator|wait_counter\(6) & !\Ctoongenerator|wait_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|wait_counter\(5),
	datab => \Ctoongenerator|wait_counter\(7),
	datac => \Ctoongenerator|wait_counter\(6),
	datad => \Ctoongenerator|wait_counter\(4),
	combout => \Ctoongenerator|Equal0~1_combout\);

-- Location: LCFF_X38_Y19_N23
\Ctoongenerator|wait_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|wait_counter~2_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|wait_counter\(8));

-- Location: LCFF_X42_Y19_N29
\Ctoongenerator|wait_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|wait_counter~3_combout\,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|wait_counter\(9));

-- Location: LCCOMB_X42_Y19_N30
\Ctoongenerator|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Equal0~2_combout\ = (\Ctoongenerator|wait_counter\(8) & (\Ctoongenerator|Equal0~1_combout\ & (\Ctoongenerator|wait_counter\(9) & \Ctoongenerator|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|wait_counter\(8),
	datab => \Ctoongenerator|Equal0~1_combout\,
	datac => \Ctoongenerator|wait_counter\(9),
	datad => \Ctoongenerator|Equal0~0_combout\,
	combout => \Ctoongenerator|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y22_N30
\Ceenhedenmorse|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux14~2_combout\ = (\Ceenheden|output\(2) & (((!\Ceenheden|output\(3))))) # (!\Ceenheden|output\(2) & ((\Ceenheden|output\(1) & ((!\Ceenheden|output\(3)))) # (!\Ceenheden|output\(1) & (\Ceenheden|output\(0) & \Ceenheden|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(0),
	datab => \Ceenheden|output\(2),
	datac => \Ceenheden|output\(1),
	datad => \Ceenheden|output\(3),
	combout => \Ceenhedenmorse|Mux14~2_combout\);

-- Location: LCCOMB_X40_Y19_N0
\Ctientallenmorse|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux14~1_combout\ = (\Ctientallen|output\(0) & (((!\Ctientallen|output\(3))))) # (!\Ctientallen|output\(0) & ((\Ctientallen|output\(2) & ((!\Ctientallen|output\(3)))) # (!\Ctientallen|output\(2) & (!\Ctientallen|output\(1) & 
-- \Ctientallen|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(0),
	datac => \Ctientallen|output\(2),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenmorse|Mux14~1_combout\);

-- Location: LCCOMB_X40_Y19_N18
\Ctientallenmorse|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux14~2_combout\ = (\Ctientallen|output\(1) & (((!\Ctientallen|output\(3))))) # (!\Ctientallen|output\(1) & ((\Ctientallen|output\(2) & ((!\Ctientallen|output\(3)))) # (!\Ctientallen|output\(2) & (\Ctientallen|output\(0) & 
-- \Ctientallen|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(0),
	datac => \Ctientallen|output\(2),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenmorse|Mux14~2_combout\);

-- Location: LCCOMB_X39_Y19_N6
\Ctientallenmorse|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux14~3_combout\ = (\Ctientallenmorse|Mux14~2_combout\ & ((\Ctientallenmorse|index\(0)) # ((\Ctientallenmorse|Mux14~1_combout\) # (!\Ctientallenmorse|index[2]~head_lut_combout\)))) # (!\Ctientallenmorse|Mux14~2_combout\ & 
-- (((\Ctientallenmorse|Mux14~1_combout\ & !\Ctientallenmorse|index[2]~head_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|index\(0),
	datab => \Ctientallenmorse|Mux14~2_combout\,
	datac => \Ctientallenmorse|Mux14~1_combout\,
	datad => \Ctientallenmorse|index[2]~head_lut_combout\,
	combout => \Ctientallenmorse|Mux14~3_combout\);

-- Location: LCCOMB_X40_Y19_N4
\Ctientallenmorse|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux4~0_combout\ = (\Ctientallen|output\(1) & (((!\Ctientallen|output\(3))))) # (!\Ctientallen|output\(1) & ((\Ctientallen|output\(2) & ((!\Ctientallen|output\(3)))) # (!\Ctientallen|output\(2) & (!\Ctientallen|output\(0) & 
-- \Ctientallen|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(0),
	datac => \Ctientallen|output\(2),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenmorse|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y14_N14
\Caudio|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector0~0_combout\ = (!\Caudio|sck0~regout\ & (\Caudio|state.d_ack~regout\ & \Caudio|sck1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|sck0~regout\,
	datac => \Caudio|state.d_ack~regout\,
	datad => \Caudio|sck1~regout\,
	combout => \Caudio|Selector0~0_combout\);

-- Location: LCCOMB_X42_Y19_N0
\Ctoongenerator|wait_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|wait_counter~0_combout\ = (\Ctoongenerator|Add1~0_combout\ & !\Ctoongenerator|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctoongenerator|Add1~0_combout\,
	datad => \Ctoongenerator|Equal0~2_combout\,
	combout => \Ctoongenerator|wait_counter~0_combout\);

-- Location: LCCOMB_X39_Y19_N30
\comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\comb~2_combout\) # ((\comb~5_combout\) # (\comb~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~2_combout\,
	datac => \comb~5_combout\,
	datad => \comb~6_combout\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X42_Y19_N24
\Ctoongenerator|wait_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|wait_counter~1_combout\ = (\Ctoongenerator|Add1~10_combout\ & !\Ctoongenerator|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctoongenerator|Add1~10_combout\,
	datad => \Ctoongenerator|Equal0~2_combout\,
	combout => \Ctoongenerator|wait_counter~1_combout\);

-- Location: LCCOMB_X38_Y19_N22
\Ctoongenerator|wait_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|wait_counter~2_combout\ = (!\Ctoongenerator|Equal0~2_combout\ & \Ctoongenerator|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctoongenerator|Equal0~2_combout\,
	datad => \Ctoongenerator|Add1~16_combout\,
	combout => \Ctoongenerator|wait_counter~2_combout\);

-- Location: LCCOMB_X42_Y19_N28
\Ctoongenerator|wait_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|wait_counter~3_combout\ = (\Ctoongenerator|Add1~18_combout\ & !\Ctoongenerator|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctoongenerator|Add1~18_combout\,
	datad => \Ctoongenerator|Equal0~2_combout\,
	combout => \Ctoongenerator|wait_counter~3_combout\);

-- Location: LCFF_X40_Y17_N15
\Ctientallenmorse|index[1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|index[1]~data_lut_combout\,
	aclr => \Ctientallenmorse|index[2]~clear_lut_combout\,
	ena => \Ctientallenmorse|index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|index[1]~_emulated_regout\);

-- Location: LCCOMB_X40_Y17_N16
\Ctientallenmorse|index[1]~tail_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[1]~tail_lut_combout\ = \Ctientallenmorse|index[1]~_emulated_regout\ $ (\Ctientallenmorse|index[1]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctientallenmorse|index[1]~_emulated_regout\,
	datad => \Ctientallenmorse|index[1]~latch_combout\,
	combout => \Ctientallenmorse|index[1]~tail_lut_combout\);

-- Location: LCCOMB_X40_Y17_N14
\Ctientallenmorse|index[1]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[1]~data_lut_combout\ = \Ctientallenmorse|Add1~0_combout\ $ (\Ctientallenmorse|index[1]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctientallenmorse|Add1~0_combout\,
	datad => \Ctientallenmorse|index[1]~latch_combout\,
	combout => \Ctientallenmorse|index[1]~data_lut_combout\);

-- Location: LCCOMB_X39_Y17_N26
\Ctientallenmorse|index[1]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[1]~latch_combout\ = (\button_reset~combout\ & ((GLOBAL(\Ctientallenmorse|index[3]~7clkctrl_outclk\) & (\Ctientallenmorse|Mux2~0_combout\)) # (!GLOBAL(\Ctientallenmorse|index[3]~7clkctrl_outclk\) & 
-- ((\Ctientallenmorse|index[1]~latch_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \Ctientallenmorse|Mux2~0_combout\,
	datac => \Ctientallenmorse|index[1]~latch_combout\,
	datad => \Ctientallenmorse|index[3]~7clkctrl_outclk\,
	combout => \Ctientallenmorse|index[1]~latch_combout\);

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

-- Location: CLKCTRL_G8
\Ceenheden|over~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Ceenheden|over~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Ceenheden|over~clkctrl_outclk\);

-- Location: CLKCTRL_G5
\Caudio|I2C_SCLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Caudio|I2C_SCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Caudio|I2C_SCLK~clkctrl_outclk\);

-- Location: CLKCTRL_G11
\Cknop_naar_puls|output~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Cknop_naar_puls|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Cknop_naar_puls|output~clkctrl_outclk\);

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

-- Location: LCCOMB_X46_Y14_N2
\Caudio|i2c_counter[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|i2c_counter[0]~27_combout\ = !\Caudio|i2c_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Caudio|i2c_counter\(0),
	combout => \Caudio|i2c_counter[0]~27_combout\);

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

-- Location: LCFF_X46_Y14_N3
\Caudio|i2c_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|i2c_counter[0]~27_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|i2c_counter\(0));

-- Location: LCCOMB_X46_Y14_N14
\Caudio|i2c_counter[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|i2c_counter[2]~11_combout\ = (\Caudio|i2c_counter\(2) & (!\Caudio|i2c_counter[1]~10\)) # (!\Caudio|i2c_counter\(2) & ((\Caudio|i2c_counter[1]~10\) # (GND)))
-- \Caudio|i2c_counter[2]~12\ = CARRY((!\Caudio|i2c_counter[1]~10\) # (!\Caudio|i2c_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|i2c_counter\(2),
	datad => VCC,
	cin => \Caudio|i2c_counter[1]~10\,
	combout => \Caudio|i2c_counter[2]~11_combout\,
	cout => \Caudio|i2c_counter[2]~12\);

-- Location: LCFF_X46_Y14_N15
\Caudio|i2c_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|i2c_counter[2]~11_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|i2c_counter\(2));

-- Location: LCCOMB_X46_Y14_N18
\Caudio|i2c_counter[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|i2c_counter[4]~15_combout\ = (\Caudio|i2c_counter\(4) & (!\Caudio|i2c_counter[3]~14\)) # (!\Caudio|i2c_counter\(4) & ((\Caudio|i2c_counter[3]~14\) # (GND)))
-- \Caudio|i2c_counter[4]~16\ = CARRY((!\Caudio|i2c_counter[3]~14\) # (!\Caudio|i2c_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|i2c_counter\(4),
	datad => VCC,
	cin => \Caudio|i2c_counter[3]~14\,
	combout => \Caudio|i2c_counter[4]~15_combout\,
	cout => \Caudio|i2c_counter[4]~16\);

-- Location: LCFF_X46_Y14_N19
\Caudio|i2c_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|i2c_counter[4]~15_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|i2c_counter\(4));

-- Location: LCCOMB_X46_Y14_N22
\Caudio|i2c_counter[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|i2c_counter[6]~19_combout\ = (\Caudio|i2c_counter\(6) & (!\Caudio|i2c_counter[5]~18\)) # (!\Caudio|i2c_counter\(6) & ((\Caudio|i2c_counter[5]~18\) # (GND)))
-- \Caudio|i2c_counter[6]~20\ = CARRY((!\Caudio|i2c_counter[5]~18\) # (!\Caudio|i2c_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|i2c_counter\(6),
	datad => VCC,
	cin => \Caudio|i2c_counter[5]~18\,
	combout => \Caudio|i2c_counter[6]~19_combout\,
	cout => \Caudio|i2c_counter[6]~20\);

-- Location: LCFF_X46_Y14_N23
\Caudio|i2c_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|i2c_counter[6]~19_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|i2c_counter\(6));

-- Location: LCCOMB_X46_Y14_N26
\Caudio|i2c_counter[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|i2c_counter[8]~23_combout\ = (\Caudio|i2c_counter\(8) & (!\Caudio|i2c_counter[7]~22\)) # (!\Caudio|i2c_counter\(8) & ((\Caudio|i2c_counter[7]~22\) # (GND)))
-- \Caudio|i2c_counter[8]~24\ = CARRY((!\Caudio|i2c_counter[7]~22\) # (!\Caudio|i2c_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|i2c_counter\(8),
	datad => VCC,
	cin => \Caudio|i2c_counter[7]~22\,
	combout => \Caudio|i2c_counter[8]~23_combout\,
	cout => \Caudio|i2c_counter[8]~24\);

-- Location: LCFF_X46_Y14_N27
\Caudio|i2c_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|i2c_counter[8]~23_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|i2c_counter\(8));

-- Location: LCCOMB_X46_Y14_N28
\Caudio|i2c_counter[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|i2c_counter[9]~25_combout\ = \Caudio|i2c_counter[8]~24\ $ (!\Caudio|i2c_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|i2c_counter\(9),
	cin => \Caudio|i2c_counter[8]~24\,
	combout => \Caudio|i2c_counter[9]~25_combout\);

-- Location: LCFF_X46_Y14_N29
\Caudio|i2c_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|i2c_counter[9]~25_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|i2c_counter\(9));

-- Location: LCCOMB_X46_Y14_N30
\Caudio|I2C_SCLK\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|I2C_SCLK~combout\ = LCELL((\Caudio|state.b_end~regout\) # ((\Caudio|state.b_stop1~regout\) # (\Caudio|i2c_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|state.b_end~regout\,
	datac => \Caudio|state.b_stop1~regout\,
	datad => \Caudio|i2c_counter\(9),
	combout => \Caudio|I2C_SCLK~combout\);

-- Location: LCCOMB_X44_Y14_N4
\Caudio|word_count[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|word_count[0]~2_combout\ = !\Caudio|word_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Caudio|word_count\(0),
	combout => \Caudio|word_count[0]~2_combout\);

-- Location: LCFF_X46_Y14_N31
\Caudio|sck0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|I2C_SCLK~combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|sck0~regout\);

-- Location: LCFF_X45_Y14_N29
\Caudio|sck1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|sck0~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|sck1~regout\);

-- Location: LCCOMB_X45_Y14_N24
\Caudio|next_state_i2c~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|next_state_i2c~0_combout\ = (\Caudio|sck1~regout\ & !\Caudio|sck0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|sck1~regout\,
	datad => \Caudio|sck0~regout\,
	combout => \Caudio|next_state_i2c~0_combout\);

-- Location: LCCOMB_X47_Y14_N6
\Caudio|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector1~0_combout\ = (\Caudio|state.initialize~regout\ & (!\Caudio|next_state_i2c~0_combout\ & (\Caudio|state.start~regout\))) # (!\Caudio|state.initialize~regout\ & ((\Caudio|I2C_SCLK~combout\) # ((!\Caudio|next_state_i2c~0_combout\ & 
-- \Caudio|state.start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|state.initialize~regout\,
	datab => \Caudio|next_state_i2c~0_combout\,
	datac => \Caudio|state.start~regout\,
	datad => \Caudio|I2C_SCLK~combout\,
	combout => \Caudio|Selector1~0_combout\);

-- Location: LCFF_X47_Y14_N7
\Caudio|state.start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|Selector1~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.start~regout\);

-- Location: LCCOMB_X47_Y14_N14
\Caudio|state.b0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.b0~feeder_combout\ = \Caudio|state.start~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.start~regout\,
	combout => \Caudio|state.b0~feeder_combout\);

-- Location: LCFF_X47_Y14_N15
\Caudio|state.b0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.b0~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.b0~regout\);

-- Location: LCCOMB_X47_Y14_N8
\Caudio|state.b1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.b1~feeder_combout\ = \Caudio|state.b0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.b0~regout\,
	combout => \Caudio|state.b1~feeder_combout\);

-- Location: LCFF_X47_Y14_N9
\Caudio|state.b1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.b1~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.b1~regout\);

-- Location: LCFF_X47_Y14_N29
\Caudio|state.b2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.b1~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.b2~regout\);

-- Location: LCFF_X47_Y14_N19
\Caudio|state.b3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.b2~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.b3~regout\);

-- Location: LCCOMB_X47_Y14_N24
\Caudio|state.b4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.b4~feeder_combout\ = \Caudio|state.b3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.b3~regout\,
	combout => \Caudio|state.b4~feeder_combout\);

-- Location: LCFF_X47_Y14_N25
\Caudio|state.b4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.b4~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.b4~regout\);

-- Location: LCCOMB_X47_Y14_N12
\Caudio|state.b5~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.b5~feeder_combout\ = \Caudio|state.b4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.b4~regout\,
	combout => \Caudio|state.b5~feeder_combout\);

-- Location: LCFF_X47_Y14_N13
\Caudio|state.b5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.b5~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.b5~regout\);

-- Location: LCCOMB_X47_Y14_N22
\Caudio|state.b6~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.b6~feeder_combout\ = \Caudio|state.b5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.b5~regout\,
	combout => \Caudio|state.b6~feeder_combout\);

-- Location: LCFF_X47_Y14_N23
\Caudio|state.b6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.b6~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.b6~regout\);

-- Location: LCCOMB_X47_Y14_N16
\Caudio|state.b7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.b7~feeder_combout\ = \Caudio|state.b6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.b6~regout\,
	combout => \Caudio|state.b7~feeder_combout\);

-- Location: LCFF_X47_Y14_N17
\Caudio|state.b7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.b7~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.b7~regout\);

-- Location: LCFF_X47_Y14_N1
\Caudio|state.b_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.b7~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.b_ack~regout\);

-- Location: LCCOMB_X47_Y14_N10
\Caudio|state.a0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.a0~feeder_combout\ = \Caudio|state.b_ack~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.b_ack~regout\,
	combout => \Caudio|state.a0~feeder_combout\);

-- Location: LCFF_X47_Y14_N11
\Caudio|state.a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.a0~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.a0~regout\);

-- Location: LCCOMB_X47_Y14_N2
\Caudio|state.a1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.a1~feeder_combout\ = \Caudio|state.a0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.a0~regout\,
	combout => \Caudio|state.a1~feeder_combout\);

-- Location: LCFF_X47_Y14_N3
\Caudio|state.a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.a1~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.a1~regout\);

-- Location: LCCOMB_X47_Y14_N26
\Caudio|state.a2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.a2~feeder_combout\ = \Caudio|state.a1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.a1~regout\,
	combout => \Caudio|state.a2~feeder_combout\);

-- Location: LCFF_X47_Y14_N27
\Caudio|state.a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.a2~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.a2~regout\);

-- Location: LCFF_X44_Y14_N23
\Caudio|state.a3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.a2~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.a3~regout\);

-- Location: LCCOMB_X45_Y14_N0
\Caudio|state.a4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.a4~feeder_combout\ = \Caudio|state.a3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.a3~regout\,
	combout => \Caudio|state.a4~feeder_combout\);

-- Location: LCFF_X45_Y14_N1
\Caudio|state.a4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.a4~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.a4~regout\);

-- Location: LCFF_X44_Y14_N17
\Caudio|state.a5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.a4~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.a5~regout\);

-- Location: LCFF_X44_Y14_N21
\Caudio|state.a6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.a5~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.a6~regout\);

-- Location: LCCOMB_X45_Y14_N10
\Caudio|state.a7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.a7~feeder_combout\ = \Caudio|state.a6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.a6~regout\,
	combout => \Caudio|state.a7~feeder_combout\);

-- Location: LCFF_X45_Y14_N11
\Caudio|state.a7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.a7~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.a7~regout\);

-- Location: LCCOMB_X47_Y14_N30
\Caudio|state.a_ack~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.a_ack~feeder_combout\ = \Caudio|state.a7~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.a7~regout\,
	combout => \Caudio|state.a_ack~feeder_combout\);

-- Location: LCFF_X47_Y14_N31
\Caudio|state.a_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.a_ack~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.a_ack~regout\);

-- Location: LCCOMB_X47_Y14_N20
\Caudio|state.d0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.d0~feeder_combout\ = \Caudio|state.a_ack~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.a_ack~regout\,
	combout => \Caudio|state.d0~feeder_combout\);

-- Location: LCFF_X47_Y14_N21
\Caudio|state.d0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.d0~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.d0~regout\);

-- Location: LCFF_X45_Y14_N23
\Caudio|state.d1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.d0~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.d1~regout\);

-- Location: LCFF_X44_Y14_N7
\Caudio|state.d2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.d1~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.d2~regout\);

-- Location: LCFF_X44_Y14_N3
\Caudio|state.d3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.d2~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.d3~regout\);

-- Location: LCCOMB_X45_Y14_N4
\Caudio|state.d4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|state.d4~feeder_combout\ = \Caudio|state.d3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|state.d3~regout\,
	combout => \Caudio|state.d4~feeder_combout\);

-- Location: LCFF_X45_Y14_N5
\Caudio|state.d4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|state.d4~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.d4~regout\);

-- Location: LCFF_X44_Y14_N27
\Caudio|state.d5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.d4~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.d5~regout\);

-- Location: LCFF_X44_Y14_N1
\Caudio|state.d6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.d5~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.d6~regout\);

-- Location: LCFF_X45_Y14_N13
\Caudio|state.d7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.d6~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.d7~regout\);

-- Location: LCFF_X44_Y14_N13
\Caudio|state.d_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|state.d7~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	ena => \Caudio|next_state_i2c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.d_ack~regout\);

-- Location: LCFF_X44_Y14_N5
\Caudio|word_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Caudio|ALT_INV_I2C_SCLK~clkctrl_outclk\,
	datain => \Caudio|word_count[0]~2_combout\,
	aclr => \Caudio|word_counter~0_combout\,
	ena => \Caudio|state.d_ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|word_count\(0));

-- Location: LCCOMB_X44_Y14_N30
\Caudio|word_count[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|word_count[3]~0_combout\ = (\Caudio|word_count\(1) & (\Caudio|word_count\(2) & (\Caudio|word_count\(0) & \Caudio|state.d_ack~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|word_count\(1),
	datab => \Caudio|word_count\(2),
	datac => \Caudio|word_count\(0),
	datad => \Caudio|state.d_ack~regout\,
	combout => \Caudio|word_count[3]~0_combout\);

-- Location: LCCOMB_X43_Y14_N16
\Caudio|word_count[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|word_count[3]~1_combout\ = \Caudio|word_count\(3) $ (\Caudio|word_count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Caudio|word_count\(3),
	datad => \Caudio|word_count[3]~0_combout\,
	combout => \Caudio|word_count[3]~1_combout\);

-- Location: LCFF_X43_Y14_N17
\Caudio|word_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Caudio|ALT_INV_I2C_SCLK~clkctrl_outclk\,
	datain => \Caudio|word_count[3]~1_combout\,
	aclr => \Caudio|word_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|word_count\(3));

-- Location: LCCOMB_X44_Y14_N18
\Caudio|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Equal0~0_combout\ = (!\Caudio|word_count\(1) & (\Caudio|word_count\(0) & (!\Caudio|word_count\(2) & \Caudio|word_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|word_count\(1),
	datab => \Caudio|word_count\(0),
	datac => \Caudio|word_count\(2),
	datad => \Caudio|word_count\(3),
	combout => \Caudio|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y14_N10
\Caudio|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector29~0_combout\ = (\Caudio|Selector0~0_combout\ & ((\Caudio|Equal0~0_combout\) # ((!\Caudio|I2C_SCLK~combout\ & \Caudio|state.b_stop0~regout\)))) # (!\Caudio|Selector0~0_combout\ & (!\Caudio|I2C_SCLK~combout\ & 
-- (\Caudio|state.b_stop0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Selector0~0_combout\,
	datab => \Caudio|I2C_SCLK~combout\,
	datac => \Caudio|state.b_stop0~regout\,
	datad => \Caudio|Equal0~0_combout\,
	combout => \Caudio|Selector29~0_combout\);

-- Location: LCFF_X46_Y14_N11
\Caudio|state.b_stop0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|Selector29~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.b_stop0~regout\);

-- Location: LCCOMB_X46_Y14_N8
\Caudio|next_state.b_stop1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|next_state.b_stop1~0_combout\ = (\Caudio|I2C_SCLK~combout\ & \Caudio|state.b_stop0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|I2C_SCLK~combout\,
	datad => \Caudio|state.b_stop0~regout\,
	combout => \Caudio|next_state.b_stop1~0_combout\);

-- Location: LCFF_X46_Y14_N9
\Caudio|state.b_stop1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \Caudio|next_state.b_stop1~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.b_stop1~regout\);

-- Location: LCCOMB_X46_Y14_N4
\Caudio|I2C_SCLK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|I2C_SCLK~0_combout\ = (\Caudio|state.b_stop1~regout\) # (\Caudio|state.b_end~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|state.b_stop1~regout\,
	datac => \Caudio|state.b_end~regout\,
	combout => \Caudio|I2C_SCLK~0_combout\);

-- Location: LCFF_X46_Y14_N5
\Caudio|state.b_end\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \Caudio|I2C_SCLK~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.b_end~regout\);

-- Location: LCCOMB_X46_Y14_N6
\Caudio|word_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|word_counter~0_combout\ = (\Caudio|state.b_end~regout\) # (!\button_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Caudio|state.b_end~regout\,
	datad => \button_reset~combout\,
	combout => \Caudio|word_counter~0_combout\);

-- Location: LCFF_X44_Y14_N9
\Caudio|word_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Caudio|ALT_INV_I2C_SCLK~clkctrl_outclk\,
	sdata => \Caudio|Mux1~0_combout\,
	aclr => \Caudio|word_counter~0_combout\,
	sload => VCC,
	ena => \Caudio|state.d_ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|word_count\(2));

-- Location: LCCOMB_X44_Y14_N12
\Caudio|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux1~0_combout\ = \Caudio|word_count\(2) $ (((\Caudio|word_count\(1) & \Caudio|word_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|word_count\(1),
	datab => \Caudio|word_count\(2),
	datad => \Caudio|word_count\(0),
	combout => \Caudio|Mux1~0_combout\);

-- Location: LCCOMB_X44_Y14_N24
\Caudio|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux10~0_combout\ = \Caudio|word_count\(0) $ (\Caudio|word_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|word_count\(0),
	datac => \Caudio|word_count\(1),
	combout => \Caudio|Mux10~0_combout\);

-- Location: LCFF_X44_Y14_N25
\Caudio|word_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Caudio|ALT_INV_I2C_SCLK~clkctrl_outclk\,
	datain => \Caudio|Mux10~0_combout\,
	aclr => \Caudio|word_counter~0_combout\,
	ena => \Caudio|state.d_ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|word_count\(1));

-- Location: LCCOMB_X44_Y14_N8
\Caudio|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux6~0_combout\ = \Caudio|word_count\(1) $ (((\Caudio|word_count\(2) & \Caudio|word_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|word_count\(1),
	datac => \Caudio|word_count\(2),
	datad => \Caudio|word_count\(0),
	combout => \Caudio|Mux6~0_combout\);

-- Location: LCCOMB_X45_Y14_N22
\Caudio|Selector30~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~11_combout\ = (\Caudio|state.a4~regout\ & ((\Caudio|Mux1~0_combout\) # ((\Caudio|state.d1~regout\ & \Caudio|Mux6~0_combout\)))) # (!\Caudio|state.a4~regout\ & (((\Caudio|state.d1~regout\ & \Caudio|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|state.a4~regout\,
	datab => \Caudio|Mux1~0_combout\,
	datac => \Caudio|state.d1~regout\,
	datad => \Caudio|Mux6~0_combout\,
	combout => \Caudio|Selector30~11_combout\);

-- Location: LCCOMB_X46_Y14_N0
\Caudio|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector0~1_combout\ = (\Caudio|Selector0~0_combout\ & (\Caudio|Equal0~0_combout\ & ((\Caudio|I2C_SCLK~combout\) # (\Caudio|state.initialize~regout\)))) # (!\Caudio|Selector0~0_combout\ & ((\Caudio|I2C_SCLK~combout\) # 
-- ((\Caudio|state.initialize~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Selector0~0_combout\,
	datab => \Caudio|I2C_SCLK~combout\,
	datac => \Caudio|state.initialize~regout\,
	datad => \Caudio|Equal0~0_combout\,
	combout => \Caudio|Selector0~1_combout\);

-- Location: LCFF_X46_Y14_N1
\Caudio|state.initialize\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|Selector0~1_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|state.initialize~regout\);

-- Location: LCCOMB_X45_Y14_N18
\Caudio|Selector30~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~12_combout\ = ((\Caudio|state.a6~regout\ & (!\Caudio|word_count\(0) & !\Caudio|word_count\(1)))) # (!\Caudio|state.initialize~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|state.a6~regout\,
	datab => \Caudio|state.initialize~regout\,
	datac => \Caudio|word_count\(0),
	datad => \Caudio|word_count\(1),
	combout => \Caudio|Selector30~12_combout\);

-- Location: LCCOMB_X45_Y14_N12
\Caudio|Selector30~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~13_combout\ = (\Caudio|I2C_SCLK~0_combout\) # ((\Caudio|Selector30~12_combout\) # ((\Caudio|Mux12~0_combout\ & \Caudio|state.d7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Mux12~0_combout\,
	datab => \Caudio|I2C_SCLK~0_combout\,
	datac => \Caudio|state.d7~regout\,
	datad => \Caudio|Selector30~12_combout\,
	combout => \Caudio|Selector30~13_combout\);

-- Location: LCCOMB_X44_Y14_N22
\Caudio|Selector30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~1_combout\ = (\Caudio|word_count\(1) & ((\Caudio|word_count\(0) & ((\Caudio|state.a3~regout\))) # (!\Caudio|word_count\(0) & (\Caudio|state.a5~regout\)))) # (!\Caudio|word_count\(1) & (\Caudio|state.a5~regout\ & 
-- ((\Caudio|word_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|state.a5~regout\,
	datab => \Caudio|word_count\(1),
	datac => \Caudio|state.a3~regout\,
	datad => \Caudio|word_count\(0),
	combout => \Caudio|Selector30~1_combout\);

-- Location: LCCOMB_X44_Y14_N20
\Caudio|Selector30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~2_combout\ = (\Caudio|state.a6~regout\) # ((\Caudio|word_count\(1) & ((\Caudio|state.d6~regout\))) # (!\Caudio|word_count\(1) & (\Caudio|state.d5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|state.d5~regout\,
	datab => \Caudio|word_count\(1),
	datac => \Caudio|state.a6~regout\,
	datad => \Caudio|state.d6~regout\,
	combout => \Caudio|Selector30~2_combout\);

-- Location: LCCOMB_X44_Y14_N10
\Caudio|Selector30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~3_combout\ = (\Caudio|Selector30~0_combout\) # ((\Caudio|Selector30~1_combout\) # ((\Caudio|Selector30~2_combout\ & !\Caudio|word_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Selector30~0_combout\,
	datab => \Caudio|Selector30~1_combout\,
	datac => \Caudio|Selector30~2_combout\,
	datad => \Caudio|word_count\(0),
	combout => \Caudio|Selector30~3_combout\);

-- Location: LCCOMB_X44_Y14_N16
\Caudio|Selector30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~5_combout\ = (\Caudio|state.d0~regout\) # ((!\Caudio|word_count\(0) & ((\Caudio|state.d2~regout\) # (\Caudio|state.a5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|state.d0~regout\,
	datab => \Caudio|state.d2~regout\,
	datac => \Caudio|state.a5~regout\,
	datad => \Caudio|word_count\(0),
	combout => \Caudio|Selector30~5_combout\);

-- Location: LCCOMB_X44_Y14_N26
\Caudio|Selector30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~4_combout\ = (\Caudio|state.a7~regout\ & (\Caudio|word_count\(1) $ (((\Caudio|word_count\(0)))))) # (!\Caudio|state.a7~regout\ & (\Caudio|state.d5~regout\ & (\Caudio|word_count\(1) $ (\Caudio|word_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|word_count\(1),
	datab => \Caudio|state.a7~regout\,
	datac => \Caudio|state.d5~regout\,
	datad => \Caudio|word_count\(0),
	combout => \Caudio|Selector30~4_combout\);

-- Location: LCCOMB_X44_Y14_N2
\Caudio|Selector30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~6_combout\ = (\Caudio|Selector30~4_combout\) # ((\Caudio|word_count\(1) & ((\Caudio|Selector30~5_combout\) # (\Caudio|state.d3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|word_count\(1),
	datab => \Caudio|Selector30~5_combout\,
	datac => \Caudio|state.d3~regout\,
	datad => \Caudio|Selector30~4_combout\,
	combout => \Caudio|Selector30~6_combout\);

-- Location: LCCOMB_X44_Y15_N16
\Caudio|Selector30~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~9_combout\ = (\Caudio|word_count\(2) & (((\Caudio|Selector30~3_combout\)))) # (!\Caudio|word_count\(2) & ((\Caudio|Selector30~8_combout\) # ((\Caudio|Selector30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Selector30~8_combout\,
	datab => \Caudio|word_count\(2),
	datac => \Caudio|Selector30~3_combout\,
	datad => \Caudio|Selector30~6_combout\,
	combout => \Caudio|Selector30~9_combout\);

-- Location: LCCOMB_X47_Y14_N28
\Caudio|Selector30~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~10_combout\ = (\Caudio|state.b5~regout\) # ((\Caudio|state.b2~regout\) # (\Caudio|state.b3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|state.b5~regout\,
	datac => \Caudio|state.b2~regout\,
	datad => \Caudio|state.b3~regout\,
	combout => \Caudio|Selector30~10_combout\);

-- Location: LCCOMB_X47_Y14_N4
\Caudio|Selector30~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Selector30~14_combout\ = (\Caudio|Selector30~11_combout\) # ((\Caudio|Selector30~13_combout\) # ((\Caudio|Selector30~9_combout\) # (\Caudio|Selector30~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Selector30~11_combout\,
	datab => \Caudio|Selector30~13_combout\,
	datac => \Caudio|Selector30~9_combout\,
	datad => \Caudio|Selector30~10_combout\,
	combout => \Caudio|Selector30~14_combout\);

-- Location: LCCOMB_X47_Y14_N0
\Caudio|WideOr32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|WideOr32~0_combout\ = (!\Caudio|state.d_ack~regout\ & (!\Caudio|state.b_ack~regout\ & !\Caudio|state.a_ack~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|state.d_ack~regout\,
	datac => \Caudio|state.b_ack~regout\,
	datad => \Caudio|state.a_ack~regout\,
	combout => \Caudio|WideOr32~0_combout\);

-- Location: LCCOMB_X39_Y17_N2
\Ctientallen|output[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallen|output[2]~1_combout\ = \Ctientallen|output\(2) $ (((\Ctientallen|output\(0) & \Ctientallen|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(0),
	datac => \Ctientallen|output\(2),
	datad => \Ctientallen|output\(1),
	combout => \Ctientallen|output[2]~1_combout\);

-- Location: LCFF_X39_Y17_N3
\Ctientallen|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Ceenheden|over~clkctrl_outclk\,
	datain => \Ctientallen|output[2]~1_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallen|output\(2));

-- Location: LCCOMB_X39_Y17_N20
\Ctientallen|output[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallen|output[0]~3_combout\ = !\Ctientallen|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctientallen|output\(0),
	combout => \Ctientallen|output[0]~3_combout\);

-- Location: LCFF_X39_Y17_N21
\Ctientallen|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Ceenheden|over~clkctrl_outclk\,
	datain => \Ctientallen|output[0]~3_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallen|output\(0));

-- Location: LCCOMB_X39_Y17_N28
\Ctientallen|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallen|output~2_combout\ = (\Ctientallen|output\(1) & (\Ctientallen|output\(3) $ (((\Ctientallen|output\(2) & \Ctientallen|output\(0)))))) # (!\Ctientallen|output\(1) & (\Ctientallen|output\(3) & ((\Ctientallen|output\(2)) # 
-- (!\Ctientallen|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(2),
	datac => \Ctientallen|output\(3),
	datad => \Ctientallen|output\(0),
	combout => \Ctientallen|output~2_combout\);

-- Location: LCFF_X39_Y17_N29
\Ctientallen|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Ceenheden|over~clkctrl_outclk\,
	datain => \Ctientallen|output~2_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallen|output\(3));

-- Location: LCCOMB_X39_Y17_N24
\Ctientallen|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallen|output~0_combout\ = (\Ctientallen|output\(0) & (!\Ctientallen|output\(1) & ((\Ctientallen|output\(2)) # (!\Ctientallen|output\(3))))) # (!\Ctientallen|output\(0) & (((\Ctientallen|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(0),
	datab => \Ctientallen|output\(3),
	datac => \Ctientallen|output\(1),
	datad => \Ctientallen|output\(2),
	combout => \Ctientallen|output~0_combout\);

-- Location: LCFF_X39_Y17_N25
\Ctientallen|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Ceenheden|over~clkctrl_outclk\,
	datain => \Ctientallen|output~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallen|output\(1));

-- Location: LCCOMB_X40_Y19_N24
\Ctientallenweergave|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenweergave|Mux6~0_combout\ = (\Ctientallen|output\(2) & (!\Ctientallen|output\(1) & (\Ctientallen|output\(0) $ (!\Ctientallen|output\(3))))) # (!\Ctientallen|output\(2) & (\Ctientallen|output\(0) & (\Ctientallen|output\(1) $ 
-- (!\Ctientallen|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(0),
	datac => \Ctientallen|output\(2),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenweergave|Mux6~0_combout\);

-- Location: LCCOMB_X40_Y19_N2
\Ctientallenweergave|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenweergave|Mux5~0_combout\ = (\Ctientallen|output\(1) & ((\Ctientallen|output\(0) & ((\Ctientallen|output\(3)))) # (!\Ctientallen|output\(0) & (\Ctientallen|output\(2))))) # (!\Ctientallen|output\(1) & (\Ctientallen|output\(2) & 
-- (\Ctientallen|output\(0) $ (\Ctientallen|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(0),
	datac => \Ctientallen|output\(2),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenweergave|Mux5~0_combout\);

-- Location: LCCOMB_X40_Y19_N20
\Ctientallenweergave|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenweergave|Mux4~0_combout\ = (\Ctientallen|output\(2) & (\Ctientallen|output\(3) & ((\Ctientallen|output\(1)) # (!\Ctientallen|output\(0))))) # (!\Ctientallen|output\(2) & (\Ctientallen|output\(1) & (!\Ctientallen|output\(0) & 
-- !\Ctientallen|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(0),
	datac => \Ctientallen|output\(2),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenweergave|Mux4~0_combout\);

-- Location: LCCOMB_X40_Y19_N22
\Ctientallenweergave|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenweergave|Mux3~0_combout\ = (\Ctientallen|output\(1) & ((\Ctientallen|output\(0) & (\Ctientallen|output\(2))) # (!\Ctientallen|output\(0) & (!\Ctientallen|output\(2) & \Ctientallen|output\(3))))) # (!\Ctientallen|output\(1) & 
-- (!\Ctientallen|output\(3) & (\Ctientallen|output\(0) $ (\Ctientallen|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(0),
	datac => \Ctientallen|output\(2),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenweergave|Mux3~0_combout\);

-- Location: LCCOMB_X40_Y19_N16
\Ctientallenweergave|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenweergave|Mux2~0_combout\ = (\Ctientallen|output\(1) & (\Ctientallen|output\(0) & ((!\Ctientallen|output\(3))))) # (!\Ctientallen|output\(1) & ((\Ctientallen|output\(2) & ((!\Ctientallen|output\(3)))) # (!\Ctientallen|output\(2) & 
-- (\Ctientallen|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(0),
	datac => \Ctientallen|output\(2),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenweergave|Mux2~0_combout\);

-- Location: LCCOMB_X40_Y19_N10
\Ctientallenweergave|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenweergave|Mux1~0_combout\ = (\Ctientallen|output\(1) & (!\Ctientallen|output\(3) & ((\Ctientallen|output\(0)) # (!\Ctientallen|output\(2))))) # (!\Ctientallen|output\(1) & (\Ctientallen|output\(0) & (\Ctientallen|output\(2) $ 
-- (!\Ctientallen|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(0),
	datac => \Ctientallen|output\(2),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenweergave|Mux1~0_combout\);

-- Location: LCCOMB_X40_Y19_N12
\Ctientallenweergave|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenweergave|Mux0~0_combout\ = (\Ctientallen|output\(0) & ((\Ctientallen|output\(3)) # (\Ctientallen|output\(1) $ (\Ctientallen|output\(2))))) # (!\Ctientallen|output\(0) & ((\Ctientallen|output\(1)) # (\Ctientallen|output\(2) $ 
-- (\Ctientallen|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(0),
	datac => \Ctientallen|output\(2),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenweergave|Mux0~0_combout\);

-- Location: LCCOMB_X40_Y22_N8
\Ceenheden|output[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenheden|output[0]~3_combout\ = !\Ceenheden|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ceenheden|output\(0),
	combout => \Ceenheden|output[0]~3_combout\);

-- Location: LCFF_X40_Y22_N9
\Ceenheden|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Cknop_naar_puls|output~clkctrl_outclk\,
	datain => \Ceenheden|output[0]~3_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenheden|output\(0));

-- Location: LCCOMB_X40_Y22_N20
\Ceenheden|output[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenheden|output[2]~1_combout\ = \Ceenheden|output\(2) $ (((\Ceenheden|output\(1) & \Ceenheden|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(1),
	datac => \Ceenheden|output\(2),
	datad => \Ceenheden|output\(0),
	combout => \Ceenheden|output[2]~1_combout\);

-- Location: LCFF_X40_Y22_N21
\Ceenheden|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Cknop_naar_puls|output~clkctrl_outclk\,
	datain => \Ceenheden|output[2]~1_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenheden|output\(2));

-- Location: LCCOMB_X40_Y22_N10
\Ceenheden|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenheden|output~0_combout\ = (\Ceenheden|output\(0) & (!\Ceenheden|output\(1) & ((\Ceenheden|output\(2)) # (!\Ceenheden|output\(3))))) # (!\Ceenheden|output\(0) & (((\Ceenheden|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(0),
	datab => \Ceenheden|output\(2),
	datac => \Ceenheden|output\(1),
	datad => \Ceenheden|output\(3),
	combout => \Ceenheden|output~0_combout\);

-- Location: LCFF_X40_Y22_N11
\Ceenheden|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Cknop_naar_puls|output~clkctrl_outclk\,
	datain => \Ceenheden|output~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenheden|output\(1));

-- Location: LCCOMB_X40_Y22_N30
\Ceenheden|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenheden|output~2_combout\ = (\Ceenheden|output\(0) & ((\Ceenheden|output\(2) & (\Ceenheden|output\(3) $ (\Ceenheden|output\(1)))) # (!\Ceenheden|output\(2) & (\Ceenheden|output\(3) & \Ceenheden|output\(1))))) # (!\Ceenheden|output\(0) & 
-- (((\Ceenheden|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(0),
	datab => \Ceenheden|output\(2),
	datac => \Ceenheden|output\(3),
	datad => \Ceenheden|output\(1),
	combout => \Ceenheden|output~2_combout\);

-- Location: LCFF_X40_Y22_N31
\Ceenheden|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Cknop_naar_puls|output~clkctrl_outclk\,
	datain => \Ceenheden|output~2_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenheden|output\(3));

-- Location: LCCOMB_X39_Y22_N2
\Ceenhedenweergave|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenweergave|Mux6~0_combout\ = (\Ceenheden|output\(2) & (!\Ceenheden|output\(1) & (\Ceenheden|output\(3) $ (!\Ceenheden|output\(0))))) # (!\Ceenheden|output\(2) & (\Ceenheden|output\(0) & (\Ceenheden|output\(3) $ (!\Ceenheden|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(2),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(1),
	datad => \Ceenheden|output\(0),
	combout => \Ceenhedenweergave|Mux6~0_combout\);

-- Location: LCCOMB_X39_Y22_N24
\Ceenhedenweergave|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenweergave|Mux5~0_combout\ = (\Ceenheden|output\(3) & ((\Ceenheden|output\(0) & ((\Ceenheden|output\(1)))) # (!\Ceenheden|output\(0) & (\Ceenheden|output\(2))))) # (!\Ceenheden|output\(3) & (\Ceenheden|output\(2) & (\Ceenheden|output\(1) $ 
-- (\Ceenheden|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(2),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(1),
	datad => \Ceenheden|output\(0),
	combout => \Ceenhedenweergave|Mux5~0_combout\);

-- Location: LCCOMB_X39_Y22_N12
\Ceenhedenweergave|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenweergave|Mux4~0_combout\ = (\Ceenheden|output\(2) & (\Ceenheden|output\(3) & ((\Ceenheden|output\(1)) # (!\Ceenheden|output\(0))))) # (!\Ceenheden|output\(2) & (!\Ceenheden|output\(3) & (\Ceenheden|output\(1) & !\Ceenheden|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(2),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(1),
	datad => \Ceenheden|output\(0),
	combout => \Ceenhedenweergave|Mux4~0_combout\);

-- Location: LCCOMB_X39_Y22_N26
\Ceenhedenweergave|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenweergave|Mux3~0_combout\ = (\Ceenheden|output\(1) & ((\Ceenheden|output\(2) & ((\Ceenheden|output\(0)))) # (!\Ceenheden|output\(2) & (\Ceenheden|output\(3) & !\Ceenheden|output\(0))))) # (!\Ceenheden|output\(1) & (!\Ceenheden|output\(3) & 
-- (\Ceenheden|output\(2) $ (\Ceenheden|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(2),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(1),
	datad => \Ceenheden|output\(0),
	combout => \Ceenhedenweergave|Mux3~0_combout\);

-- Location: LCCOMB_X39_Y22_N18
\Ceenhedenweergave|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenweergave|Mux2~0_combout\ = (\Ceenheden|output\(1) & (((!\Ceenheden|output\(3) & \Ceenheden|output\(0))))) # (!\Ceenheden|output\(1) & ((\Ceenheden|output\(2) & (!\Ceenheden|output\(3))) # (!\Ceenheden|output\(2) & ((\Ceenheden|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(2),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(1),
	datad => \Ceenheden|output\(0),
	combout => \Ceenhedenweergave|Mux2~0_combout\);

-- Location: LCCOMB_X39_Y22_N22
\Ceenhedenweergave|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenweergave|Mux1~0_combout\ = (\Ceenheden|output\(2) & (\Ceenheden|output\(0) & (\Ceenheden|output\(3) $ (\Ceenheden|output\(1))))) # (!\Ceenheden|output\(2) & (!\Ceenheden|output\(3) & ((\Ceenheden|output\(1)) # (\Ceenheden|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(2),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(1),
	datad => \Ceenheden|output\(0),
	combout => \Ceenhedenweergave|Mux1~0_combout\);

-- Location: LCCOMB_X39_Y22_N10
\Ceenhedenweergave|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenweergave|Mux0~0_combout\ = (\Ceenheden|output\(0) & ((\Ceenheden|output\(3)) # (\Ceenheden|output\(2) $ (\Ceenheden|output\(1))))) # (!\Ceenheden|output\(0) & ((\Ceenheden|output\(1)) # (\Ceenheden|output\(2) $ (\Ceenheden|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(2),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(1),
	datad => \Ceenheden|output\(0),
	combout => \Ceenhedenweergave|Mux0~0_combout\);

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

-- Location: LCFF_X45_Y14_N25
\Caudio|dack0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \AUD_DACLRCK~combout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|dack0~regout\);

-- Location: LCFF_X45_Y14_N3
\Caudio|dack1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|dack0~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|dack1~regout\);

-- Location: LCCOMB_X39_Y18_N18
\Caudio|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Add0~10_combout\ = (!\Caudio|Bcount\(0) & ((\Caudio|dack1~regout\) # (!\Caudio|dack0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|dack0~regout\,
	datac => \Caudio|Bcount\(0),
	datad => \Caudio|dack1~regout\,
	combout => \Caudio|Add0~10_combout\);

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

-- Location: LCCOMB_X45_Y14_N30
\Caudio|bck0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|bck0~feeder_combout\ = \AUD_BCLK~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AUD_BCLK~combout\,
	combout => \Caudio|bck0~feeder_combout\);

-- Location: LCFF_X45_Y14_N31
\Caudio|bck0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|bck0~feeder_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|bck0~regout\);

-- Location: LCFF_X45_Y14_N9
\Caudio|bck1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Caudio|bck0~regout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|bck1~regout\);

-- Location: LCCOMB_X45_Y14_N8
\Caudio|Bcount[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Bcount[2]~0_combout\ = (\Caudio|dack0~regout\ & (((!\Caudio|bck0~regout\ & \Caudio|bck1~regout\)) # (!\Caudio|dack1~regout\))) # (!\Caudio|dack0~regout\ & (!\Caudio|bck0~regout\ & (\Caudio|bck1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|dack0~regout\,
	datab => \Caudio|bck0~regout\,
	datac => \Caudio|bck1~regout\,
	datad => \Caudio|dack1~regout\,
	combout => \Caudio|Bcount[2]~0_combout\);

-- Location: LCFF_X39_Y18_N19
\Caudio|Bcount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|Add0~10_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|Bcount[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|Bcount\(0));

-- Location: LCCOMB_X39_Y18_N0
\Caudio|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Add0~7_cout\ = CARRY(!\Caudio|Bcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|Bcount\(0),
	datad => VCC,
	cout => \Caudio|Add0~7_cout\);

-- Location: LCCOMB_X39_Y18_N2
\Caudio|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Add0~8_combout\ = (\Caudio|Bcount\(1) & (!\Caudio|Add0~7_cout\)) # (!\Caudio|Bcount\(1) & (\Caudio|Add0~7_cout\ & VCC))
-- \Caudio|Add0~9\ = CARRY((\Caudio|Bcount\(1) & !\Caudio|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|Bcount\(1),
	datad => VCC,
	cin => \Caudio|Add0~7_cout\,
	combout => \Caudio|Add0~8_combout\,
	cout => \Caudio|Add0~9\);

-- Location: LCCOMB_X39_Y18_N8
\Caudio|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Add0~15_combout\ = (!\Caudio|Add0~8_combout\ & ((\Caudio|dack1~regout\) # (!\Caudio|dack0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|dack1~regout\,
	datab => \Caudio|Add0~8_combout\,
	datad => \Caudio|dack0~regout\,
	combout => \Caudio|Add0~15_combout\);

-- Location: LCFF_X39_Y18_N9
\Caudio|Bcount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|Add0~15_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|Bcount[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|Bcount\(1));

-- Location: LCCOMB_X39_Y18_N4
\Caudio|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Add0~11_combout\ = (\Caudio|Bcount\(2) & (\Caudio|Add0~9\ $ (GND))) # (!\Caudio|Bcount\(2) & ((GND) # (!\Caudio|Add0~9\)))
-- \Caudio|Add0~12\ = CARRY((!\Caudio|Add0~9\) # (!\Caudio|Bcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|Bcount\(2),
	datad => VCC,
	cin => \Caudio|Add0~9\,
	combout => \Caudio|Add0~11_combout\,
	cout => \Caudio|Add0~12\);

-- Location: LCCOMB_X39_Y18_N26
\Caudio|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Add0~17_combout\ = (!\Caudio|Add0~11_combout\ & ((\Caudio|dack1~regout\) # (!\Caudio|dack0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caudio|dack0~regout\,
	datac => \Caudio|Add0~11_combout\,
	datad => \Caudio|dack1~regout\,
	combout => \Caudio|Add0~17_combout\);

-- Location: LCFF_X39_Y18_N27
\Caudio|Bcount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|Add0~17_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|Bcount[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|Bcount\(2));

-- Location: LCCOMB_X39_Y18_N6
\Caudio|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Add0~13_combout\ = \Caudio|Add0~12\ $ (\Caudio|Bcount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Caudio|Bcount\(3),
	cin => \Caudio|Add0~12\,
	combout => \Caudio|Add0~13_combout\);

-- Location: LCCOMB_X39_Y18_N28
\Caudio|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Add0~16_combout\ = (!\Caudio|Add0~13_combout\ & ((\Caudio|dack1~regout\) # (!\Caudio|dack0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|dack1~regout\,
	datab => \Caudio|dack0~regout\,
	datad => \Caudio|Add0~13_combout\,
	combout => \Caudio|Add0~16_combout\);

-- Location: LCFF_X39_Y18_N29
\Caudio|Bcount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Caudio|Add0~16_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|Bcount[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|Bcount\(3));

-- Location: LCCOMB_X39_Y17_N12
\Ctientallenmorse|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux2~0_combout\ = (\Ctientallen|output\(0) & (((!\Ctientallen|output\(2) & !\Ctientallen|output\(1))) # (!\Ctientallen|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(0),
	datab => \Ctientallen|output\(2),
	datac => \Ctientallen|output\(1),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenmorse|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y21_N14
\Ceenhedenmorse|cnt[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[2]~27_combout\ = (\Ceenhedenmorse|cnt\(2) & (\Ceenhedenmorse|cnt[1]~26\ $ (GND))) # (!\Ceenhedenmorse|cnt\(2) & (!\Ceenhedenmorse|cnt[1]~26\ & VCC))
-- \Ceenhedenmorse|cnt[2]~28\ = CARRY((\Ceenhedenmorse|cnt\(2) & !\Ceenhedenmorse|cnt[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(2),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[1]~26\,
	combout => \Ceenhedenmorse|cnt[2]~27_combout\,
	cout => \Ceenhedenmorse|cnt[2]~28\);

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

-- Location: LCCOMB_X40_Y21_N24
\Cknop_naar_puls|activated~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cknop_naar_puls|activated~0_combout\ = !\button_count~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button_count~combout\,
	combout => \Cknop_naar_puls|activated~0_combout\);

-- Location: LCFF_X40_Y21_N25
\Cknop_naar_puls|activated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Cknop_naar_puls|activated~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Cknop_naar_puls|activated~regout\);

-- Location: LCCOMB_X39_Y21_N28
\Cknop_naar_puls|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cknop_naar_puls|output~0_combout\ = (!\button_count~combout\ & !\Cknop_naar_puls|activated~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_count~combout\,
	datad => \Cknop_naar_puls|activated~regout\,
	combout => \Cknop_naar_puls|output~0_combout\);

-- Location: LCFF_X39_Y21_N29
\Cknop_naar_puls|output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Cknop_naar_puls|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Cknop_naar_puls|output~regout\);

-- Location: LCCOMB_X39_Y21_N10
\Ceenhedenmorse|finished~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|finished~2_combout\ = (\Cknop_naar_puls|output~regout\) # (!\button_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_reset~combout\,
	datad => \Cknop_naar_puls|output~regout\,
	combout => \Ceenhedenmorse|finished~2_combout\);

-- Location: LCFF_X38_Y21_N15
\Ceenhedenmorse|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[2]~27_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(2));

-- Location: LCCOMB_X38_Y21_N18
\Ceenhedenmorse|cnt[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[4]~31_combout\ = (\Ceenhedenmorse|cnt\(4) & (\Ceenhedenmorse|cnt[3]~30\ $ (GND))) # (!\Ceenhedenmorse|cnt\(4) & (!\Ceenhedenmorse|cnt[3]~30\ & VCC))
-- \Ceenhedenmorse|cnt[4]~32\ = CARRY((\Ceenhedenmorse|cnt\(4) & !\Ceenhedenmorse|cnt[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(4),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[3]~30\,
	combout => \Ceenhedenmorse|cnt[4]~31_combout\,
	cout => \Ceenhedenmorse|cnt[4]~32\);

-- Location: LCFF_X38_Y21_N19
\Ceenhedenmorse|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[4]~31_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(4));

-- Location: LCCOMB_X38_Y21_N22
\Ceenhedenmorse|cnt[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[6]~35_combout\ = (\Ceenhedenmorse|cnt\(6) & (\Ceenhedenmorse|cnt[5]~34\ $ (GND))) # (!\Ceenhedenmorse|cnt\(6) & (!\Ceenhedenmorse|cnt[5]~34\ & VCC))
-- \Ceenhedenmorse|cnt[6]~36\ = CARRY((\Ceenhedenmorse|cnt\(6) & !\Ceenhedenmorse|cnt[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(6),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[5]~34\,
	combout => \Ceenhedenmorse|cnt[6]~35_combout\,
	cout => \Ceenhedenmorse|cnt[6]~36\);

-- Location: LCFF_X38_Y21_N23
\Ceenhedenmorse|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[6]~35_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(6));

-- Location: LCCOMB_X38_Y21_N24
\Ceenhedenmorse|cnt[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[7]~37_combout\ = (\Ceenhedenmorse|cnt\(7) & (!\Ceenhedenmorse|cnt[6]~36\)) # (!\Ceenhedenmorse|cnt\(7) & ((\Ceenhedenmorse|cnt[6]~36\) # (GND)))
-- \Ceenhedenmorse|cnt[7]~38\ = CARRY((!\Ceenhedenmorse|cnt[6]~36\) # (!\Ceenhedenmorse|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(7),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[6]~36\,
	combout => \Ceenhedenmorse|cnt[7]~37_combout\,
	cout => \Ceenhedenmorse|cnt[7]~38\);

-- Location: LCCOMB_X38_Y21_N26
\Ceenhedenmorse|cnt[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[8]~39_combout\ = (\Ceenhedenmorse|cnt\(8) & (\Ceenhedenmorse|cnt[7]~38\ $ (GND))) # (!\Ceenhedenmorse|cnt\(8) & (!\Ceenhedenmorse|cnt[7]~38\ & VCC))
-- \Ceenhedenmorse|cnt[8]~40\ = CARRY((\Ceenhedenmorse|cnt\(8) & !\Ceenhedenmorse|cnt[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(8),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[7]~38\,
	combout => \Ceenhedenmorse|cnt[8]~39_combout\,
	cout => \Ceenhedenmorse|cnt[8]~40\);

-- Location: LCFF_X38_Y21_N27
\Ceenhedenmorse|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[8]~39_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(8));

-- Location: LCCOMB_X38_Y21_N28
\Ceenhedenmorse|cnt[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[9]~41_combout\ = (\Ceenhedenmorse|cnt\(9) & (!\Ceenhedenmorse|cnt[8]~40\)) # (!\Ceenhedenmorse|cnt\(9) & ((\Ceenhedenmorse|cnt[8]~40\) # (GND)))
-- \Ceenhedenmorse|cnt[9]~42\ = CARRY((!\Ceenhedenmorse|cnt[8]~40\) # (!\Ceenhedenmorse|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(9),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[8]~40\,
	combout => \Ceenhedenmorse|cnt[9]~41_combout\,
	cout => \Ceenhedenmorse|cnt[9]~42\);

-- Location: LCFF_X38_Y21_N29
\Ceenhedenmorse|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[9]~41_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(9));

-- Location: LCCOMB_X38_Y21_N30
\Ceenhedenmorse|cnt[10]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[10]~43_combout\ = (\Ceenhedenmorse|cnt\(10) & (\Ceenhedenmorse|cnt[9]~42\ $ (GND))) # (!\Ceenhedenmorse|cnt\(10) & (!\Ceenhedenmorse|cnt[9]~42\ & VCC))
-- \Ceenhedenmorse|cnt[10]~44\ = CARRY((\Ceenhedenmorse|cnt\(10) & !\Ceenhedenmorse|cnt[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(10),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[9]~42\,
	combout => \Ceenhedenmorse|cnt[10]~43_combout\,
	cout => \Ceenhedenmorse|cnt[10]~44\);

-- Location: LCFF_X38_Y21_N31
\Ceenhedenmorse|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[10]~43_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(10));

-- Location: LCCOMB_X38_Y20_N0
\Ceenhedenmorse|cnt[11]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[11]~45_combout\ = (\Ceenhedenmorse|cnt\(11) & (!\Ceenhedenmorse|cnt[10]~44\)) # (!\Ceenhedenmorse|cnt\(11) & ((\Ceenhedenmorse|cnt[10]~44\) # (GND)))
-- \Ceenhedenmorse|cnt[11]~46\ = CARRY((!\Ceenhedenmorse|cnt[10]~44\) # (!\Ceenhedenmorse|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(11),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[10]~44\,
	combout => \Ceenhedenmorse|cnt[11]~45_combout\,
	cout => \Ceenhedenmorse|cnt[11]~46\);

-- Location: LCFF_X38_Y20_N1
\Ceenhedenmorse|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[11]~45_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(11));

-- Location: LCCOMB_X38_Y20_N2
\Ceenhedenmorse|cnt[12]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[12]~47_combout\ = (\Ceenhedenmorse|cnt\(12) & (\Ceenhedenmorse|cnt[11]~46\ $ (GND))) # (!\Ceenhedenmorse|cnt\(12) & (!\Ceenhedenmorse|cnt[11]~46\ & VCC))
-- \Ceenhedenmorse|cnt[12]~48\ = CARRY((\Ceenhedenmorse|cnt\(12) & !\Ceenhedenmorse|cnt[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(12),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[11]~46\,
	combout => \Ceenhedenmorse|cnt[12]~47_combout\,
	cout => \Ceenhedenmorse|cnt[12]~48\);

-- Location: LCFF_X38_Y20_N3
\Ceenhedenmorse|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[12]~47_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(12));

-- Location: LCCOMB_X38_Y20_N4
\Ceenhedenmorse|cnt[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[13]~49_combout\ = (\Ceenhedenmorse|cnt\(13) & (!\Ceenhedenmorse|cnt[12]~48\)) # (!\Ceenhedenmorse|cnt\(13) & ((\Ceenhedenmorse|cnt[12]~48\) # (GND)))
-- \Ceenhedenmorse|cnt[13]~50\ = CARRY((!\Ceenhedenmorse|cnt[12]~48\) # (!\Ceenhedenmorse|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(13),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[12]~48\,
	combout => \Ceenhedenmorse|cnt[13]~49_combout\,
	cout => \Ceenhedenmorse|cnt[13]~50\);

-- Location: LCFF_X38_Y20_N5
\Ceenhedenmorse|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[13]~49_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(13));

-- Location: LCCOMB_X38_Y20_N6
\Ceenhedenmorse|cnt[14]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[14]~51_combout\ = (\Ceenhedenmorse|cnt\(14) & (\Ceenhedenmorse|cnt[13]~50\ $ (GND))) # (!\Ceenhedenmorse|cnt\(14) & (!\Ceenhedenmorse|cnt[13]~50\ & VCC))
-- \Ceenhedenmorse|cnt[14]~52\ = CARRY((\Ceenhedenmorse|cnt\(14) & !\Ceenhedenmorse|cnt[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(14),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[13]~50\,
	combout => \Ceenhedenmorse|cnt[14]~51_combout\,
	cout => \Ceenhedenmorse|cnt[14]~52\);

-- Location: LCCOMB_X38_Y20_N8
\Ceenhedenmorse|cnt[15]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[15]~53_combout\ = (\Ceenhedenmorse|cnt\(15) & (!\Ceenhedenmorse|cnt[14]~52\)) # (!\Ceenhedenmorse|cnt\(15) & ((\Ceenhedenmorse|cnt[14]~52\) # (GND)))
-- \Ceenhedenmorse|cnt[15]~54\ = CARRY((!\Ceenhedenmorse|cnt[14]~52\) # (!\Ceenhedenmorse|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(15),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[14]~52\,
	combout => \Ceenhedenmorse|cnt[15]~53_combout\,
	cout => \Ceenhedenmorse|cnt[15]~54\);

-- Location: LCFF_X38_Y20_N9
\Ceenhedenmorse|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[15]~53_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(15));

-- Location: LCCOMB_X38_Y20_N12
\Ceenhedenmorse|cnt[17]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[17]~57_combout\ = (\Ceenhedenmorse|cnt\(17) & (!\Ceenhedenmorse|cnt[16]~56\)) # (!\Ceenhedenmorse|cnt\(17) & ((\Ceenhedenmorse|cnt[16]~56\) # (GND)))
-- \Ceenhedenmorse|cnt[17]~58\ = CARRY((!\Ceenhedenmorse|cnt[16]~56\) # (!\Ceenhedenmorse|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(17),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[16]~56\,
	combout => \Ceenhedenmorse|cnt[17]~57_combout\,
	cout => \Ceenhedenmorse|cnt[17]~58\);

-- Location: LCCOMB_X38_Y20_N14
\Ceenhedenmorse|cnt[18]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[18]~59_combout\ = (\Ceenhedenmorse|cnt\(18) & (\Ceenhedenmorse|cnt[17]~58\ $ (GND))) # (!\Ceenhedenmorse|cnt\(18) & (!\Ceenhedenmorse|cnt[17]~58\ & VCC))
-- \Ceenhedenmorse|cnt[18]~60\ = CARRY((\Ceenhedenmorse|cnt\(18) & !\Ceenhedenmorse|cnt[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(18),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[17]~58\,
	combout => \Ceenhedenmorse|cnt[18]~59_combout\,
	cout => \Ceenhedenmorse|cnt[18]~60\);

-- Location: LCFF_X38_Y20_N15
\Ceenhedenmorse|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[18]~59_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(18));

-- Location: LCCOMB_X38_Y20_N16
\Ceenhedenmorse|cnt[19]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[19]~61_combout\ = (\Ceenhedenmorse|cnt\(19) & (!\Ceenhedenmorse|cnt[18]~60\)) # (!\Ceenhedenmorse|cnt\(19) & ((\Ceenhedenmorse|cnt[18]~60\) # (GND)))
-- \Ceenhedenmorse|cnt[19]~62\ = CARRY((!\Ceenhedenmorse|cnt[18]~60\) # (!\Ceenhedenmorse|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(19),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[18]~60\,
	combout => \Ceenhedenmorse|cnt[19]~61_combout\,
	cout => \Ceenhedenmorse|cnt[19]~62\);

-- Location: LCCOMB_X38_Y20_N18
\Ceenhedenmorse|cnt[20]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|cnt[20]~63_combout\ = (\Ceenhedenmorse|cnt\(20) & (\Ceenhedenmorse|cnt[19]~62\ $ (GND))) # (!\Ceenhedenmorse|cnt\(20) & (!\Ceenhedenmorse|cnt[19]~62\ & VCC))
-- \Ceenhedenmorse|cnt[20]~64\ = CARRY((\Ceenhedenmorse|cnt\(20) & !\Ceenhedenmorse|cnt[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(20),
	datad => VCC,
	cin => \Ceenhedenmorse|cnt[19]~62\,
	combout => \Ceenhedenmorse|cnt[20]~63_combout\,
	cout => \Ceenhedenmorse|cnt[20]~64\);

-- Location: LCFF_X38_Y20_N19
\Ceenhedenmorse|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[20]~63_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(20));

-- Location: LCFF_X38_Y20_N21
\Ceenhedenmorse|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[21]~65_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(21));

-- Location: LCFF_X38_Y20_N17
\Ceenhedenmorse|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[19]~61_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(19));

-- Location: LCFF_X38_Y20_N13
\Ceenhedenmorse|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[17]~57_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(17));

-- Location: LCCOMB_X39_Y20_N0
\Ceenhedenmorse|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|LessThan0~3_combout\ = (!\Ceenhedenmorse|cnt\(16) & (!\Ceenhedenmorse|cnt\(17) & !\Ceenhedenmorse|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(16),
	datac => \Ceenhedenmorse|cnt\(17),
	datad => \Ceenhedenmorse|cnt\(15),
	combout => \Ceenhedenmorse|LessThan0~3_combout\);

-- Location: LCFF_X38_Y20_N7
\Ceenhedenmorse|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[14]~51_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(14));

-- Location: LCFF_X38_Y21_N25
\Ceenhedenmorse|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|cnt[7]~37_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	sclr => \Ceenhedenmorse|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|cnt\(7));

-- Location: LCCOMB_X39_Y20_N18
\Ceenhedenmorse|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|LessThan0~0_combout\ = (((!\Ceenhedenmorse|cnt\(6) & !\Ceenhedenmorse|cnt\(7))) # (!\Ceenhedenmorse|cnt\(8))) # (!\Ceenhedenmorse|cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(9),
	datab => \Ceenhedenmorse|cnt\(6),
	datac => \Ceenhedenmorse|cnt\(7),
	datad => \Ceenhedenmorse|cnt\(8),
	combout => \Ceenhedenmorse|LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y20_N28
\Ceenhedenmorse|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|LessThan0~1_combout\ = ((!\Ceenhedenmorse|cnt\(10) & \Ceenhedenmorse|LessThan0~0_combout\)) # (!\Ceenhedenmorse|cnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(10),
	datac => \Ceenhedenmorse|cnt\(11),
	datad => \Ceenhedenmorse|LessThan0~0_combout\,
	combout => \Ceenhedenmorse|LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y20_N22
\Ceenhedenmorse|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|LessThan0~2_combout\ = ((!\Ceenhedenmorse|cnt\(12) & (!\Ceenhedenmorse|cnt\(13) & \Ceenhedenmorse|LessThan0~1_combout\))) # (!\Ceenhedenmorse|cnt\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(12),
	datab => \Ceenhedenmorse|cnt\(13),
	datac => \Ceenhedenmorse|cnt\(14),
	datad => \Ceenhedenmorse|LessThan0~1_combout\,
	combout => \Ceenhedenmorse|LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y20_N26
\Ceenhedenmorse|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|LessThan0~4_combout\ = (((\Ceenhedenmorse|LessThan0~3_combout\ & \Ceenhedenmorse|LessThan0~2_combout\)) # (!\Ceenhedenmorse|cnt\(19))) # (!\Ceenhedenmorse|cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(18),
	datab => \Ceenhedenmorse|cnt\(19),
	datac => \Ceenhedenmorse|LessThan0~3_combout\,
	datad => \Ceenhedenmorse|LessThan0~2_combout\,
	combout => \Ceenhedenmorse|LessThan0~4_combout\);

-- Location: LCCOMB_X39_Y20_N4
\Ceenhedenmorse|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|LessThan0~5_combout\ = (\Ceenhedenmorse|cnt\(22) & ((\Ceenhedenmorse|cnt\(20)) # ((\Ceenhedenmorse|cnt\(21)) # (!\Ceenhedenmorse|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(22),
	datab => \Ceenhedenmorse|cnt\(20),
	datac => \Ceenhedenmorse|cnt\(21),
	datad => \Ceenhedenmorse|LessThan0~4_combout\,
	combout => \Ceenhedenmorse|LessThan0~5_combout\);

-- Location: LCCOMB_X40_Y22_N0
\Ceenhedenmorse|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux1~0_combout\ = (\Ceenheden|output\(0) & (!\Ceenheden|output\(3) & ((\Ceenheden|output\(1))))) # (!\Ceenheden|output\(0) & (!\Ceenheden|output\(2) & (\Ceenheden|output\(3) $ (\Ceenheden|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(0),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(2),
	datad => \Ceenheden|output\(1),
	combout => \Ceenhedenmorse|Mux1~0_combout\);

-- Location: LCCOMB_X39_Y21_N30
\Ceenhedenmorse|index[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[3]~7_combout\ = (\button_reset~combout\ & \Cknop_naar_puls|output~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_reset~combout\,
	datad => \Cknop_naar_puls|output~regout\,
	combout => \Ceenhedenmorse|index[3]~7_combout\);

-- Location: CLKCTRL_G10
\Ceenhedenmorse|index[3]~7clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Ceenhedenmorse|index[3]~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Ceenhedenmorse|index[3]~7clkctrl_outclk\);

-- Location: LCCOMB_X40_Y22_N4
\Ceenhedenmorse|index[2]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[2]~latch_combout\ = (\button_reset~combout\ & ((GLOBAL(\Ceenhedenmorse|index[3]~7clkctrl_outclk\) & ((\Ceenhedenmorse|Mux1~0_combout\))) # (!GLOBAL(\Ceenhedenmorse|index[3]~7clkctrl_outclk\) & 
-- (\Ceenhedenmorse|index[2]~latch_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|index[2]~latch_combout\,
	datab => \Ceenhedenmorse|Mux1~0_combout\,
	datac => \Ceenhedenmorse|index[3]~7clkctrl_outclk\,
	datad => \button_reset~combout\,
	combout => \Ceenhedenmorse|index[2]~latch_combout\);

-- Location: LCCOMB_X40_Y22_N14
\Ceenhedenmorse|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux2~0_combout\ = (\Ceenheden|output\(0) & (((!\Ceenheden|output\(2) & !\Ceenheden|output\(1))) # (!\Ceenheden|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(0),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(2),
	datad => \Ceenheden|output\(1),
	combout => \Ceenhedenmorse|Mux2~0_combout\);

-- Location: LCCOMB_X40_Y22_N2
\Ceenhedenmorse|index[1]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[1]~latch_combout\ = (\button_reset~combout\ & ((GLOBAL(\Ceenhedenmorse|index[3]~7clkctrl_outclk\) & ((\Ceenhedenmorse|Mux2~0_combout\))) # (!GLOBAL(\Ceenhedenmorse|index[3]~7clkctrl_outclk\) & 
-- (\Ceenhedenmorse|index[1]~latch_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \Ceenhedenmorse|index[1]~latch_combout\,
	datac => \Ceenhedenmorse|Mux2~0_combout\,
	datad => \Ceenhedenmorse|index[3]~7clkctrl_outclk\,
	combout => \Ceenhedenmorse|index[1]~latch_combout\);

-- Location: LCCOMB_X39_Y20_N6
\Ceenhedenmorse|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Add1~0_combout\ = (\Ceenhedenmorse|index\(0) & (\Ceenhedenmorse|index[1]~head_lut_combout\ $ (VCC))) # (!\Ceenhedenmorse|index\(0) & (\Ceenhedenmorse|index[1]~head_lut_combout\ & VCC))
-- \Ceenhedenmorse|Add1~1\ = CARRY((\Ceenhedenmorse|index\(0) & \Ceenhedenmorse|index[1]~head_lut_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|index\(0),
	datab => \Ceenhedenmorse|index[1]~head_lut_combout\,
	datad => VCC,
	combout => \Ceenhedenmorse|Add1~0_combout\,
	cout => \Ceenhedenmorse|Add1~1\);

-- Location: LCCOMB_X39_Y21_N8
\Ceenhedenmorse|index[1]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[1]~data_lut_combout\ = \Ceenhedenmorse|index[1]~latch_combout\ $ (\Ceenhedenmorse|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|index[1]~latch_combout\,
	datad => \Ceenhedenmorse|Add1~0_combout\,
	combout => \Ceenhedenmorse|index[1]~data_lut_combout\);

-- Location: LCCOMB_X39_Y21_N4
\Ceenhedenmorse|index[2]~clear_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[2]~clear_lut_combout\ = (\Ceenhedenmorse|index[3]~7_combout\) # (!\button_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_reset~combout\,
	datad => \Ceenhedenmorse|index[3]~7_combout\,
	combout => \Ceenhedenmorse|index[2]~clear_lut_combout\);

-- Location: LCCOMB_X40_Y22_N12
\Ceenhedenmorse|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux7~0_combout\ = (!\Ceenheden|output\(3) & (\Ceenheden|output\(2) & ((!\Ceenheden|output\(1)) # (!\Ceenheden|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(0),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(2),
	datad => \Ceenheden|output\(1),
	combout => \Ceenhedenmorse|Mux7~0_combout\);

-- Location: LCCOMB_X40_Y22_N6
\Ceenhedenmorse|index[3]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[3]~latch_combout\ = (\button_reset~combout\ & ((GLOBAL(\Ceenhedenmorse|index[3]~7clkctrl_outclk\) & ((\Ceenhedenmorse|Mux7~0_combout\))) # (!GLOBAL(\Ceenhedenmorse|index[3]~7clkctrl_outclk\) & 
-- (\Ceenhedenmorse|index[3]~latch_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \Ceenhedenmorse|index[3]~latch_combout\,
	datac => \Ceenhedenmorse|index[3]~7clkctrl_outclk\,
	datad => \Ceenhedenmorse|Mux7~0_combout\,
	combout => \Ceenhedenmorse|index[3]~latch_combout\);

-- Location: LCCOMB_X39_Y20_N10
\Ceenhedenmorse|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Add1~4_combout\ = (\Ceenhedenmorse|index[3]~head_lut_combout\ & (\Ceenhedenmorse|Add1~3\ $ (GND))) # (!\Ceenhedenmorse|index[3]~head_lut_combout\ & (!\Ceenhedenmorse|Add1~3\ & VCC))
-- \Ceenhedenmorse|Add1~5\ = CARRY((\Ceenhedenmorse|index[3]~head_lut_combout\ & !\Ceenhedenmorse|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|index[3]~head_lut_combout\,
	datad => VCC,
	cin => \Ceenhedenmorse|Add1~3\,
	combout => \Ceenhedenmorse|Add1~4_combout\,
	cout => \Ceenhedenmorse|Add1~5\);

-- Location: LCCOMB_X39_Y21_N14
\Ceenhedenmorse|index[3]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[3]~data_lut_combout\ = \Ceenhedenmorse|index[3]~latch_combout\ $ (\Ceenhedenmorse|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|index[3]~latch_combout\,
	datad => \Ceenhedenmorse|Add1~4_combout\,
	combout => \Ceenhedenmorse|index[3]~data_lut_combout\);

-- Location: LCFF_X39_Y21_N15
\Ceenhedenmorse|index[3]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|index[3]~data_lut_combout\,
	aclr => \Ceenhedenmorse|index[2]~clear_lut_combout\,
	ena => \Ceenhedenmorse|index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|index[3]~_emulated_regout\);

-- Location: LCCOMB_X39_Y21_N0
\Ceenhedenmorse|index[3]~tail_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[3]~tail_lut_combout\ = \Ceenhedenmorse|index[3]~_emulated_regout\ $ (\Ceenhedenmorse|index[3]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ceenhedenmorse|index[3]~_emulated_regout\,
	datad => \Ceenhedenmorse|index[3]~latch_combout\,
	combout => \Ceenhedenmorse|index[3]~tail_lut_combout\);

-- Location: LCCOMB_X39_Y21_N6
\Ceenhedenmorse|index[3]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[3]~head_lut_combout\ = (\button_reset~combout\ & ((\Ceenhedenmorse|index[3]~7_combout\ & (\Ceenhedenmorse|Mux7~0_combout\)) # (!\Ceenhedenmorse|index[3]~7_combout\ & ((\Ceenhedenmorse|index[3]~tail_lut_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \Ceenhedenmorse|index[3]~7_combout\,
	datac => \Ceenhedenmorse|Mux7~0_combout\,
	datad => \Ceenhedenmorse|index[3]~tail_lut_combout\,
	combout => \Ceenhedenmorse|index[3]~head_lut_combout\);

-- Location: LCCOMB_X39_Y20_N2
\Ceenhedenmorse|index[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[4]~8_combout\ = (\Ceenhedenmorse|cnt\(20)) # ((\Ceenhedenmorse|cnt\(21)) # (!\Ceenhedenmorse|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|cnt\(20),
	datac => \Ceenhedenmorse|cnt\(21),
	datad => \Ceenhedenmorse|LessThan0~4_combout\,
	combout => \Ceenhedenmorse|index[4]~8_combout\);

-- Location: LCCOMB_X39_Y21_N18
\Ceenhedenmorse|index[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[4]~9_combout\ = (\Ceenhedenmorse|cnt\(22) & (\Ceenhedenmorse|index[4]~8_combout\ & ((!\Ceenhedenmorse|index[3]~head_lut_combout\) # (!\Ceenhedenmorse|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|cnt\(22),
	datab => \Ceenhedenmorse|index\(4),
	datac => \Ceenhedenmorse|index[3]~head_lut_combout\,
	datad => \Ceenhedenmorse|index[4]~8_combout\,
	combout => \Ceenhedenmorse|index[4]~9_combout\);

-- Location: LCFF_X39_Y21_N9
\Ceenhedenmorse|index[1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|index[1]~data_lut_combout\,
	aclr => \Ceenhedenmorse|index[2]~clear_lut_combout\,
	ena => \Ceenhedenmorse|index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|index[1]~_emulated_regout\);

-- Location: LCCOMB_X39_Y21_N16
\Ceenhedenmorse|index[1]~tail_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[1]~tail_lut_combout\ = \Ceenhedenmorse|index[1]~_emulated_regout\ $ (\Ceenhedenmorse|index[1]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ceenhedenmorse|index[1]~_emulated_regout\,
	datad => \Ceenhedenmorse|index[1]~latch_combout\,
	combout => \Ceenhedenmorse|index[1]~tail_lut_combout\);

-- Location: LCCOMB_X39_Y21_N24
\Ceenhedenmorse|index[1]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[1]~head_lut_combout\ = (\button_reset~combout\ & ((\Ceenhedenmorse|index[3]~7_combout\ & ((\Ceenhedenmorse|Mux2~0_combout\))) # (!\Ceenhedenmorse|index[3]~7_combout\ & (\Ceenhedenmorse|index[1]~tail_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \Ceenhedenmorse|index[3]~7_combout\,
	datac => \Ceenhedenmorse|index[1]~tail_lut_combout\,
	datad => \Ceenhedenmorse|Mux2~0_combout\,
	combout => \Ceenhedenmorse|index[1]~head_lut_combout\);

-- Location: LCCOMB_X39_Y20_N8
\Ceenhedenmorse|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Add1~2_combout\ = (\Ceenhedenmorse|index[2]~head_lut_combout\ & (!\Ceenhedenmorse|Add1~1\)) # (!\Ceenhedenmorse|index[2]~head_lut_combout\ & ((\Ceenhedenmorse|Add1~1\) # (GND)))
-- \Ceenhedenmorse|Add1~3\ = CARRY((!\Ceenhedenmorse|Add1~1\) # (!\Ceenhedenmorse|index[2]~head_lut_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ceenhedenmorse|index[2]~head_lut_combout\,
	datad => VCC,
	cin => \Ceenhedenmorse|Add1~1\,
	combout => \Ceenhedenmorse|Add1~2_combout\,
	cout => \Ceenhedenmorse|Add1~3\);

-- Location: LCCOMB_X39_Y21_N20
\Ceenhedenmorse|index[2]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[2]~data_lut_combout\ = \Ceenhedenmorse|index[2]~latch_combout\ $ (\Ceenhedenmorse|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ceenhedenmorse|index[2]~latch_combout\,
	datad => \Ceenhedenmorse|Add1~2_combout\,
	combout => \Ceenhedenmorse|index[2]~data_lut_combout\);

-- Location: LCFF_X39_Y21_N21
\Ceenhedenmorse|index[2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|index[2]~data_lut_combout\,
	aclr => \Ceenhedenmorse|index[2]~clear_lut_combout\,
	ena => \Ceenhedenmorse|index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|index[2]~_emulated_regout\);

-- Location: LCCOMB_X40_Y22_N24
\Ceenhedenmorse|index[2]~tail_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[2]~tail_lut_combout\ = \Ceenhedenmorse|index[2]~latch_combout\ $ (\Ceenhedenmorse|index[2]~_emulated_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ceenhedenmorse|index[2]~latch_combout\,
	datad => \Ceenhedenmorse|index[2]~_emulated_regout\,
	combout => \Ceenhedenmorse|index[2]~tail_lut_combout\);

-- Location: LCCOMB_X40_Y22_N18
\Ceenhedenmorse|index[2]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[2]~head_lut_combout\ = (\button_reset~combout\ & ((\Ceenhedenmorse|index[3]~7_combout\ & (\Ceenhedenmorse|Mux1~0_combout\)) # (!\Ceenhedenmorse|index[3]~7_combout\ & ((\Ceenhedenmorse|index[2]~tail_lut_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \Ceenhedenmorse|Mux1~0_combout\,
	datac => \Ceenhedenmorse|index[2]~tail_lut_combout\,
	datad => \Ceenhedenmorse|index[3]~7_combout\,
	combout => \Ceenhedenmorse|index[2]~head_lut_combout\);

-- Location: LCCOMB_X39_Y20_N12
\Ceenhedenmorse|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Add1~6_combout\ = \Ceenhedenmorse|Add1~5\ $ (\Ceenhedenmorse|index\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ceenhedenmorse|index\(4),
	cin => \Ceenhedenmorse|Add1~5\,
	combout => \Ceenhedenmorse|Add1~6_combout\);

-- Location: LCFF_X39_Y20_N13
\Ceenhedenmorse|index[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|Add1~6_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	ena => \Ceenhedenmorse|index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|index\(4));

-- Location: LCCOMB_X39_Y20_N16
\Ceenhedenmorse|finished~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|finished~3_combout\ = (\Ceenhedenmorse|finished~regout\) # ((\Ceenhedenmorse|index[3]~head_lut_combout\ & (\Ceenhedenmorse|LessThan0~5_combout\ & \Ceenhedenmorse|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|index[3]~head_lut_combout\,
	datab => \Ceenhedenmorse|LessThan0~5_combout\,
	datac => \Ceenhedenmorse|finished~regout\,
	datad => \Ceenhedenmorse|index\(4),
	combout => \Ceenhedenmorse|finished~3_combout\);

-- Location: LCFF_X39_Y20_N17
\Ceenhedenmorse|finished\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|finished~3_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|finished~regout\);

-- Location: LCFF_X39_Y20_N15
\Ceenheden_naar_puls|activated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Ceenhedenmorse|finished~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenheden_naar_puls|activated~regout\);

-- Location: LCCOMB_X39_Y20_N14
\Ceenheden_naar_puls|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenheden_naar_puls|output~0_combout\ = (\Ceenhedenmorse|finished~regout\ & !\Ceenheden_naar_puls|activated~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|finished~regout\,
	datac => \Ceenheden_naar_puls|activated~regout\,
	combout => \Ceenheden_naar_puls|output~0_combout\);

-- Location: LCFF_X39_Y17_N15
\Ceenheden_naar_puls|output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \Ceenheden_naar_puls|output~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenheden_naar_puls|output~regout\);

-- Location: LCCOMB_X39_Y17_N18
\Ctientallenmorse|index[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[3]~7_combout\ = (!\minder_dan_tien~combout\ & (\button_reset~combout\ & \Ceenheden_naar_puls|output~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minder_dan_tien~combout\,
	datab => \button_reset~combout\,
	datac => \Ceenheden_naar_puls|output~regout\,
	combout => \Ctientallenmorse|index[3]~7_combout\);

-- Location: LCCOMB_X40_Y17_N2
\Ctientallenmorse|index[1]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[1]~head_lut_combout\ = (\button_reset~combout\ & ((\Ctientallenmorse|index[3]~7_combout\ & ((\Ctientallenmorse|Mux2~0_combout\))) # (!\Ctientallenmorse|index[3]~7_combout\ & (\Ctientallenmorse|index[1]~tail_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|index[1]~tail_lut_combout\,
	datab => \button_reset~combout\,
	datac => \Ctientallenmorse|Mux2~0_combout\,
	datad => \Ctientallenmorse|index[3]~7_combout\,
	combout => \Ctientallenmorse|index[1]~head_lut_combout\);

-- Location: LCCOMB_X40_Y17_N22
\Ctientallenmorse|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Add1~2_combout\ = (\Ctientallenmorse|index[2]~head_lut_combout\ & (!\Ctientallenmorse|Add1~1\)) # (!\Ctientallenmorse|index[2]~head_lut_combout\ & ((\Ctientallenmorse|Add1~1\) # (GND)))
-- \Ctientallenmorse|Add1~3\ = CARRY((!\Ctientallenmorse|Add1~1\) # (!\Ctientallenmorse|index[2]~head_lut_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|index[2]~head_lut_combout\,
	datad => VCC,
	cin => \Ctientallenmorse|Add1~1\,
	combout => \Ctientallenmorse|Add1~2_combout\,
	cout => \Ctientallenmorse|Add1~3\);

-- Location: LCCOMB_X40_Y17_N24
\Ctientallenmorse|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Add1~4_combout\ = (\Ctientallenmorse|index[3]~head_lut_combout\ & (\Ctientallenmorse|Add1~3\ $ (GND))) # (!\Ctientallenmorse|index[3]~head_lut_combout\ & (!\Ctientallenmorse|Add1~3\ & VCC))
-- \Ctientallenmorse|Add1~5\ = CARRY((\Ctientallenmorse|index[3]~head_lut_combout\ & !\Ctientallenmorse|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|index[3]~head_lut_combout\,
	datad => VCC,
	cin => \Ctientallenmorse|Add1~3\,
	combout => \Ctientallenmorse|Add1~4_combout\,
	cout => \Ctientallenmorse|Add1~5\);

-- Location: LCCOMB_X40_Y17_N26
\Ctientallenmorse|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Add1~6_combout\ = \Ctientallenmorse|Add1~5\ $ (\Ctientallenmorse|index\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ctientallenmorse|index\(4),
	cin => \Ctientallenmorse|Add1~5\,
	combout => \Ctientallenmorse|Add1~6_combout\);

-- Location: LCCOMB_X39_Y22_N6
\Ceenheden|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenheden|Equal0~0_combout\ = (\Ceenheden|output\(0) & (!\Ceenheden|output\(2) & (!\Ceenheden|output\(1) & \Ceenheden|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(0),
	datab => \Ceenheden|output\(2),
	datac => \Ceenheden|output\(1),
	datad => \Ceenheden|output\(3),
	combout => \Ceenheden|Equal0~0_combout\);

-- Location: LCFF_X39_Y22_N29
\Ceenheden|over\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Cknop_naar_puls|output~clkctrl_outclk\,
	sdata => \Ceenheden|Equal0~0_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenheden|over~regout\);

-- Location: LCCOMB_X39_Y22_N28
minder_dan_tien : cycloneii_lcell_comb
-- Equation(s):
-- \minder_dan_tien~combout\ = ((!\Ceenheden|over~regout\ & \minder_dan_tien~combout\)) # (!\button_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_reset~combout\,
	datac => \Ceenheden|over~regout\,
	datad => \minder_dan_tien~combout\,
	combout => \minder_dan_tien~combout\);

-- Location: LCCOMB_X39_Y22_N16
\Ctientallenmorse|finished~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|finished~0_combout\ = ((!\minder_dan_tien~combout\ & \Ceenheden_naar_puls|output~regout\)) # (!\button_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minder_dan_tien~combout\,
	datac => \Ceenheden_naar_puls|output~regout\,
	datad => \button_reset~combout\,
	combout => \Ctientallenmorse|finished~0_combout\);

-- Location: LCCOMB_X38_Y18_N14
\Ctientallenmorse|cnt[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[2]~27_combout\ = (\Ctientallenmorse|cnt\(2) & (\Ctientallenmorse|cnt[1]~26\ $ (GND))) # (!\Ctientallenmorse|cnt\(2) & (!\Ctientallenmorse|cnt[1]~26\ & VCC))
-- \Ctientallenmorse|cnt[2]~28\ = CARRY((\Ctientallenmorse|cnt\(2) & !\Ctientallenmorse|cnt[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(2),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[1]~26\,
	combout => \Ctientallenmorse|cnt[2]~27_combout\,
	cout => \Ctientallenmorse|cnt[2]~28\);

-- Location: LCCOMB_X38_Y17_N18
\Ctientallenmorse|cnt[20]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[20]~63_combout\ = (\Ctientallenmorse|cnt\(20) & (\Ctientallenmorse|cnt[19]~62\ $ (GND))) # (!\Ctientallenmorse|cnt\(20) & (!\Ctientallenmorse|cnt[19]~62\ & VCC))
-- \Ctientallenmorse|cnt[20]~64\ = CARRY((\Ctientallenmorse|cnt\(20) & !\Ctientallenmorse|cnt[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(20),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[19]~62\,
	combout => \Ctientallenmorse|cnt[20]~63_combout\,
	cout => \Ctientallenmorse|cnt[20]~64\);

-- Location: LCCOMB_X38_Y17_N22
\Ctientallenmorse|cnt[22]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[22]~67_combout\ = \Ctientallenmorse|cnt[21]~66\ $ (!\Ctientallenmorse|cnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ctientallenmorse|cnt\(22),
	cin => \Ctientallenmorse|cnt[21]~66\,
	combout => \Ctientallenmorse|cnt[22]~67_combout\);

-- Location: LCFF_X38_Y17_N23
\Ctientallenmorse|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[22]~67_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(22));

-- Location: LCCOMB_X38_Y17_N10
\Ctientallenmorse|cnt[16]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[16]~55_combout\ = (\Ctientallenmorse|cnt\(16) & (\Ctientallenmorse|cnt[15]~54\ $ (GND))) # (!\Ctientallenmorse|cnt\(16) & (!\Ctientallenmorse|cnt[15]~54\ & VCC))
-- \Ctientallenmorse|cnt[16]~56\ = CARRY((\Ctientallenmorse|cnt\(16) & !\Ctientallenmorse|cnt[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(16),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[15]~54\,
	combout => \Ctientallenmorse|cnt[16]~55_combout\,
	cout => \Ctientallenmorse|cnt[16]~56\);

-- Location: LCFF_X38_Y17_N11
\Ctientallenmorse|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[16]~55_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(16));

-- Location: LCCOMB_X38_Y17_N12
\Ctientallenmorse|cnt[17]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[17]~57_combout\ = (\Ctientallenmorse|cnt\(17) & (!\Ctientallenmorse|cnt[16]~56\)) # (!\Ctientallenmorse|cnt\(17) & ((\Ctientallenmorse|cnt[16]~56\) # (GND)))
-- \Ctientallenmorse|cnt[17]~58\ = CARRY((!\Ctientallenmorse|cnt[16]~56\) # (!\Ctientallenmorse|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(17),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[16]~56\,
	combout => \Ctientallenmorse|cnt[17]~57_combout\,
	cout => \Ctientallenmorse|cnt[17]~58\);

-- Location: LCFF_X38_Y17_N13
\Ctientallenmorse|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[17]~57_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(17));

-- Location: LCCOMB_X38_Y18_N0
\Ctientallenmorse|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|LessThan0~2_combout\ = (!\Ctientallenmorse|cnt\(15) & (!\Ctientallenmorse|cnt\(16) & !\Ctientallenmorse|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(15),
	datac => \Ctientallenmorse|cnt\(16),
	datad => \Ctientallenmorse|cnt\(17),
	combout => \Ctientallenmorse|LessThan0~2_combout\);

-- Location: LCCOMB_X38_Y17_N6
\Ctientallenmorse|cnt[14]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[14]~51_combout\ = (\Ctientallenmorse|cnt\(14) & (\Ctientallenmorse|cnt[13]~50\ $ (GND))) # (!\Ctientallenmorse|cnt\(14) & (!\Ctientallenmorse|cnt[13]~50\ & VCC))
-- \Ctientallenmorse|cnt[14]~52\ = CARRY((\Ctientallenmorse|cnt\(14) & !\Ctientallenmorse|cnt[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(14),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[13]~50\,
	combout => \Ctientallenmorse|cnt[14]~51_combout\,
	cout => \Ctientallenmorse|cnt[14]~52\);

-- Location: LCFF_X38_Y17_N7
\Ctientallenmorse|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[14]~51_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(14));

-- Location: LCCOMB_X38_Y18_N2
\Ctientallenmorse|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|LessThan0~3_combout\ = (((!\Ctientallenmorse|cnt\(7) & !\Ctientallenmorse|cnt\(6))) # (!\Ctientallenmorse|cnt\(9))) # (!\Ctientallenmorse|cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(7),
	datab => \Ctientallenmorse|cnt\(6),
	datac => \Ctientallenmorse|cnt\(8),
	datad => \Ctientallenmorse|cnt\(9),
	combout => \Ctientallenmorse|LessThan0~3_combout\);

-- Location: LCCOMB_X38_Y18_N4
\Ctientallenmorse|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|LessThan0~4_combout\ = (\Ctientallenmorse|cnt\(11) & ((\Ctientallenmorse|cnt\(10)) # (!\Ctientallenmorse|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(10),
	datac => \Ctientallenmorse|cnt\(11),
	datad => \Ctientallenmorse|LessThan0~3_combout\,
	combout => \Ctientallenmorse|LessThan0~4_combout\);

-- Location: LCCOMB_X38_Y18_N6
\Ctientallenmorse|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|LessThan0~5_combout\ = (\Ctientallenmorse|cnt\(14) & ((\Ctientallenmorse|cnt\(13)) # ((\Ctientallenmorse|LessThan0~4_combout\) # (\Ctientallenmorse|cnt\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(13),
	datab => \Ctientallenmorse|cnt\(14),
	datac => \Ctientallenmorse|LessThan0~4_combout\,
	datad => \Ctientallenmorse|cnt\(12),
	combout => \Ctientallenmorse|LessThan0~5_combout\);

-- Location: LCCOMB_X38_Y18_N8
\Ctientallenmorse|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|LessThan0~6_combout\ = (((\Ctientallenmorse|LessThan0~2_combout\ & !\Ctientallenmorse|LessThan0~5_combout\)) # (!\Ctientallenmorse|cnt\(18))) # (!\Ctientallenmorse|cnt\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(19),
	datab => \Ctientallenmorse|LessThan0~2_combout\,
	datac => \Ctientallenmorse|cnt\(18),
	datad => \Ctientallenmorse|LessThan0~5_combout\,
	combout => \Ctientallenmorse|LessThan0~6_combout\);

-- Location: LCCOMB_X38_Y17_N28
\Ctientallenmorse|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|LessThan0~7_combout\ = (\Ctientallenmorse|cnt\(22) & ((\Ctientallenmorse|cnt\(21)) # ((\Ctientallenmorse|cnt\(20)) # (!\Ctientallenmorse|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(21),
	datab => \Ctientallenmorse|cnt\(20),
	datac => \Ctientallenmorse|cnt\(22),
	datad => \Ctientallenmorse|LessThan0~6_combout\,
	combout => \Ctientallenmorse|LessThan0~7_combout\);

-- Location: LCFF_X38_Y18_N15
\Ctientallenmorse|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[2]~27_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(2));

-- Location: LCCOMB_X38_Y18_N18
\Ctientallenmorse|cnt[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[4]~31_combout\ = (\Ctientallenmorse|cnt\(4) & (\Ctientallenmorse|cnt[3]~30\ $ (GND))) # (!\Ctientallenmorse|cnt\(4) & (!\Ctientallenmorse|cnt[3]~30\ & VCC))
-- \Ctientallenmorse|cnt[4]~32\ = CARRY((\Ctientallenmorse|cnt\(4) & !\Ctientallenmorse|cnt[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(4),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[3]~30\,
	combout => \Ctientallenmorse|cnt[4]~31_combout\,
	cout => \Ctientallenmorse|cnt[4]~32\);

-- Location: LCFF_X38_Y18_N19
\Ctientallenmorse|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[4]~31_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(4));

-- Location: LCCOMB_X38_Y18_N22
\Ctientallenmorse|cnt[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[6]~35_combout\ = (\Ctientallenmorse|cnt\(6) & (\Ctientallenmorse|cnt[5]~34\ $ (GND))) # (!\Ctientallenmorse|cnt\(6) & (!\Ctientallenmorse|cnt[5]~34\ & VCC))
-- \Ctientallenmorse|cnt[6]~36\ = CARRY((\Ctientallenmorse|cnt\(6) & !\Ctientallenmorse|cnt[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(6),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[5]~34\,
	combout => \Ctientallenmorse|cnt[6]~35_combout\,
	cout => \Ctientallenmorse|cnt[6]~36\);

-- Location: LCFF_X38_Y18_N23
\Ctientallenmorse|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[6]~35_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(6));

-- Location: LCCOMB_X38_Y18_N26
\Ctientallenmorse|cnt[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[8]~39_combout\ = (\Ctientallenmorse|cnt\(8) & (\Ctientallenmorse|cnt[7]~38\ $ (GND))) # (!\Ctientallenmorse|cnt\(8) & (!\Ctientallenmorse|cnt[7]~38\ & VCC))
-- \Ctientallenmorse|cnt[8]~40\ = CARRY((\Ctientallenmorse|cnt\(8) & !\Ctientallenmorse|cnt[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(8),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[7]~38\,
	combout => \Ctientallenmorse|cnt[8]~39_combout\,
	cout => \Ctientallenmorse|cnt[8]~40\);

-- Location: LCFF_X38_Y18_N27
\Ctientallenmorse|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[8]~39_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(8));

-- Location: LCCOMB_X38_Y18_N28
\Ctientallenmorse|cnt[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[9]~41_combout\ = (\Ctientallenmorse|cnt\(9) & (!\Ctientallenmorse|cnt[8]~40\)) # (!\Ctientallenmorse|cnt\(9) & ((\Ctientallenmorse|cnt[8]~40\) # (GND)))
-- \Ctientallenmorse|cnt[9]~42\ = CARRY((!\Ctientallenmorse|cnt[8]~40\) # (!\Ctientallenmorse|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(9),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[8]~40\,
	combout => \Ctientallenmorse|cnt[9]~41_combout\,
	cout => \Ctientallenmorse|cnt[9]~42\);

-- Location: LCFF_X38_Y18_N29
\Ctientallenmorse|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[9]~41_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(9));

-- Location: LCCOMB_X38_Y18_N30
\Ctientallenmorse|cnt[10]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[10]~43_combout\ = (\Ctientallenmorse|cnt\(10) & (\Ctientallenmorse|cnt[9]~42\ $ (GND))) # (!\Ctientallenmorse|cnt\(10) & (!\Ctientallenmorse|cnt[9]~42\ & VCC))
-- \Ctientallenmorse|cnt[10]~44\ = CARRY((\Ctientallenmorse|cnt\(10) & !\Ctientallenmorse|cnt[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(10),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[9]~42\,
	combout => \Ctientallenmorse|cnt[10]~43_combout\,
	cout => \Ctientallenmorse|cnt[10]~44\);

-- Location: LCFF_X38_Y18_N31
\Ctientallenmorse|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[10]~43_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(10));

-- Location: LCCOMB_X38_Y17_N0
\Ctientallenmorse|cnt[11]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[11]~45_combout\ = (\Ctientallenmorse|cnt\(11) & (!\Ctientallenmorse|cnt[10]~44\)) # (!\Ctientallenmorse|cnt\(11) & ((\Ctientallenmorse|cnt[10]~44\) # (GND)))
-- \Ctientallenmorse|cnt[11]~46\ = CARRY((!\Ctientallenmorse|cnt[10]~44\) # (!\Ctientallenmorse|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(11),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[10]~44\,
	combout => \Ctientallenmorse|cnt[11]~45_combout\,
	cout => \Ctientallenmorse|cnt[11]~46\);

-- Location: LCFF_X38_Y17_N1
\Ctientallenmorse|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[11]~45_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(11));

-- Location: LCCOMB_X38_Y17_N2
\Ctientallenmorse|cnt[12]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[12]~47_combout\ = (\Ctientallenmorse|cnt\(12) & (\Ctientallenmorse|cnt[11]~46\ $ (GND))) # (!\Ctientallenmorse|cnt\(12) & (!\Ctientallenmorse|cnt[11]~46\ & VCC))
-- \Ctientallenmorse|cnt[12]~48\ = CARRY((\Ctientallenmorse|cnt\(12) & !\Ctientallenmorse|cnt[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(12),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[11]~46\,
	combout => \Ctientallenmorse|cnt[12]~47_combout\,
	cout => \Ctientallenmorse|cnt[12]~48\);

-- Location: LCFF_X38_Y17_N3
\Ctientallenmorse|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[12]~47_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(12));

-- Location: LCCOMB_X38_Y17_N4
\Ctientallenmorse|cnt[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[13]~49_combout\ = (\Ctientallenmorse|cnt\(13) & (!\Ctientallenmorse|cnt[12]~48\)) # (!\Ctientallenmorse|cnt\(13) & ((\Ctientallenmorse|cnt[12]~48\) # (GND)))
-- \Ctientallenmorse|cnt[13]~50\ = CARRY((!\Ctientallenmorse|cnt[12]~48\) # (!\Ctientallenmorse|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(13),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[12]~48\,
	combout => \Ctientallenmorse|cnt[13]~49_combout\,
	cout => \Ctientallenmorse|cnt[13]~50\);

-- Location: LCFF_X38_Y17_N5
\Ctientallenmorse|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[13]~49_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(13));

-- Location: LCCOMB_X38_Y17_N8
\Ctientallenmorse|cnt[15]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[15]~53_combout\ = (\Ctientallenmorse|cnt\(15) & (!\Ctientallenmorse|cnt[14]~52\)) # (!\Ctientallenmorse|cnt\(15) & ((\Ctientallenmorse|cnt[14]~52\) # (GND)))
-- \Ctientallenmorse|cnt[15]~54\ = CARRY((!\Ctientallenmorse|cnt[14]~52\) # (!\Ctientallenmorse|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(15),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[14]~52\,
	combout => \Ctientallenmorse|cnt[15]~53_combout\,
	cout => \Ctientallenmorse|cnt[15]~54\);

-- Location: LCFF_X38_Y17_N9
\Ctientallenmorse|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[15]~53_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(15));

-- Location: LCCOMB_X38_Y17_N14
\Ctientallenmorse|cnt[18]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|cnt[18]~59_combout\ = (\Ctientallenmorse|cnt\(18) & (\Ctientallenmorse|cnt[17]~58\ $ (GND))) # (!\Ctientallenmorse|cnt\(18) & (!\Ctientallenmorse|cnt[17]~58\ & VCC))
-- \Ctientallenmorse|cnt[18]~60\ = CARRY((\Ctientallenmorse|cnt\(18) & !\Ctientallenmorse|cnt[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(18),
	datad => VCC,
	cin => \Ctientallenmorse|cnt[17]~58\,
	combout => \Ctientallenmorse|cnt[18]~59_combout\,
	cout => \Ctientallenmorse|cnt[18]~60\);

-- Location: LCFF_X38_Y17_N15
\Ctientallenmorse|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[18]~59_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(18));

-- Location: LCFF_X38_Y17_N19
\Ctientallenmorse|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|cnt[20]~63_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	sclr => \Ctientallenmorse|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|cnt\(20));

-- Location: LCCOMB_X39_Y17_N30
\Ctientallenmorse|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux7~0_combout\ = (\Ctientallen|output\(2) & (!\Ctientallen|output\(3) & ((!\Ctientallen|output\(1)) # (!\Ctientallen|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(0),
	datab => \Ctientallen|output\(2),
	datac => \Ctientallen|output\(1),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenmorse|Mux7~0_combout\);

-- Location: CLKCTRL_G7
\Ctientallenmorse|index[3]~7clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Ctientallenmorse|index[3]~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Ctientallenmorse|index[3]~7clkctrl_outclk\);

-- Location: LCCOMB_X39_Y17_N6
\Ctientallenmorse|index[3]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[3]~latch_combout\ = (\button_reset~combout\ & ((GLOBAL(\Ctientallenmorse|index[3]~7clkctrl_outclk\) & (\Ctientallenmorse|Mux7~0_combout\)) # (!GLOBAL(\Ctientallenmorse|index[3]~7clkctrl_outclk\) & 
-- ((\Ctientallenmorse|index[3]~latch_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \Ctientallenmorse|Mux7~0_combout\,
	datac => \Ctientallenmorse|index[3]~latch_combout\,
	datad => \Ctientallenmorse|index[3]~7clkctrl_outclk\,
	combout => \Ctientallenmorse|index[3]~latch_combout\);

-- Location: LCCOMB_X38_Y17_N24
\Ctientallenmorse|index[3]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[3]~data_lut_combout\ = \Ctientallenmorse|Add1~4_combout\ $ (\Ctientallenmorse|index[3]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctientallenmorse|Add1~4_combout\,
	datad => \Ctientallenmorse|index[3]~latch_combout\,
	combout => \Ctientallenmorse|index[3]~data_lut_combout\);

-- Location: LCCOMB_X39_Y17_N14
\Ctientallenmorse|index[2]~clear_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[2]~clear_lut_combout\ = (\Ctientallenmorse|index[3]~7_combout\) # (!\button_reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_reset~combout\,
	datad => \Ctientallenmorse|index[3]~7_combout\,
	combout => \Ctientallenmorse|index[2]~clear_lut_combout\);

-- Location: LCFF_X38_Y17_N25
\Ctientallenmorse|index[3]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|index[3]~data_lut_combout\,
	aclr => \Ctientallenmorse|index[2]~clear_lut_combout\,
	ena => \Ctientallenmorse|index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|index[3]~_emulated_regout\);

-- Location: LCCOMB_X38_Y17_N26
\Ctientallenmorse|index[3]~tail_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[3]~tail_lut_combout\ = \Ctientallenmorse|index[3]~_emulated_regout\ $ (\Ctientallenmorse|index[3]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctientallenmorse|index[3]~_emulated_regout\,
	datad => \Ctientallenmorse|index[3]~latch_combout\,
	combout => \Ctientallenmorse|index[3]~tail_lut_combout\);

-- Location: LCCOMB_X40_Y17_N6
\Ctientallenmorse|index[3]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[3]~head_lut_combout\ = (\button_reset~combout\ & ((\Ctientallenmorse|index[3]~7_combout\ & ((\Ctientallenmorse|Mux7~0_combout\))) # (!\Ctientallenmorse|index[3]~7_combout\ & (\Ctientallenmorse|index[3]~tail_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \Ctientallenmorse|index[3]~tail_lut_combout\,
	datac => \Ctientallenmorse|Mux7~0_combout\,
	datad => \Ctientallenmorse|index[3]~7_combout\,
	combout => \Ctientallenmorse|index[3]~head_lut_combout\);

-- Location: LCCOMB_X37_Y17_N0
\Ctientallenmorse|index[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[4]~8_combout\ = (\Ctientallenmorse|cnt\(22) & ((!\Ctientallenmorse|index\(4)) # (!\Ctientallenmorse|index[3]~head_lut_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|cnt\(22),
	datac => \Ctientallenmorse|index[3]~head_lut_combout\,
	datad => \Ctientallenmorse|index\(4),
	combout => \Ctientallenmorse|index[4]~8_combout\);

-- Location: LCCOMB_X38_Y17_N30
\Ctientallenmorse|index[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[4]~9_combout\ = (\Ctientallenmorse|index[4]~8_combout\ & ((\Ctientallenmorse|cnt\(21)) # ((\Ctientallenmorse|cnt\(20)) # (!\Ctientallenmorse|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|cnt\(21),
	datab => \Ctientallenmorse|cnt\(20),
	datac => \Ctientallenmorse|index[4]~8_combout\,
	datad => \Ctientallenmorse|LessThan0~6_combout\,
	combout => \Ctientallenmorse|index[4]~9_combout\);

-- Location: LCFF_X40_Y17_N27
\Ctientallenmorse|index[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|Add1~6_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	ena => \Ctientallenmorse|index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|index\(4));

-- Location: LCCOMB_X40_Y17_N12
\Ctientallenmorse|index[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[0]~10_combout\ = !\Ctientallenmorse|index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctientallenmorse|index\(0),
	combout => \Ctientallenmorse|index[0]~10_combout\);

-- Location: LCFF_X40_Y17_N13
\Ctientallenmorse|index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|index[0]~10_combout\,
	aclr => \Ctientallenmorse|finished~0_combout\,
	ena => \Ctientallenmorse|index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|index\(0));

-- Location: LCCOMB_X40_Y17_N8
\Ctientallen|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallen|Equal0~0_combout\ = (!\Ctientallen|output\(1) & (\Ctientallen|output\(3) & (!\Ctientallen|output\(2) & \Ctientallen|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(3),
	datac => \Ctientallen|output\(2),
	datad => \Ctientallen|output\(0),
	combout => \Ctientallen|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y17_N8
\Ctientallenmorse|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux1~0_combout\ = (\Ctientallen|output\(0) & (((\Ctientallen|output\(1) & !\Ctientallen|output\(3))))) # (!\Ctientallen|output\(0) & (!\Ctientallen|output\(2) & (\Ctientallen|output\(1) $ (\Ctientallen|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(0),
	datab => \Ctientallen|output\(2),
	datac => \Ctientallen|output\(1),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenmorse|Mux1~0_combout\);

-- Location: LCCOMB_X39_Y17_N16
\Ctientallenmorse|index[2]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[2]~latch_combout\ = (\button_reset~combout\ & ((GLOBAL(\Ctientallenmorse|index[3]~7clkctrl_outclk\) & (\Ctientallenmorse|Mux1~0_combout\)) # (!GLOBAL(\Ctientallenmorse|index[3]~7clkctrl_outclk\) & 
-- ((\Ctientallenmorse|index[2]~latch_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \Ctientallenmorse|Mux1~0_combout\,
	datac => \Ctientallenmorse|index[2]~latch_combout\,
	datad => \Ctientallenmorse|index[3]~7clkctrl_outclk\,
	combout => \Ctientallenmorse|index[2]~latch_combout\);

-- Location: LCCOMB_X40_Y17_N28
\Ctientallenmorse|index[2]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[2]~data_lut_combout\ = \Ctientallenmorse|index[2]~latch_combout\ $ (\Ctientallenmorse|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctientallenmorse|index[2]~latch_combout\,
	datad => \Ctientallenmorse|Add1~2_combout\,
	combout => \Ctientallenmorse|index[2]~data_lut_combout\);

-- Location: LCFF_X40_Y17_N29
\Ctientallenmorse|index[2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctientallenmorse|index[2]~data_lut_combout\,
	aclr => \Ctientallenmorse|index[2]~clear_lut_combout\,
	ena => \Ctientallenmorse|index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctientallenmorse|index[2]~_emulated_regout\);

-- Location: LCCOMB_X39_Y17_N0
\Ctientallenmorse|index[2]~tail_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[2]~tail_lut_combout\ = \Ctientallenmorse|index[2]~latch_combout\ $ (\Ctientallenmorse|index[2]~_emulated_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctientallenmorse|index[2]~latch_combout\,
	datad => \Ctientallenmorse|index[2]~_emulated_regout\,
	combout => \Ctientallenmorse|index[2]~tail_lut_combout\);

-- Location: LCCOMB_X39_Y17_N10
\Ctientallenmorse|index[2]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|index[2]~head_lut_combout\ = (\button_reset~combout\ & ((\Ctientallenmorse|index[3]~7_combout\ & ((\Ctientallenmorse|Mux1~0_combout\))) # (!\Ctientallenmorse|index[3]~7_combout\ & (\Ctientallenmorse|index[2]~tail_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_reset~combout\,
	datab => \Ctientallenmorse|index[2]~tail_lut_combout\,
	datac => \Ctientallenmorse|Mux1~0_combout\,
	datad => \Ctientallenmorse|index[3]~7_combout\,
	combout => \Ctientallenmorse|index[2]~head_lut_combout\);

-- Location: LCCOMB_X39_Y19_N8
\Ctientallenmorse|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux14~4_combout\ = (\Ctientallenmorse|index[2]~head_lut_combout\ & ((\Ctientallenmorse|index\(0) & ((\Ctientallen|Equal0~0_combout\))) # (!\Ctientallenmorse|index\(0) & (!\Ctientallenmorse|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|Mux4~0_combout\,
	datab => \Ctientallenmorse|index\(0),
	datac => \Ctientallen|Equal0~0_combout\,
	datad => \Ctientallenmorse|index[2]~head_lut_combout\,
	combout => \Ctientallenmorse|Mux14~4_combout\);

-- Location: LCCOMB_X39_Y19_N18
\Ctientallenmorse|Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux14~5_combout\ = (\Ctientallenmorse|index[3]~head_lut_combout\ & (((\Ctientallenmorse|index[1]~head_lut_combout\)))) # (!\Ctientallenmorse|index[3]~head_lut_combout\ & ((\Ctientallenmorse|index[1]~head_lut_combout\ & 
-- (!\Ctientallenmorse|Mux14~3_combout\)) # (!\Ctientallenmorse|index[1]~head_lut_combout\ & ((\Ctientallenmorse|Mux14~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|Mux14~3_combout\,
	datab => \Ctientallenmorse|index[3]~head_lut_combout\,
	datac => \Ctientallenmorse|Mux14~4_combout\,
	datad => \Ctientallenmorse|index[1]~head_lut_combout\,
	combout => \Ctientallenmorse|Mux14~5_combout\);

-- Location: LCCOMB_X39_Y17_N4
\Ctientallenmorse|Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux14~7_combout\ = (\Ctientallen|output\(2) & (!\Ctientallen|output\(3) & ((\Ctientallenmorse|index[2]~head_lut_combout\) # (!\Ctientallen|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(2),
	datab => \Ctientallen|output\(3),
	datac => \Ctientallen|output\(1),
	datad => \Ctientallenmorse|index[2]~head_lut_combout\,
	combout => \Ctientallenmorse|Mux14~7_combout\);

-- Location: LCCOMB_X39_Y17_N22
\Ctientallenmorse|Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux14~6_combout\ = (\Ctientallen|output\(3) & (!\Ctientallen|output\(2) & (!\Ctientallen|output\(1)))) # (!\Ctientallen|output\(3) & ((\Ctientallenmorse|index[2]~head_lut_combout\ & (\Ctientallen|output\(2))) # 
-- (!\Ctientallenmorse|index[2]~head_lut_combout\ & ((\Ctientallen|output\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(2),
	datab => \Ctientallen|output\(3),
	datac => \Ctientallen|output\(1),
	datad => \Ctientallenmorse|index[2]~head_lut_combout\,
	combout => \Ctientallenmorse|Mux14~6_combout\);

-- Location: LCCOMB_X39_Y19_N4
\Ctientallenmorse|Mux14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux14~8_combout\ = (\Ctientallen|output\(0) & ((\Ctientallenmorse|Mux14~6_combout\ & (!\Ctientallenmorse|index\(0))) # (!\Ctientallenmorse|Mux14~6_combout\ & ((!\Ctientallenmorse|Mux14~7_combout\))))) # (!\Ctientallen|output\(0) & 
-- (((!\Ctientallenmorse|Mux14~7_combout\)) # (!\Ctientallenmorse|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|index\(0),
	datab => \Ctientallen|output\(0),
	datac => \Ctientallenmorse|Mux14~7_combout\,
	datad => \Ctientallenmorse|Mux14~6_combout\,
	combout => \Ctientallenmorse|Mux14~8_combout\);

-- Location: LCCOMB_X40_Y19_N30
\Ctientallenmorse|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux10~0_combout\ = (\Ctientallen|output\(0) & ((\Ctientallen|output\(1) & (\Ctientallen|output\(2) & !\Ctientallen|output\(3))) # (!\Ctientallen|output\(1) & (!\Ctientallen|output\(2) & \Ctientallen|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(1),
	datab => \Ctientallen|output\(2),
	datac => \Ctientallen|output\(3),
	datad => \Ctientallen|output\(0),
	combout => \Ctientallenmorse|Mux10~0_combout\);

-- Location: LCCOMB_X40_Y17_N4
\Ctientallenmorse|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux14~0_combout\ = (\Ctientallenmorse|index\(0) & (((\Ctientallenmorse|Mux10~0_combout\)))) # (!\Ctientallenmorse|index\(0) & ((\Ctientallenmorse|index[2]~head_lut_combout\) # ((!\Ctientallenmorse|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|index[2]~head_lut_combout\,
	datab => \Ctientallenmorse|index\(0),
	datac => \Ctientallenmorse|Mux7~0_combout\,
	datad => \Ctientallenmorse|Mux10~0_combout\,
	combout => \Ctientallenmorse|Mux14~0_combout\);

-- Location: LCCOMB_X39_Y19_N14
\Ctientallenmorse|Mux14~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux14~9_combout\ = (\Ctientallenmorse|index[3]~head_lut_combout\ & ((\Ctientallenmorse|Mux14~5_combout\ & (\Ctientallenmorse|Mux14~8_combout\)) # (!\Ctientallenmorse|Mux14~5_combout\ & ((\Ctientallenmorse|Mux14~0_combout\))))) # 
-- (!\Ctientallenmorse|index[3]~head_lut_combout\ & (\Ctientallenmorse|Mux14~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|index[3]~head_lut_combout\,
	datab => \Ctientallenmorse|Mux14~5_combout\,
	datac => \Ctientallenmorse|Mux14~8_combout\,
	datad => \Ctientallenmorse|Mux14~0_combout\,
	combout => \Ctientallenmorse|Mux14~9_combout\);

-- Location: LCCOMB_X39_Y20_N24
\Ceenhedenmorse|index[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|index[0]~10_combout\ = !\Ceenhedenmorse|index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ceenhedenmorse|index\(0),
	combout => \Ceenhedenmorse|index[0]~10_combout\);

-- Location: LCFF_X39_Y20_N25
\Ceenhedenmorse|index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ceenhedenmorse|index[0]~10_combout\,
	aclr => \Ceenhedenmorse|finished~2_combout\,
	ena => \Ceenhedenmorse|index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ceenhedenmorse|index\(0));

-- Location: LCCOMB_X39_Y22_N14
\Ceenhedenmorse|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux10~0_combout\ = (\Ceenheden|output\(0) & ((\Ceenheden|output\(3) & (!\Ceenheden|output\(2) & !\Ceenheden|output\(1))) # (!\Ceenheden|output\(3) & (\Ceenheden|output\(2) & \Ceenheden|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(0),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(2),
	datad => \Ceenheden|output\(1),
	combout => \Ceenhedenmorse|Mux10~0_combout\);

-- Location: LCCOMB_X39_Y22_N4
\Ceenhedenmorse|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux14~0_combout\ = (\Ceenhedenmorse|index\(0) & (((\Ceenhedenmorse|Mux10~0_combout\)))) # (!\Ceenhedenmorse|index\(0) & (((\Ceenhedenmorse|index[2]~head_lut_combout\)) # (!\Ceenhedenmorse|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|Mux7~0_combout\,
	datab => \Ceenhedenmorse|index\(0),
	datac => \Ceenhedenmorse|Mux10~0_combout\,
	datad => \Ceenhedenmorse|index[2]~head_lut_combout\,
	combout => \Ceenhedenmorse|Mux14~0_combout\);

-- Location: LCCOMB_X39_Y22_N0
\Ceenhedenmorse|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux14~1_combout\ = (\Ceenheden|output\(3) & (!\Ceenheden|output\(2) & (!\Ceenheden|output\(1) & !\Ceenheden|output\(0)))) # (!\Ceenheden|output\(3) & ((\Ceenheden|output\(2)) # ((\Ceenheden|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(3),
	datab => \Ceenheden|output\(2),
	datac => \Ceenheden|output\(1),
	datad => \Ceenheden|output\(0),
	combout => \Ceenhedenmorse|Mux14~1_combout\);

-- Location: LCCOMB_X40_Y22_N16
\Ceenhedenmorse|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux14~3_combout\ = (\Ceenhedenmorse|Mux14~2_combout\ & ((\Ceenhedenmorse|index\(0)) # ((\Ceenhedenmorse|Mux14~1_combout\) # (!\Ceenhedenmorse|index[2]~head_lut_combout\)))) # (!\Ceenhedenmorse|Mux14~2_combout\ & 
-- (((\Ceenhedenmorse|Mux14~1_combout\ & !\Ceenhedenmorse|index[2]~head_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|Mux14~2_combout\,
	datab => \Ceenhedenmorse|index\(0),
	datac => \Ceenhedenmorse|Mux14~1_combout\,
	datad => \Ceenhedenmorse|index[2]~head_lut_combout\,
	combout => \Ceenhedenmorse|Mux14~3_combout\);

-- Location: LCCOMB_X39_Y22_N20
\Ceenhedenmorse|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux4~0_combout\ = (\Ceenheden|output\(2) & (((!\Ceenheden|output\(3))))) # (!\Ceenheden|output\(2) & ((\Ceenheden|output\(1) & ((!\Ceenheden|output\(3)))) # (!\Ceenheden|output\(1) & (!\Ceenheden|output\(0) & \Ceenheden|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(0),
	datab => \Ceenheden|output\(2),
	datac => \Ceenheden|output\(1),
	datad => \Ceenheden|output\(3),
	combout => \Ceenhedenmorse|Mux4~0_combout\);

-- Location: LCCOMB_X40_Y22_N26
\Ceenhedenmorse|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux14~4_combout\ = (\Ceenhedenmorse|index[2]~head_lut_combout\ & ((\Ceenhedenmorse|index\(0) & (\Ceenheden|Equal0~0_combout\)) # (!\Ceenhedenmorse|index\(0) & ((!\Ceenhedenmorse|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|index\(0),
	datab => \Ceenheden|Equal0~0_combout\,
	datac => \Ceenhedenmorse|Mux4~0_combout\,
	datad => \Ceenhedenmorse|index[2]~head_lut_combout\,
	combout => \Ceenhedenmorse|Mux14~4_combout\);

-- Location: LCCOMB_X39_Y19_N16
\Ceenhedenmorse|Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux14~5_combout\ = (\Ceenhedenmorse|index[3]~head_lut_combout\ & (\Ceenhedenmorse|index[1]~head_lut_combout\)) # (!\Ceenhedenmorse|index[3]~head_lut_combout\ & ((\Ceenhedenmorse|index[1]~head_lut_combout\ & 
-- (!\Ceenhedenmorse|Mux14~3_combout\)) # (!\Ceenhedenmorse|index[1]~head_lut_combout\ & ((\Ceenhedenmorse|Mux14~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|index[3]~head_lut_combout\,
	datab => \Ceenhedenmorse|index[1]~head_lut_combout\,
	datac => \Ceenhedenmorse|Mux14~3_combout\,
	datad => \Ceenhedenmorse|Mux14~4_combout\,
	combout => \Ceenhedenmorse|Mux14~5_combout\);

-- Location: LCCOMB_X40_Y22_N28
\Ceenhedenmorse|Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux14~6_combout\ = (\Ceenheden|output\(3) & (!\Ceenheden|output\(1) & (!\Ceenheden|output\(2)))) # (!\Ceenheden|output\(3) & ((\Ceenhedenmorse|index[2]~head_lut_combout\ & ((\Ceenheden|output\(2)))) # 
-- (!\Ceenhedenmorse|index[2]~head_lut_combout\ & (\Ceenheden|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(1),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(2),
	datad => \Ceenhedenmorse|index[2]~head_lut_combout\,
	combout => \Ceenhedenmorse|Mux14~6_combout\);

-- Location: LCCOMB_X40_Y22_N22
\Ceenhedenmorse|Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux14~7_combout\ = (!\Ceenheden|output\(3) & (\Ceenheden|output\(2) & ((\Ceenhedenmorse|index[2]~head_lut_combout\) # (!\Ceenheden|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(1),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(2),
	datad => \Ceenhedenmorse|index[2]~head_lut_combout\,
	combout => \Ceenhedenmorse|Mux14~7_combout\);

-- Location: LCCOMB_X39_Y19_N2
\Ceenhedenmorse|Mux14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux14~8_combout\ = (\Ceenheden|output\(0) & ((\Ceenhedenmorse|Mux14~6_combout\ & (!\Ceenhedenmorse|index\(0))) # (!\Ceenhedenmorse|Mux14~6_combout\ & ((!\Ceenhedenmorse|Mux14~7_combout\))))) # (!\Ceenheden|output\(0) & 
-- (((!\Ceenhedenmorse|Mux14~7_combout\)) # (!\Ceenhedenmorse|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|index\(0),
	datab => \Ceenheden|output\(0),
	datac => \Ceenhedenmorse|Mux14~6_combout\,
	datad => \Ceenhedenmorse|Mux14~7_combout\,
	combout => \Ceenhedenmorse|Mux14~8_combout\);

-- Location: LCCOMB_X39_Y19_N12
\Ceenhedenmorse|Mux14~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux14~9_combout\ = (\Ceenhedenmorse|index[3]~head_lut_combout\ & ((\Ceenhedenmorse|Mux14~5_combout\ & ((\Ceenhedenmorse|Mux14~8_combout\))) # (!\Ceenhedenmorse|Mux14~5_combout\ & (\Ceenhedenmorse|Mux14~0_combout\)))) # 
-- (!\Ceenhedenmorse|index[3]~head_lut_combout\ & (((\Ceenhedenmorse|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|index[3]~head_lut_combout\,
	datab => \Ceenhedenmorse|Mux14~0_combout\,
	datac => \Ceenhedenmorse|Mux14~5_combout\,
	datad => \Ceenhedenmorse|Mux14~8_combout\,
	combout => \Ceenhedenmorse|Mux14~9_combout\);

-- Location: LCCOMB_X39_Y19_N0
\comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\Ceenhedenmorse|index\(4) & (!\Ctientallenmorse|index\(4) & (\Ctientallenmorse|Mux14~9_combout\))) # (!\Ceenhedenmorse|index\(4) & ((\Ceenhedenmorse|Mux14~9_combout\) # ((!\Ctientallenmorse|index\(4) & 
-- \Ctientallenmorse|Mux14~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|index\(4),
	datab => \Ctientallenmorse|index\(4),
	datac => \Ctientallenmorse|Mux14~9_combout\,
	datad => \Ceenhedenmorse|Mux14~9_combout\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X40_Y17_N18
\Ctientallenmorse|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctientallenmorse|Mux13~0_combout\ = (\Ctientallen|output\(2) & (!\Ctientallen|output\(3) & ((\Ctientallen|output\(0)) # (\Ctientallen|output\(1))))) # (!\Ctientallen|output\(2) & (((!\Ctientallen|output\(1) & \Ctientallen|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallen|output\(2),
	datab => \Ctientallen|output\(0),
	datac => \Ctientallen|output\(1),
	datad => \Ctientallen|output\(3),
	combout => \Ctientallenmorse|Mux13~0_combout\);

-- Location: LCCOMB_X40_Y17_N30
\comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ((\Ctientallenmorse|index[1]~head_lut_combout\ & (!\Ctientallenmorse|Mux13~0_combout\)) # (!\Ctientallenmorse|index[1]~head_lut_combout\ & ((\Ctientallen|Equal0~0_combout\)))) # (!\Ctientallenmorse|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|index\(0),
	datab => \Ctientallenmorse|Mux13~0_combout\,
	datac => \Ctientallen|Equal0~0_combout\,
	datad => \Ctientallenmorse|index[1]~head_lut_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X40_Y17_N0
\comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\Ctientallenmorse|index[2]~head_lut_combout\ & (!\Ctientallenmorse|index[1]~head_lut_combout\ & (!\Ctientallenmorse|index\(0)))) # (!\Ctientallenmorse|index[2]~head_lut_combout\ & ((\comb~3_combout\) # 
-- ((!\Ctientallenmorse|index[1]~head_lut_combout\ & !\Ctientallenmorse|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|index[2]~head_lut_combout\,
	datab => \Ctientallenmorse|index[1]~head_lut_combout\,
	datac => \Ctientallenmorse|index\(0),
	datad => \comb~3_combout\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X40_Y17_N10
\comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (!\Ctientallenmorse|index[3]~head_lut_combout\ & (\Ctientallenmorse|index\(4) & \comb~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctientallenmorse|index[3]~head_lut_combout\,
	datab => \Ctientallenmorse|index\(4),
	datad => \comb~4_combout\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X39_Y22_N8
\Ceenhedenmorse|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ceenhedenmorse|Mux13~0_combout\ = (\Ceenheden|output\(3) & (((!\Ceenheden|output\(2) & !\Ceenheden|output\(1))))) # (!\Ceenheden|output\(3) & (\Ceenheden|output\(2) & ((\Ceenheden|output\(0)) # (\Ceenheden|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|output\(0),
	datab => \Ceenheden|output\(3),
	datac => \Ceenheden|output\(2),
	datad => \Ceenheden|output\(1),
	combout => \Ceenhedenmorse|Mux13~0_combout\);

-- Location: LCCOMB_X39_Y21_N22
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ((\Ceenhedenmorse|index[1]~head_lut_combout\ & ((!\Ceenhedenmorse|Mux13~0_combout\))) # (!\Ceenhedenmorse|index[1]~head_lut_combout\ & (\Ceenheden|Equal0~0_combout\))) # (!\Ceenhedenmorse|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenheden|Equal0~0_combout\,
	datab => \Ceenhedenmorse|index\(0),
	datac => \Ceenhedenmorse|Mux13~0_combout\,
	datad => \Ceenhedenmorse|index[1]~head_lut_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X39_Y21_N26
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\Ceenhedenmorse|index\(0) & (!\Ceenhedenmorse|index[2]~head_lut_combout\ & ((\comb~0_combout\)))) # (!\Ceenhedenmorse|index\(0) & (((!\Ceenhedenmorse|index[2]~head_lut_combout\ & \comb~0_combout\)) # 
-- (!\Ceenhedenmorse|index[1]~head_lut_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|index\(0),
	datab => \Ceenhedenmorse|index[2]~head_lut_combout\,
	datac => \Ceenhedenmorse|index[1]~head_lut_combout\,
	datad => \comb~0_combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X39_Y21_N12
\Ctoongenerator|index[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|index[0]~21_combout\ = (!\comb~5_combout\ & ((\Ceenhedenmorse|index[3]~head_lut_combout\) # ((!\comb~1_combout\) # (!\Ceenhedenmorse|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|index[3]~head_lut_combout\,
	datab => \Ceenhedenmorse|index\(4),
	datac => \comb~5_combout\,
	datad => \comb~1_combout\,
	combout => \Ctoongenerator|index[0]~21_combout\);

-- Location: LCCOMB_X38_Y19_N16
\Ctoongenerator|index[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|index[0]~20_combout\ = \Ctoongenerator|index\(0) $ (((\Ctoongenerator|Equal0~2_combout\ & ((\comb~6_combout\) # (!\Ctoongenerator|index[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Equal0~2_combout\,
	datab => \comb~6_combout\,
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index[0]~21_combout\,
	combout => \Ctoongenerator|index[0]~20_combout\);

-- Location: LCFF_X38_Y19_N17
\Ctoongenerator|index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|index[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|index\(0));

-- Location: LCCOMB_X39_Y19_N20
\Ctoongenerator|index[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|index[1]~9_combout\ = (\Ctoongenerator|index\(1) & (\Ctoongenerator|index\(0) $ (VCC))) # (!\Ctoongenerator|index\(1) & (\Ctoongenerator|index\(0) & VCC))
-- \Ctoongenerator|index[1]~10\ = CARRY((\Ctoongenerator|index\(1) & \Ctoongenerator|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(0),
	datad => VCC,
	combout => \Ctoongenerator|index[1]~9_combout\,
	cout => \Ctoongenerator|index[1]~10\);

-- Location: LCCOMB_X39_Y19_N22
\Ctoongenerator|index[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|index[2]~11_combout\ = (\Ctoongenerator|index\(2) & (!\Ctoongenerator|index[1]~10\)) # (!\Ctoongenerator|index\(2) & ((\Ctoongenerator|index[1]~10\) # (GND)))
-- \Ctoongenerator|index[2]~12\ = CARRY((!\Ctoongenerator|index[1]~10\) # (!\Ctoongenerator|index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctoongenerator|index\(2),
	datad => VCC,
	cin => \Ctoongenerator|index[1]~10\,
	combout => \Ctoongenerator|index[2]~11_combout\,
	cout => \Ctoongenerator|index[2]~12\);

-- Location: LCCOMB_X39_Y21_N2
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\Ceenhedenmorse|index[3]~head_lut_combout\ & (\Ceenhedenmorse|index\(4) & \comb~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ceenhedenmorse|index[3]~head_lut_combout\,
	datac => \Ceenhedenmorse|index\(4),
	datad => \comb~1_combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X39_Y19_N10
\Ctoongenerator|index[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|index[5]~13_combout\ = (\Ctoongenerator|Equal0~2_combout\ & ((\comb~6_combout\) # ((\comb~5_combout\) # (\comb~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Equal0~2_combout\,
	datab => \comb~6_combout\,
	datac => \comb~5_combout\,
	datad => \comb~2_combout\,
	combout => \Ctoongenerator|index[5]~13_combout\);

-- Location: LCFF_X39_Y19_N23
\Ctoongenerator|index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|index[2]~11_combout\,
	ena => \Ctoongenerator|index[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|index\(2));

-- Location: LCCOMB_X39_Y19_N24
\Ctoongenerator|index[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|index[3]~14_combout\ = (\Ctoongenerator|index\(3) & (\Ctoongenerator|index[2]~12\ $ (GND))) # (!\Ctoongenerator|index\(3) & (!\Ctoongenerator|index[2]~12\ & VCC))
-- \Ctoongenerator|index[3]~15\ = CARRY((\Ctoongenerator|index\(3) & !\Ctoongenerator|index[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(3),
	datad => VCC,
	cin => \Ctoongenerator|index[2]~12\,
	combout => \Ctoongenerator|index[3]~14_combout\,
	cout => \Ctoongenerator|index[3]~15\);

-- Location: LCCOMB_X39_Y19_N26
\Ctoongenerator|index[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|index[4]~16_combout\ = (\Ctoongenerator|index\(4) & (!\Ctoongenerator|index[3]~15\)) # (!\Ctoongenerator|index\(4) & ((\Ctoongenerator|index[3]~15\) # (GND)))
-- \Ctoongenerator|index[4]~17\ = CARRY((!\Ctoongenerator|index[3]~15\) # (!\Ctoongenerator|index\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ctoongenerator|index\(4),
	datad => VCC,
	cin => \Ctoongenerator|index[3]~15\,
	combout => \Ctoongenerator|index[4]~16_combout\,
	cout => \Ctoongenerator|index[4]~17\);

-- Location: LCFF_X39_Y19_N27
\Ctoongenerator|index[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|index[4]~16_combout\,
	ena => \Ctoongenerator|index[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|index\(4));

-- Location: LCCOMB_X39_Y19_N28
\Ctoongenerator|index[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|index[5]~18_combout\ = \Ctoongenerator|index[4]~17\ $ (!\Ctoongenerator|index\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ctoongenerator|index\(5),
	cin => \Ctoongenerator|index[4]~17\,
	combout => \Ctoongenerator|index[5]~18_combout\);

-- Location: LCFF_X39_Y19_N29
\Ctoongenerator|index[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|index[5]~18_combout\,
	ena => \Ctoongenerator|index[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|index\(5));

-- Location: LCFF_X39_Y19_N21
\Ctoongenerator|index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|index[1]~9_combout\,
	ena => \Ctoongenerator|index[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|index\(1));

-- Location: LCCOMB_X40_Y18_N14
\Ctoongenerator|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux14~4_combout\ = (\Ctoongenerator|index\(1) & (\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(5) & \Ctoongenerator|index\(0)))) # (!\Ctoongenerator|index\(1) & (\Ctoongenerator|index\(5) $ (((\Ctoongenerator|index\(2)) # 
-- (\Ctoongenerator|index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(2),
	datab => \Ctoongenerator|index\(5),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux14~4_combout\);

-- Location: LCCOMB_X40_Y18_N30
\Ctoongenerator|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux14~0_combout\ = (\Ctoongenerator|index\(5) & (!\Ctoongenerator|index\(0) & ((\Ctoongenerator|index\(2)) # (!\Ctoongenerator|index\(1))))) # (!\Ctoongenerator|index\(5) & (\Ctoongenerator|index\(0) $ (((\Ctoongenerator|index\(2) & 
-- \Ctoongenerator|index\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(2),
	datab => \Ctoongenerator|index\(5),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux14~0_combout\);

-- Location: LCCOMB_X39_Y18_N20
\Ctoongenerator|Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux14~5_combout\ = (\Ctoongenerator|Mux14~3_combout\ & (((!\Ctoongenerator|index\(4))) # (!\Ctoongenerator|Mux14~4_combout\))) # (!\Ctoongenerator|Mux14~3_combout\ & (((\Ctoongenerator|index\(4) & !\Ctoongenerator|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux14~3_combout\,
	datab => \Ctoongenerator|Mux14~4_combout\,
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|Mux14~0_combout\,
	combout => \Ctoongenerator|Mux14~5_combout\);

-- Location: LCCOMB_X45_Y14_N28
\Caudio|DACData_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|DACData_reg~0_combout\ = (\Caudio|dack0~regout\ & !\Caudio|dack1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|dack0~regout\,
	datad => \Caudio|dack1~regout\,
	combout => \Caudio|DACData_reg~0_combout\);

-- Location: LCFF_X39_Y18_N21
\Caudio|LRDATA[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux14~5_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(17));

-- Location: LCCOMB_X39_Y18_N22
\Caudio|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux13~4_combout\ = (\Caudio|Bcount\(1) & ((\Caudio|Bcount\(0) & (\Caudio|LRDATA\(16))) # (!\Caudio|Bcount\(0) & ((\Caudio|LRDATA\(17)))))) # (!\Caudio|Bcount\(1) & (((!\Caudio|Bcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|LRDATA\(16),
	datab => \Caudio|Bcount\(1),
	datac => \Caudio|LRDATA\(17),
	datad => \Caudio|Bcount\(0),
	combout => \Caudio|Mux13~4_combout\);

-- Location: LCFF_X39_Y19_N25
\Ctoongenerator|index[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|index[3]~14_combout\,
	ena => \Ctoongenerator|index[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctoongenerator|index\(3));

-- Location: LCCOMB_X43_Y18_N22
\Ctoongenerator|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux13~1_combout\ = (\Ctoongenerator|index\(2) & (((\Ctoongenerator|index\(5) & \Ctoongenerator|index\(1))) # (!\Ctoongenerator|index\(0)))) # (!\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(5) & ((!\Ctoongenerator|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(5),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux13~1_combout\);

-- Location: LCCOMB_X43_Y18_N20
\Ctoongenerator|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux13~0_combout\ = (\Ctoongenerator|index\(2) & (((\Ctoongenerator|index\(0) & \Ctoongenerator|index\(1))))) # (!\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(0) $ (((\Ctoongenerator|index\(5) & \Ctoongenerator|index\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(5),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux13~0_combout\);

-- Location: LCCOMB_X43_Y18_N0
\Ctoongenerator|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux13~2_combout\ = (\Ctoongenerator|index\(1) & (\Ctoongenerator|Mux13~1_combout\ & ((\Ctoongenerator|index\(4)) # (\Ctoongenerator|Mux13~0_combout\)))) # (!\Ctoongenerator|index\(1) & (\Ctoongenerator|Mux13~0_combout\ $ 
-- (((\Ctoongenerator|Mux13~1_combout\) # (\Ctoongenerator|index\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|Mux13~1_combout\,
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|Mux13~0_combout\,
	combout => \Ctoongenerator|Mux13~2_combout\);

-- Location: LCCOMB_X43_Y18_N8
\Ctoongenerator|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux13~4_combout\ = \Ctoongenerator|Mux13~3_combout\ $ (((\Ctoongenerator|index\(3)) # (\Ctoongenerator|Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux13~3_combout\,
	datab => \Ctoongenerator|index\(3),
	datad => \Ctoongenerator|Mux13~2_combout\,
	combout => \Ctoongenerator|Mux13~4_combout\);

-- Location: LCFF_X43_Y18_N9
\Caudio|LRDATA[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux13~4_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(18));

-- Location: LCCOMB_X38_Y19_N0
\Ctoongenerator|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux12~2_combout\ = (\Ctoongenerator|index\(2) & ((\Ctoongenerator|index\(3) & ((\Ctoongenerator|index\(4)) # (!\Ctoongenerator|index\(5)))) # (!\Ctoongenerator|index\(3) & ((\Ctoongenerator|index\(5)) # (!\Ctoongenerator|index\(4)))))) # 
-- (!\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(4) $ (((\Ctoongenerator|index\(3)) # (\Ctoongenerator|index\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(2),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(5),
	combout => \Ctoongenerator|Mux12~2_combout\);

-- Location: LCCOMB_X38_Y19_N18
\Ctoongenerator|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux12~3_combout\ = (\Ctoongenerator|index\(0) & ((\Ctoongenerator|Mux12~1_combout\) # ((\Ctoongenerator|index\(1))))) # (!\Ctoongenerator|index\(0) & (((!\Ctoongenerator|index\(1) & \Ctoongenerator|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux12~1_combout\,
	datab => \Ctoongenerator|index\(0),
	datac => \Ctoongenerator|index\(1),
	datad => \Ctoongenerator|Mux12~2_combout\,
	combout => \Ctoongenerator|Mux12~3_combout\);

-- Location: LCCOMB_X38_Y19_N20
\Ctoongenerator|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux12~4_combout\ = (\Ctoongenerator|index\(5) & ((\Ctoongenerator|index\(2) & ((\Ctoongenerator|index\(4)) # (!\Ctoongenerator|index\(3)))) # (!\Ctoongenerator|index\(2) & ((\Ctoongenerator|index\(3)) # (!\Ctoongenerator|index\(4)))))) # 
-- (!\Ctoongenerator|index\(5) & ((\Ctoongenerator|index\(3) $ (\Ctoongenerator|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(2),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(5),
	combout => \Ctoongenerator|Mux12~4_combout\);

-- Location: LCCOMB_X43_Y18_N2
\Ctoongenerator|Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux12~5_combout\ = (\Ctoongenerator|Mux12~3_combout\ & (((!\Ctoongenerator|index\(1)) # (!\Ctoongenerator|Mux12~4_combout\)))) # (!\Ctoongenerator|Mux12~3_combout\ & (!\Ctoongenerator|Mux12~0_combout\ & ((\Ctoongenerator|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux12~0_combout\,
	datab => \Ctoongenerator|Mux12~3_combout\,
	datac => \Ctoongenerator|Mux12~4_combout\,
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux12~5_combout\);

-- Location: LCFF_X43_Y18_N3
\Caudio|LRDATA[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux12~5_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(19));

-- Location: LCCOMB_X42_Y18_N22
\Caudio|Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux13~5_combout\ = (\Caudio|Bcount\(1) & (\Caudio|Mux13~4_combout\)) # (!\Caudio|Bcount\(1) & ((\Caudio|Mux13~4_combout\ & ((\Caudio|LRDATA\(19)))) # (!\Caudio|Mux13~4_combout\ & (\Caudio|LRDATA\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Bcount\(1),
	datab => \Caudio|Mux13~4_combout\,
	datac => \Caudio|LRDATA\(18),
	datad => \Caudio|LRDATA\(19),
	combout => \Caudio|Mux13~5_combout\);

-- Location: LCCOMB_X42_Y18_N16
\Caudio|Mux13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux13~6_combout\ = (\Caudio|Bcount\(2) & (((\Caudio|Bcount\(3) & \Caudio|Mux13~5_combout\)))) # (!\Caudio|Bcount\(2) & ((\Caudio|Mux13~3_combout\) # ((!\Caudio|Bcount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Mux13~3_combout\,
	datab => \Caudio|Bcount\(2),
	datac => \Caudio|Bcount\(3),
	datad => \Caudio|Mux13~5_combout\,
	combout => \Caudio|Mux13~6_combout\);

-- Location: LCCOMB_X38_Y19_N12
\Ctoongenerator|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux2~0_combout\ = (!\Ctoongenerator|index\(1) & (!\Ctoongenerator|index\(4) & (!\Ctoongenerator|index\(2) & !\Ctoongenerator|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(4),
	datac => \Ctoongenerator|index\(2),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux2~0_combout\);

-- Location: LCCOMB_X42_Y18_N0
\Ctoongenerator|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux2~1_combout\ = (\Ctoongenerator|index\(0)) # (!\Ctoongenerator|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctoongenerator|Mux2~0_combout\,
	datac => \Ctoongenerator|index\(0),
	combout => \Ctoongenerator|Mux2~1_combout\);

-- Location: LCFF_X42_Y18_N1
\Caudio|LRDATA[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux2~1_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	sclr => \Ctoongenerator|ALT_INV_index\(5),
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(29));

-- Location: LCCOMB_X43_Y18_N14
\Ctoongenerator|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux3~1_combout\ = (\Ctoongenerator|index\(3) & (\Ctoongenerator|index\(4) & ((\Ctoongenerator|index\(1)) # (\Ctoongenerator|index\(2))))) # (!\Ctoongenerator|index\(3) & (!\Ctoongenerator|index\(4) & (\Ctoongenerator|index\(1) $ 
-- (\Ctoongenerator|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(2),
	combout => \Ctoongenerator|Mux3~1_combout\);

-- Location: LCCOMB_X43_Y18_N28
\Ctoongenerator|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux3~0_combout\ = (\Ctoongenerator|index\(3) & (((!\Ctoongenerator|index\(2)) # (!\Ctoongenerator|index\(4))))) # (!\Ctoongenerator|index\(3) & ((\Ctoongenerator|index\(4)) # ((\Ctoongenerator|index\(1) & \Ctoongenerator|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(2),
	combout => \Ctoongenerator|Mux3~0_combout\);

-- Location: LCCOMB_X42_Y18_N26
\Ctoongenerator|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux3~2_combout\ = (\Ctoongenerator|Mux3~0_combout\ & (\Ctoongenerator|index\(5) $ (((!\Ctoongenerator|index\(0)) # (!\Ctoongenerator|Mux3~1_combout\))))) # (!\Ctoongenerator|Mux3~0_combout\ & (\Ctoongenerator|index\(5) & 
-- ((\Ctoongenerator|Mux3~1_combout\) # (\Ctoongenerator|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(5),
	datab => \Ctoongenerator|Mux3~1_combout\,
	datac => \Ctoongenerator|index\(0),
	datad => \Ctoongenerator|Mux3~0_combout\,
	combout => \Ctoongenerator|Mux3~2_combout\);

-- Location: LCFF_X42_Y18_N27
\Caudio|LRDATA[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux3~2_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(28));

-- Location: LCCOMB_X42_Y18_N4
\Caudio|Mux13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux13~7_combout\ = (\Caudio|Bcount\(1) & ((\Caudio|Bcount\(0) & ((\Caudio|LRDATA\(28)))) # (!\Caudio|Bcount\(0) & (\Caudio|LRDATA\(29))))) # (!\Caudio|Bcount\(1) & (\Caudio|LRDATA\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Bcount\(1),
	datab => \Caudio|LRDATA\(29),
	datac => \Caudio|Bcount\(0),
	datad => \Caudio|LRDATA\(28),
	combout => \Caudio|Mux13~7_combout\);

-- Location: LCCOMB_X43_Y18_N12
\Ctoongenerator|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux5~0_combout\ = (\Ctoongenerator|index\(3) & (((!\Ctoongenerator|index\(4))) # (!\Ctoongenerator|index\(0)))) # (!\Ctoongenerator|index\(3) & ((\Ctoongenerator|index\(4) & ((!\Ctoongenerator|index\(1)))) # (!\Ctoongenerator|index\(4) & 
-- (\Ctoongenerator|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(0),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux5~0_combout\);

-- Location: LCCOMB_X43_Y18_N6
\Ctoongenerator|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux5~1_combout\ = (\Ctoongenerator|index\(0) & ((\Ctoongenerator|index\(4)) # ((\Ctoongenerator|index\(3) & \Ctoongenerator|index\(1))))) # (!\Ctoongenerator|index\(0) & ((\Ctoongenerator|index\(3) & ((!\Ctoongenerator|index\(1)))) # 
-- (!\Ctoongenerator|index\(3) & ((\Ctoongenerator|index\(4)) # (\Ctoongenerator|index\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(0),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(1),
	combout => \Ctoongenerator|Mux5~1_combout\);

-- Location: LCCOMB_X42_Y18_N2
\Ctoongenerator|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux5~2_combout\ = (\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(5) $ (((\Ctoongenerator|Mux5~0_combout\) # (!\Ctoongenerator|Mux5~1_combout\))))) # (!\Ctoongenerator|index\(2) & ((\Ctoongenerator|index\(5) & 
-- (\Ctoongenerator|Mux5~0_combout\ & !\Ctoongenerator|Mux5~1_combout\)) # (!\Ctoongenerator|index\(5) & ((\Ctoongenerator|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(5),
	datab => \Ctoongenerator|index\(2),
	datac => \Ctoongenerator|Mux5~0_combout\,
	datad => \Ctoongenerator|Mux5~1_combout\,
	combout => \Ctoongenerator|Mux5~2_combout\);

-- Location: LCFF_X42_Y18_N3
\Caudio|LRDATA[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux5~2_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(26));

-- Location: LCCOMB_X42_Y18_N30
\Ctoongenerator|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux7~3_combout\ = (\Ctoongenerator|index\(1) & ((\Ctoongenerator|index\(0) & ((!\Ctoongenerator|index\(3)))) # (!\Ctoongenerator|index\(0) & (\Ctoongenerator|index\(2))))) # (!\Ctoongenerator|index\(1) & (\Ctoongenerator|index\(3) $ 
-- (((\Ctoongenerator|index\(0) & \Ctoongenerator|index\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(0),
	datac => \Ctoongenerator|index\(2),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux7~3_combout\);

-- Location: LCCOMB_X42_Y18_N14
\Ctoongenerator|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux7~4_combout\ = (\Ctoongenerator|Mux7~2_combout\) # ((\Ctoongenerator|index\(4) & (\Ctoongenerator|index\(5) $ (!\Ctoongenerator|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux7~2_combout\,
	datab => \Ctoongenerator|index\(4),
	datac => \Ctoongenerator|index\(5),
	datad => \Ctoongenerator|Mux7~3_combout\,
	combout => \Ctoongenerator|Mux7~4_combout\);

-- Location: LCFF_X42_Y18_N15
\Caudio|LRDATA[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux7~4_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(24));

-- Location: LCCOMB_X42_Y18_N10
\Ctoongenerator|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux6~3_combout\ = (\Ctoongenerator|index\(2) & (((\Ctoongenerator|index\(0) & !\Ctoongenerator|index\(3))) # (!\Ctoongenerator|index\(1)))) # (!\Ctoongenerator|index\(2) & (\Ctoongenerator|index\(3) & (\Ctoongenerator|index\(1) $ 
-- (\Ctoongenerator|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(0),
	datac => \Ctoongenerator|index\(2),
	datad => \Ctoongenerator|index\(3),
	combout => \Ctoongenerator|Mux6~3_combout\);

-- Location: LCCOMB_X42_Y18_N12
\Ctoongenerator|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux6~4_combout\ = (\Ctoongenerator|Mux6~2_combout\) # ((\Ctoongenerator|index\(4) & (\Ctoongenerator|index\(5) $ (!\Ctoongenerator|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux6~2_combout\,
	datab => \Ctoongenerator|index\(4),
	datac => \Ctoongenerator|index\(5),
	datad => \Ctoongenerator|Mux6~3_combout\,
	combout => \Ctoongenerator|Mux6~4_combout\);

-- Location: LCFF_X42_Y18_N13
\Caudio|LRDATA[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux6~4_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(25));

-- Location: LCCOMB_X42_Y18_N8
\Caudio|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux13~0_combout\ = (\Caudio|Bcount\(1) & ((\Caudio|Bcount\(0) & (\Caudio|LRDATA\(24))) # (!\Caudio|Bcount\(0) & ((\Caudio|LRDATA\(25)))))) # (!\Caudio|Bcount\(1) & (((!\Caudio|Bcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Bcount\(1),
	datab => \Caudio|LRDATA\(24),
	datac => \Caudio|Bcount\(0),
	datad => \Caudio|LRDATA\(25),
	combout => \Caudio|Mux13~0_combout\);

-- Location: LCCOMB_X43_Y18_N26
\Ctoongenerator|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux4~1_combout\ = (\Ctoongenerator|index\(2)) # (\Ctoongenerator|index\(4) $ (((\Ctoongenerator|index\(1) & \Ctoongenerator|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|index\(1),
	datab => \Ctoongenerator|index\(3),
	datac => \Ctoongenerator|index\(4),
	datad => \Ctoongenerator|index\(2),
	combout => \Ctoongenerator|Mux4~1_combout\);

-- Location: LCCOMB_X42_Y18_N18
\Ctoongenerator|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctoongenerator|Mux4~2_combout\ = (\Ctoongenerator|Mux4~0_combout\ & (\Ctoongenerator|index\(5) $ (((\Ctoongenerator|index\(0) & !\Ctoongenerator|Mux4~1_combout\))))) # (!\Ctoongenerator|Mux4~0_combout\ & ((\Ctoongenerator|index\(5) & 
-- (\Ctoongenerator|index\(0) & !\Ctoongenerator|Mux4~1_combout\)) # (!\Ctoongenerator|index\(5) & ((\Ctoongenerator|Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctoongenerator|Mux4~0_combout\,
	datab => \Ctoongenerator|index\(0),
	datac => \Ctoongenerator|index\(5),
	datad => \Ctoongenerator|Mux4~1_combout\,
	combout => \Ctoongenerator|Mux4~2_combout\);

-- Location: LCFF_X42_Y18_N19
\Caudio|LRDATA[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Ctoongenerator|Mux4~2_combout\,
	aclr => \ALT_INV_button_reset~combout\,
	ena => \Caudio|DACData_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caudio|LRDATA\(27));

-- Location: LCCOMB_X42_Y18_N28
\Caudio|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux13~1_combout\ = (\Caudio|Bcount\(1) & (((\Caudio|Mux13~0_combout\)))) # (!\Caudio|Bcount\(1) & ((\Caudio|Mux13~0_combout\ & ((\Caudio|LRDATA\(27)))) # (!\Caudio|Mux13~0_combout\ & (\Caudio|LRDATA\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Bcount\(1),
	datab => \Caudio|LRDATA\(26),
	datac => \Caudio|Mux13~0_combout\,
	datad => \Caudio|LRDATA\(27),
	combout => \Caudio|Mux13~1_combout\);

-- Location: LCCOMB_X42_Y18_N6
\Caudio|Mux13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caudio|Mux13~8_combout\ = (\Caudio|Mux13~6_combout\ & ((\Caudio|Mux13~7_combout\) # ((\Caudio|Bcount\(3))))) # (!\Caudio|Mux13~6_combout\ & (((!\Caudio|Bcount\(3) & \Caudio|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caudio|Mux13~6_combout\,
	datab => \Caudio|Mux13~7_combout\,
	datac => \Caudio|Bcount\(3),
	datad => \Caudio|Mux13~1_combout\,
	combout => \Caudio|Mux13~8_combout\);

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
	datain => \Caudio|Selector30~14_combout\,
	oe => \Caudio|WideOr32~0_combout\,
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
	datain => \Ctientallenweergave|Mux6~0_combout\,
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
	datain => \Ctientallenweergave|Mux5~0_combout\,
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
	datain => \Ctientallenweergave|Mux4~0_combout\,
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
	datain => \Ctientallenweergave|Mux3~0_combout\,
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
	datain => \Ctientallenweergave|Mux2~0_combout\,
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
	datain => \Ctientallenweergave|Mux1~0_combout\,
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
	datain => \Ctientallenweergave|ALT_INV_Mux0~0_combout\,
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
	datain => \Ceenhedenweergave|Mux6~0_combout\,
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
	datain => \Ceenhedenweergave|Mux5~0_combout\,
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
	datain => \Ceenhedenweergave|Mux4~0_combout\,
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
	datain => \Ceenhedenweergave|Mux3~0_combout\,
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
	datain => \Ceenhedenweergave|Mux2~0_combout\,
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
	datain => \Ceenhedenweergave|Mux1~0_combout\,
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
	datain => \Ceenhedenweergave|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt_unit(6));

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
	datain => \Caudio|state.b_end~regout\,
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
	datain => \Caudio|i2c_counter\(2),
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
	datain => \Caudio|Mux13~8_combout\,
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
	datain => \Caudio|I2C_SCLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_I2C_SCLK);
END structure;


