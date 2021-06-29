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

-- DATE "05/07/2021 09:58:01"

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

ENTITY 	ShiftRegister_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ShiftRegister_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
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
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clkdiver|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Clkdiver|Add0~0_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~1\ : std_logic;
SIGNAL \Clkdiver|Add0~2_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~3\ : std_logic;
SIGNAL \Clkdiver|Add0~4_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~5\ : std_logic;
SIGNAL \Clkdiver|Add0~6_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~7\ : std_logic;
SIGNAL \Clkdiver|Add0~8_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~9\ : std_logic;
SIGNAL \Clkdiver|Add0~10_combout\ : std_logic;
SIGNAL \Clkdiver|Equal0~5_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~11\ : std_logic;
SIGNAL \Clkdiver|Add0~12_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~13\ : std_logic;
SIGNAL \Clkdiver|Add0~14_combout\ : std_logic;
SIGNAL \Clkdiver|s_counter~11_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~15\ : std_logic;
SIGNAL \Clkdiver|Add0~16_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~17\ : std_logic;
SIGNAL \Clkdiver|Add0~18_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~19\ : std_logic;
SIGNAL \Clkdiver|Add0~20_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~21\ : std_logic;
SIGNAL \Clkdiver|Add0~22_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~23\ : std_logic;
SIGNAL \Clkdiver|Add0~24_combout\ : std_logic;
SIGNAL \Clkdiver|s_counter~10_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~25\ : std_logic;
SIGNAL \Clkdiver|Add0~26_combout\ : std_logic;
SIGNAL \Clkdiver|s_counter~9_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~27\ : std_logic;
SIGNAL \Clkdiver|Add0~28_combout\ : std_logic;
SIGNAL \Clkdiver|s_counter~8_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~29\ : std_logic;
SIGNAL \Clkdiver|Add0~30_combout\ : std_logic;
SIGNAL \Clkdiver|s_counter~3_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~31\ : std_logic;
SIGNAL \Clkdiver|Add0~32_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~33\ : std_logic;
SIGNAL \Clkdiver|Add0~34_combout\ : std_logic;
SIGNAL \Clkdiver|s_counter~2_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~35\ : std_logic;
SIGNAL \Clkdiver|Add0~36_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~37\ : std_logic;
SIGNAL \Clkdiver|Add0~38_combout\ : std_logic;
SIGNAL \Clkdiver|s_counter~7_combout\ : std_logic;
SIGNAL \Clkdiver|Equal0~2_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~39\ : std_logic;
SIGNAL \Clkdiver|Add0~40_combout\ : std_logic;
SIGNAL \Clkdiver|s_counter~6_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~41\ : std_logic;
SIGNAL \Clkdiver|Add0~42_combout\ : std_logic;
SIGNAL \Clkdiver|s_counter~5_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~49\ : std_logic;
SIGNAL \Clkdiver|Add0~50_combout\ : std_logic;
SIGNAL \Clkdiver|s_counter~0_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~51\ : std_logic;
SIGNAL \Clkdiver|Add0~52_combout\ : std_logic;
SIGNAL \Clkdiver|Equal0~1_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~53\ : std_logic;
SIGNAL \Clkdiver|Add0~54_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~55\ : std_logic;
SIGNAL \Clkdiver|Add0~56_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~57\ : std_logic;
SIGNAL \Clkdiver|Add0~58_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~59\ : std_logic;
SIGNAL \Clkdiver|Add0~60_combout\ : std_logic;
SIGNAL \Clkdiver|Equal0~0_combout\ : std_logic;
SIGNAL \Clkdiver|Equal0~3_combout\ : std_logic;
SIGNAL \Clkdiver|Equal0~4_combout\ : std_logic;
SIGNAL \Clkdiver|Equal0~6_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~43\ : std_logic;
SIGNAL \Clkdiver|Add0~44_combout\ : std_logic;
SIGNAL \Clkdiver|s_counter~4_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~45\ : std_logic;
SIGNAL \Clkdiver|Add0~46_combout\ : std_logic;
SIGNAL \Clkdiver|s_counter~1_combout\ : std_logic;
SIGNAL \Clkdiver|Add0~47\ : std_logic;
SIGNAL \Clkdiver|Add0~48_combout\ : std_logic;
SIGNAL \Clkdiver|Equal0~7_combout\ : std_logic;
SIGNAL \Clkdiver|Equal0~8_combout\ : std_logic;
SIGNAL \Clkdiver|Equal0~9_combout\ : std_logic;
SIGNAL \Clkdiver|clkOut~0_combout\ : std_logic;
SIGNAL \Clkdiver|clkOut~1_combout\ : std_logic;
SIGNAL \Clkdiver|clkOut~2_combout\ : std_logic;
SIGNAL \Clkdiver|clkOut~3_combout\ : std_logic;
SIGNAL \Clkdiver|clkOut~feeder_combout\ : std_logic;
SIGNAL \Clkdiver|clkOut~q\ : std_logic;
SIGNAL \Clkdiver|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \shiftN|s_shif[1]~feeder_combout\ : std_logic;
SIGNAL \shiftN|s_shif[2]~feeder_combout\ : std_logic;
SIGNAL \shiftN|s_shif[3]~feeder_combout\ : std_logic;
SIGNAL \shiftN|s_shif[4]~feeder_combout\ : std_logic;
SIGNAL \shiftN|s_shif[5]~feeder_combout\ : std_logic;
SIGNAL \shiftN|s_shif[6]~feeder_combout\ : std_logic;
SIGNAL \shiftN|s_shif[7]~feeder_combout\ : std_logic;
SIGNAL \shiftN|s_shif\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clkdiver|s_counter\ : std_logic_vector(30 DOWNTO 0);

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

