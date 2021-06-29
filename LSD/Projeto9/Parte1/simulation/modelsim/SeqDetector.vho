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

-- DATE "05/21/2021 10:46:03"

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

ENTITY 	SeqDetector IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(4 DOWNTO 0)
	);
END SeqDetector;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqDetector IS
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ClkDivider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[0]~28_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[26]~81\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[27]~82_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan1~1_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan1~2_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~0_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~1_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~2_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~3_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~4_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~5_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~6_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~7_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[0]~29\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[1]~30_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[1]~31\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[2]~32_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[2]~33\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[3]~34_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[3]~35\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[4]~36_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[4]~37\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[5]~38_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[5]~39\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[6]~40_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[6]~41\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[7]~42_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[7]~43\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[8]~44_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[8]~45\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[9]~46_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[9]~47\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[10]~48_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[10]~49\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[11]~50_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[11]~51\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[12]~52_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[12]~53\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[13]~54_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[13]~55\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[14]~56_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[14]~57\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[15]~58_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[15]~59\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[16]~60_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[16]~61\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[17]~62_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[17]~63\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[18]~64_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[18]~65\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[19]~66_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[19]~67\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[20]~68_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[20]~69\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[21]~70_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[21]~71\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[22]~72_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[22]~73\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[23]~74_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[23]~75\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[24]~76_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[24]~77\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[25]~78_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[25]~79\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[26]~80_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan1~0_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan1~3_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan1~4_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan1~5_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan1~6_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan1~7_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan1~8_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan1~9_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~q\ : std_logic;
SIGNAL \ClkDivider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SeqDet|pstaty~8_combout\ : std_logic;
SIGNAL \SeqDet|pstaty.S1~q\ : std_logic;
SIGNAL \SeqDet|pstaty~9_combout\ : std_logic;
SIGNAL \SeqDet|pstaty.S10~q\ : std_logic;
SIGNAL \SeqDet|pstaty~6_combout\ : std_logic;
SIGNAL \SeqDet|pstaty.S100~q\ : std_logic;
SIGNAL \SeqDet|Yout~1_combout\ : std_logic;
SIGNAL \SeqDet|pstaty~7_combout\ : std_logic;
SIGNAL \SeqDet|pstaty.S0~q\ : std_logic;
SIGNAL \ClkDivider|s_divCounter\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \SeqDet|ALT_INV_pstaty.S0~q\ : std_logic;

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
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\ClkDivider|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ClkDivider|clkOut~q\);
\SeqDet|ALT_INV_pstaty.S0~q\ <= NOT \SeqDet|pstaty.S0~q\;
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
	i => \SeqDet|Yout~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ClkDivider|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqDet|ALT_INV_pstaty.S0~q\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqDet|pstaty.S1~q\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqDet|pstaty.S10~q\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqDet|pstaty.S100~q\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

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

