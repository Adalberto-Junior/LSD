-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/04/2021 17:40:27"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	encoderDemo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(2 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END encoderDemo;

-- Design Ports Information
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoderDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkdiver|Add0~47\ : std_logic;
SIGNAL \clkdiver|Add0~48_combout\ : std_logic;
SIGNAL \clkdiver|s_divCounter~3_combout\ : std_logic;
SIGNAL \clkdiver|Add0~0_combout\ : std_logic;
SIGNAL \clkdiver|Add0~1\ : std_logic;
SIGNAL \clkdiver|Add0~2_combout\ : std_logic;
SIGNAL \clkdiver|Add0~3\ : std_logic;
SIGNAL \clkdiver|Add0~4_combout\ : std_logic;
SIGNAL \clkdiver|Add0~5\ : std_logic;
SIGNAL \clkdiver|Add0~6_combout\ : std_logic;
SIGNAL \clkdiver|Add0~7\ : std_logic;
SIGNAL \clkdiver|Add0~8_combout\ : std_logic;
SIGNAL \clkdiver|Add0~9\ : std_logic;
SIGNAL \clkdiver|Add0~10_combout\ : std_logic;
SIGNAL \clkdiver|Add0~11\ : std_logic;
SIGNAL \clkdiver|Add0~12_combout\ : std_logic;
SIGNAL \clkdiver|Add0~13\ : std_logic;
SIGNAL \clkdiver|Add0~14_combout\ : std_logic;
SIGNAL \clkdiver|Add0~15\ : std_logic;
SIGNAL \clkdiver|Add0~16_combout\ : std_logic;
SIGNAL \clkdiver|s_divCounter~2_combout\ : std_logic;
SIGNAL \clkdiver|Add0~17\ : std_logic;
SIGNAL \clkdiver|Add0~18_combout\ : std_logic;
SIGNAL \clkdiver|Add0~19\ : std_logic;
SIGNAL \clkdiver|Add0~20_combout\ : std_logic;
SIGNAL \clkdiver|s_divCounter~1_combout\ : std_logic;
SIGNAL \clkdiver|Add0~21\ : std_logic;
SIGNAL \clkdiver|Add0~22_combout\ : std_logic;
SIGNAL \clkdiver|s_divCounter~7_combout\ : std_logic;
SIGNAL \clkdiver|Add0~23\ : std_logic;
SIGNAL \clkdiver|Add0~24_combout\ : std_logic;
SIGNAL \clkdiver|Add0~25\ : std_logic;
SIGNAL \clkdiver|Add0~26_combout\ : std_logic;
SIGNAL \clkdiver|s_divCounter~6_combout\ : std_logic;
SIGNAL \clkdiver|Add0~27\ : std_logic;
SIGNAL \clkdiver|Add0~28_combout\ : std_logic;
SIGNAL \clkdiver|Add0~29\ : std_logic;
SIGNAL \clkdiver|Add0~30_combout\ : std_logic;
SIGNAL \clkdiver|Add0~31\ : std_logic;
SIGNAL \clkdiver|Add0~32_combout\ : std_logic;
SIGNAL \clkdiver|s_divCounter~5_combout\ : std_logic;
SIGNAL \clkdiver|Add0~33\ : std_logic;
SIGNAL \clkdiver|Add0~34_combout\ : std_logic;
SIGNAL \clkdiver|Add0~35\ : std_logic;
SIGNAL \clkdiver|Add0~36_combout\ : std_logic;
SIGNAL \clkdiver|Add0~37\ : std_logic;
SIGNAL \clkdiver|Add0~38_combout\ : std_logic;
SIGNAL \clkdiver|Equal0~7_combout\ : std_logic;
SIGNAL \clkdiver|Equal0~9_combout\ : std_logic;
SIGNAL \clkdiver|Equal0~8_combout\ : std_logic;
SIGNAL \clkdiver|Equal0~4_combout\ : std_logic;
SIGNAL \clkdiver|Add0~49\ : std_logic;
SIGNAL \clkdiver|Add0~50_combout\ : std_logic;
SIGNAL \clkdiver|Add0~51\ : std_logic;
SIGNAL \clkdiver|Add0~52_combout\ : std_logic;
SIGNAL \clkdiver|Add0~53\ : std_logic;
SIGNAL \clkdiver|Add0~54_combout\ : std_logic;
SIGNAL \clkdiver|Add0~55\ : std_logic;
SIGNAL \clkdiver|Add0~56_combout\ : std_logic;
SIGNAL \clkdiver|Add0~57\ : std_logic;
SIGNAL \clkdiver|Add0~58_combout\ : std_logic;
SIGNAL \clkdiver|Add0~59\ : std_logic;
SIGNAL \clkdiver|Add0~60_combout\ : std_logic;
SIGNAL \clkdiver|Equal0~0_combout\ : std_logic;
SIGNAL \clkdiver|Equal0~5_combout\ : std_logic;
SIGNAL \clkdiver|Add0~39\ : std_logic;
SIGNAL \clkdiver|Add0~40_combout\ : std_logic;
SIGNAL \clkdiver|s_divCounter~0_combout\ : std_logic;
SIGNAL \clkdiver|Equal0~2_combout\ : std_logic;
SIGNAL \clkdiver|Equal0~1_combout\ : std_logic;
SIGNAL \clkdiver|Equal0~3_combout\ : std_logic;
SIGNAL \clkdiver|Equal0~6_combout\ : std_logic;
SIGNAL \clkdiver|Equal0~10_combout\ : std_logic;
SIGNAL \clkdiver|Add0~41\ : std_logic;
SIGNAL \clkdiver|Add0~42_combout\ : std_logic;
SIGNAL \clkdiver|s_divCounter~4_combout\ : std_logic;
SIGNAL \clkdiver|Add0~43\ : std_logic;
SIGNAL \clkdiver|Add0~44_combout\ : std_logic;
SIGNAL \clkdiver|Add0~45\ : std_logic;
SIGNAL \clkdiver|Add0~46_combout\ : std_logic;
SIGNAL \clkdiver|clkOut~0_combout\ : std_logic;
SIGNAL \clkdiver|clkOut~1_combout\ : std_logic;
SIGNAL \clkdiver|clkOut~2_combout\ : std_logic;
SIGNAL \clkdiver|clkOut~3_combout\ : std_logic;
SIGNAL \clkdiver|clkOut~4_combout\ : std_logic;
SIGNAL \clkdiver|clkOut~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Bin7Seg|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \Bin7Seg|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \Bin7Seg|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \Bin7Seg|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \Bin7Seg|decOut_n[6]~4_combout\ : std_logic;
SIGNAL \clkdiver|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \clkdiver|ALT_INV_clkOut~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\clkdiver|ALT_INV_clkOut~q\ <= NOT \clkdiver|clkOut~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7Seg|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7Seg|decOut_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7Seg|decOut_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7Seg|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clkdiver|ALT_INV_clkOut~q\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clkdiver|ALT_INV_clkOut~q\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7Seg|decOut_n[6]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X67_Y65_N16
\clkdiver|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~46_combout\ = (\clkdiver|s_divCounter\(23) & (!\clkdiver|Add0~45\)) # (!\clkdiver|s_divCounter\(23) & ((\clkdiver|Add0~45\) # (GND)))
-- \clkdiver|Add0~47\ = CARRY((!\clkdiver|Add0~45\) # (!\clkdiver|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(23),
	datad => VCC,
	cin => \clkdiver|Add0~45\,
	combout => \clkdiver|Add0~46_combout\,
	cout => \clkdiver|Add0~47\);