\Clkdiver|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clkdiver|clkOut~q\);
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
	i => \shiftN|s_shif\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftN|s_shif\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftN|s_shif\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftN|s_shif\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftN|s_shif\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftN|s_shif\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftN|s_shif\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftN|s_shif\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X54_Y71_N2
\Clkdiver|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~0_combout\ = \Clkdiver|s_counter\(0) $ (VCC)
-- \Clkdiver|Add0~1\ = CARRY(\Clkdiver|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(0),
	datad => VCC,
	combout => \Clkdiver|Add0~0_combout\,
	cout => \Clkdiver|Add0~1\);

-- Location: FF_X54_Y71_N3
\Clkdiver|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(0));

-- Location: LCCOMB_X54_Y71_N4
\Clkdiver|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~2_combout\ = (\Clkdiver|s_counter\(1) & (!\Clkdiver|Add0~1\)) # (!\Clkdiver|s_counter\(1) & ((\Clkdiver|Add0~1\) # (GND)))
-- \Clkdiver|Add0~3\ = CARRY((!\Clkdiver|Add0~1\) # (!\Clkdiver|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(1),
	datad => VCC,
	cin => \Clkdiver|Add0~1\,
	combout => \Clkdiver|Add0~2_combout\,
	cout => \Clkdiver|Add0~3\);

-- Location: FF_X54_Y71_N5
\Clkdiver|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(1));

-- Location: LCCOMB_X54_Y71_N6
\Clkdiver|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~4_combout\ = (\Clkdiver|s_counter\(2) & (\Clkdiver|Add0~3\ $ (GND))) # (!\Clkdiver|s_counter\(2) & (!\Clkdiver|Add0~3\ & VCC))
-- \Clkdiver|Add0~5\ = CARRY((\Clkdiver|s_counter\(2) & !\Clkdiver|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(2),
	datad => VCC,
	cin => \Clkdiver|Add0~3\,
	combout => \Clkdiver|Add0~4_combout\,
	cout => \Clkdiver|Add0~5\);

-- Location: FF_X54_Y71_N7
\Clkdiver|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(2));

-- Location: LCCOMB_X54_Y71_N8
\Clkdiver|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~6_combout\ = (\Clkdiver|s_counter\(3) & (!\Clkdiver|Add0~5\)) # (!\Clkdiver|s_counter\(3) & ((\Clkdiver|Add0~5\) # (GND)))
-- \Clkdiver|Add0~7\ = CARRY((!\Clkdiver|Add0~5\) # (!\Clkdiver|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(3),
	datad => VCC,
	cin => \Clkdiver|Add0~5\,
	combout => \Clkdiver|Add0~6_combout\,
	cout => \Clkdiver|Add0~7\);

-- Location: FF_X54_Y71_N9
\Clkdiver|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(3));

-- Location: LCCOMB_X54_Y71_N10
\Clkdiver|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~8_combout\ = (\Clkdiver|s_counter\(4) & (\Clkdiver|Add0~7\ $ (GND))) # (!\Clkdiver|s_counter\(4) & (!\Clkdiver|Add0~7\ & VCC))
-- \Clkdiver|Add0~9\ = CARRY((\Clkdiver|s_counter\(4) & !\Clkdiver|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(4),
	datad => VCC,
	cin => \Clkdiver|Add0~7\,
	combout => \Clkdiver|Add0~8_combout\,
	cout => \Clkdiver|Add0~9\);

-- Location: FF_X54_Y71_N11
\Clkdiver|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(4));

-- Location: LCCOMB_X54_Y71_N12
\Clkdiver|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~10_combout\ = (\Clkdiver|s_counter\(5) & (!\Clkdiver|Add0~9\)) # (!\Clkdiver|s_counter\(5) & ((\Clkdiver|Add0~9\) # (GND)))
-- \Clkdiver|Add0~11\ = CARRY((!\Clkdiver|Add0~9\) # (!\Clkdiver|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(5),
	datad => VCC,
	cin => \Clkdiver|Add0~9\,
	combout => \Clkdiver|Add0~10_combout\,
	cout => \Clkdiver|Add0~11\);

-- Location: FF_X54_Y71_N13
\Clkdiver|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(5));