-- Location: LCCOMB_X56_Y69_N4
\ClkDivider|s_divCounter[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[0]~28_combout\ = \ClkDivider|s_divCounter\(0) $ (VCC)
-- \ClkDivider|s_divCounter[0]~29\ = CARRY(\ClkDivider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(0),
	datad => VCC,
	combout => \ClkDivider|s_divCounter[0]~28_combout\,
	cout => \ClkDivider|s_divCounter[0]~29\);

-- Location: LCCOMB_X56_Y68_N24
\ClkDivider|s_divCounter[26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[26]~80_combout\ = (\ClkDivider|s_divCounter\(26) & (\ClkDivider|s_divCounter[25]~79\ $ (GND))) # (!\ClkDivider|s_divCounter\(26) & (!\ClkDivider|s_divCounter[25]~79\ & VCC))
-- \ClkDivider|s_divCounter[26]~81\ = CARRY((\ClkDivider|s_divCounter\(26) & !\ClkDivider|s_divCounter[25]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(26),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[25]~79\,
	combout => \ClkDivider|s_divCounter[26]~80_combout\,
	cout => \ClkDivider|s_divCounter[26]~81\);

-- Location: LCCOMB_X56_Y68_N26
\ClkDivider|s_divCounter[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[27]~82_combout\ = \ClkDivider|s_divCounter\(27) $ (\ClkDivider|s_divCounter[26]~81\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(27),
	cin => \ClkDivider|s_divCounter[26]~81\,
	combout => \ClkDivider|s_divCounter[27]~82_combout\);

-- Location: FF_X56_Y68_N27
\ClkDivider|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[27]~82_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(27));

-- Location: LCCOMB_X56_Y69_N0
\ClkDivider|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan1~1_combout\ = (\ClkDivider|s_divCounter\(1) & (\ClkDivider|s_divCounter\(0) & (\ClkDivider|s_divCounter\(2) & \ClkDivider|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(1),
	datab => \ClkDivider|s_divCounter\(0),
	datac => \ClkDivider|s_divCounter\(2),
	datad => \ClkDivider|s_divCounter\(3),
	combout => \ClkDivider|LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y69_N2
\ClkDivider|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan1~2_combout\ = (\ClkDivider|s_divCounter\(4) & (\ClkDivider|s_divCounter\(5) & \ClkDivider|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(4),
	datac => \ClkDivider|s_divCounter\(5),
	datad => \ClkDivider|LessThan1~1_combout\,
	combout => \ClkDivider|LessThan1~2_combout\);

-- Location: LCCOMB_X55_Y69_N10
\ClkDivider|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~0_combout\ = (!\ClkDivider|s_divCounter\(7) & (!\ClkDivider|s_divCounter\(8) & ((!\ClkDivider|LessThan1~2_combout\) # (!\ClkDivider|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(6),
	datab => \ClkDivider|s_divCounter\(7),
	datac => \ClkDivider|s_divCounter\(8),
	datad => \ClkDivider|LessThan1~2_combout\,
	combout => \ClkDivider|LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y69_N16
\ClkDivider|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~1_combout\ = (!\ClkDivider|s_divCounter\(11) & (!\ClkDivider|s_divCounter\(10) & ((\ClkDivider|LessThan0~0_combout\) # (!\ClkDivider|s_divCounter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(11),
	datab => \ClkDivider|s_divCounter\(10),
	datac => \ClkDivider|s_divCounter\(9),
	datad => \ClkDivider|LessThan0~0_combout\,
	combout => \ClkDivider|LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y69_N6
\ClkDivider|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~2_combout\ = (\ClkDivider|s_divCounter\(12) & (\ClkDivider|s_divCounter\(13) & !\ClkDivider|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(12),
	datac => \ClkDivider|s_divCounter\(13),
	datad => \ClkDivider|LessThan0~1_combout\,
	combout => \ClkDivider|LessThan0~2_combout\);

-- Location: LCCOMB_X55_Y69_N12
\ClkDivider|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~3_combout\ = (\ClkDivider|s_divCounter\(15) & ((\ClkDivider|s_divCounter\(14)) # (\ClkDivider|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(14),
	datac => \ClkDivider|s_divCounter\(15),
	datad => \ClkDivider|LessThan0~2_combout\,
	combout => \ClkDivider|LessThan0~3_combout\);

-- Location: LCCOMB_X55_Y69_N28
\ClkDivider|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~4_combout\ = (((!\ClkDivider|s_divCounter\(16) & !\ClkDivider|LessThan0~3_combout\)) # (!\ClkDivider|s_divCounter\(17))) # (!\ClkDivider|s_divCounter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(18),
	datab => \ClkDivider|s_divCounter\(16),
	datac => \ClkDivider|s_divCounter\(17),
	datad => \ClkDivider|LessThan0~3_combout\,
	combout => \ClkDivider|LessThan0~4_combout\);

-- Location: LCCOMB_X55_Y69_N2
\ClkDivider|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~5_combout\ = (\ClkDivider|s_divCounter\(22) & ((\ClkDivider|s_divCounter\(19)) # ((\ClkDivider|s_divCounter\(20)) # (!\ClkDivider|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(19),
	datab => \ClkDivider|s_divCounter\(22),
	datac => \ClkDivider|s_divCounter\(20),
	datad => \ClkDivider|LessThan0~4_combout\,
	combout => \ClkDivider|LessThan0~5_combout\);

-- Location: LCCOMB_X55_Y69_N24
\ClkDivider|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~6_combout\ = (\ClkDivider|s_divCounter\(24)) # ((\ClkDivider|s_divCounter\(21) & (\ClkDivider|s_divCounter\(23) & \ClkDivider|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(21),
	datab => \ClkDivider|s_divCounter\(24),
	datac => \ClkDivider|s_divCounter\(23),
	datad => \ClkDivider|LessThan0~5_combout\,
	combout => \ClkDivider|LessThan0~6_combout\);

-- Location: LCCOMB_X55_Y69_N30
\ClkDivider|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~7_combout\ = (\ClkDivider|s_divCounter\(27) & (\ClkDivider|s_divCounter\(26) & (\ClkDivider|s_divCounter\(25) & \ClkDivider|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(27),
	datab => \ClkDivider|s_divCounter\(26),
	datac => \ClkDivider|s_divCounter\(25),
	datad => \ClkDivider|LessThan0~6_combout\,
	combout => \ClkDivider|LessThan0~7_combout\);

-- Location: FF_X56_Y69_N5
\ClkDivider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[0]~28_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(0));

-- Location: LCCOMB_X56_Y69_N6
\ClkDivider|s_divCounter[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[1]~30_combout\ = (\ClkDivider|s_divCounter\(1) & (!\ClkDivider|s_divCounter[0]~29\)) # (!\ClkDivider|s_divCounter\(1) & ((\ClkDivider|s_divCounter[0]~29\) # (GND)))
-- \ClkDivider|s_divCounter[1]~31\ = CARRY((!\ClkDivider|s_divCounter[0]~29\) # (!\ClkDivider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(1),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[0]~29\,
	combout => \ClkDivider|s_divCounter[1]~30_combout\,
	cout => \ClkDivider|s_divCounter[1]~31\);

-- Location: FF_X56_Y69_N7
\ClkDivider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[1]~30_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(1));

-- Location: LCCOMB_X56_Y69_N8
\ClkDivider|s_divCounter[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[2]~32_combout\ = (\ClkDivider|s_divCounter\(2) & (\ClkDivider|s_divCounter[1]~31\ $ (GND))) # (!\ClkDivider|s_divCounter\(2) & (!\ClkDivider|s_divCounter[1]~31\ & VCC))
-- \ClkDivider|s_divCounter[2]~33\ = CARRY((\ClkDivider|s_divCounter\(2) & !\ClkDivider|s_divCounter[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(2),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[1]~31\,
	combout => \ClkDivider|s_divCounter[2]~32_combout\,
	cout => \ClkDivider|s_divCounter[2]~33\);

-- Location: FF_X56_Y69_N9
\ClkDivider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[2]~32_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(2));

-- Location: LCCOMB_X56_Y69_N10
\ClkDivider|s_divCounter[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[3]~34_combout\ = (\ClkDivider|s_divCounter\(3) & (!\ClkDivider|s_divCounter[2]~33\)) # (!\ClkDivider|s_divCounter\(3) & ((\ClkDivider|s_divCounter[2]~33\) # (GND)))
-- \ClkDivider|s_divCounter[3]~35\ = CARRY((!\ClkDivider|s_divCounter[2]~33\) # (!\ClkDivider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(3),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[2]~33\,
	combout => \ClkDivider|s_divCounter[3]~34_combout\,
	cout => \ClkDivider|s_divCounter[3]~35\);

-- Location: FF_X56_Y69_N11
\ClkDivider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[3]~34_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(3));

-- Location: LCCOMB_X56_Y69_N12
\ClkDivider|s_divCounter[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[4]~36_combout\ = (\ClkDivider|s_divCounter\(4) & (\ClkDivider|s_divCounter[3]~35\ $ (GND))) # (!\ClkDivider|s_divCounter\(4) & (!\ClkDivider|s_divCounter[3]~35\ & VCC))
-- \ClkDivider|s_divCounter[4]~37\ = CARRY((\ClkDivider|s_divCounter\(4) & !\ClkDivider|s_divCounter[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(4),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[3]~35\,
	combout => \ClkDivider|s_divCounter[4]~36_combout\,
	cout => \ClkDivider|s_divCounter[4]~37\);

-- Location: FF_X56_Y69_N13
\ClkDivider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[4]~36_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(4));

-- Location: LCCOMB_X56_Y69_N14
\ClkDivider|s_divCounter[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[5]~38_combout\ = (\ClkDivider|s_divCounter\(5) & (!\ClkDivider|s_divCounter[4]~37\)) # (!\ClkDivider|s_divCounter\(5) & ((\ClkDivider|s_divCounter[4]~37\) # (GND)))
-- \ClkDivider|s_divCounter[5]~39\ = CARRY((!\ClkDivider|s_divCounter[4]~37\) # (!\ClkDivider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(5),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[4]~37\,
	combout => \ClkDivider|s_divCounter[5]~38_combout\,
	cout => \ClkDivider|s_divCounter[5]~39\);

-- Location: FF_X56_Y69_N15
\ClkDivider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[5]~38_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(5));

-- Location: LCCOMB_X56_Y69_N16
\ClkDivider|s_divCounter[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[6]~40_combout\ = (\ClkDivider|s_divCounter\(6) & (\ClkDivider|s_divCounter[5]~39\ $ (GND))) # (!\ClkDivider|s_divCounter\(6) & (!\ClkDivider|s_divCounter[5]~39\ & VCC))
-- \ClkDivider|s_divCounter[6]~41\ = CARRY((\ClkDivider|s_divCounter\(6) & !\ClkDivider|s_divCounter[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(6),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[5]~39\,
	combout => \ClkDivider|s_divCounter[6]~40_combout\,
	cout => \ClkDivider|s_divCounter[6]~41\);

-- Location: FF_X55_Y69_N9
\ClkDivider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ClkDivider|s_divCounter[6]~40_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(6));

-- Location: LCCOMB_X56_Y69_N18
\ClkDivider|s_divCounter[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[7]~42_combout\ = (\ClkDivider|s_divCounter\(7) & (!\ClkDivider|s_divCounter[6]~41\)) # (!\ClkDivider|s_divCounter\(7) & ((\ClkDivider|s_divCounter[6]~41\) # (GND)))
-- \ClkDivider|s_divCounter[7]~43\ = CARRY((!\ClkDivider|s_divCounter[6]~41\) # (!\ClkDivider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(7),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[6]~41\,
	combout => \ClkDivider|s_divCounter[7]~42_combout\,
	cout => \ClkDivider|s_divCounter[7]~43\);

-- Location: FF_X55_Y69_N15
\ClkDivider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ClkDivider|s_divCounter[7]~42_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(7));

-- Location: LCCOMB_X56_Y69_N20
\ClkDivider|s_divCounter[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[8]~44_combout\ = (\ClkDivider|s_divCounter\(8) & (\ClkDivider|s_divCounter[7]~43\ $ (GND))) # (!\ClkDivider|s_divCounter\(8) & (!\ClkDivider|s_divCounter[7]~43\ & VCC))
-- \ClkDivider|s_divCounter[8]~45\ = CARRY((\ClkDivider|s_divCounter\(8) & !\ClkDivider|s_divCounter[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(8),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[7]~43\,
	combout => \ClkDivider|s_divCounter[8]~44_combout\,
	cout => \ClkDivider|s_divCounter[8]~45\);

-- Location: FF_X55_Y69_N5
\ClkDivider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ClkDivider|s_divCounter[8]~44_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(8));

-- Location: LCCOMB_X56_Y69_N22
\ClkDivider|s_divCounter[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[9]~46_combout\ = (\ClkDivider|s_divCounter\(9) & (!\ClkDivider|s_divCounter[8]~45\)) # (!\ClkDivider|s_divCounter\(9) & ((\ClkDivider|s_divCounter[8]~45\) # (GND)))
-- \ClkDivider|s_divCounter[9]~47\ = CARRY((!\ClkDivider|s_divCounter[8]~45\) # (!\ClkDivider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(9),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[8]~45\,
	combout => \ClkDivider|s_divCounter[9]~46_combout\,
	cout => \ClkDivider|s_divCounter[9]~47\);

-- Location: FF_X56_Y69_N23
\ClkDivider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[9]~46_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(9));

-- Location: LCCOMB_X56_Y69_N24
\ClkDivider|s_divCounter[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[10]~48_combout\ = (\ClkDivider|s_divCounter\(10) & (\ClkDivider|s_divCounter[9]~47\ $ (GND))) # (!\ClkDivider|s_divCounter\(10) & (!\ClkDivider|s_divCounter[9]~47\ & VCC))
-- \ClkDivider|s_divCounter[10]~49\ = CARRY((\ClkDivider|s_divCounter\(10) & !\ClkDivider|s_divCounter[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(10),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[9]~47\,
	combout => \ClkDivider|s_divCounter[10]~48_combout\,
	cout => \ClkDivider|s_divCounter[10]~49\);

-- Location: FF_X56_Y69_N25
\ClkDivider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[10]~48_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(10));

-- Location: LCCOMB_X56_Y69_N26
\ClkDivider|s_divCounter[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[11]~50_combout\ = (\ClkDivider|s_divCounter\(11) & (!\ClkDivider|s_divCounter[10]~49\)) # (!\ClkDivider|s_divCounter\(11) & ((\ClkDivider|s_divCounter[10]~49\) # (GND)))
-- \ClkDivider|s_divCounter[11]~51\ = CARRY((!\ClkDivider|s_divCounter[10]~49\) # (!\ClkDivider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(11),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[10]~49\,
	combout => \ClkDivider|s_divCounter[11]~50_combout\,
	cout => \ClkDivider|s_divCounter[11]~51\);

-- Location: FF_X56_Y69_N27
\ClkDivider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[11]~50_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(11));

-- Location: LCCOMB_X56_Y69_N28
\ClkDivider|s_divCounter[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[12]~52_combout\ = (\ClkDivider|s_divCounter\(12) & (\ClkDivider|s_divCounter[11]~51\ $ (GND))) # (!\ClkDivider|s_divCounter\(12) & (!\ClkDivider|s_divCounter[11]~51\ & VCC))
-- \ClkDivider|s_divCounter[12]~53\ = CARRY((\ClkDivider|s_divCounter\(12) & !\ClkDivider|s_divCounter[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(12),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[11]~51\,
	combout => \ClkDivider|s_divCounter[12]~52_combout\,
	cout => \ClkDivider|s_divCounter[12]~53\);

-- Location: FF_X56_Y69_N29
\ClkDivider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[12]~52_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(12));

-- Location: LCCOMB_X56_Y69_N30
\ClkDivider|s_divCounter[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[13]~54_combout\ = (\ClkDivider|s_divCounter\(13) & (!\ClkDivider|s_divCounter[12]~53\)) # (!\ClkDivider|s_divCounter\(13) & ((\ClkDivider|s_divCounter[12]~53\) # (GND)))
-- \ClkDivider|s_divCounter[13]~55\ = CARRY((!\ClkDivider|s_divCounter[12]~53\) # (!\ClkDivider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(13),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[12]~53\,
	combout => \ClkDivider|s_divCounter[13]~54_combout\,
	cout => \ClkDivider|s_divCounter[13]~55\);

-- Location: FF_X56_Y69_N31
\ClkDivider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[13]~54_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(13));

-- Location: LCCOMB_X56_Y68_N0
\ClkDivider|s_divCounter[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[14]~56_combout\ = (\ClkDivider|s_divCounter\(14) & (\ClkDivider|s_divCounter[13]~55\ $ (GND))) # (!\ClkDivider|s_divCounter\(14) & (!\ClkDivider|s_divCounter[13]~55\ & VCC))
-- \ClkDivider|s_divCounter[14]~57\ = CARRY((\ClkDivider|s_divCounter\(14) & !\ClkDivider|s_divCounter[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(14),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[13]~55\,
	combout => \ClkDivider|s_divCounter[14]~56_combout\,
	cout => \ClkDivider|s_divCounter[14]~57\);

-- Location: FF_X55_Y69_N27
\ClkDivider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ClkDivider|s_divCounter[14]~56_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(14));

-- Location: LCCOMB_X56_Y68_N2
\ClkDivider|s_divCounter[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[15]~58_combout\ = (\ClkDivider|s_divCounter\(15) & (!\ClkDivider|s_divCounter[14]~57\)) # (!\ClkDivider|s_divCounter\(15) & ((\ClkDivider|s_divCounter[14]~57\) # (GND)))
-- \ClkDivider|s_divCounter[15]~59\ = CARRY((!\ClkDivider|s_divCounter[14]~57\) # (!\ClkDivider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(15),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[14]~57\,
	combout => \ClkDivider|s_divCounter[15]~58_combout\,
	cout => \ClkDivider|s_divCounter[15]~59\);

-- Location: FF_X55_Y69_N13
\ClkDivider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ClkDivider|s_divCounter[15]~58_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(15));

-- Location: LCCOMB_X56_Y68_N4
\ClkDivider|s_divCounter[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[16]~60_combout\ = (\ClkDivider|s_divCounter\(16) & (\ClkDivider|s_divCounter[15]~59\ $ (GND))) # (!\ClkDivider|s_divCounter\(16) & (!\ClkDivider|s_divCounter[15]~59\ & VCC))
-- \ClkDivider|s_divCounter[16]~61\ = CARRY((\ClkDivider|s_divCounter\(16) & !\ClkDivider|s_divCounter[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(16),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[15]~59\,
	combout => \ClkDivider|s_divCounter[16]~60_combout\,
	cout => \ClkDivider|s_divCounter[16]~61\);

-- Location: FF_X56_Y68_N5
\ClkDivider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[16]~60_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(16));

-- Location: LCCOMB_X56_Y68_N6
\ClkDivider|s_divCounter[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[17]~62_combout\ = (\ClkDivider|s_divCounter\(17) & (!\ClkDivider|s_divCounter[16]~61\)) # (!\ClkDivider|s_divCounter\(17) & ((\ClkDivider|s_divCounter[16]~61\) # (GND)))
-- \ClkDivider|s_divCounter[17]~63\ = CARRY((!\ClkDivider|s_divCounter[16]~61\) # (!\ClkDivider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(17),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[16]~61\,
	combout => \ClkDivider|s_divCounter[17]~62_combout\,
	cout => \ClkDivider|s_divCounter[17]~63\);

-- Location: FF_X56_Y68_N7
\ClkDivider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[17]~62_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(17));

-- Location: LCCOMB_X56_Y68_N8
\ClkDivider|s_divCounter[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[18]~64_combout\ = (\ClkDivider|s_divCounter\(18) & (\ClkDivider|s_divCounter[17]~63\ $ (GND))) # (!\ClkDivider|s_divCounter\(18) & (!\ClkDivider|s_divCounter[17]~63\ & VCC))
-- \ClkDivider|s_divCounter[18]~65\ = CARRY((\ClkDivider|s_divCounter\(18) & !\ClkDivider|s_divCounter[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(18),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[17]~63\,
	combout => \ClkDivider|s_divCounter[18]~64_combout\,
	cout => \ClkDivider|s_divCounter[18]~65\);

-- Location: FF_X56_Y68_N9
\ClkDivider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[18]~64_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(18));

-- Location: LCCOMB_X56_Y68_N10
\ClkDivider|s_divCounter[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[19]~66_combout\ = (\ClkDivider|s_divCounter\(19) & (!\ClkDivider|s_divCounter[18]~65\)) # (!\ClkDivider|s_divCounter\(19) & ((\ClkDivider|s_divCounter[18]~65\) # (GND)))
-- \ClkDivider|s_divCounter[19]~67\ = CARRY((!\ClkDivider|s_divCounter[18]~65\) # (!\ClkDivider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(19),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[18]~65\,
	combout => \ClkDivider|s_divCounter[19]~66_combout\,
	cout => \ClkDivider|s_divCounter[19]~67\);

-- Location: FF_X56_Y68_N11
\ClkDivider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[19]~66_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(19));

-- Location: LCCOMB_X56_Y68_N12
\ClkDivider|s_divCounter[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[20]~68_combout\ = (\ClkDivider|s_divCounter\(20) & (\ClkDivider|s_divCounter[19]~67\ $ (GND))) # (!\ClkDivider|s_divCounter\(20) & (!\ClkDivider|s_divCounter[19]~67\ & VCC))
-- \ClkDivider|s_divCounter[20]~69\ = CARRY((\ClkDivider|s_divCounter\(20) & !\ClkDivider|s_divCounter[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(20),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[19]~67\,
	combout => \ClkDivider|s_divCounter[20]~68_combout\,
	cout => \ClkDivider|s_divCounter[20]~69\);

-- Location: FF_X56_Y68_N13
\ClkDivider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[20]~68_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(20));

-- Location: LCCOMB_X56_Y68_N14
\ClkDivider|s_divCounter[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[21]~70_combout\ = (\ClkDivider|s_divCounter\(21) & (!\ClkDivider|s_divCounter[20]~69\)) # (!\ClkDivider|s_divCounter\(21) & ((\ClkDivider|s_divCounter[20]~69\) # (GND)))
-- \ClkDivider|s_divCounter[21]~71\ = CARRY((!\ClkDivider|s_divCounter[20]~69\) # (!\ClkDivider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(21),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[20]~69\,
	combout => \ClkDivider|s_divCounter[21]~70_combout\,
	cout => \ClkDivider|s_divCounter[21]~71\);

-- Location: FF_X56_Y68_N15
\ClkDivider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[21]~70_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(21));

-- Location: LCCOMB_X56_Y68_N16
\ClkDivider|s_divCounter[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[22]~72_combout\ = (\ClkDivider|s_divCounter\(22) & (\ClkDivider|s_divCounter[21]~71\ $ (GND))) # (!\ClkDivider|s_divCounter\(22) & (!\ClkDivider|s_divCounter[21]~71\ & VCC))
-- \ClkDivider|s_divCounter[22]~73\ = CARRY((\ClkDivider|s_divCounter\(22) & !\ClkDivider|s_divCounter[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(22),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[21]~71\,
	combout => \ClkDivider|s_divCounter[22]~72_combout\,
	cout => \ClkDivider|s_divCounter[22]~73\);

-- Location: FF_X56_Y68_N17
\ClkDivider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[22]~72_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(22));

-- Location: LCCOMB_X56_Y68_N18
\ClkDivider|s_divCounter[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[23]~74_combout\ = (\ClkDivider|s_divCounter\(23) & (!\ClkDivider|s_divCounter[22]~73\)) # (!\ClkDivider|s_divCounter\(23) & ((\ClkDivider|s_divCounter[22]~73\) # (GND)))
-- \ClkDivider|s_divCounter[23]~75\ = CARRY((!\ClkDivider|s_divCounter[22]~73\) # (!\ClkDivider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(23),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[22]~73\,
	combout => \ClkDivider|s_divCounter[23]~74_combout\,
	cout => \ClkDivider|s_divCounter[23]~75\);

-- Location: FF_X56_Y68_N19
\ClkDivider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[23]~74_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(23));

-- Location: LCCOMB_X56_Y68_N20
\ClkDivider|s_divCounter[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[24]~76_combout\ = (\ClkDivider|s_divCounter\(24) & (\ClkDivider|s_divCounter[23]~75\ $ (GND))) # (!\ClkDivider|s_divCounter\(24) & (!\ClkDivider|s_divCounter[23]~75\ & VCC))
-- \ClkDivider|s_divCounter[24]~77\ = CARRY((\ClkDivider|s_divCounter\(24) & !\ClkDivider|s_divCounter[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(24),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[23]~75\,
	combout => \ClkDivider|s_divCounter[24]~76_combout\,
	cout => \ClkDivider|s_divCounter[24]~77\);

-- Location: FF_X56_Y68_N21
\ClkDivider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[24]~76_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(24));

-- Location: LCCOMB_X56_Y68_N22
\ClkDivider|s_divCounter[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[25]~78_combout\ = (\ClkDivider|s_divCounter\(25) & (!\ClkDivider|s_divCounter[24]~77\)) # (!\ClkDivider|s_divCounter\(25) & ((\ClkDivider|s_divCounter[24]~77\) # (GND)))
-- \ClkDivider|s_divCounter[25]~79\ = CARRY((!\ClkDivider|s_divCounter[24]~77\) # (!\ClkDivider|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(25),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[24]~77\,
	combout => \ClkDivider|s_divCounter[25]~78_combout\,
	cout => \ClkDivider|s_divCounter[25]~79\);

-- Location: FF_X56_Y68_N23
\ClkDivider|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[25]~78_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(25));

-- Location: FF_X56_Y68_N25
\ClkDivider|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[26]~80_combout\,
	sclr => \ClkDivider|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(26));

-- Location: LCCOMB_X55_Y69_N4
\ClkDivider|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan1~0_combout\ = ((!\ClkDivider|s_divCounter\(24)) # (!\ClkDivider|s_divCounter\(25))) # (!\ClkDivider|s_divCounter\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(26),
	datab => \ClkDivider|s_divCounter\(25),
	datad => \ClkDivider|s_divCounter\(24),
	combout => \ClkDivider|LessThan1~0_combout\);

-- Location: LCCOMB_X55_Y69_N18
\ClkDivider|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan1~3_combout\ = ((!\ClkDivider|s_divCounter\(6) & (!\ClkDivider|s_divCounter\(7) & !\ClkDivider|LessThan1~2_combout\))) # (!\ClkDivider|s_divCounter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(6),
	datab => \ClkDivider|s_divCounter\(8),
	datac => \ClkDivider|s_divCounter\(7),
	datad => \ClkDivider|LessThan1~2_combout\,
	combout => \ClkDivider|LessThan1~3_combout\);

-- Location: LCCOMB_X55_Y69_N26
\ClkDivider|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan1~4_combout\ = (!\ClkDivider|s_divCounter\(9) & (!\ClkDivider|s_divCounter\(10) & \ClkDivider|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(9),
	datab => \ClkDivider|s_divCounter\(10),
	datad => \ClkDivider|LessThan1~3_combout\,
	combout => \ClkDivider|LessThan1~4_combout\);

-- Location: LCCOMB_X55_Y69_N20
\ClkDivider|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan1~5_combout\ = (!\ClkDivider|s_divCounter\(13) & (((\ClkDivider|LessThan1~4_combout\) # (!\ClkDivider|s_divCounter\(11))) # (!\ClkDivider|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(13),
	datab => \ClkDivider|s_divCounter\(12),
	datac => \ClkDivider|LessThan1~4_combout\,
	datad => \ClkDivider|s_divCounter\(11),
	combout => \ClkDivider|LessThan1~5_combout\);

-- Location: LCCOMB_X55_Y69_N22
\ClkDivider|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan1~6_combout\ = (\ClkDivider|s_divCounter\(16) & ((\ClkDivider|s_divCounter\(15)) # ((\ClkDivider|s_divCounter\(14) & !\ClkDivider|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(15),
	datab => \ClkDivider|s_divCounter\(14),
	datac => \ClkDivider|s_divCounter\(16),
	datad => \ClkDivider|LessThan1~5_combout\,
	combout => \ClkDivider|LessThan1~6_combout\);

-- Location: LCCOMB_X55_Y69_N0
\ClkDivider|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan1~7_combout\ = (\ClkDivider|s_divCounter\(18)) # ((\ClkDivider|s_divCounter\(19)) # ((\ClkDivider|s_divCounter\(17) & \ClkDivider|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(18),
	datab => \ClkDivider|s_divCounter\(17),
	datac => \ClkDivider|LessThan1~6_combout\,
	datad => \ClkDivider|s_divCounter\(19),
	combout => \ClkDivider|LessThan1~7_combout\);

-- Location: LCCOMB_X55_Y70_N18
\ClkDivider|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan1~8_combout\ = (((!\ClkDivider|LessThan1~7_combout\) # (!\ClkDivider|s_divCounter\(20))) # (!\ClkDivider|s_divCounter\(22))) # (!\ClkDivider|s_divCounter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(21),
	datab => \ClkDivider|s_divCounter\(22),
	datac => \ClkDivider|s_divCounter\(20),
	datad => \ClkDivider|LessThan1~7_combout\,
	combout => \ClkDivider|LessThan1~8_combout\);

-- Location: LCCOMB_X55_Y70_N2
\ClkDivider|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan1~9_combout\ = (\ClkDivider|s_divCounter\(27)) # ((!\ClkDivider|LessThan1~0_combout\ & ((\ClkDivider|s_divCounter\(23)) # (!\ClkDivider|LessThan1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|LessThan1~0_combout\,
	datab => \ClkDivider|s_divCounter\(27),
	datac => \ClkDivider|s_divCounter\(23),
	datad => \ClkDivider|LessThan1~8_combout\,
	combout => \ClkDivider|LessThan1~9_combout\);

-- Location: FF_X55_Y70_N3
\ClkDivider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|clkOut~q\);

-- Location: CLKCTRL_G14
\ClkDivider|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ClkDivider|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ClkDivider|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X84_Y69_N18
\SeqDet|pstaty~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDet|pstaty~8_combout\ = (\SW[1]~input_o\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \SeqDet|pstaty~8_combout\);

-- Location: FF_X84_Y69_N19
\SeqDet|pstaty.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivider|clkOut~clkctrl_outclk\,
	d => \SeqDet|pstaty~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDet|pstaty.S1~q\);

-- Location: LCCOMB_X84_Y69_N4
\SeqDet|pstaty~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDet|pstaty~9_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \SeqDet|pstaty.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SeqDet|pstaty.S1~q\,
	combout => \SeqDet|pstaty~9_combout\);

-- Location: FF_X84_Y69_N5
\SeqDet|pstaty.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivider|clkOut~clkctrl_outclk\,
	d => \SeqDet|pstaty~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDet|pstaty.S10~q\);

-- Location: LCCOMB_X84_Y69_N24
\SeqDet|pstaty~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDet|pstaty~6_combout\ = (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & \SeqDet|pstaty.S10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SeqDet|pstaty.S10~q\,
	combout => \SeqDet|pstaty~6_combout\);

-- Location: FF_X84_Y69_N25
\SeqDet|pstaty.S100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivider|clkOut~clkctrl_outclk\,
	d => \SeqDet|pstaty~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDet|pstaty.S100~q\);

-- Location: LCCOMB_X84_Y69_N26
\SeqDet|Yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDet|Yout~1_combout\ = (\SW[1]~input_o\ & \SeqDet|pstaty.S100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SeqDet|pstaty.S100~q\,
	combout => \SeqDet|Yout~1_combout\);

-- Location: LCCOMB_X84_Y69_N28
\SeqDet|pstaty~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDet|pstaty~7_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\SeqDet|pstaty.S10~q\) # (\SeqDet|pstaty.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SeqDet|pstaty.S10~q\,
	datad => \SeqDet|pstaty.S1~q\,
	combout => \SeqDet|pstaty~7_combout\);

-- Location: FF_X84_Y69_N29
\SeqDet|pstaty.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivider|clkOut~clkctrl_outclk\,
	d => \SeqDet|pstaty~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDet|pstaty.S0~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;
END structure;


