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

-- DATE "04/23/2021 12:01:41"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	FreqDivider_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END FreqDivider_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_Demo IS
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
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \divider|s_counter[0]~32_combout\ : std_logic;
SIGNAL \divider|s_counter[0]~33\ : std_logic;
SIGNAL \divider|s_counter[1]~34_combout\ : std_logic;
SIGNAL \divider|s_counter[1]~35\ : std_logic;
SIGNAL \divider|s_counter[2]~36_combout\ : std_logic;
SIGNAL \divider|s_counter[2]~37\ : std_logic;
SIGNAL \divider|s_counter[3]~38_combout\ : std_logic;
SIGNAL \divider|s_counter[3]~39\ : std_logic;
SIGNAL \divider|s_counter[4]~40_combout\ : std_logic;
SIGNAL \divider|s_counter[4]~41\ : std_logic;
SIGNAL \divider|s_counter[5]~42_combout\ : std_logic;
SIGNAL \divider|s_counter[5]~43\ : std_logic;
SIGNAL \divider|s_counter[6]~44_combout\ : std_logic;
SIGNAL \divider|s_counter[6]~45\ : std_logic;
SIGNAL \divider|s_counter[7]~46_combout\ : std_logic;
SIGNAL \divider|s_counter[7]~47\ : std_logic;
SIGNAL \divider|s_counter[8]~48_combout\ : std_logic;
SIGNAL \divider|s_counter[8]~49\ : std_logic;
SIGNAL \divider|s_counter[9]~50_combout\ : std_logic;
SIGNAL \divider|s_counter[9]~51\ : std_logic;
SIGNAL \divider|s_counter[10]~52_combout\ : std_logic;
SIGNAL \divider|s_counter[10]~53\ : std_logic;
SIGNAL \divider|s_counter[11]~54_combout\ : std_logic;
SIGNAL \divider|s_counter[11]~55\ : std_logic;
SIGNAL \divider|s_counter[12]~56_combout\ : std_logic;
SIGNAL \divider|s_counter[12]~57\ : std_logic;
SIGNAL \divider|s_counter[13]~58_combout\ : std_logic;
SIGNAL \divider|s_counter[13]~59\ : std_logic;
SIGNAL \divider|s_counter[14]~60_combout\ : std_logic;
SIGNAL \divider|s_counter[14]~61\ : std_logic;
SIGNAL \divider|s_counter[15]~62_combout\ : std_logic;
SIGNAL \divider|Equal0~8_combout\ : std_logic;
SIGNAL \divider|s_counter[15]~63\ : std_logic;
SIGNAL \divider|s_counter[16]~64_combout\ : std_logic;
SIGNAL \divider|s_counter[16]~65\ : std_logic;
SIGNAL \divider|s_counter[17]~66_combout\ : std_logic;
SIGNAL \divider|s_counter[17]~67\ : std_logic;
SIGNAL \divider|s_counter[18]~68_combout\ : std_logic;
SIGNAL \divider|s_counter[18]~69\ : std_logic;
SIGNAL \divider|s_counter[19]~70_combout\ : std_logic;
SIGNAL \divider|s_counter[19]~71\ : std_logic;
SIGNAL \divider|s_counter[20]~72_combout\ : std_logic;
SIGNAL \divider|s_counter[20]~73\ : std_logic;
SIGNAL \divider|s_counter[21]~74_combout\ : std_logic;
SIGNAL \divider|s_counter[21]~75\ : std_logic;
SIGNAL \divider|s_counter[22]~76_combout\ : std_logic;
SIGNAL \divider|s_counter[22]~77\ : std_logic;
SIGNAL \divider|s_counter[23]~78_combout\ : std_logic;
SIGNAL \divider|Equal0~9_combout\ : std_logic;
SIGNAL \divider|s_counter[23]~79\ : std_logic;
SIGNAL \divider|s_counter[24]~80_combout\ : std_logic;
SIGNAL \divider|Equal0~10_combout\ : std_logic;
SIGNAL \divider|s_counter[24]~81\ : std_logic;
SIGNAL \divider|s_counter[25]~82_combout\ : std_logic;
SIGNAL \divider|s_counter[25]~83\ : std_logic;
SIGNAL \divider|s_counter[26]~84_combout\ : std_logic;
SIGNAL \divider|s_counter[26]~85\ : std_logic;
SIGNAL \divider|s_counter[27]~86_combout\ : std_logic;
SIGNAL \divider|s_counter[27]~87\ : std_logic;
SIGNAL \divider|s_counter[28]~88_combout\ : std_logic;
SIGNAL \divider|s_counter[28]~89\ : std_logic;
SIGNAL \divider|s_counter[29]~90_combout\ : std_logic;
SIGNAL \divider|s_counter[29]~91\ : std_logic;
SIGNAL \divider|s_counter[30]~92_combout\ : std_logic;
SIGNAL \divider|s_counter[30]~93\ : std_logic;
SIGNAL \divider|s_counter[31]~94_combout\ : std_logic;
SIGNAL \divider|Equal0~6_combout\ : std_logic;
SIGNAL \divider|Equal0~5_combout\ : std_logic;
SIGNAL \divider|Equal0~1_combout\ : std_logic;
SIGNAL \divider|Equal0~2_combout\ : std_logic;
SIGNAL \divider|Equal0~0_combout\ : std_logic;
SIGNAL \divider|Equal0~3_combout\ : std_logic;
SIGNAL \divider|Equal0~4_combout\ : std_logic;
SIGNAL \divider|Equal0~7_combout\ : std_logic;
SIGNAL \divider|process_0~0_combout\ : std_logic;
SIGNAL \divider|clkOut~0_combout\ : std_logic;
SIGNAL \divider|clkOut~1_combout\ : std_logic;
SIGNAL \divider|clkOut~2_combout\ : std_logic;
SIGNAL \divider|clkOut~3_combout\ : std_logic;
SIGNAL \divider|clkOut~q\ : std_logic;
SIGNAL \divider|s_counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divider|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X73_Y64_N0
\divider|s_counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[0]~32_combout\ = \divider|s_counter\(0) $ (VCC)
-- \divider|s_counter[0]~33\ = CARRY(\divider|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(0),
	datad => VCC,
	combout => \divider|s_counter[0]~32_combout\,
	cout => \divider|s_counter[0]~33\);