-- Location: LCCOMB_X67_Y65_N18
\clkdiver|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~48_combout\ = (\clkdiver|s_divCounter\(24) & (\clkdiver|Add0~47\ $ (GND))) # (!\clkdiver|s_divCounter\(24) & (!\clkdiver|Add0~47\ & VCC))
-- \clkdiver|Add0~49\ = CARRY((\clkdiver|s_divCounter\(24) & !\clkdiver|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(24),
	datad => VCC,
	cin => \clkdiver|Add0~47\,
	combout => \clkdiver|Add0~48_combout\,
	cout => \clkdiver|Add0~49\);

-- Location: LCCOMB_X68_Y65_N30
\clkdiver|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|s_divCounter~3_combout\ = (!\clkdiver|Equal0~10_combout\ & \clkdiver|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiver|Equal0~10_combout\,
	datad => \clkdiver|Add0~48_combout\,
	combout => \clkdiver|s_divCounter~3_combout\);

-- Location: FF_X68_Y65_N31
\clkdiver|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(24));

-- Location: LCCOMB_X67_Y66_N2
\clkdiver|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~0_combout\ = \clkdiver|s_divCounter\(0) $ (VCC)
-- \clkdiver|Add0~1\ = CARRY(\clkdiver|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(0),
	datad => VCC,
	combout => \clkdiver|Add0~0_combout\,
	cout => \clkdiver|Add0~1\);

-- Location: FF_X67_Y66_N3
\clkdiver|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(0));

-- Location: LCCOMB_X67_Y66_N4
\clkdiver|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~2_combout\ = (\clkdiver|s_divCounter\(1) & (!\clkdiver|Add0~1\)) # (!\clkdiver|s_divCounter\(1) & ((\clkdiver|Add0~1\) # (GND)))
-- \clkdiver|Add0~3\ = CARRY((!\clkdiver|Add0~1\) # (!\clkdiver|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(1),
	datad => VCC,
	cin => \clkdiver|Add0~1\,
	combout => \clkdiver|Add0~2_combout\,
	cout => \clkdiver|Add0~3\);

-- Location: FF_X67_Y66_N5
\clkdiver|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(1));

