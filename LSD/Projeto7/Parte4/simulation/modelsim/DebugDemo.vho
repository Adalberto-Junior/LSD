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

-- DATE "05/06/2021 19:29:04"

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

ENTITY 	DebugDemo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0)
	);
END DebugDemo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DebugDemo IS
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
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \System_core|s_cntup[0]~30_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \System_core|s_cntup[12]~56_combout\ : std_logic;
SIGNAL \System_core|s_cntup[0]~31\ : std_logic;
SIGNAL \System_core|s_cntup[1]~32_combout\ : std_logic;
SIGNAL \System_core|s_cntup[1]~33\ : std_logic;
SIGNAL \System_core|s_cntup[2]~34_combout\ : std_logic;
SIGNAL \System_core|s_cntup[2]~35\ : std_logic;
SIGNAL \System_core|s_cntup[3]~36_combout\ : std_logic;
SIGNAL \System_core|s_cntup[3]~37\ : std_logic;
SIGNAL \System_core|s_cntup[4]~38_combout\ : std_logic;
SIGNAL \System_core|s_cntup[4]~39\ : std_logic;
SIGNAL \System_core|s_cntup[5]~40_combout\ : std_logic;
SIGNAL \System_core|s_cntup[5]~41\ : std_logic;
SIGNAL \System_core|s_cntup[6]~42_combout\ : std_logic;
SIGNAL \System_core|s_cntup[6]~43\ : std_logic;
SIGNAL \System_core|s_cntup[7]~44_combout\ : std_logic;
SIGNAL \System_core|s_cntup[7]~45\ : std_logic;
SIGNAL \System_core|s_cntup[8]~46_combout\ : std_logic;
SIGNAL \System_core|s_cntup[8]~47\ : std_logic;
SIGNAL \System_core|s_cntup[9]~48_combout\ : std_logic;
SIGNAL \System_core|s_cntup[9]~49\ : std_logic;
SIGNAL \System_core|s_cntup[10]~50_combout\ : std_logic;
SIGNAL \System_core|s_cntup[10]~51\ : std_logic;
SIGNAL \System_core|s_cntup[11]~52_combout\ : std_logic;
SIGNAL \System_core|s_cntup[11]~53\ : std_logic;
SIGNAL \System_core|s_cntup[12]~54_combout\ : std_logic;
SIGNAL \System_core|s_cntup[12]~55\ : std_logic;
SIGNAL \System_core|s_cntup[13]~57_combout\ : std_logic;
SIGNAL \System_core|s_cntup[13]~58\ : std_logic;
SIGNAL \System_core|s_cntup[14]~59_combout\ : std_logic;
SIGNAL \System_core|s_cntup[14]~60\ : std_logic;
SIGNAL \System_core|s_cntup[15]~61_combout\ : std_logic;
SIGNAL \System_core|s_cntup[15]~62\ : std_logic;
SIGNAL \System_core|s_cntup[16]~63_combout\ : std_logic;
SIGNAL \System_core|s_cntup[16]~64\ : std_logic;
SIGNAL \System_core|s_cntup[17]~65_combout\ : std_logic;
SIGNAL \System_core|s_cntup[17]~66\ : std_logic;
SIGNAL \System_core|s_cntup[18]~67_combout\ : std_logic;
SIGNAL \System_core|s_cntup[18]~68\ : std_logic;
SIGNAL \System_core|s_cntup[19]~69_combout\ : std_logic;
SIGNAL \System_core|s_cntup[19]~70\ : std_logic;
SIGNAL \System_core|s_cntup[20]~71_combout\ : std_logic;
SIGNAL \System_core|s_cntup[20]~72\ : std_logic;
SIGNAL \System_core|s_cntup[21]~73_combout\ : std_logic;
SIGNAL \System_core|s_cntup[21]~74\ : std_logic;
SIGNAL \System_core|s_cntup[22]~75_combout\ : std_logic;
SIGNAL \System_core|s_cntup[22]~76\ : std_logic;
SIGNAL \System_core|s_cntup[23]~77_combout\ : std_logic;
SIGNAL \System_core|s_cntup[23]~78\ : std_logic;
SIGNAL \System_core|s_cntup[24]~79_combout\ : std_logic;
SIGNAL \System_core|s_cntup[24]~80\ : std_logic;
SIGNAL \System_core|s_cntup[25]~81_combout\ : std_logic;
SIGNAL \System_core|s_cntup[25]~82\ : std_logic;
SIGNAL \System_core|s_cntup[26]~83_combout\ : std_logic;
SIGNAL \System_core|s_cntup[26]~84\ : std_logic;
SIGNAL \System_core|s_cntup[27]~85_combout\ : std_logic;
SIGNAL \System_core|s_cntup[27]~86\ : std_logic;
SIGNAL \System_core|s_cntup[28]~87_combout\ : std_logic;
SIGNAL \System_core|s_cntup[28]~88\ : std_logic;
SIGNAL \System_core|s_cntup[29]~89_combout\ : std_logic;
SIGNAL \System_core|s_cntup\ : std_logic_vector(29 DOWNTO 0);

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