-- Location: FF_X73_Y64_N1
\divider|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[0]~32_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(0));

-- Location: LCCOMB_X73_Y64_N2
\divider|s_counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[1]~34_combout\ = (\divider|s_counter\(1) & (!\divider|s_counter[0]~33\)) # (!\divider|s_counter\(1) & ((\divider|s_counter[0]~33\) # (GND)))
-- \divider|s_counter[1]~35\ = CARRY((!\divider|s_counter[0]~33\) # (!\divider|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(1),
	datad => VCC,
	cin => \divider|s_counter[0]~33\,
	combout => \divider|s_counter[1]~34_combout\,
	cout => \divider|s_counter[1]~35\);

-- Location: FF_X73_Y64_N3
\divider|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[1]~34_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(1));

-- Location: LCCOMB_X73_Y64_N4
\divider|s_counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[2]~36_combout\ = (\divider|s_counter\(2) & (\divider|s_counter[1]~35\ $ (GND))) # (!\divider|s_counter\(2) & (!\divider|s_counter[1]~35\ & VCC))
-- \divider|s_counter[2]~37\ = CARRY((\divider|s_counter\(2) & !\divider|s_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(2),
	datad => VCC,
	cin => \divider|s_counter[1]~35\,
	combout => \divider|s_counter[2]~36_combout\,
	cout => \divider|s_counter[2]~37\);

-- Location: FF_X73_Y64_N5
\divider|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[2]~36_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(2));

-- Location: LCCOMB_X73_Y64_N6
\divider|s_counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[3]~38_combout\ = (\divider|s_counter\(3) & (!\divider|s_counter[2]~37\)) # (!\divider|s_counter\(3) & ((\divider|s_counter[2]~37\) # (GND)))
-- \divider|s_counter[3]~39\ = CARRY((!\divider|s_counter[2]~37\) # (!\divider|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(3),
	datad => VCC,
	cin => \divider|s_counter[2]~37\,
	combout => \divider|s_counter[3]~38_combout\,
	cout => \divider|s_counter[3]~39\);