-- Location: LCCOMB_X67_Y66_N6
\clkdiver|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~4_combout\ = (\clkdiver|s_divCounter\(2) & (\clkdiver|Add0~3\ $ (GND))) # (!\clkdiver|s_divCounter\(2) & (!\clkdiver|Add0~3\ & VCC))
-- \clkdiver|Add0~5\ = CARRY((\clkdiver|s_divCounter\(2) & !\clkdiver|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(2),
	datad => VCC,
	cin => \clkdiver|Add0~3\,
	combout => \clkdiver|Add0~4_combout\,
	cout => \clkdiver|Add0~5\);

-- Location: FF_X67_Y66_N7
\clkdiver|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(2));

-- Location: LCCOMB_X67_Y66_N8
\clkdiver|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~6_combout\ = (\clkdiver|s_divCounter\(3) & (!\clkdiver|Add0~5\)) # (!\clkdiver|s_divCounter\(3) & ((\clkdiver|Add0~5\) # (GND)))
-- \clkdiver|Add0~7\ = CARRY((!\clkdiver|Add0~5\) # (!\clkdiver|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(3),
	datad => VCC,
	cin => \clkdiver|Add0~5\,
	combout => \clkdiver|Add0~6_combout\,
	cout => \clkdiver|Add0~7\);

-- Location: FF_X67_Y66_N9
\clkdiver|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(3));

-- Location: LCCOMB_X67_Y66_N10
\clkdiver|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~8_combout\ = (\clkdiver|s_divCounter\(4) & (\clkdiver|Add0~7\ $ (GND))) # (!\clkdiver|s_divCounter\(4) & (!\clkdiver|Add0~7\ & VCC))
-- \clkdiver|Add0~9\ = CARRY((\clkdiver|s_divCounter\(4) & !\clkdiver|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(4),
	datad => VCC,
	cin => \clkdiver|Add0~7\,
	combout => \clkdiver|Add0~8_combout\,
	cout => \clkdiver|Add0~9\);

-- Location: FF_X67_Y66_N11
\clkdiver|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(4));

-- Location: LCCOMB_X67_Y66_N12
\clkdiver|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~10_combout\ = (\clkdiver|s_divCounter\(5) & (!\clkdiver|Add0~9\)) # (!\clkdiver|s_divCounter\(5) & ((\clkdiver|Add0~9\) # (GND)))
-- \clkdiver|Add0~11\ = CARRY((!\clkdiver|Add0~9\) # (!\clkdiver|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(5),
	datad => VCC,
	cin => \clkdiver|Add0~9\,
	combout => \clkdiver|Add0~10_combout\,
	cout => \clkdiver|Add0~11\);

-- Location: FF_X67_Y66_N13
\clkdiver|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(5));

-- Location: LCCOMB_X67_Y66_N14
\clkdiver|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~12_combout\ = (\clkdiver|s_divCounter\(6) & (\clkdiver|Add0~11\ $ (GND))) # (!\clkdiver|s_divCounter\(6) & (!\clkdiver|Add0~11\ & VCC))
-- \clkdiver|Add0~13\ = CARRY((\clkdiver|s_divCounter\(6) & !\clkdiver|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(6),
	datad => VCC,
	cin => \clkdiver|Add0~11\,
	combout => \clkdiver|Add0~12_combout\,
	cout => \clkdiver|Add0~13\);

-- Location: FF_X67_Y66_N15
\clkdiver|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(6));

-- Location: LCCOMB_X67_Y66_N16
\clkdiver|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~14_combout\ = (\clkdiver|s_divCounter\(7) & (!\clkdiver|Add0~13\)) # (!\clkdiver|s_divCounter\(7) & ((\clkdiver|Add0~13\) # (GND)))
-- \clkdiver|Add0~15\ = CARRY((!\clkdiver|Add0~13\) # (!\clkdiver|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(7),
	datad => VCC,
	cin => \clkdiver|Add0~13\,
	combout => \clkdiver|Add0~14_combout\,
	cout => \clkdiver|Add0~15\);

-- Location: FF_X67_Y66_N17
\clkdiver|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(7));

-- Location: LCCOMB_X67_Y66_N18
\clkdiver|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~16_combout\ = (\clkdiver|s_divCounter\(8) & (\clkdiver|Add0~15\ $ (GND))) # (!\clkdiver|s_divCounter\(8) & (!\clkdiver|Add0~15\ & VCC))
-- \clkdiver|Add0~17\ = CARRY((\clkdiver|s_divCounter\(8) & !\clkdiver|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(8),
	datad => VCC,
	cin => \clkdiver|Add0~15\,
	combout => \clkdiver|Add0~16_combout\,
	cout => \clkdiver|Add0~17\);

-- Location: LCCOMB_X66_Y65_N0
\clkdiver|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|s_divCounter~2_combout\ = (!\clkdiver|Equal0~10_combout\ & \clkdiver|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiver|Equal0~10_combout\,
	datad => \clkdiver|Add0~16_combout\,
	combout => \clkdiver|s_divCounter~2_combout\);

-- Location: FF_X66_Y65_N1
\clkdiver|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(8));

