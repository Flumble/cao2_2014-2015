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

-- DATE "12/05/2014 17:18:11"

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
	cnt_ten : OUT std_logic_vector(6 DOWNTO 0);
	cnt_unit : OUT std_logic_vector(6 DOWNTO 0);
	btn : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic
	);
END epicknoptime;

-- Design Ports Information
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
-- rst	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_cnt_ten : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_cnt_unit : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_btn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \G2|over~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1|outp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G2|over~regout\ : std_logic;
SIGNAL \G1|outp~regout\ : std_logic;
SIGNAL \G2|Equal0~0_combout\ : std_logic;
SIGNAL \G1|onness~regout\ : std_logic;
SIGNAL \G1|outp~0_combout\ : std_logic;
SIGNAL \G1|onness~0_combout\ : std_logic;
SIGNAL \btn~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \G2|over~clkctrl_outclk\ : std_logic;
SIGNAL \G1|outp~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \G3|output[0]~3_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \G3|output~2_combout\ : std_logic;
SIGNAL \G3|output~0_combout\ : std_logic;
SIGNAL \G3|output[2]~1_combout\ : std_logic;
SIGNAL \G5|Mux6~0_combout\ : std_logic;
SIGNAL \G5|Mux5~0_combout\ : std_logic;
SIGNAL \G5|Mux4~0_combout\ : std_logic;
SIGNAL \G5|Mux3~0_combout\ : std_logic;
SIGNAL \G5|Mux2~0_combout\ : std_logic;
SIGNAL \G5|Mux1~0_combout\ : std_logic;
SIGNAL \G5|Mux0~0_combout\ : std_logic;
SIGNAL \G2|output[0]~3_combout\ : std_logic;
SIGNAL \G2|output~0_combout\ : std_logic;
SIGNAL \G2|output[2]~1_combout\ : std_logic;
SIGNAL \G2|output~2_combout\ : std_logic;
SIGNAL \G4|Mux6~0_combout\ : std_logic;
SIGNAL \G4|Mux5~0_combout\ : std_logic;
SIGNAL \G4|Mux4~0_combout\ : std_logic;
SIGNAL \G4|Mux3~0_combout\ : std_logic;
SIGNAL \G4|Mux2~0_combout\ : std_logic;
SIGNAL \G4|Mux1~0_combout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \G2|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G3|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~combout\ : std_logic;

BEGIN

cnt_ten <= ww_cnt_ten;
cnt_unit <= ww_cnt_unit;
ww_btn <= btn;
ww_clk <= clk;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\G2|over~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \G2|over~regout\);

\G1|outp~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \G1|outp~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\G5|ALT_INV_Mux0~0_combout\ <= NOT \G5|Mux0~0_combout\;
\G4|ALT_INV_Mux0~0_combout\ <= NOT \G4|Mux0~0_combout\;
\ALT_INV_rst~combout\ <= NOT \rst~combout\;

-- Location: LCFF_X1_Y21_N9
\G2|over\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G1|outp~clkctrl_outclk\,
	datain => \G2|Equal0~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G2|over~regout\);

-- Location: LCFF_X26_Y1_N17
\G1|outp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \G1|outp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G1|outp~regout\);

-- Location: LCCOMB_X1_Y21_N8
\G2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G2|Equal0~0_combout\ = (\G2|output\(0) & (!\G2|output\(2) & (!\G2|output\(1) & \G2|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(0),
	datab => \G2|output\(2),
	datac => \G2|output\(1),
	datad => \G2|output\(3),
	combout => \G2|Equal0~0_combout\);

-- Location: LCFF_X26_Y1_N1
\G1|onness\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \G1|onness~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G1|onness~regout\);

-- Location: LCCOMB_X26_Y1_N16
\G1|outp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G1|outp~0_combout\ = (!\btn~combout\ & !\G1|onness~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn~combout\,
	datad => \G1|onness~regout\,
	combout => \G1|outp~0_combout\);

-- Location: LCCOMB_X26_Y1_N0
\G1|onness~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G1|onness~0_combout\ = !\btn~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn~combout\,
	combout => \G1|onness~0_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn~I\ : cycloneii_io
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
	padio => ww_btn,
	combout => \btn~combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G0
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

-- Location: CLKCTRL_G15
\G1|outp~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G1|outp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G1|outp~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y21_N0
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

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCFF_X1_Y21_N1
\G3|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G2|over~clkctrl_outclk\,
	datain => \G3|output[0]~3_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G3|output\(0));