-- Location: FF_X73_Y64_N7
\divider|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[3]~38_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(3));

-- Location: LCCOMB_X73_Y64_N8
\divider|s_counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[4]~40_combout\ = (\divider|s_counter\(4) & (\divider|s_counter[3]~39\ $ (GND))) # (!\divider|s_counter\(4) & (!\divider|s_counter[3]~39\ & VCC))
-- \divider|s_counter[4]~41\ = CARRY((\divider|s_counter\(4) & !\divider|s_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(4),
	datad => VCC,
	cin => \divider|s_counter[3]~39\,
	combout => \divider|s_counter[4]~40_combout\,
	cout => \divider|s_counter[4]~41\);

-- Location: FF_X73_Y64_N9
\divider|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[4]~40_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(4));

-- Location: LCCOMB_X73_Y64_N10
\divider|s_counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[5]~42_combout\ = (\divider|s_counter\(5) & (!\divider|s_counter[4]~41\)) # (!\divider|s_counter\(5) & ((\divider|s_counter[4]~41\) # (GND)))
-- \divider|s_counter[5]~43\ = CARRY((!\divider|s_counter[4]~41\) # (!\divider|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(5),
	datad => VCC,
	cin => \divider|s_counter[4]~41\,
	combout => \divider|s_counter[5]~42_combout\,
	cout => \divider|s_counter[5]~43\);

-- Location: FF_X73_Y64_N11
\divider|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[5]~42_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(5));

-- Location: LCCOMB_X73_Y64_N12
\divider|s_counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[6]~44_combout\ = (\divider|s_counter\(6) & (\divider|s_counter[5]~43\ $ (GND))) # (!\divider|s_counter\(6) & (!\divider|s_counter[5]~43\ & VCC))
-- \divider|s_counter[6]~45\ = CARRY((\divider|s_counter\(6) & !\divider|s_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(6),
	datad => VCC,
	cin => \divider|s_counter[5]~43\,
	combout => \divider|s_counter[6]~44_combout\,
	cout => \divider|s_counter[6]~45\);

-- Location: FF_X73_Y64_N13
\divider|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[6]~44_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(6));

-- Location: LCCOMB_X73_Y64_N14
\divider|s_counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[7]~46_combout\ = (\divider|s_counter\(7) & (!\divider|s_counter[6]~45\)) # (!\divider|s_counter\(7) & ((\divider|s_counter[6]~45\) # (GND)))
-- \divider|s_counter[7]~47\ = CARRY((!\divider|s_counter[6]~45\) # (!\divider|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(7),
	datad => VCC,
	cin => \divider|s_counter[6]~45\,
	combout => \divider|s_counter[7]~46_combout\,
	cout => \divider|s_counter[7]~47\);

-- Location: FF_X73_Y64_N15
\divider|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[7]~46_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(7));

-- Location: LCCOMB_X73_Y64_N16
\divider|s_counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[8]~48_combout\ = (\divider|s_counter\(8) & (\divider|s_counter[7]~47\ $ (GND))) # (!\divider|s_counter\(8) & (!\divider|s_counter[7]~47\ & VCC))
-- \divider|s_counter[8]~49\ = CARRY((\divider|s_counter\(8) & !\divider|s_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(8),
	datad => VCC,
	cin => \divider|s_counter[7]~47\,
	combout => \divider|s_counter[8]~48_combout\,
	cout => \divider|s_counter[8]~49\);

-- Location: FF_X73_Y64_N17
\divider|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[8]~48_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(8));

-- Location: LCCOMB_X73_Y64_N18
\divider|s_counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[9]~50_combout\ = (\divider|s_counter\(9) & (!\divider|s_counter[8]~49\)) # (!\divider|s_counter\(9) & ((\divider|s_counter[8]~49\) # (GND)))
-- \divider|s_counter[9]~51\ = CARRY((!\divider|s_counter[8]~49\) # (!\divider|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(9),
	datad => VCC,
	cin => \divider|s_counter[8]~49\,
	combout => \divider|s_counter[9]~50_combout\,
	cout => \divider|s_counter[9]~51\);

-- Location: FF_X73_Y64_N19
\divider|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[9]~50_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(9));