-- Location: LCCOMB_X67_Y66_N20
\clkdiver|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~18_combout\ = (\clkdiver|s_divCounter\(9) & (!\clkdiver|Add0~17\)) # (!\clkdiver|s_divCounter\(9) & ((\clkdiver|Add0~17\) # (GND)))
-- \clkdiver|Add0~19\ = CARRY((!\clkdiver|Add0~17\) # (!\clkdiver|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(9),
	datad => VCC,
	cin => \clkdiver|Add0~17\,
	combout => \clkdiver|Add0~18_combout\,
	cout => \clkdiver|Add0~19\);

-- Location: FF_X67_Y66_N21
\clkdiver|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(9));

-- Location: LCCOMB_X67_Y66_N22
\clkdiver|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~20_combout\ = (\clkdiver|s_divCounter\(10) & (\clkdiver|Add0~19\ $ (GND))) # (!\clkdiver|s_divCounter\(10) & (!\clkdiver|Add0~19\ & VCC))
-- \clkdiver|Add0~21\ = CARRY((\clkdiver|s_divCounter\(10) & !\clkdiver|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(10),
	datad => VCC,
	cin => \clkdiver|Add0~19\,
	combout => \clkdiver|Add0~20_combout\,
	cout => \clkdiver|Add0~21\);

-- Location: LCCOMB_X66_Y65_N2
\clkdiver|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|s_divCounter~1_combout\ = (!\clkdiver|Equal0~10_combout\ & \clkdiver|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiver|Equal0~10_combout\,
	datad => \clkdiver|Add0~20_combout\,
	combout => \clkdiver|s_divCounter~1_combout\);

-- Location: FF_X66_Y65_N3
\clkdiver|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(10));

-- Location: LCCOMB_X67_Y66_N24
\clkdiver|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~22_combout\ = (\clkdiver|s_divCounter\(11) & (!\clkdiver|Add0~21\)) # (!\clkdiver|s_divCounter\(11) & ((\clkdiver|Add0~21\) # (GND)))
-- \clkdiver|Add0~23\ = CARRY((!\clkdiver|Add0~21\) # (!\clkdiver|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(11),
	datad => VCC,
	cin => \clkdiver|Add0~21\,
	combout => \clkdiver|Add0~22_combout\,
	cout => \clkdiver|Add0~23\);

-- Location: LCCOMB_X66_Y65_N22
\clkdiver|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|s_divCounter~7_combout\ = (!\clkdiver|Equal0~10_combout\ & \clkdiver|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|Equal0~10_combout\,
	datac => \clkdiver|Add0~22_combout\,
	combout => \clkdiver|s_divCounter~7_combout\);

-- Location: FF_X66_Y65_N23
\clkdiver|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(11));

-- Location: LCCOMB_X67_Y66_N26
\clkdiver|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~24_combout\ = (\clkdiver|s_divCounter\(12) & (\clkdiver|Add0~23\ $ (GND))) # (!\clkdiver|s_divCounter\(12) & (!\clkdiver|Add0~23\ & VCC))
-- \clkdiver|Add0~25\ = CARRY((\clkdiver|s_divCounter\(12) & !\clkdiver|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(12),
	datad => VCC,
	cin => \clkdiver|Add0~23\,
	combout => \clkdiver|Add0~24_combout\,
	cout => \clkdiver|Add0~25\);

-- Location: FF_X67_Y66_N27
\clkdiver|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(12));

-- Location: LCCOMB_X67_Y66_N28
\clkdiver|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~26_combout\ = (\clkdiver|s_divCounter\(13) & (!\clkdiver|Add0~25\)) # (!\clkdiver|s_divCounter\(13) & ((\clkdiver|Add0~25\) # (GND)))
-- \clkdiver|Add0~27\ = CARRY((!\clkdiver|Add0~25\) # (!\clkdiver|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(13),
	datad => VCC,
	cin => \clkdiver|Add0~25\,
	combout => \clkdiver|Add0~26_combout\,
	cout => \clkdiver|Add0~27\);

-- Location: LCCOMB_X68_Y65_N10
\clkdiver|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|s_divCounter~6_combout\ = (\clkdiver|Add0~26_combout\ & !\clkdiver|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiver|Add0~26_combout\,
	datad => \clkdiver|Equal0~10_combout\,
	combout => \clkdiver|s_divCounter~6_combout\);

-- Location: FF_X68_Y65_N11
\clkdiver|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(13));

-- Location: LCCOMB_X67_Y66_N30
\clkdiver|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~28_combout\ = (\clkdiver|s_divCounter\(14) & (\clkdiver|Add0~27\ $ (GND))) # (!\clkdiver|s_divCounter\(14) & (!\clkdiver|Add0~27\ & VCC))
-- \clkdiver|Add0~29\ = CARRY((\clkdiver|s_divCounter\(14) & !\clkdiver|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(14),
	datad => VCC,
	cin => \clkdiver|Add0~27\,
	combout => \clkdiver|Add0~28_combout\,
	cout => \clkdiver|Add0~29\);

-- Location: FF_X67_Y66_N31
\clkdiver|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(14));