-- Location: LCCOMB_X53_Y71_N30
\Clkdiver|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Equal0~5_combout\ = (\Clkdiver|s_counter\(2) & (\Clkdiver|s_counter\(5) & (\Clkdiver|s_counter\(4) & \Clkdiver|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(2),
	datab => \Clkdiver|s_counter\(5),
	datac => \Clkdiver|s_counter\(4),
	datad => \Clkdiver|s_counter\(3),
	combout => \Clkdiver|Equal0~5_combout\);

-- Location: LCCOMB_X54_Y71_N14
\Clkdiver|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~12_combout\ = (\Clkdiver|s_counter\(6) & (\Clkdiver|Add0~11\ $ (GND))) # (!\Clkdiver|s_counter\(6) & (!\Clkdiver|Add0~11\ & VCC))
-- \Clkdiver|Add0~13\ = CARRY((\Clkdiver|s_counter\(6) & !\Clkdiver|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(6),
	datad => VCC,
	cin => \Clkdiver|Add0~11\,
	combout => \Clkdiver|Add0~12_combout\,
	cout => \Clkdiver|Add0~13\);

-- Location: FF_X54_Y71_N15
\Clkdiver|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(6));

-- Location: LCCOMB_X54_Y71_N16
\Clkdiver|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~14_combout\ = (\Clkdiver|s_counter\(7) & (!\Clkdiver|Add0~13\)) # (!\Clkdiver|s_counter\(7) & ((\Clkdiver|Add0~13\) # (GND)))
-- \Clkdiver|Add0~15\ = CARRY((!\Clkdiver|Add0~13\) # (!\Clkdiver|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(7),
	datad => VCC,
	cin => \Clkdiver|Add0~13\,
	combout => \Clkdiver|Add0~14_combout\,
	cout => \Clkdiver|Add0~15\);

-- Location: LCCOMB_X54_Y71_N0
\Clkdiver|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|s_counter~11_combout\ = (\Clkdiver|Add0~14_combout\ & ((!\Clkdiver|Equal0~6_combout\) # (!\Clkdiver|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|Add0~14_combout\,
	datac => \Clkdiver|Equal0~9_combout\,
	datad => \Clkdiver|Equal0~6_combout\,
	combout => \Clkdiver|s_counter~11_combout\);

-- Location: FF_X54_Y71_N1
\Clkdiver|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(7));

-- Location: LCCOMB_X54_Y71_N18
\Clkdiver|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~16_combout\ = (\Clkdiver|s_counter\(8) & (\Clkdiver|Add0~15\ $ (GND))) # (!\Clkdiver|s_counter\(8) & (!\Clkdiver|Add0~15\ & VCC))
-- \Clkdiver|Add0~17\ = CARRY((\Clkdiver|s_counter\(8) & !\Clkdiver|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(8),
	datad => VCC,
	cin => \Clkdiver|Add0~15\,
	combout => \Clkdiver|Add0~16_combout\,
	cout => \Clkdiver|Add0~17\);

-- Location: FF_X54_Y71_N19
\Clkdiver|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(8));

-- Location: LCCOMB_X54_Y71_N20
\Clkdiver|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~18_combout\ = (\Clkdiver|s_counter\(9) & (!\Clkdiver|Add0~17\)) # (!\Clkdiver|s_counter\(9) & ((\Clkdiver|Add0~17\) # (GND)))
-- \Clkdiver|Add0~19\ = CARRY((!\Clkdiver|Add0~17\) # (!\Clkdiver|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(9),
	datad => VCC,
	cin => \Clkdiver|Add0~17\,
	combout => \Clkdiver|Add0~18_combout\,
	cout => \Clkdiver|Add0~19\);

-- Location: FF_X54_Y71_N21
\Clkdiver|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(9));

-- Location: LCCOMB_X54_Y71_N22
\Clkdiver|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~20_combout\ = (\Clkdiver|s_counter\(10) & (\Clkdiver|Add0~19\ $ (GND))) # (!\Clkdiver|s_counter\(10) & (!\Clkdiver|Add0~19\ & VCC))
-- \Clkdiver|Add0~21\ = CARRY((\Clkdiver|s_counter\(10) & !\Clkdiver|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(10),
	datad => VCC,
	cin => \Clkdiver|Add0~19\,
	combout => \Clkdiver|Add0~20_combout\,
	cout => \Clkdiver|Add0~21\);

-- Location: FF_X54_Y71_N23
\Clkdiver|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(10));

-- Location: LCCOMB_X54_Y71_N24
\Clkdiver|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~22_combout\ = (\Clkdiver|s_counter\(11) & (!\Clkdiver|Add0~21\)) # (!\Clkdiver|s_counter\(11) & ((\Clkdiver|Add0~21\) # (GND)))
-- \Clkdiver|Add0~23\ = CARRY((!\Clkdiver|Add0~21\) # (!\Clkdiver|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(11),
	datad => VCC,
	cin => \Clkdiver|Add0~21\,
	combout => \Clkdiver|Add0~22_combout\,
	cout => \Clkdiver|Add0~23\);

-- Location: FF_X54_Y71_N25
\Clkdiver|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(11));