-- Location: LCCOMB_X73_Y64_N20
\divider|s_counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[10]~52_combout\ = (\divider|s_counter\(10) & (\divider|s_counter[9]~51\ $ (GND))) # (!\divider|s_counter\(10) & (!\divider|s_counter[9]~51\ & VCC))
-- \divider|s_counter[10]~53\ = CARRY((\divider|s_counter\(10) & !\divider|s_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(10),
	datad => VCC,
	cin => \divider|s_counter[9]~51\,
	combout => \divider|s_counter[10]~52_combout\,
	cout => \divider|s_counter[10]~53\);

-- Location: FF_X73_Y64_N21
\divider|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[10]~52_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(10));

-- Location: LCCOMB_X73_Y64_N22
\divider|s_counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[11]~54_combout\ = (\divider|s_counter\(11) & (!\divider|s_counter[10]~53\)) # (!\divider|s_counter\(11) & ((\divider|s_counter[10]~53\) # (GND)))
-- \divider|s_counter[11]~55\ = CARRY((!\divider|s_counter[10]~53\) # (!\divider|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(11),
	datad => VCC,
	cin => \divider|s_counter[10]~53\,
	combout => \divider|s_counter[11]~54_combout\,
	cout => \divider|s_counter[11]~55\);

-- Location: FF_X73_Y64_N23
\divider|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[11]~54_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(11));

-- Location: LCCOMB_X73_Y64_N24
\divider|s_counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[12]~56_combout\ = (\divider|s_counter\(12) & (\divider|s_counter[11]~55\ $ (GND))) # (!\divider|s_counter\(12) & (!\divider|s_counter[11]~55\ & VCC))
-- \divider|s_counter[12]~57\ = CARRY((\divider|s_counter\(12) & !\divider|s_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(12),
	datad => VCC,
	cin => \divider|s_counter[11]~55\,
	combout => \divider|s_counter[12]~56_combout\,
	cout => \divider|s_counter[12]~57\);

-- Location: FF_X73_Y64_N25
\divider|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[12]~56_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(12));

-- Location: LCCOMB_X73_Y64_N26
\divider|s_counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[13]~58_combout\ = (\divider|s_counter\(13) & (!\divider|s_counter[12]~57\)) # (!\divider|s_counter\(13) & ((\divider|s_counter[12]~57\) # (GND)))
-- \divider|s_counter[13]~59\ = CARRY((!\divider|s_counter[12]~57\) # (!\divider|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(13),
	datad => VCC,
	cin => \divider|s_counter[12]~57\,
	combout => \divider|s_counter[13]~58_combout\,
	cout => \divider|s_counter[13]~59\);

-- Location: FF_X73_Y64_N27
\divider|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[13]~58_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(13));

-- Location: LCCOMB_X73_Y64_N28
\divider|s_counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[14]~60_combout\ = (\divider|s_counter\(14) & (\divider|s_counter[13]~59\ $ (GND))) # (!\divider|s_counter\(14) & (!\divider|s_counter[13]~59\ & VCC))
-- \divider|s_counter[14]~61\ = CARRY((\divider|s_counter\(14) & !\divider|s_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(14),
	datad => VCC,
	cin => \divider|s_counter[13]~59\,
	combout => \divider|s_counter[14]~60_combout\,
	cout => \divider|s_counter[14]~61\);

-- Location: FF_X73_Y64_N29
\divider|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[14]~60_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(14));

-- Location: LCCOMB_X73_Y64_N30
\divider|s_counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[15]~62_combout\ = (\divider|s_counter\(15) & (!\divider|s_counter[14]~61\)) # (!\divider|s_counter\(15) & ((\divider|s_counter[14]~61\) # (GND)))
-- \divider|s_counter[15]~63\ = CARRY((!\divider|s_counter[14]~61\) # (!\divider|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(15),
	datad => VCC,
	cin => \divider|s_counter[14]~61\,
	combout => \divider|s_counter[15]~62_combout\,
	cout => \divider|s_counter[15]~63\);

-- Location: FF_X73_Y64_N31
\divider|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[15]~62_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(15));