-- Location: LCCOMB_X1_Y21_N14
\G3|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G3|output~2_combout\ = (\G3|output\(2) & (\G3|output\(3) $ (((\G3|output\(1) & \G3|output\(0)))))) # (!\G3|output\(2) & (\G3|output\(3) & ((\G3|output\(1)) # (!\G3|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(2),
	datab => \G3|output\(1),
	datac => \G3|output\(3),
	datad => \G3|output\(0),
	combout => \G3|output~2_combout\);

-- Location: LCFF_X1_Y21_N15
\G3|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G2|over~clkctrl_outclk\,
	datain => \G3|output~2_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G3|output\(3));

-- Location: LCCOMB_X1_Y21_N18
\G3|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G3|output~0_combout\ = (\G3|output\(1) & (((!\G3|output\(0))))) # (!\G3|output\(1) & (\G3|output\(0) & ((\G3|output\(2)) # (!\G3|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(2),
	datab => \G3|output\(3),
	datac => \G3|output\(1),
	datad => \G3|output\(0),
	combout => \G3|output~0_combout\);

-- Location: LCFF_X1_Y21_N19
\G3|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G2|over~clkctrl_outclk\,
	datain => \G3|output~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G3|output\(1));

-- Location: LCCOMB_X1_Y21_N16
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

-- Location: LCFF_X1_Y21_N17
\G3|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G2|over~clkctrl_outclk\,
	datain => \G3|output[2]~1_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G3|output\(2));

-- Location: LCCOMB_X1_Y21_N10
\G5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux6~0_combout\ = (\G3|output\(2) & (!\G3|output\(1) & (\G3|output\(0) $ (!\G3|output\(3))))) # (!\G3|output\(2) & (\G3|output\(0) & (\G3|output\(1) $ (!\G3|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(1),
	datab => \G3|output\(2),
	datac => \G3|output\(0),
	datad => \G3|output\(3),
	combout => \G5|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y21_N2