-- Location: LCCOMB_X54_Y71_N26
\Clkdiver|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~24_combout\ = (\Clkdiver|s_counter\(12) & (\Clkdiver|Add0~23\ $ (GND))) # (!\Clkdiver|s_counter\(12) & (!\Clkdiver|Add0~23\ & VCC))
-- \Clkdiver|Add0~25\ = CARRY((\Clkdiver|s_counter\(12) & !\Clkdiver|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(12),
	datad => VCC,
	cin => \Clkdiver|Add0~23\,
	combout => \Clkdiver|Add0~24_combout\,
	cout => \Clkdiver|Add0~25\);

-- Location: LCCOMB_X53_Y70_N20
\Clkdiver|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|s_counter~10_combout\ = (\Clkdiver|Add0~24_combout\ & ((!\Clkdiver|Equal0~9_combout\) # (!\Clkdiver|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~6_combout\,
	datac => \Clkdiver|Equal0~9_combout\,
	datad => \Clkdiver|Add0~24_combout\,
	combout => \Clkdiver|s_counter~10_combout\);

-- Location: FF_X53_Y70_N21
\Clkdiver|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(12));

-- Location: LCCOMB_X54_Y71_N28
\Clkdiver|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~26_combout\ = (\Clkdiver|s_counter\(13) & (!\Clkdiver|Add0~25\)) # (!\Clkdiver|s_counter\(13) & ((\Clkdiver|Add0~25\) # (GND)))
-- \Clkdiver|Add0~27\ = CARRY((!\Clkdiver|Add0~25\) # (!\Clkdiver|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(13),
	datad => VCC,
	cin => \Clkdiver|Add0~25\,
	combout => \Clkdiver|Add0~26_combout\,
	cout => \Clkdiver|Add0~27\);

-- Location: LCCOMB_X53_Y70_N14
\Clkdiver|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|s_counter~9_combout\ = (\Clkdiver|Add0~26_combout\ & ((!\Clkdiver|Equal0~9_combout\) # (!\Clkdiver|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~6_combout\,
	datac => \Clkdiver|Equal0~9_combout\,
	datad => \Clkdiver|Add0~26_combout\,
	combout => \Clkdiver|s_counter~9_combout\);

-- Location: FF_X53_Y70_N15
\Clkdiver|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(13));

-- Location: LCCOMB_X54_Y71_N30
\Clkdiver|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~28_combout\ = (\Clkdiver|s_counter\(14) & (\Clkdiver|Add0~27\ $ (GND))) # (!\Clkdiver|s_counter\(14) & (!\Clkdiver|Add0~27\ & VCC))
-- \Clkdiver|Add0~29\ = CARRY((\Clkdiver|s_counter\(14) & !\Clkdiver|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(14),
	datad => VCC,
	cin => \Clkdiver|Add0~27\,
	combout => \Clkdiver|Add0~28_combout\,
	cout => \Clkdiver|Add0~29\);

-- Location: LCCOMB_X53_Y70_N0
\Clkdiver|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|s_counter~8_combout\ = (\Clkdiver|Add0~28_combout\ & ((!\Clkdiver|Equal0~9_combout\) # (!\Clkdiver|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~6_combout\,
	datac => \Clkdiver|Add0~28_combout\,
	datad => \Clkdiver|Equal0~9_combout\,
	combout => \Clkdiver|s_counter~8_combout\);

-- Location: FF_X53_Y70_N1
\Clkdiver|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(14));

-- Location: LCCOMB_X54_Y70_N0
\Clkdiver|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~30_combout\ = (\Clkdiver|s_counter\(15) & (!\Clkdiver|Add0~29\)) # (!\Clkdiver|s_counter\(15) & ((\Clkdiver|Add0~29\) # (GND)))
-- \Clkdiver|Add0~31\ = CARRY((!\Clkdiver|Add0~29\) # (!\Clkdiver|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(15),
	datad => VCC,
	cin => \Clkdiver|Add0~29\,
	combout => \Clkdiver|Add0~30_combout\,
	cout => \Clkdiver|Add0~31\);

-- Location: LCCOMB_X55_Y70_N22
\Clkdiver|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|s_counter~3_combout\ = (\Clkdiver|Add0~30_combout\ & ((!\Clkdiver|Equal0~6_combout\) # (!\Clkdiver|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~9_combout\,
	datac => \Clkdiver|Add0~30_combout\,
	datad => \Clkdiver|Equal0~6_combout\,
	combout => \Clkdiver|s_counter~3_combout\);

-- Location: FF_X55_Y70_N23
\Clkdiver|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(15));

-- Location: LCCOMB_X54_Y70_N2
\Clkdiver|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~32_combout\ = (\Clkdiver|s_counter\(16) & (\Clkdiver|Add0~31\ $ (GND))) # (!\Clkdiver|s_counter\(16) & (!\Clkdiver|Add0~31\ & VCC))
-- \Clkdiver|Add0~33\ = CARRY((\Clkdiver|s_counter\(16) & !\Clkdiver|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(16),
	datad => VCC,
	cin => \Clkdiver|Add0~31\,
	combout => \Clkdiver|Add0~32_combout\,
	cout => \Clkdiver|Add0~33\);

-- Location: FF_X54_Y70_N3
\Clkdiver|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(16));

-- Location: LCCOMB_X54_Y70_N4
\Clkdiver|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~34_combout\ = (\Clkdiver|s_counter\(17) & (!\Clkdiver|Add0~33\)) # (!\Clkdiver|s_counter\(17) & ((\Clkdiver|Add0~33\) # (GND)))
-- \Clkdiver|Add0~35\ = CARRY((!\Clkdiver|Add0~33\) # (!\Clkdiver|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(17),
	datad => VCC,
	cin => \Clkdiver|Add0~33\,
	combout => \Clkdiver|Add0~34_combout\,
	cout => \Clkdiver|Add0~35\);

-- Location: LCCOMB_X55_Y70_N24
\Clkdiver|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|s_counter~2_combout\ = (\Clkdiver|Add0~34_combout\ & ((!\Clkdiver|Equal0~6_combout\) # (!\Clkdiver|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~9_combout\,
	datac => \Clkdiver|Equal0~6_combout\,
	datad => \Clkdiver|Add0~34_combout\,
	combout => \Clkdiver|s_counter~2_combout\);

-- Location: FF_X55_Y70_N25
\Clkdiver|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(17));

-- Location: LCCOMB_X54_Y70_N6
\Clkdiver|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~36_combout\ = (\Clkdiver|s_counter\(18) & (\Clkdiver|Add0~35\ $ (GND))) # (!\Clkdiver|s_counter\(18) & (!\Clkdiver|Add0~35\ & VCC))
-- \Clkdiver|Add0~37\ = CARRY((\Clkdiver|s_counter\(18) & !\Clkdiver|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(18),
	datad => VCC,
	cin => \Clkdiver|Add0~35\,
	combout => \Clkdiver|Add0~36_combout\,
	cout => \Clkdiver|Add0~37\);

-- Location: FF_X54_Y70_N7
\Clkdiver|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(18));

-- Location: LCCOMB_X54_Y70_N8
\Clkdiver|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~38_combout\ = (\Clkdiver|s_counter\(19) & (!\Clkdiver|Add0~37\)) # (!\Clkdiver|s_counter\(19) & ((\Clkdiver|Add0~37\) # (GND)))
-- \Clkdiver|Add0~39\ = CARRY((!\Clkdiver|Add0~37\) # (!\Clkdiver|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(19),
	datad => VCC,
	cin => \Clkdiver|Add0~37\,
	combout => \Clkdiver|Add0~38_combout\,
	cout => \Clkdiver|Add0~39\);

-- Location: LCCOMB_X53_Y70_N10
\Clkdiver|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|s_counter~7_combout\ = (\Clkdiver|Add0~38_combout\ & ((!\Clkdiver|Equal0~9_combout\) # (!\Clkdiver|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~6_combout\,
	datac => \Clkdiver|Add0~38_combout\,
	datad => \Clkdiver|Equal0~9_combout\,
	combout => \Clkdiver|s_counter~7_combout\);

-- Location: FF_X53_Y70_N11
\Clkdiver|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(19));

-- Location: LCCOMB_X53_Y70_N22
\Clkdiver|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Equal0~2_combout\ = (\Clkdiver|s_counter\(19) & (\Clkdiver|s_counter\(14) & (\Clkdiver|s_counter\(13) & \Clkdiver|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(19),
	datab => \Clkdiver|s_counter\(14),
	datac => \Clkdiver|s_counter\(13),
	datad => \Clkdiver|s_counter\(12),
	combout => \Clkdiver|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y70_N10
\Clkdiver|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~40_combout\ = (\Clkdiver|s_counter\(20) & (\Clkdiver|Add0~39\ $ (GND))) # (!\Clkdiver|s_counter\(20) & (!\Clkdiver|Add0~39\ & VCC))
-- \Clkdiver|Add0~41\ = CARRY((\Clkdiver|s_counter\(20) & !\Clkdiver|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(20),
	datad => VCC,
	cin => \Clkdiver|Add0~39\,
	combout => \Clkdiver|Add0~40_combout\,
	cout => \Clkdiver|Add0~41\);

-- Location: LCCOMB_X53_Y70_N6
\Clkdiver|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|s_counter~6_combout\ = (\Clkdiver|Add0~40_combout\ & ((!\Clkdiver|Equal0~9_combout\) # (!\Clkdiver|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~6_combout\,
	datac => \Clkdiver|Add0~40_combout\,
	datad => \Clkdiver|Equal0~9_combout\,
	combout => \Clkdiver|s_counter~6_combout\);

-- Location: FF_X53_Y70_N7
\Clkdiver|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(20));

-- Location: LCCOMB_X54_Y70_N12
\Clkdiver|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~42_combout\ = (\Clkdiver|s_counter\(21) & (!\Clkdiver|Add0~41\)) # (!\Clkdiver|s_counter\(21) & ((\Clkdiver|Add0~41\) # (GND)))
-- \Clkdiver|Add0~43\ = CARRY((!\Clkdiver|Add0~41\) # (!\Clkdiver|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(21),
	datad => VCC,
	cin => \Clkdiver|Add0~41\,
	combout => \Clkdiver|Add0~42_combout\,
	cout => \Clkdiver|Add0~43\);

-- Location: LCCOMB_X53_Y70_N16
\Clkdiver|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|s_counter~5_combout\ = (\Clkdiver|Add0~42_combout\ & ((!\Clkdiver|Equal0~9_combout\) # (!\Clkdiver|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~6_combout\,
	datac => \Clkdiver|Add0~42_combout\,
	datad => \Clkdiver|Equal0~9_combout\,
	combout => \Clkdiver|s_counter~5_combout\);

-- Location: FF_X53_Y70_N17
\Clkdiver|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(21));

-- Location: LCCOMB_X54_Y70_N18
\Clkdiver|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~48_combout\ = (\Clkdiver|s_counter\(24) & (\Clkdiver|Add0~47\ $ (GND))) # (!\Clkdiver|s_counter\(24) & (!\Clkdiver|Add0~47\ & VCC))
-- \Clkdiver|Add0~49\ = CARRY((\Clkdiver|s_counter\(24) & !\Clkdiver|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(24),
	datad => VCC,
	cin => \Clkdiver|Add0~47\,
	combout => \Clkdiver|Add0~48_combout\,
	cout => \Clkdiver|Add0~49\);

-- Location: LCCOMB_X54_Y70_N20
\Clkdiver|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~50_combout\ = (\Clkdiver|s_counter\(25) & (!\Clkdiver|Add0~49\)) # (!\Clkdiver|s_counter\(25) & ((\Clkdiver|Add0~49\) # (GND)))
-- \Clkdiver|Add0~51\ = CARRY((!\Clkdiver|Add0~49\) # (!\Clkdiver|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(25),
	datad => VCC,
	cin => \Clkdiver|Add0~49\,
	combout => \Clkdiver|Add0~50_combout\,
	cout => \Clkdiver|Add0~51\);

-- Location: LCCOMB_X55_Y70_N0
\Clkdiver|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|s_counter~0_combout\ = (\Clkdiver|Add0~50_combout\ & ((!\Clkdiver|Equal0~6_combout\) # (!\Clkdiver|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~9_combout\,
	datac => \Clkdiver|Equal0~6_combout\,
	datad => \Clkdiver|Add0~50_combout\,
	combout => \Clkdiver|s_counter~0_combout\);

-- Location: FF_X55_Y70_N1
\Clkdiver|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(25));

-- Location: LCCOMB_X54_Y70_N22
\Clkdiver|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~52_combout\ = (\Clkdiver|s_counter\(26) & (\Clkdiver|Add0~51\ $ (GND))) # (!\Clkdiver|s_counter\(26) & (!\Clkdiver|Add0~51\ & VCC))
-- \Clkdiver|Add0~53\ = CARRY((\Clkdiver|s_counter\(26) & !\Clkdiver|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(26),
	datad => VCC,
	cin => \Clkdiver|Add0~51\,
	combout => \Clkdiver|Add0~52_combout\,
	cout => \Clkdiver|Add0~53\);

-- Location: FF_X54_Y70_N23
\Clkdiver|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(26));

-- Location: LCCOMB_X53_Y70_N8
\Clkdiver|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Equal0~1_combout\ = (\Clkdiver|s_counter\(20) & (\Clkdiver|s_counter\(21) & (\Clkdiver|s_counter\(22) & !\Clkdiver|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(20),
	datab => \Clkdiver|s_counter\(21),
	datac => \Clkdiver|s_counter\(22),
	datad => \Clkdiver|s_counter\(26),
	combout => \Clkdiver|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y70_N24
\Clkdiver|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~54_combout\ = (\Clkdiver|s_counter\(27) & (!\Clkdiver|Add0~53\)) # (!\Clkdiver|s_counter\(27) & ((\Clkdiver|Add0~53\) # (GND)))
-- \Clkdiver|Add0~55\ = CARRY((!\Clkdiver|Add0~53\) # (!\Clkdiver|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(27),
	datad => VCC,
	cin => \Clkdiver|Add0~53\,
	combout => \Clkdiver|Add0~54_combout\,
	cout => \Clkdiver|Add0~55\);

-- Location: FF_X54_Y70_N25
\Clkdiver|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(27));

-- Location: LCCOMB_X54_Y70_N26
\Clkdiver|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~56_combout\ = (\Clkdiver|s_counter\(28) & (\Clkdiver|Add0~55\ $ (GND))) # (!\Clkdiver|s_counter\(28) & (!\Clkdiver|Add0~55\ & VCC))
-- \Clkdiver|Add0~57\ = CARRY((\Clkdiver|s_counter\(28) & !\Clkdiver|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(28),
	datad => VCC,
	cin => \Clkdiver|Add0~55\,
	combout => \Clkdiver|Add0~56_combout\,
	cout => \Clkdiver|Add0~57\);

-- Location: FF_X54_Y70_N27
\Clkdiver|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(28));

-- Location: LCCOMB_X54_Y70_N28
\Clkdiver|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~58_combout\ = (\Clkdiver|s_counter\(29) & (!\Clkdiver|Add0~57\)) # (!\Clkdiver|s_counter\(29) & ((\Clkdiver|Add0~57\) # (GND)))
-- \Clkdiver|Add0~59\ = CARRY((!\Clkdiver|Add0~57\) # (!\Clkdiver|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(29),
	datad => VCC,
	cin => \Clkdiver|Add0~57\,
	combout => \Clkdiver|Add0~58_combout\,
	cout => \Clkdiver|Add0~59\);

-- Location: FF_X54_Y70_N29
\Clkdiver|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(29));

-- Location: LCCOMB_X54_Y70_N30
\Clkdiver|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~60_combout\ = \Clkdiver|s_counter\(30) $ (!\Clkdiver|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(30),
	cin => \Clkdiver|Add0~59\,
	combout => \Clkdiver|Add0~60_combout\);

-- Location: FF_X54_Y70_N31
\Clkdiver|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(30));

-- Location: LCCOMB_X53_Y70_N4
\Clkdiver|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Equal0~0_combout\ = (!\Clkdiver|s_counter\(30) & (!\Clkdiver|s_counter\(29) & (!\Clkdiver|s_counter\(27) & !\Clkdiver|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(30),
	datab => \Clkdiver|s_counter\(29),
	datac => \Clkdiver|s_counter\(27),
	datad => \Clkdiver|s_counter\(28),
	combout => \Clkdiver|Equal0~0_combout\);

-- Location: LCCOMB_X53_Y71_N20
\Clkdiver|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Equal0~3_combout\ = (!\Clkdiver|s_counter\(9) & (!\Clkdiver|s_counter\(8) & (!\Clkdiver|s_counter\(7) & !\Clkdiver|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(9),
	datab => \Clkdiver|s_counter\(8),
	datac => \Clkdiver|s_counter\(7),
	datad => \Clkdiver|s_counter\(10),
	combout => \Clkdiver|Equal0~3_combout\);

-- Location: LCCOMB_X53_Y70_N12
\Clkdiver|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Equal0~4_combout\ = (\Clkdiver|Equal0~2_combout\ & (\Clkdiver|Equal0~1_combout\ & (\Clkdiver|Equal0~0_combout\ & \Clkdiver|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~2_combout\,
	datab => \Clkdiver|Equal0~1_combout\,
	datac => \Clkdiver|Equal0~0_combout\,
	datad => \Clkdiver|Equal0~3_combout\,
	combout => \Clkdiver|Equal0~4_combout\);

-- Location: LCCOMB_X53_Y70_N26
\Clkdiver|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Equal0~6_combout\ = (\Clkdiver|s_counter\(1) & (\Clkdiver|s_counter\(0) & (\Clkdiver|Equal0~5_combout\ & \Clkdiver|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(1),
	datab => \Clkdiver|s_counter\(0),
	datac => \Clkdiver|Equal0~5_combout\,
	datad => \Clkdiver|Equal0~4_combout\,
	combout => \Clkdiver|Equal0~6_combout\);

-- Location: LCCOMB_X54_Y70_N14
\Clkdiver|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~44_combout\ = (\Clkdiver|s_counter\(22) & (\Clkdiver|Add0~43\ $ (GND))) # (!\Clkdiver|s_counter\(22) & (!\Clkdiver|Add0~43\ & VCC))
-- \Clkdiver|Add0~45\ = CARRY((\Clkdiver|s_counter\(22) & !\Clkdiver|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|s_counter\(22),
	datad => VCC,
	cin => \Clkdiver|Add0~43\,
	combout => \Clkdiver|Add0~44_combout\,
	cout => \Clkdiver|Add0~45\);

-- Location: LCCOMB_X53_Y70_N18
\Clkdiver|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|s_counter~4_combout\ = (\Clkdiver|Add0~44_combout\ & ((!\Clkdiver|Equal0~9_combout\) # (!\Clkdiver|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~6_combout\,
	datac => \Clkdiver|Add0~44_combout\,
	datad => \Clkdiver|Equal0~9_combout\,
	combout => \Clkdiver|s_counter~4_combout\);

-- Location: FF_X53_Y70_N19
\Clkdiver|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(22));

-- Location: LCCOMB_X54_Y70_N16
\Clkdiver|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Add0~46_combout\ = (\Clkdiver|s_counter\(23) & (!\Clkdiver|Add0~45\)) # (!\Clkdiver|s_counter\(23) & ((\Clkdiver|Add0~45\) # (GND)))
-- \Clkdiver|Add0~47\ = CARRY((!\Clkdiver|Add0~45\) # (!\Clkdiver|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(23),
	datad => VCC,
	cin => \Clkdiver|Add0~45\,
	combout => \Clkdiver|Add0~46_combout\,
	cout => \Clkdiver|Add0~47\);

-- Location: LCCOMB_X55_Y70_N2
\Clkdiver|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|s_counter~1_combout\ = (\Clkdiver|Add0~46_combout\ & ((!\Clkdiver|Equal0~6_combout\) # (!\Clkdiver|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~9_combout\,
	datac => \Clkdiver|Add0~46_combout\,
	datad => \Clkdiver|Equal0~6_combout\,
	combout => \Clkdiver|s_counter~1_combout\);

-- Location: FF_X55_Y70_N3
\Clkdiver|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(23));

-- Location: FF_X54_Y70_N19
\Clkdiver|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|s_counter\(24));

-- Location: LCCOMB_X55_Y70_N16
\Clkdiver|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Equal0~7_combout\ = (!\Clkdiver|s_counter\(24) & (\Clkdiver|s_counter\(25) & (!\Clkdiver|s_counter\(18) & \Clkdiver|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(24),
	datab => \Clkdiver|s_counter\(25),
	datac => \Clkdiver|s_counter\(18),
	datad => \Clkdiver|s_counter\(23),
	combout => \Clkdiver|Equal0~7_combout\);

-- Location: LCCOMB_X55_Y70_N18
\Clkdiver|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Equal0~8_combout\ = (\Clkdiver|s_counter\(15) & (\Clkdiver|s_counter\(17) & (!\Clkdiver|s_counter\(11) & !\Clkdiver|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(15),
	datab => \Clkdiver|s_counter\(17),
	datac => \Clkdiver|s_counter\(11),
	datad => \Clkdiver|s_counter\(16),
	combout => \Clkdiver|Equal0~8_combout\);

-- Location: LCCOMB_X55_Y70_N26
\Clkdiver|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|Equal0~9_combout\ = (\Clkdiver|Equal0~7_combout\ & (\Clkdiver|s_counter\(6) & \Clkdiver|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|Equal0~7_combout\,
	datac => \Clkdiver|s_counter\(6),
	datad => \Clkdiver|Equal0~8_combout\,
	combout => \Clkdiver|Equal0~9_combout\);

-- Location: LCCOMB_X55_Y70_N12
\Clkdiver|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|clkOut~0_combout\ = (\Clkdiver|s_counter\(24) & (!\Clkdiver|s_counter\(23) & (\Clkdiver|s_counter\(18) & !\Clkdiver|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(24),
	datab => \Clkdiver|s_counter\(23),
	datac => \Clkdiver|s_counter\(18),
	datad => \Clkdiver|s_counter\(25),
	combout => \Clkdiver|clkOut~0_combout\);

-- Location: LCCOMB_X55_Y70_N10
\Clkdiver|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|clkOut~1_combout\ = (!\Clkdiver|s_counter\(15) & (!\Clkdiver|s_counter\(17) & (\Clkdiver|s_counter\(11) & \Clkdiver|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|s_counter\(15),
	datab => \Clkdiver|s_counter\(17),
	datac => \Clkdiver|s_counter\(11),
	datad => \Clkdiver|s_counter\(16),
	combout => \Clkdiver|clkOut~1_combout\);

-- Location: LCCOMB_X55_Y70_N8
\Clkdiver|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|clkOut~2_combout\ = (\Clkdiver|clkOut~0_combout\ & (!\Clkdiver|s_counter\(6) & \Clkdiver|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|clkOut~0_combout\,
	datac => \Clkdiver|s_counter\(6),
	datad => \Clkdiver|clkOut~1_combout\,
	combout => \Clkdiver|clkOut~2_combout\);

-- Location: LCCOMB_X55_Y70_N28
\Clkdiver|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|clkOut~3_combout\ = (\Clkdiver|Equal0~6_combout\ & (!\Clkdiver|Equal0~9_combout\ & ((\Clkdiver|clkOut~2_combout\) # (\Clkdiver|clkOut~q\)))) # (!\Clkdiver|Equal0~6_combout\ & (((\Clkdiver|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clkdiver|Equal0~9_combout\,
	datab => \Clkdiver|clkOut~2_combout\,
	datac => \Clkdiver|clkOut~q\,
	datad => \Clkdiver|Equal0~6_combout\,
	combout => \Clkdiver|clkOut~3_combout\);

-- Location: LCCOMB_X55_Y70_N20
\Clkdiver|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clkdiver|clkOut~feeder_combout\ = \Clkdiver|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clkdiver|clkOut~3_combout\,
	combout => \Clkdiver|clkOut~feeder_combout\);

-- Location: FF_X55_Y70_N21
\Clkdiver|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Clkdiver|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clkdiver|clkOut~q\);

-- Location: CLKCTRL_G14
\Clkdiver|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clkdiver|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clkdiver|clkOut~clkctrl_outclk\);

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

-- Location: FF_X88_Y72_N29
\shiftN|s_shif[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkdiver|clkOut~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftN|s_shif\(0));

-- Location: LCCOMB_X88_Y72_N18
\shiftN|s_shif[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftN|s_shif[1]~feeder_combout\ = \shiftN|s_shif\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftN|s_shif\(0),
	combout => \shiftN|s_shif[1]~feeder_combout\);

-- Location: FF_X88_Y72_N19
\shiftN|s_shif[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkdiver|clkOut~clkctrl_outclk\,
	d => \shiftN|s_shif[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftN|s_shif\(1));

-- Location: LCCOMB_X88_Y72_N16
\shiftN|s_shif[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftN|s_shif[2]~feeder_combout\ = \shiftN|s_shif\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftN|s_shif\(1),
	combout => \shiftN|s_shif[2]~feeder_combout\);

-- Location: FF_X88_Y72_N17
\shiftN|s_shif[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkdiver|clkOut~clkctrl_outclk\,
	d => \shiftN|s_shif[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftN|s_shif\(2));

-- Location: LCCOMB_X88_Y72_N6
\shiftN|s_shif[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftN|s_shif[3]~feeder_combout\ = \shiftN|s_shif\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftN|s_shif\(2),
	combout => \shiftN|s_shif[3]~feeder_combout\);

-- Location: FF_X88_Y72_N7
\shiftN|s_shif[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkdiver|clkOut~clkctrl_outclk\,
	d => \shiftN|s_shif[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftN|s_shif\(3));

-- Location: LCCOMB_X88_Y72_N0
\shiftN|s_shif[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftN|s_shif[4]~feeder_combout\ = \shiftN|s_shif\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftN|s_shif\(3),
	combout => \shiftN|s_shif[4]~feeder_combout\);

-- Location: FF_X88_Y72_N1
\shiftN|s_shif[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkdiver|clkOut~clkctrl_outclk\,
	d => \shiftN|s_shif[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftN|s_shif\(4));

-- Location: LCCOMB_X88_Y72_N2
\shiftN|s_shif[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftN|s_shif[5]~feeder_combout\ = \shiftN|s_shif\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftN|s_shif\(4),
	combout => \shiftN|s_shif[5]~feeder_combout\);

-- Location: FF_X88_Y72_N3
\shiftN|s_shif[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkdiver|clkOut~clkctrl_outclk\,
	d => \shiftN|s_shif[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftN|s_shif\(5));

-- Location: LCCOMB_X88_Y72_N20
\shiftN|s_shif[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftN|s_shif[6]~feeder_combout\ = \shiftN|s_shif\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftN|s_shif\(5),
	combout => \shiftN|s_shif[6]~feeder_combout\);

-- Location: FF_X88_Y72_N21
\shiftN|s_shif[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkdiver|clkOut~clkctrl_outclk\,
	d => \shiftN|s_shif[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftN|s_shif\(6));

-- Location: LCCOMB_X88_Y72_N22
\shiftN|s_shif[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftN|s_shif[7]~feeder_combout\ = \shiftN|s_shif\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftN|s_shif\(6),
	combout => \shiftN|s_shif[7]~feeder_combout\);

-- Location: FF_X88_Y72_N23
\shiftN|s_shif[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkdiver|clkOut~clkctrl_outclk\,
	d => \shiftN|s_shif[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftN|s_shif\(7));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