-- Location: LCCOMB_X72_Y64_N24
\divider|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~8_combout\ = (!\divider|s_counter\(10) & (\divider|s_counter\(14) & (!\divider|s_counter\(15) & \divider|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(10),
	datab => \divider|s_counter\(14),
	datac => \divider|s_counter\(15),
	datad => \divider|s_counter\(5),
	combout => \divider|Equal0~8_combout\);

-- Location: LCCOMB_X73_Y63_N0
\divider|s_counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[16]~64_combout\ = (\divider|s_counter\(16) & (\divider|s_counter[15]~63\ $ (GND))) # (!\divider|s_counter\(16) & (!\divider|s_counter[15]~63\ & VCC))
-- \divider|s_counter[16]~65\ = CARRY((\divider|s_counter\(16) & !\divider|s_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(16),
	datad => VCC,
	cin => \divider|s_counter[15]~63\,
	combout => \divider|s_counter[16]~64_combout\,
	cout => \divider|s_counter[16]~65\);

-- Location: FF_X73_Y63_N1
\divider|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[16]~64_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(16));

-- Location: LCCOMB_X73_Y63_N2
\divider|s_counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[17]~66_combout\ = (\divider|s_counter\(17) & (!\divider|s_counter[16]~65\)) # (!\divider|s_counter\(17) & ((\divider|s_counter[16]~65\) # (GND)))
-- \divider|s_counter[17]~67\ = CARRY((!\divider|s_counter[16]~65\) # (!\divider|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(17),
	datad => VCC,
	cin => \divider|s_counter[16]~65\,
	combout => \divider|s_counter[17]~66_combout\,
	cout => \divider|s_counter[17]~67\);

-- Location: FF_X73_Y63_N3
\divider|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[17]~66_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(17));

-- Location: LCCOMB_X73_Y63_N4
\divider|s_counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[18]~68_combout\ = (\divider|s_counter\(18) & (\divider|s_counter[17]~67\ $ (GND))) # (!\divider|s_counter\(18) & (!\divider|s_counter[17]~67\ & VCC))
-- \divider|s_counter[18]~69\ = CARRY((\divider|s_counter\(18) & !\divider|s_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(18),
	datad => VCC,
	cin => \divider|s_counter[17]~67\,
	combout => \divider|s_counter[18]~68_combout\,
	cout => \divider|s_counter[18]~69\);

-- Location: FF_X73_Y63_N5
\divider|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[18]~68_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(18));

-- Location: LCCOMB_X73_Y63_N6
\divider|s_counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[19]~70_combout\ = (\divider|s_counter\(19) & (!\divider|s_counter[18]~69\)) # (!\divider|s_counter\(19) & ((\divider|s_counter[18]~69\) # (GND)))
-- \divider|s_counter[19]~71\ = CARRY((!\divider|s_counter[18]~69\) # (!\divider|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(19),
	datad => VCC,
	cin => \divider|s_counter[18]~69\,
	combout => \divider|s_counter[19]~70_combout\,
	cout => \divider|s_counter[19]~71\);

-- Location: FF_X73_Y63_N7
\divider|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[19]~70_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(19));

-- Location: LCCOMB_X73_Y63_N8
\divider|s_counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[20]~72_combout\ = (\divider|s_counter\(20) & (\divider|s_counter[19]~71\ $ (GND))) # (!\divider|s_counter\(20) & (!\divider|s_counter[19]~71\ & VCC))
-- \divider|s_counter[20]~73\ = CARRY((\divider|s_counter\(20) & !\divider|s_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(20),
	datad => VCC,
	cin => \divider|s_counter[19]~71\,
	combout => \divider|s_counter[20]~72_combout\,
	cout => \divider|s_counter[20]~73\);

-- Location: FF_X73_Y63_N9
\divider|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[20]~72_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(20));

-- Location: LCCOMB_X73_Y63_N10
\divider|s_counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[21]~74_combout\ = (\divider|s_counter\(21) & (!\divider|s_counter[20]~73\)) # (!\divider|s_counter\(21) & ((\divider|s_counter[20]~73\) # (GND)))
-- \divider|s_counter[21]~75\ = CARRY((!\divider|s_counter[20]~73\) # (!\divider|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(21),
	datad => VCC,
	cin => \divider|s_counter[20]~73\,
	combout => \divider|s_counter[21]~74_combout\,
	cout => \divider|s_counter[21]~75\);