-- Location: LCCOMB_X67_Y65_N0
\clkdiver|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~30_combout\ = (\clkdiver|s_divCounter\(15) & (!\clkdiver|Add0~29\)) # (!\clkdiver|s_divCounter\(15) & ((\clkdiver|Add0~29\) # (GND)))
-- \clkdiver|Add0~31\ = CARRY((!\clkdiver|Add0~29\) # (!\clkdiver|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(15),
	datad => VCC,
	cin => \clkdiver|Add0~29\,
	combout => \clkdiver|Add0~30_combout\,
	cout => \clkdiver|Add0~31\);

-- Location: FF_X67_Y65_N1
\clkdiver|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(15));

-- Location: LCCOMB_X67_Y65_N2
\clkdiver|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~32_combout\ = (\clkdiver|s_divCounter\(16) & (\clkdiver|Add0~31\ $ (GND))) # (!\clkdiver|s_divCounter\(16) & (!\clkdiver|Add0~31\ & VCC))
-- \clkdiver|Add0~33\ = CARRY((\clkdiver|s_divCounter\(16) & !\clkdiver|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(16),
	datad => VCC,
	cin => \clkdiver|Add0~31\,
	combout => \clkdiver|Add0~32_combout\,
	cout => \clkdiver|Add0~33\);

-- Location: LCCOMB_X68_Y65_N24
\clkdiver|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|s_divCounter~5_combout\ = (!\clkdiver|Equal0~10_combout\ & \clkdiver|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiver|Equal0~10_combout\,
	datad => \clkdiver|Add0~32_combout\,
	combout => \clkdiver|s_divCounter~5_combout\);

-- Location: FF_X68_Y65_N25
\clkdiver|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(16));

-- Location: LCCOMB_X67_Y65_N4
\clkdiver|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~34_combout\ = (\clkdiver|s_divCounter\(17) & (!\clkdiver|Add0~33\)) # (!\clkdiver|s_divCounter\(17) & ((\clkdiver|Add0~33\) # (GND)))
-- \clkdiver|Add0~35\ = CARRY((!\clkdiver|Add0~33\) # (!\clkdiver|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(17),
	datad => VCC,
	cin => \clkdiver|Add0~33\,
	combout => \clkdiver|Add0~34_combout\,
	cout => \clkdiver|Add0~35\);

-- Location: FF_X67_Y65_N5
\clkdiver|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(17));

-- Location: LCCOMB_X67_Y65_N6
\clkdiver|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~36_combout\ = (\clkdiver|s_divCounter\(18) & (\clkdiver|Add0~35\ $ (GND))) # (!\clkdiver|s_divCounter\(18) & (!\clkdiver|Add0~35\ & VCC))
-- \clkdiver|Add0~37\ = CARRY((\clkdiver|s_divCounter\(18) & !\clkdiver|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(18),
	datad => VCC,
	cin => \clkdiver|Add0~35\,
	combout => \clkdiver|Add0~36_combout\,
	cout => \clkdiver|Add0~37\);

-- Location: FF_X67_Y65_N7
\clkdiver|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(18));

-- Location: LCCOMB_X67_Y65_N8
\clkdiver|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~38_combout\ = (\clkdiver|s_divCounter\(19) & (!\clkdiver|Add0~37\)) # (!\clkdiver|s_divCounter\(19) & ((\clkdiver|Add0~37\) # (GND)))
-- \clkdiver|Add0~39\ = CARRY((!\clkdiver|Add0~37\) # (!\clkdiver|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(19),
	datad => VCC,
	cin => \clkdiver|Add0~37\,
	combout => \clkdiver|Add0~38_combout\,
	cout => \clkdiver|Add0~39\);

-- Location: FF_X67_Y65_N9
\clkdiver|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(19));