\G5|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux5~0_combout\ = (\G3|output\(1) & ((\G3|output\(0) & ((\G3|output\(3)))) # (!\G3|output\(0) & (\G3|output\(2))))) # (!\G3|output\(1) & (\G3|output\(2) & (\G3|output\(0) $ (\G3|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(1),
	datab => \G3|output\(2),
	datac => \G3|output\(0),
	datad => \G3|output\(3),
	combout => \G5|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y21_N12
\G5|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux4~0_combout\ = (\G3|output\(2) & (\G3|output\(3) & ((\G3|output\(1)) # (!\G3|output\(0))))) # (!\G3|output\(2) & (\G3|output\(1) & (!\G3|output\(0) & !\G3|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(1),
	datab => \G3|output\(2),
	datac => \G3|output\(0),
	datad => \G3|output\(3),
	combout => \G5|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y21_N30
\G5|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux3~0_combout\ = (\G3|output\(1) & ((\G3|output\(2) & (\G3|output\(0))) # (!\G3|output\(2) & (!\G3|output\(0) & \G3|output\(3))))) # (!\G3|output\(1) & (!\G3|output\(3) & (\G3|output\(2) $ (\G3|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(1),
	datab => \G3|output\(2),
	datac => \G3|output\(0),
	datad => \G3|output\(3),
	combout => \G5|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\G5|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux2~0_combout\ = (\G3|output\(1) & (((\G3|output\(0) & !\G3|output\(3))))) # (!\G3|output\(1) & ((\G3|output\(2) & ((!\G3|output\(3)))) # (!\G3|output\(2) & (\G3|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(1),
	datab => \G3|output\(2),
	datac => \G3|output\(0),
	datad => \G3|output\(3),
	combout => \G5|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y21_N6
\G5|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux1~0_combout\ = (\G3|output\(1) & (!\G3|output\(3) & ((\G3|output\(0)) # (!\G3|output\(2))))) # (!\G3|output\(1) & (\G3|output\(0) & (\G3|output\(2) $ (!\G3|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(1),
	datab => \G3|output\(2),
	datac => \G3|output\(0),
	datad => \G3|output\(3),
	combout => \G5|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\G5|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G5|Mux0~0_combout\ = (\G3|output\(0) & ((\G3|output\(3)) # (\G3|output\(1) $ (\G3|output\(2))))) # (!\G3|output\(0) & ((\G3|output\(1)) # (\G3|output\(2) $ (\G3|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3|output\(1),
	datab => \G3|output\(2),
	datac => \G3|output\(0),
	datad => \G3|output\(3),
	combout => \G5|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y21_N24
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

-- Location: LCFF_X1_Y21_N25
\G2|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G1|outp~clkctrl_outclk\,
	datain => \G2|output[0]~3_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G2|output\(0));

-- Location: LCCOMB_X1_Y21_N20
\G2|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G2|output~0_combout\ = (\G2|output\(0) & (!\G2|output\(1) & ((\G2|output\(2)) # (!\G2|output\(3))))) # (!\G2|output\(0) & (((\G2|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(0),
	datab => \G2|output\(3),
	datac => \G2|output\(1),
	datad => \G2|output\(2),
	combout => \G2|output~0_combout\);

-- Location: LCFF_X1_Y21_N21
\G2|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G1|outp~clkctrl_outclk\,
	datain => \G2|output~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G2|output\(1));

-- Location: LCCOMB_X1_Y21_N26
\G2|output[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G2|output[2]~1_combout\ = \G2|output\(2) $ (((\G2|output\(0) & \G2|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(0),
	datac => \G2|output\(2),
	datad => \G2|output\(1),
	combout => \G2|output[2]~1_combout\);

-- Location: LCFF_X1_Y21_N27
\G2|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G1|outp~clkctrl_outclk\,
	datain => \G2|output[2]~1_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G2|output\(2));

-- Location: LCCOMB_X1_Y21_N4
\G2|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G2|output~2_combout\ = (\G2|output\(1) & (\G2|output\(3) $ (((\G2|output\(0) & \G2|output\(2)))))) # (!\G2|output\(1) & (\G2|output\(3) & ((\G2|output\(2)) # (!\G2|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(1),
	datab => \G2|output\(0),
	datac => \G2|output\(3),
	datad => \G2|output\(2),
	combout => \G2|output~2_combout\);

-- Location: LCFF_X1_Y21_N5
\G2|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \G1|outp~clkctrl_outclk\,
	datain => \G2|output~2_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G2|output\(3));

-- Location: LCCOMB_X1_Y19_N16
\G4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux6~0_combout\ = (\G2|output\(3) & (\G2|output\(0) & (\G2|output\(2) $ (\G2|output\(1))))) # (!\G2|output\(3) & (!\G2|output\(1) & (\G2|output\(0) $ (\G2|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(3),
	datab => \G2|output\(0),
	datac => \G2|output\(2),
	datad => \G2|output\(1),
	combout => \G4|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y19_N10
\G4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux5~0_combout\ = (\G2|output\(3) & ((\G2|output\(0) & ((\G2|output\(1)))) # (!\G2|output\(0) & (\G2|output\(2))))) # (!\G2|output\(3) & (\G2|output\(2) & (\G2|output\(0) $ (\G2|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(3),
	datab => \G2|output\(0),
	datac => \G2|output\(2),
	datad => \G2|output\(1),
	combout => \G4|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y19_N12
\G4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux4~0_combout\ = (\G2|output\(3) & (\G2|output\(2) & ((\G2|output\(1)) # (!\G2|output\(0))))) # (!\G2|output\(3) & (!\G2|output\(0) & (!\G2|output\(2) & \G2|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(3),
	datab => \G2|output\(0),
	datac => \G2|output\(2),
	datad => \G2|output\(1),
	combout => \G4|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y19_N22
\G4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux3~0_combout\ = (\G2|output\(1) & ((\G2|output\(0) & ((\G2|output\(2)))) # (!\G2|output\(0) & (\G2|output\(3) & !\G2|output\(2))))) # (!\G2|output\(1) & (!\G2|output\(3) & (\G2|output\(0) $ (\G2|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(3),
	datab => \G2|output\(0),
	datac => \G2|output\(2),
	datad => \G2|output\(1),
	combout => \G4|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y19_N0
\G4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux2~0_combout\ = (\G2|output\(1) & (!\G2|output\(3) & (\G2|output\(0)))) # (!\G2|output\(1) & ((\G2|output\(2) & (!\G2|output\(3))) # (!\G2|output\(2) & ((\G2|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(3),
	datab => \G2|output\(0),
	datac => \G2|output\(2),
	datad => \G2|output\(1),
	combout => \G4|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y19_N2
\G4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux1~0_combout\ = (\G2|output\(0) & (\G2|output\(3) $ (((\G2|output\(1)) # (!\G2|output\(2)))))) # (!\G2|output\(0) & (!\G2|output\(3) & (!\G2|output\(2) & \G2|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(3),
	datab => \G2|output\(0),
	datac => \G2|output\(2),
	datad => \G2|output\(1),
	combout => \G4|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y19_N4
\G4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G4|Mux0~0_combout\ = (\G2|output\(0) & ((\G2|output\(3)) # (\G2|output\(2) $ (\G2|output\(1))))) # (!\G2|output\(0) & ((\G2|output\(1)) # (\G2|output\(3) $ (\G2|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2|output\(3),
	datab => \G2|output\(0),
	datac => \G2|output\(2),
	datad => \G2|output\(1),
	combout => \G4|Mux0~0_combout\);

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
END structure;