-- Location: FF_X73_Y63_N11
\divider|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[21]~74_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(21));

-- Location: LCCOMB_X73_Y63_N12
\divider|s_counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[22]~76_combout\ = (\divider|s_counter\(22) & (\divider|s_counter[21]~75\ $ (GND))) # (!\divider|s_counter\(22) & (!\divider|s_counter[21]~75\ & VCC))
-- \divider|s_counter[22]~77\ = CARRY((\divider|s_counter\(22) & !\divider|s_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(22),
	datad => VCC,
	cin => \divider|s_counter[21]~75\,
	combout => \divider|s_counter[22]~76_combout\,
	cout => \divider|s_counter[22]~77\);

-- Location: FF_X73_Y63_N13
\divider|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[22]~76_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(22));

-- Location: LCCOMB_X73_Y63_N14
\divider|s_counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[23]~78_combout\ = (\divider|s_counter\(23) & (!\divider|s_counter[22]~77\)) # (!\divider|s_counter\(23) & ((\divider|s_counter[22]~77\) # (GND)))
-- \divider|s_counter[23]~79\ = CARRY((!\divider|s_counter[22]~77\) # (!\divider|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(23),
	datad => VCC,
	cin => \divider|s_counter[22]~77\,
	combout => \divider|s_counter[23]~78_combout\,
	cout => \divider|s_counter[23]~79\);

-- Location: FF_X73_Y63_N15
\divider|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[23]~78_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(23));

-- Location: LCCOMB_X72_Y64_N22
\divider|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~9_combout\ = (!\divider|s_counter\(17) & (\divider|s_counter\(16) & (\divider|s_counter\(22) & !\divider|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(17),
	datab => \divider|s_counter\(16),
	datac => \divider|s_counter\(22),
	datad => \divider|s_counter\(23),
	combout => \divider|Equal0~9_combout\);

-- Location: LCCOMB_X73_Y63_N16
\divider|s_counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[24]~80_combout\ = (\divider|s_counter\(24) & (\divider|s_counter[23]~79\ $ (GND))) # (!\divider|s_counter\(24) & (!\divider|s_counter[23]~79\ & VCC))
-- \divider|s_counter[24]~81\ = CARRY((\divider|s_counter\(24) & !\divider|s_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(24),
	datad => VCC,
	cin => \divider|s_counter[23]~79\,
	combout => \divider|s_counter[24]~80_combout\,
	cout => \divider|s_counter[24]~81\);

-- Location: FF_X73_Y63_N17
\divider|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[24]~80_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(24));

-- Location: LCCOMB_X72_Y64_N4
\divider|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~10_combout\ = (\divider|Equal0~9_combout\ & \divider|s_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider|Equal0~9_combout\,
	datad => \divider|s_counter\(24),
	combout => \divider|Equal0~10_combout\);

-- Location: LCCOMB_X73_Y63_N18
\divider|s_counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[25]~82_combout\ = (\divider|s_counter\(25) & (!\divider|s_counter[24]~81\)) # (!\divider|s_counter\(25) & ((\divider|s_counter[24]~81\) # (GND)))
-- \divider|s_counter[25]~83\ = CARRY((!\divider|s_counter[24]~81\) # (!\divider|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(25),
	datad => VCC,
	cin => \divider|s_counter[24]~81\,
	combout => \divider|s_counter[25]~82_combout\,
	cout => \divider|s_counter[25]~83\);

-- Location: FF_X73_Y63_N19
\divider|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[25]~82_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(25));

-- Location: LCCOMB_X73_Y63_N20
\divider|s_counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[26]~84_combout\ = (\divider|s_counter\(26) & (\divider|s_counter[25]~83\ $ (GND))) # (!\divider|s_counter\(26) & (!\divider|s_counter[25]~83\ & VCC))
-- \divider|s_counter[26]~85\ = CARRY((\divider|s_counter\(26) & !\divider|s_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(26),
	datad => VCC,
	cin => \divider|s_counter[25]~83\,
	combout => \divider|s_counter[26]~84_combout\,
	cout => \divider|s_counter[26]~85\);

-- Location: FF_X73_Y63_N21
\divider|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[26]~84_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(26));

-- Location: LCCOMB_X73_Y63_N22
\divider|s_counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[27]~86_combout\ = (\divider|s_counter\(27) & (!\divider|s_counter[26]~85\)) # (!\divider|s_counter\(27) & ((\divider|s_counter[26]~85\) # (GND)))
-- \divider|s_counter[27]~87\ = CARRY((!\divider|s_counter[26]~85\) # (!\divider|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(27),
	datad => VCC,
	cin => \divider|s_counter[26]~85\,
	combout => \divider|s_counter[27]~86_combout\,
	cout => \divider|s_counter[27]~87\);

-- Location: FF_X73_Y63_N23
\divider|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[27]~86_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(27));