-- Location: IOOBUF_X0_Y52_N2
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(12),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(13),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(14),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(15),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(16),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(17),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(18),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(19),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(20),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(21),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(22),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(23),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(24),
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(25),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(26),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(27),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(28),
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \System_core|s_cntup\(29),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X1_Y52_N2
\System_core|s_cntup[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[0]~30_combout\ = \System_core|s_cntup\(0) $ (VCC)
-- \System_core|s_cntup[0]~31\ = CARRY(\System_core|s_cntup\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(0),
	datad => VCC,
	combout => \System_core|s_cntup[0]~30_combout\,
	cout => \System_core|s_cntup[0]~31\);

-- Location: IOIBUF_X0_Y53_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X1_Y52_N0
\System_core|s_cntup[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[12]~56_combout\ = (\SW[0]~input_o\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \System_core|s_cntup[12]~56_combout\);

-- Location: FF_X1_Y52_N3
\System_core|s_cntup[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[0]~30_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(0));

-- Location: LCCOMB_X1_Y52_N4
\System_core|s_cntup[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[1]~32_combout\ = (\System_core|s_cntup\(1) & (!\System_core|s_cntup[0]~31\)) # (!\System_core|s_cntup\(1) & ((\System_core|s_cntup[0]~31\) # (GND)))
-- \System_core|s_cntup[1]~33\ = CARRY((!\System_core|s_cntup[0]~31\) # (!\System_core|s_cntup\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(1),
	datad => VCC,
	cin => \System_core|s_cntup[0]~31\,
	combout => \System_core|s_cntup[1]~32_combout\,
	cout => \System_core|s_cntup[1]~33\);

-- Location: FF_X1_Y52_N5
\System_core|s_cntup[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[1]~32_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(1));

-- Location: LCCOMB_X1_Y52_N6
\System_core|s_cntup[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[2]~34_combout\ = (\System_core|s_cntup\(2) & (\System_core|s_cntup[1]~33\ $ (GND))) # (!\System_core|s_cntup\(2) & (!\System_core|s_cntup[1]~33\ & VCC))
-- \System_core|s_cntup[2]~35\ = CARRY((\System_core|s_cntup\(2) & !\System_core|s_cntup[1]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \System_core|s_cntup\(2),
	datad => VCC,
	cin => \System_core|s_cntup[1]~33\,
	combout => \System_core|s_cntup[2]~34_combout\,
	cout => \System_core|s_cntup[2]~35\);

-- Location: FF_X1_Y52_N7
\System_core|s_cntup[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[2]~34_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(2));

-- Location: LCCOMB_X1_Y52_N8
\System_core|s_cntup[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[3]~36_combout\ = (\System_core|s_cntup\(3) & (!\System_core|s_cntup[2]~35\)) # (!\System_core|s_cntup\(3) & ((\System_core|s_cntup[2]~35\) # (GND)))
-- \System_core|s_cntup[3]~37\ = CARRY((!\System_core|s_cntup[2]~35\) # (!\System_core|s_cntup\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(3),
	datad => VCC,
	cin => \System_core|s_cntup[2]~35\,
	combout => \System_core|s_cntup[3]~36_combout\,
	cout => \System_core|s_cntup[3]~37\);

-- Location: FF_X1_Y52_N9
\System_core|s_cntup[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[3]~36_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(3));

-- Location: LCCOMB_X1_Y52_N10
\System_core|s_cntup[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[4]~38_combout\ = (\System_core|s_cntup\(4) & (\System_core|s_cntup[3]~37\ $ (GND))) # (!\System_core|s_cntup\(4) & (!\System_core|s_cntup[3]~37\ & VCC))
-- \System_core|s_cntup[4]~39\ = CARRY((\System_core|s_cntup\(4) & !\System_core|s_cntup[3]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \System_core|s_cntup\(4),
	datad => VCC,
	cin => \System_core|s_cntup[3]~37\,
	combout => \System_core|s_cntup[4]~38_combout\,
	cout => \System_core|s_cntup[4]~39\);

-- Location: FF_X1_Y52_N11
\System_core|s_cntup[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[4]~38_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(4));

-- Location: LCCOMB_X1_Y52_N12
\System_core|s_cntup[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[5]~40_combout\ = (\System_core|s_cntup\(5) & (!\System_core|s_cntup[4]~39\)) # (!\System_core|s_cntup\(5) & ((\System_core|s_cntup[4]~39\) # (GND)))
-- \System_core|s_cntup[5]~41\ = CARRY((!\System_core|s_cntup[4]~39\) # (!\System_core|s_cntup\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \System_core|s_cntup\(5),
	datad => VCC,
	cin => \System_core|s_cntup[4]~39\,
	combout => \System_core|s_cntup[5]~40_combout\,
	cout => \System_core|s_cntup[5]~41\);

-- Location: FF_X1_Y52_N13
\System_core|s_cntup[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[5]~40_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(5));

-- Location: LCCOMB_X1_Y52_N14
\System_core|s_cntup[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[6]~42_combout\ = (\System_core|s_cntup\(6) & (\System_core|s_cntup[5]~41\ $ (GND))) # (!\System_core|s_cntup\(6) & (!\System_core|s_cntup[5]~41\ & VCC))
-- \System_core|s_cntup[6]~43\ = CARRY((\System_core|s_cntup\(6) & !\System_core|s_cntup[5]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(6),
	datad => VCC,
	cin => \System_core|s_cntup[5]~41\,
	combout => \System_core|s_cntup[6]~42_combout\,
	cout => \System_core|s_cntup[6]~43\);

-- Location: FF_X1_Y52_N15
\System_core|s_cntup[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[6]~42_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(6));

-- Location: LCCOMB_X1_Y52_N16
\System_core|s_cntup[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[7]~44_combout\ = (\System_core|s_cntup\(7) & (!\System_core|s_cntup[6]~43\)) # (!\System_core|s_cntup\(7) & ((\System_core|s_cntup[6]~43\) # (GND)))
-- \System_core|s_cntup[7]~45\ = CARRY((!\System_core|s_cntup[6]~43\) # (!\System_core|s_cntup\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(7),
	datad => VCC,
	cin => \System_core|s_cntup[6]~43\,
	combout => \System_core|s_cntup[7]~44_combout\,
	cout => \System_core|s_cntup[7]~45\);

-- Location: FF_X1_Y52_N17
\System_core|s_cntup[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[7]~44_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(7));

-- Location: LCCOMB_X1_Y52_N18
\System_core|s_cntup[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[8]~46_combout\ = (\System_core|s_cntup\(8) & (\System_core|s_cntup[7]~45\ $ (GND))) # (!\System_core|s_cntup\(8) & (!\System_core|s_cntup[7]~45\ & VCC))
-- \System_core|s_cntup[8]~47\ = CARRY((\System_core|s_cntup\(8) & !\System_core|s_cntup[7]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(8),
	datad => VCC,
	cin => \System_core|s_cntup[7]~45\,
	combout => \System_core|s_cntup[8]~46_combout\,
	cout => \System_core|s_cntup[8]~47\);

-- Location: FF_X1_Y52_N19
\System_core|s_cntup[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[8]~46_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(8));

-- Location: LCCOMB_X1_Y52_N20
\System_core|s_cntup[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[9]~48_combout\ = (\System_core|s_cntup\(9) & (!\System_core|s_cntup[8]~47\)) # (!\System_core|s_cntup\(9) & ((\System_core|s_cntup[8]~47\) # (GND)))
-- \System_core|s_cntup[9]~49\ = CARRY((!\System_core|s_cntup[8]~47\) # (!\System_core|s_cntup\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(9),
	datad => VCC,
	cin => \System_core|s_cntup[8]~47\,
	combout => \System_core|s_cntup[9]~48_combout\,
	cout => \System_core|s_cntup[9]~49\);

-- Location: FF_X1_Y52_N21
\System_core|s_cntup[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[9]~48_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(9));

-- Location: LCCOMB_X1_Y52_N22
\System_core|s_cntup[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[10]~50_combout\ = (\System_core|s_cntup\(10) & (\System_core|s_cntup[9]~49\ $ (GND))) # (!\System_core|s_cntup\(10) & (!\System_core|s_cntup[9]~49\ & VCC))
-- \System_core|s_cntup[10]~51\ = CARRY((\System_core|s_cntup\(10) & !\System_core|s_cntup[9]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \System_core|s_cntup\(10),
	datad => VCC,
	cin => \System_core|s_cntup[9]~49\,
	combout => \System_core|s_cntup[10]~50_combout\,
	cout => \System_core|s_cntup[10]~51\);

-- Location: FF_X1_Y52_N23
\System_core|s_cntup[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[10]~50_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(10));

-- Location: LCCOMB_X1_Y52_N24
\System_core|s_cntup[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[11]~52_combout\ = (\System_core|s_cntup\(11) & (!\System_core|s_cntup[10]~51\)) # (!\System_core|s_cntup\(11) & ((\System_core|s_cntup[10]~51\) # (GND)))
-- \System_core|s_cntup[11]~53\ = CARRY((!\System_core|s_cntup[10]~51\) # (!\System_core|s_cntup\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(11),
	datad => VCC,
	cin => \System_core|s_cntup[10]~51\,
	combout => \System_core|s_cntup[11]~52_combout\,
	cout => \System_core|s_cntup[11]~53\);

-- Location: FF_X1_Y52_N25
\System_core|s_cntup[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[11]~52_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(11));

-- Location: LCCOMB_X1_Y52_N26
\System_core|s_cntup[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[12]~54_combout\ = (\System_core|s_cntup\(12) & (\System_core|s_cntup[11]~53\ $ (GND))) # (!\System_core|s_cntup\(12) & (!\System_core|s_cntup[11]~53\ & VCC))
-- \System_core|s_cntup[12]~55\ = CARRY((\System_core|s_cntup\(12) & !\System_core|s_cntup[11]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \System_core|s_cntup\(12),
	datad => VCC,
	cin => \System_core|s_cntup[11]~53\,
	combout => \System_core|s_cntup[12]~54_combout\,
	cout => \System_core|s_cntup[12]~55\);

-- Location: FF_X1_Y52_N27
\System_core|s_cntup[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[12]~54_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(12));

-- Location: LCCOMB_X1_Y52_N28
\System_core|s_cntup[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[13]~57_combout\ = (\System_core|s_cntup\(13) & (!\System_core|s_cntup[12]~55\)) # (!\System_core|s_cntup\(13) & ((\System_core|s_cntup[12]~55\) # (GND)))
-- \System_core|s_cntup[13]~58\ = CARRY((!\System_core|s_cntup[12]~55\) # (!\System_core|s_cntup\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(13),
	datad => VCC,
	cin => \System_core|s_cntup[12]~55\,
	combout => \System_core|s_cntup[13]~57_combout\,
	cout => \System_core|s_cntup[13]~58\);

-- Location: FF_X1_Y52_N29
\System_core|s_cntup[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[13]~57_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(13));

-- Location: LCCOMB_X1_Y52_N30
\System_core|s_cntup[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[14]~59_combout\ = (\System_core|s_cntup\(14) & (\System_core|s_cntup[13]~58\ $ (GND))) # (!\System_core|s_cntup\(14) & (!\System_core|s_cntup[13]~58\ & VCC))
-- \System_core|s_cntup[14]~60\ = CARRY((\System_core|s_cntup\(14) & !\System_core|s_cntup[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \System_core|s_cntup\(14),
	datad => VCC,
	cin => \System_core|s_cntup[13]~58\,
	combout => \System_core|s_cntup[14]~59_combout\,
	cout => \System_core|s_cntup[14]~60\);

-- Location: FF_X1_Y52_N31
\System_core|s_cntup[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[14]~59_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(14));

-- Location: LCCOMB_X1_Y51_N0
\System_core|s_cntup[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[15]~61_combout\ = (\System_core|s_cntup\(15) & (!\System_core|s_cntup[14]~60\)) # (!\System_core|s_cntup\(15) & ((\System_core|s_cntup[14]~60\) # (GND)))
-- \System_core|s_cntup[15]~62\ = CARRY((!\System_core|s_cntup[14]~60\) # (!\System_core|s_cntup\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(15),
	datad => VCC,
	cin => \System_core|s_cntup[14]~60\,
	combout => \System_core|s_cntup[15]~61_combout\,
	cout => \System_core|s_cntup[15]~62\);

-- Location: FF_X1_Y51_N1
\System_core|s_cntup[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[15]~61_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(15));

-- Location: LCCOMB_X1_Y51_N2
\System_core|s_cntup[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[16]~63_combout\ = (\System_core|s_cntup\(16) & (\System_core|s_cntup[15]~62\ $ (GND))) # (!\System_core|s_cntup\(16) & (!\System_core|s_cntup[15]~62\ & VCC))
-- \System_core|s_cntup[16]~64\ = CARRY((\System_core|s_cntup\(16) & !\System_core|s_cntup[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(16),
	datad => VCC,
	cin => \System_core|s_cntup[15]~62\,
	combout => \System_core|s_cntup[16]~63_combout\,
	cout => \System_core|s_cntup[16]~64\);

-- Location: FF_X1_Y51_N3
\System_core|s_cntup[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[16]~63_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(16));

-- Location: LCCOMB_X1_Y51_N4
\System_core|s_cntup[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[17]~65_combout\ = (\System_core|s_cntup\(17) & (!\System_core|s_cntup[16]~64\)) # (!\System_core|s_cntup\(17) & ((\System_core|s_cntup[16]~64\) # (GND)))
-- \System_core|s_cntup[17]~66\ = CARRY((!\System_core|s_cntup[16]~64\) # (!\System_core|s_cntup\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(17),
	datad => VCC,
	cin => \System_core|s_cntup[16]~64\,
	combout => \System_core|s_cntup[17]~65_combout\,
	cout => \System_core|s_cntup[17]~66\);

-- Location: FF_X1_Y51_N5
\System_core|s_cntup[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[17]~65_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(17));

-- Location: LCCOMB_X1_Y51_N6
\System_core|s_cntup[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[18]~67_combout\ = (\System_core|s_cntup\(18) & (\System_core|s_cntup[17]~66\ $ (GND))) # (!\System_core|s_cntup\(18) & (!\System_core|s_cntup[17]~66\ & VCC))
-- \System_core|s_cntup[18]~68\ = CARRY((\System_core|s_cntup\(18) & !\System_core|s_cntup[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \System_core|s_cntup\(18),
	datad => VCC,
	cin => \System_core|s_cntup[17]~66\,
	combout => \System_core|s_cntup[18]~67_combout\,
	cout => \System_core|s_cntup[18]~68\);

-- Location: FF_X1_Y51_N7
\System_core|s_cntup[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[18]~67_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(18));

-- Location: LCCOMB_X1_Y51_N8
\System_core|s_cntup[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[19]~69_combout\ = (\System_core|s_cntup\(19) & (!\System_core|s_cntup[18]~68\)) # (!\System_core|s_cntup\(19) & ((\System_core|s_cntup[18]~68\) # (GND)))
-- \System_core|s_cntup[19]~70\ = CARRY((!\System_core|s_cntup[18]~68\) # (!\System_core|s_cntup\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(19),
	datad => VCC,
	cin => \System_core|s_cntup[18]~68\,
	combout => \System_core|s_cntup[19]~69_combout\,
	cout => \System_core|s_cntup[19]~70\);

-- Location: FF_X1_Y51_N9
\System_core|s_cntup[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[19]~69_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(19));

-- Location: LCCOMB_X1_Y51_N10
\System_core|s_cntup[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[20]~71_combout\ = (\System_core|s_cntup\(20) & (\System_core|s_cntup[19]~70\ $ (GND))) # (!\System_core|s_cntup\(20) & (!\System_core|s_cntup[19]~70\ & VCC))
-- \System_core|s_cntup[20]~72\ = CARRY((\System_core|s_cntup\(20) & !\System_core|s_cntup[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \System_core|s_cntup\(20),
	datad => VCC,
	cin => \System_core|s_cntup[19]~70\,
	combout => \System_core|s_cntup[20]~71_combout\,
	cout => \System_core|s_cntup[20]~72\);

-- Location: FF_X1_Y51_N11
\System_core|s_cntup[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[20]~71_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(20));

-- Location: LCCOMB_X1_Y51_N12
\System_core|s_cntup[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[21]~73_combout\ = (\System_core|s_cntup\(21) & (!\System_core|s_cntup[20]~72\)) # (!\System_core|s_cntup\(21) & ((\System_core|s_cntup[20]~72\) # (GND)))
-- \System_core|s_cntup[21]~74\ = CARRY((!\System_core|s_cntup[20]~72\) # (!\System_core|s_cntup\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \System_core|s_cntup\(21),
	datad => VCC,
	cin => \System_core|s_cntup[20]~72\,
	combout => \System_core|s_cntup[21]~73_combout\,
	cout => \System_core|s_cntup[21]~74\);

-- Location: FF_X1_Y51_N13
\System_core|s_cntup[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[21]~73_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(21));

-- Location: LCCOMB_X1_Y51_N14
\System_core|s_cntup[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[22]~75_combout\ = (\System_core|s_cntup\(22) & (\System_core|s_cntup[21]~74\ $ (GND))) # (!\System_core|s_cntup\(22) & (!\System_core|s_cntup[21]~74\ & VCC))
-- \System_core|s_cntup[22]~76\ = CARRY((\System_core|s_cntup\(22) & !\System_core|s_cntup[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(22),
	datad => VCC,
	cin => \System_core|s_cntup[21]~74\,
	combout => \System_core|s_cntup[22]~75_combout\,
	cout => \System_core|s_cntup[22]~76\);

-- Location: FF_X1_Y51_N15
\System_core|s_cntup[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[22]~75_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(22));

-- Location: LCCOMB_X1_Y51_N16
\System_core|s_cntup[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[23]~77_combout\ = (\System_core|s_cntup\(23) & (!\System_core|s_cntup[22]~76\)) # (!\System_core|s_cntup\(23) & ((\System_core|s_cntup[22]~76\) # (GND)))
-- \System_core|s_cntup[23]~78\ = CARRY((!\System_core|s_cntup[22]~76\) # (!\System_core|s_cntup\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(23),
	datad => VCC,
	cin => \System_core|s_cntup[22]~76\,
	combout => \System_core|s_cntup[23]~77_combout\,
	cout => \System_core|s_cntup[23]~78\);

-- Location: FF_X1_Y51_N17
\System_core|s_cntup[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[23]~77_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(23));

-- Location: LCCOMB_X1_Y51_N18
\System_core|s_cntup[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[24]~79_combout\ = (\System_core|s_cntup\(24) & (\System_core|s_cntup[23]~78\ $ (GND))) # (!\System_core|s_cntup\(24) & (!\System_core|s_cntup[23]~78\ & VCC))
-- \System_core|s_cntup[24]~80\ = CARRY((\System_core|s_cntup\(24) & !\System_core|s_cntup[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(24),
	datad => VCC,
	cin => \System_core|s_cntup[23]~78\,
	combout => \System_core|s_cntup[24]~79_combout\,
	cout => \System_core|s_cntup[24]~80\);

-- Location: FF_X1_Y51_N19
\System_core|s_cntup[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[24]~79_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(24));

-- Location: LCCOMB_X1_Y51_N20
\System_core|s_cntup[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[25]~81_combout\ = (\System_core|s_cntup\(25) & (!\System_core|s_cntup[24]~80\)) # (!\System_core|s_cntup\(25) & ((\System_core|s_cntup[24]~80\) # (GND)))
-- \System_core|s_cntup[25]~82\ = CARRY((!\System_core|s_cntup[24]~80\) # (!\System_core|s_cntup\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(25),
	datad => VCC,
	cin => \System_core|s_cntup[24]~80\,
	combout => \System_core|s_cntup[25]~81_combout\,
	cout => \System_core|s_cntup[25]~82\);

-- Location: FF_X1_Y51_N21
\System_core|s_cntup[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[25]~81_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(25));

-- Location: LCCOMB_X1_Y51_N22
\System_core|s_cntup[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[26]~83_combout\ = (\System_core|s_cntup\(26) & (\System_core|s_cntup[25]~82\ $ (GND))) # (!\System_core|s_cntup\(26) & (!\System_core|s_cntup[25]~82\ & VCC))
-- \System_core|s_cntup[26]~84\ = CARRY((\System_core|s_cntup\(26) & !\System_core|s_cntup[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \System_core|s_cntup\(26),
	datad => VCC,
	cin => \System_core|s_cntup[25]~82\,
	combout => \System_core|s_cntup[26]~83_combout\,
	cout => \System_core|s_cntup[26]~84\);

-- Location: FF_X1_Y51_N23
\System_core|s_cntup[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[26]~83_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(26));

-- Location: LCCOMB_X1_Y51_N24
\System_core|s_cntup[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[27]~85_combout\ = (\System_core|s_cntup\(27) & (!\System_core|s_cntup[26]~84\)) # (!\System_core|s_cntup\(27) & ((\System_core|s_cntup[26]~84\) # (GND)))
-- \System_core|s_cntup[27]~86\ = CARRY((!\System_core|s_cntup[26]~84\) # (!\System_core|s_cntup\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \System_core|s_cntup\(27),
	datad => VCC,
	cin => \System_core|s_cntup[26]~84\,
	combout => \System_core|s_cntup[27]~85_combout\,
	cout => \System_core|s_cntup[27]~86\);

-- Location: FF_X1_Y51_N25
\System_core|s_cntup[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[27]~85_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(27));

-- Location: LCCOMB_X1_Y51_N26
\System_core|s_cntup[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[28]~87_combout\ = (\System_core|s_cntup\(28) & (\System_core|s_cntup[27]~86\ $ (GND))) # (!\System_core|s_cntup\(28) & (!\System_core|s_cntup[27]~86\ & VCC))
-- \System_core|s_cntup[28]~88\ = CARRY((\System_core|s_cntup\(28) & !\System_core|s_cntup[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \System_core|s_cntup\(28),
	datad => VCC,
	cin => \System_core|s_cntup[27]~86\,
	combout => \System_core|s_cntup[28]~87_combout\,
	cout => \System_core|s_cntup[28]~88\);

-- Location: FF_X1_Y51_N27
\System_core|s_cntup[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[28]~87_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(28));

-- Location: LCCOMB_X1_Y51_N28
\System_core|s_cntup[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \System_core|s_cntup[29]~89_combout\ = \System_core|s_cntup[28]~88\ $ (\System_core|s_cntup\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \System_core|s_cntup\(29),
	cin => \System_core|s_cntup[28]~88\,
	combout => \System_core|s_cntup[29]~89_combout\);

-- Location: FF_X1_Y51_N29
\System_core|s_cntup[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \System_core|s_cntup[29]~89_combout\,
	sclr => \SW[0]~input_o\,
	ena => \System_core|s_cntup[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \System_core|s_cntup\(29));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