-- Location: LCCOMB_X68_Y65_N14
\clkdiver|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Equal0~7_combout\ = (!\clkdiver|s_divCounter\(23) & (\clkdiver|s_divCounter\(21) & (\clkdiver|s_divCounter\(24) & !\clkdiver|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(23),
	datab => \clkdiver|s_divCounter\(21),
	datac => \clkdiver|s_divCounter\(24),
	datad => \clkdiver|s_divCounter\(19),
	combout => \clkdiver|Equal0~7_combout\);

-- Location: LCCOMB_X66_Y65_N8
\clkdiver|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Equal0~9_combout\ = (\clkdiver|s_divCounter\(11) & (!\clkdiver|s_divCounter\(9) & \clkdiver|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(11),
	datac => \clkdiver|s_divCounter\(9),
	datad => \clkdiver|s_divCounter\(7),
	combout => \clkdiver|Equal0~9_combout\);

-- Location: LCCOMB_X68_Y65_N4
\clkdiver|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Equal0~8_combout\ = (!\clkdiver|s_divCounter\(15) & (\clkdiver|s_divCounter\(16) & (!\clkdiver|s_divCounter\(12) & \clkdiver|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(15),
	datab => \clkdiver|s_divCounter\(16),
	datac => \clkdiver|s_divCounter\(12),
	datad => \clkdiver|s_divCounter\(13),
	combout => \clkdiver|Equal0~8_combout\);

-- Location: LCCOMB_X66_Y65_N10
\clkdiver|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Equal0~4_combout\ = (\clkdiver|s_divCounter\(10) & (\clkdiver|s_divCounter\(6) & (!\clkdiver|s_divCounter\(14) & !\clkdiver|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(10),
	datab => \clkdiver|s_divCounter\(6),
	datac => \clkdiver|s_divCounter\(14),
	datad => \clkdiver|s_divCounter\(8),
	combout => \clkdiver|Equal0~4_combout\);

-- Location: LCCOMB_X67_Y65_N20
\clkdiver|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~50_combout\ = (\clkdiver|s_divCounter\(25) & (!\clkdiver|Add0~49\)) # (!\clkdiver|s_divCounter\(25) & ((\clkdiver|Add0~49\) # (GND)))
-- \clkdiver|Add0~51\ = CARRY((!\clkdiver|Add0~49\) # (!\clkdiver|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(25),
	datad => VCC,
	cin => \clkdiver|Add0~49\,
	combout => \clkdiver|Add0~50_combout\,
	cout => \clkdiver|Add0~51\);

-- Location: FF_X67_Y65_N21
\clkdiver|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(25));

-- Location: LCCOMB_X67_Y65_N22
\clkdiver|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~52_combout\ = (\clkdiver|s_divCounter\(26) & (\clkdiver|Add0~51\ $ (GND))) # (!\clkdiver|s_divCounter\(26) & (!\clkdiver|Add0~51\ & VCC))
-- \clkdiver|Add0~53\ = CARRY((\clkdiver|s_divCounter\(26) & !\clkdiver|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(26),
	datad => VCC,
	cin => \clkdiver|Add0~51\,
	combout => \clkdiver|Add0~52_combout\,
	cout => \clkdiver|Add0~53\);

-- Location: FF_X67_Y65_N23
\clkdiver|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(26));

-- Location: LCCOMB_X67_Y65_N24
\clkdiver|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~54_combout\ = (\clkdiver|s_divCounter\(27) & (!\clkdiver|Add0~53\)) # (!\clkdiver|s_divCounter\(27) & ((\clkdiver|Add0~53\) # (GND)))
-- \clkdiver|Add0~55\ = CARRY((!\clkdiver|Add0~53\) # (!\clkdiver|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(27),
	datad => VCC,
	cin => \clkdiver|Add0~53\,
	combout => \clkdiver|Add0~54_combout\,
	cout => \clkdiver|Add0~55\);

-- Location: FF_X67_Y65_N25
\clkdiver|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(27));

-- Location: LCCOMB_X67_Y65_N26
\clkdiver|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~56_combout\ = (\clkdiver|s_divCounter\(28) & (\clkdiver|Add0~55\ $ (GND))) # (!\clkdiver|s_divCounter\(28) & (!\clkdiver|Add0~55\ & VCC))
-- \clkdiver|Add0~57\ = CARRY((\clkdiver|s_divCounter\(28) & !\clkdiver|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(28),
	datad => VCC,
	cin => \clkdiver|Add0~55\,
	combout => \clkdiver|Add0~56_combout\,
	cout => \clkdiver|Add0~57\);

-- Location: FF_X67_Y65_N27
\clkdiver|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(28));

-- Location: LCCOMB_X67_Y65_N28
\clkdiver|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~58_combout\ = (\clkdiver|s_divCounter\(29) & (!\clkdiver|Add0~57\)) # (!\clkdiver|s_divCounter\(29) & ((\clkdiver|Add0~57\) # (GND)))
-- \clkdiver|Add0~59\ = CARRY((!\clkdiver|Add0~57\) # (!\clkdiver|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(29),
	datad => VCC,
	cin => \clkdiver|Add0~57\,
	combout => \clkdiver|Add0~58_combout\,
	cout => \clkdiver|Add0~59\);

-- Location: FF_X67_Y65_N29
\clkdiver|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(29));

-- Location: LCCOMB_X67_Y65_N30
\clkdiver|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~60_combout\ = \clkdiver|s_divCounter\(30) $ (!\clkdiver|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(30),
	cin => \clkdiver|Add0~59\,
	combout => \clkdiver|Add0~60_combout\);

-- Location: FF_X67_Y65_N31
\clkdiver|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(30));

-- Location: LCCOMB_X66_Y65_N4
\clkdiver|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Equal0~0_combout\ = (!\clkdiver|s_divCounter\(30) & (!\clkdiver|s_divCounter\(29) & (\clkdiver|s_divCounter\(1) & \clkdiver|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(30),
	datab => \clkdiver|s_divCounter\(29),
	datac => \clkdiver|s_divCounter\(1),
	datad => \clkdiver|s_divCounter\(0),
	combout => \clkdiver|Equal0~0_combout\);

-- Location: LCCOMB_X67_Y66_N0
\clkdiver|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Equal0~5_combout\ = (\clkdiver|s_divCounter\(5) & (\clkdiver|s_divCounter\(3) & (\clkdiver|s_divCounter\(2) & \clkdiver|s_divCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(5),
	datab => \clkdiver|s_divCounter\(3),
	datac => \clkdiver|s_divCounter\(2),
	datad => \clkdiver|s_divCounter\(4),
	combout => \clkdiver|Equal0~5_combout\);

-- Location: LCCOMB_X67_Y65_N10
\clkdiver|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~40_combout\ = (\clkdiver|s_divCounter\(20) & (\clkdiver|Add0~39\ $ (GND))) # (!\clkdiver|s_divCounter\(20) & (!\clkdiver|Add0~39\ & VCC))
-- \clkdiver|Add0~41\ = CARRY((\clkdiver|s_divCounter\(20) & !\clkdiver|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(20),
	datad => VCC,
	cin => \clkdiver|Add0~39\,
	combout => \clkdiver|Add0~40_combout\,
	cout => \clkdiver|Add0~41\);

-- Location: LCCOMB_X66_Y65_N12
\clkdiver|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|s_divCounter~0_combout\ = (!\clkdiver|Equal0~10_combout\ & \clkdiver|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|Equal0~10_combout\,
	datac => \clkdiver|Add0~40_combout\,
	combout => \clkdiver|s_divCounter~0_combout\);

-- Location: FF_X66_Y65_N13
\clkdiver|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(20));

-- Location: LCCOMB_X66_Y65_N26
\clkdiver|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Equal0~2_combout\ = (\clkdiver|s_divCounter\(20) & (!\clkdiver|s_divCounter\(22) & (!\clkdiver|s_divCounter\(18) & !\clkdiver|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(20),
	datab => \clkdiver|s_divCounter\(22),
	datac => \clkdiver|s_divCounter\(18),
	datad => \clkdiver|s_divCounter\(17),
	combout => \clkdiver|Equal0~2_combout\);

-- Location: LCCOMB_X66_Y65_N18
\clkdiver|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Equal0~1_combout\ = (!\clkdiver|s_divCounter\(25) & (!\clkdiver|s_divCounter\(28) & (!\clkdiver|s_divCounter\(26) & !\clkdiver|s_divCounter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(25),
	datab => \clkdiver|s_divCounter\(28),
	datac => \clkdiver|s_divCounter\(26),
	datad => \clkdiver|s_divCounter\(27),
	combout => \clkdiver|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y65_N24
\clkdiver|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Equal0~3_combout\ = (\clkdiver|Equal0~2_combout\ & \clkdiver|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiver|Equal0~2_combout\,
	datad => \clkdiver|Equal0~1_combout\,
	combout => \clkdiver|Equal0~3_combout\);

-- Location: LCCOMB_X66_Y65_N16
\clkdiver|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Equal0~6_combout\ = (\clkdiver|Equal0~4_combout\ & (\clkdiver|Equal0~0_combout\ & (\clkdiver|Equal0~5_combout\ & \clkdiver|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|Equal0~4_combout\,
	datab => \clkdiver|Equal0~0_combout\,
	datac => \clkdiver|Equal0~5_combout\,
	datad => \clkdiver|Equal0~3_combout\,
	combout => \clkdiver|Equal0~6_combout\);

-- Location: LCCOMB_X66_Y65_N14
\clkdiver|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Equal0~10_combout\ = (\clkdiver|Equal0~7_combout\ & (\clkdiver|Equal0~9_combout\ & (\clkdiver|Equal0~8_combout\ & \clkdiver|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|Equal0~7_combout\,
	datab => \clkdiver|Equal0~9_combout\,
	datac => \clkdiver|Equal0~8_combout\,
	datad => \clkdiver|Equal0~6_combout\,
	combout => \clkdiver|Equal0~10_combout\);

-- Location: LCCOMB_X67_Y65_N12
\clkdiver|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~42_combout\ = (\clkdiver|s_divCounter\(21) & (!\clkdiver|Add0~41\)) # (!\clkdiver|s_divCounter\(21) & ((\clkdiver|Add0~41\) # (GND)))
-- \clkdiver|Add0~43\ = CARRY((!\clkdiver|Add0~41\) # (!\clkdiver|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(21),
	datad => VCC,
	cin => \clkdiver|Add0~41\,
	combout => \clkdiver|Add0~42_combout\,
	cout => \clkdiver|Add0~43\);

-- Location: LCCOMB_X68_Y65_N20
\clkdiver|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|s_divCounter~4_combout\ = (!\clkdiver|Equal0~10_combout\ & \clkdiver|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiver|Equal0~10_combout\,
	datad => \clkdiver|Add0~42_combout\,
	combout => \clkdiver|s_divCounter~4_combout\);

-- Location: FF_X68_Y65_N21
\clkdiver|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(21));

-- Location: LCCOMB_X67_Y65_N14
\clkdiver|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|Add0~44_combout\ = (\clkdiver|s_divCounter\(22) & (\clkdiver|Add0~43\ $ (GND))) # (!\clkdiver|s_divCounter\(22) & (!\clkdiver|Add0~43\ & VCC))
-- \clkdiver|Add0~45\ = CARRY((\clkdiver|s_divCounter\(22) & !\clkdiver|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiver|s_divCounter\(22),
	datad => VCC,
	cin => \clkdiver|Add0~43\,
	combout => \clkdiver|Add0~44_combout\,
	cout => \clkdiver|Add0~45\);

-- Location: FF_X67_Y65_N15
\clkdiver|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(22));

-- Location: FF_X67_Y65_N17
\clkdiver|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|s_divCounter\(23));

-- Location: LCCOMB_X68_Y65_N6
\clkdiver|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|clkOut~0_combout\ = (\clkdiver|s_divCounter\(23) & (!\clkdiver|s_divCounter\(21) & (!\clkdiver|s_divCounter\(24) & \clkdiver|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(23),
	datab => \clkdiver|s_divCounter\(21),
	datac => \clkdiver|s_divCounter\(24),
	datad => \clkdiver|s_divCounter\(19),
	combout => \clkdiver|clkOut~0_combout\);

-- Location: LCCOMB_X68_Y65_N12
\clkdiver|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|clkOut~1_combout\ = (\clkdiver|s_divCounter\(15) & (!\clkdiver|s_divCounter\(16) & (\clkdiver|s_divCounter\(12) & !\clkdiver|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(15),
	datab => \clkdiver|s_divCounter\(16),
	datac => \clkdiver|s_divCounter\(12),
	datad => \clkdiver|s_divCounter\(13),
	combout => \clkdiver|clkOut~1_combout\);

-- Location: LCCOMB_X68_Y65_N22
\clkdiver|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|clkOut~2_combout\ = (!\clkdiver|s_divCounter\(11) & (!\clkdiver|s_divCounter\(7) & (\clkdiver|s_divCounter\(9) & \clkdiver|clkOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|s_divCounter\(11),
	datab => \clkdiver|s_divCounter\(7),
	datac => \clkdiver|s_divCounter\(9),
	datad => \clkdiver|clkOut~1_combout\,
	combout => \clkdiver|clkOut~2_combout\);

-- Location: LCCOMB_X68_Y65_N8
\clkdiver|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|clkOut~3_combout\ = (\clkdiver|clkOut~q\) # ((\clkdiver|clkOut~0_combout\ & (\clkdiver|clkOut~2_combout\ & \clkdiver|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiver|clkOut~0_combout\,
	datab => \clkdiver|clkOut~q\,
	datac => \clkdiver|clkOut~2_combout\,
	datad => \clkdiver|Equal0~6_combout\,
	combout => \clkdiver|clkOut~3_combout\);

-- Location: LCCOMB_X68_Y65_N28
\clkdiver|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiver|clkOut~4_combout\ = (\clkdiver|clkOut~3_combout\ & !\clkdiver|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiver|clkOut~3_combout\,
	datad => \clkdiver|Equal0~10_combout\,
	combout => \clkdiver|clkOut~4_combout\);

-- Location: FF_X68_Y65_N29
\clkdiver|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiver|clkOut~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiver|clkOut~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y14_N4
\Bin7Seg|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|decOut_n[0]~0_combout\ = ((!\SW[0]~input_o\ & ((\SW[1]~input_o\) # (!\SW[2]~input_o\)))) # (!\clkdiver|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \clkdiver|clkOut~q\,
	datad => \SW[0]~input_o\,
	combout => \Bin7Seg|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X114_Y14_N26
\Bin7Seg|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|decOut_n[1]~1_combout\ = ((\SW[1]~input_o\ & ((!\SW[0]~input_o\) # (!\SW[2]~input_o\))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\))) # (!\clkdiver|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \clkdiver|clkOut~q\,
	datad => \SW[0]~input_o\,
	combout => \Bin7Seg|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X114_Y14_N0
\Bin7Seg|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|decOut_n[2]~2_combout\ = (\SW[2]~input_o\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\)))) # (!\clkdiver|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \clkdiver|clkOut~q\,
	datad => \SW[0]~input_o\,
	combout => \Bin7Seg|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X114_Y14_N22
\Bin7Seg|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|decOut_n[3]~3_combout\ = ((!\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[2]~input_o\)))) # (!\clkdiver|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \clkdiver|clkOut~q\,
	datad => \SW[0]~input_o\,
	combout => \Bin7Seg|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X114_Y14_N24
\Bin7Seg|decOut_n[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|decOut_n[6]~4_combout\ = ((\SW[1]~input_o\ & ((\SW[2]~input_o\) # (\SW[0]~input_o\)))) # (!\clkdiver|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \clkdiver|clkOut~q\,
	datad => \SW[0]~input_o\,
	combout => \Bin7Seg|decOut_n[6]~4_combout\);

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;
END structure;