-- Location: LCCOMB_X73_Y63_N24
\divider|s_counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[28]~88_combout\ = (\divider|s_counter\(28) & (\divider|s_counter[27]~87\ $ (GND))) # (!\divider|s_counter\(28) & (!\divider|s_counter[27]~87\ & VCC))
-- \divider|s_counter[28]~89\ = CARRY((\divider|s_counter\(28) & !\divider|s_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(28),
	datad => VCC,
	cin => \divider|s_counter[27]~87\,
	combout => \divider|s_counter[28]~88_combout\,
	cout => \divider|s_counter[28]~89\);

-- Location: FF_X73_Y63_N25
\divider|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[28]~88_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(28));

-- Location: LCCOMB_X73_Y63_N26
\divider|s_counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[29]~90_combout\ = (\divider|s_counter\(29) & (!\divider|s_counter[28]~89\)) # (!\divider|s_counter\(29) & ((\divider|s_counter[28]~89\) # (GND)))
-- \divider|s_counter[29]~91\ = CARRY((!\divider|s_counter[28]~89\) # (!\divider|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(29),
	datad => VCC,
	cin => \divider|s_counter[28]~89\,
	combout => \divider|s_counter[29]~90_combout\,
	cout => \divider|s_counter[29]~91\);

-- Location: FF_X73_Y63_N27
\divider|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[29]~90_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(29));

-- Location: LCCOMB_X73_Y63_N28
\divider|s_counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[30]~92_combout\ = (\divider|s_counter\(30) & (\divider|s_counter[29]~91\ $ (GND))) # (!\divider|s_counter\(30) & (!\divider|s_counter[29]~91\ & VCC))
-- \divider|s_counter[30]~93\ = CARRY((\divider|s_counter\(30) & !\divider|s_counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_counter\(30),
	datad => VCC,
	cin => \divider|s_counter[29]~91\,
	combout => \divider|s_counter[30]~92_combout\,
	cout => \divider|s_counter[30]~93\);

-- Location: FF_X73_Y63_N29
\divider|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[30]~92_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(30));

-- Location: LCCOMB_X73_Y63_N30
\divider|s_counter[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_counter[31]~94_combout\ = \divider|s_counter\(31) $ (\divider|s_counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(31),
	cin => \divider|s_counter[30]~93\,
	combout => \divider|s_counter[31]~94_combout\);

-- Location: FF_X73_Y63_N31
\divider|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|s_counter[31]~94_combout\,
	sclr => \divider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_counter\(31));

-- Location: LCCOMB_X72_Y64_N10
\divider|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~6_combout\ = (!\divider|s_counter\(31) & (!\divider|s_counter\(30) & !\divider|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(31),
	datac => \divider|s_counter\(30),
	datad => \divider|s_counter\(29),
	combout => \divider|Equal0~6_combout\);

-- Location: LCCOMB_X72_Y64_N8
\divider|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~5_combout\ = (!\divider|s_counter\(25) & (!\divider|s_counter\(27) & (!\divider|s_counter\(26) & !\divider|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(25),
	datab => \divider|s_counter\(27),
	datac => \divider|s_counter\(26),
	datad => \divider|s_counter\(28),
	combout => \divider|Equal0~5_combout\);

-- Location: LCCOMB_X72_Y64_N12
\divider|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~1_combout\ = (\divider|s_counter\(4) & (!\divider|s_counter\(8) & (!\divider|s_counter\(7) & !\divider|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(4),
	datab => \divider|s_counter\(8),
	datac => \divider|s_counter\(7),
	datad => \divider|s_counter\(6),
	combout => \divider|Equal0~1_combout\);

-- Location: LCCOMB_X72_Y64_N14
\divider|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~2_combout\ = (\divider|s_counter\(12) & (\divider|s_counter\(11) & (\divider|s_counter\(13) & !\divider|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(12),
	datab => \divider|s_counter\(11),
	datac => \divider|s_counter\(13),
	datad => \divider|s_counter\(9),
	combout => \divider|Equal0~2_combout\);

-- Location: LCCOMB_X72_Y64_N26
\divider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~0_combout\ = (\divider|s_counter\(2) & (\divider|s_counter\(0) & (\divider|s_counter\(1) & \divider|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(2),
	datab => \divider|s_counter\(0),
	datac => \divider|s_counter\(1),
	datad => \divider|s_counter\(3),
	combout => \divider|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y64_N16
\divider|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~3_combout\ = (\divider|s_counter\(21) & (\divider|s_counter\(19) & (\divider|s_counter\(20) & \divider|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(21),
	datab => \divider|s_counter\(19),
	datac => \divider|s_counter\(20),
	datad => \divider|s_counter\(18),
	combout => \divider|Equal0~3_combout\);

-- Location: LCCOMB_X72_Y64_N18
\divider|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~4_combout\ = (\divider|Equal0~1_combout\ & (\divider|Equal0~2_combout\ & (\divider|Equal0~0_combout\ & \divider|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Equal0~1_combout\,
	datab => \divider|Equal0~2_combout\,
	datac => \divider|Equal0~0_combout\,
	datad => \divider|Equal0~3_combout\,
	combout => \divider|Equal0~4_combout\);

-- Location: LCCOMB_X72_Y64_N28
\divider|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~7_combout\ = (\divider|Equal0~6_combout\ & (\divider|Equal0~5_combout\ & \divider|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Equal0~6_combout\,
	datac => \divider|Equal0~5_combout\,
	datad => \divider|Equal0~4_combout\,
	combout => \divider|Equal0~7_combout\);

-- Location: LCCOMB_X72_Y64_N30
\divider|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|process_0~0_combout\ = (\SW[0]~input_o\) # ((\divider|Equal0~8_combout\ & (\divider|Equal0~10_combout\ & \divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \divider|Equal0~8_combout\,
	datac => \divider|Equal0~10_combout\,
	datad => \divider|Equal0~7_combout\,
	combout => \divider|process_0~0_combout\);

-- Location: LCCOMB_X72_Y64_N6
\divider|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~0_combout\ = (\divider|s_counter\(10) & (!\divider|s_counter\(14) & (\divider|s_counter\(15) & !\divider|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(10),
	datab => \divider|s_counter\(14),
	datac => \divider|s_counter\(15),
	datad => \divider|s_counter\(5),
	combout => \divider|clkOut~0_combout\);

-- Location: LCCOMB_X72_Y64_N20
\divider|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~1_combout\ = (\divider|s_counter\(17) & (!\divider|s_counter\(16) & (!\divider|s_counter\(22) & \divider|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_counter\(17),
	datab => \divider|s_counter\(16),
	datac => \divider|s_counter\(22),
	datad => \divider|s_counter\(23),
	combout => \divider|clkOut~1_combout\);

-- Location: LCCOMB_X72_Y64_N2
\divider|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~2_combout\ = (\divider|clkOut~0_combout\ & (\divider|clkOut~1_combout\ & (!\divider|s_counter\(24) & \divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|clkOut~0_combout\,
	datab => \divider|clkOut~1_combout\,
	datac => \divider|s_counter\(24),
	datad => \divider|Equal0~7_combout\,
	combout => \divider|clkOut~2_combout\);

-- Location: LCCOMB_X72_Y64_N0
\divider|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~3_combout\ = (!\divider|process_0~0_combout\ & ((\divider|clkOut~q\) # (\divider|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|process_0~0_combout\,
	datac => \divider|clkOut~q\,
	datad => \divider|clkOut~2_combout\,
	combout => \divider|clkOut~3_combout\);

-- Location: FF_X72_Y64_N1
\divider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divider|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|clkOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


