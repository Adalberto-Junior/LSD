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

-- DATE "04/23/2021 11:55:41"

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

ENTITY 	CounterLoadUpDown4_bloc IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 1);
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END CounterLoadUpDown4_bloc;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CounterLoadUpDown4_bloc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_count[0]~10_combout\ : std_logic;
SIGNAL \inst|s_count[0]~11_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|s_count[1]~4_cout\ : std_logic;
SIGNAL \inst|s_count[1]~5_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|s_count[3]~9_combout\ : std_logic;
SIGNAL \inst|s_count[1]~6\ : std_logic;
SIGNAL \inst|s_count[2]~7_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|s_count[2]~8\ : std_logic;
SIGNAL \inst|s_count[3]~12_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst2|decOut_n[6]~2_combout\ : std_logic;
SIGNAL \inst2|decOut_n[6]~17_combout\ : std_logic;
SIGNAL \inst2|decOut_n~6_combout\ : std_logic;
SIGNAL \inst2|decOut_n~7_combout\ : std_logic;
SIGNAL \inst2|decOut_n~8_combout\ : std_logic;
SIGNAL \inst2|decOut_n~9_combout\ : std_logic;
SIGNAL \inst2|decOut_n[3]~5_combout\ : std_logic;
SIGNAL \inst2|decOut_n[3]~18_combout\ : std_logic;
SIGNAL \inst2|decOut_n~11_combout\ : std_logic;
SIGNAL \inst2|decOut_n~10_combout\ : std_logic;
SIGNAL \inst2|decOut_n~12_combout\ : std_logic;
SIGNAL \inst2|decOut_n~13_combout\ : std_logic;
SIGNAL \inst2|decOut_n~14_combout\ : std_logic;
SIGNAL \inst2|decOut_n~15_combout\ : std_logic;
SIGNAL \inst2|decOut_n~16_combout\ : std_logic;
SIGNAL \inst|s_count\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[6]~17_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[3]~18_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~12_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~14_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~16_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

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

-- Location: LCCOMB_X111_Y55_N2
\inst|s_count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~10_combout\ = (!\SW[5]~input_o\ & ((\SW[7]~input_o\ & (\SW[0]~input_o\)) # (!\SW[7]~input_o\ & ((!\inst|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \inst|s_count\(0),
	combout => \inst|s_count[0]~10_combout\);

-- Location: LCCOMB_X112_Y55_N4
\inst|s_count[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~11_combout\ = (\SW[4]~input_o\ & (((\inst|s_count[0]~10_combout\)))) # (!\SW[4]~input_o\ & ((\SW[5]~input_o\ & ((\inst|s_count[0]~10_combout\))) # (!\SW[5]~input_o\ & (\inst|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \inst|s_count\(0),
	datad => \inst|s_count[0]~10_combout\,
	combout => \inst|s_count[0]~11_combout\);

-- Location: FF_X112_Y55_N5
\inst|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \inst|s_count[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(0));

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X111_Y55_N22
\inst|s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[1]~4_cout\ = CARRY(\inst|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datad => VCC,
	cout => \inst|s_count[1]~4_cout\);

-- Location: LCCOMB_X111_Y55_N24
\inst|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[1]~5_combout\ = (\SW[6]~input_o\ & ((\inst|s_count\(1) & (!\inst|s_count[1]~4_cout\)) # (!\inst|s_count\(1) & ((\inst|s_count[1]~4_cout\) # (GND))))) # (!\SW[6]~input_o\ & ((\inst|s_count\(1) & (\inst|s_count[1]~4_cout\ & VCC)) # 
-- (!\inst|s_count\(1) & (!\inst|s_count[1]~4_cout\))))
-- \inst|s_count[1]~6\ = CARRY((\SW[6]~input_o\ & ((!\inst|s_count[1]~4_cout\) # (!\inst|s_count\(1)))) # (!\SW[6]~input_o\ & (!\inst|s_count\(1) & !\inst|s_count[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \inst|s_count\(1),
	datad => VCC,
	cin => \inst|s_count[1]~4_cout\,
	combout => \inst|s_count[1]~5_combout\,
	cout => \inst|s_count[1]~6\);

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

-- Location: LCCOMB_X112_Y55_N26
\inst|s_count[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[3]~9_combout\ = (\SW[5]~input_o\) # (\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	combout => \inst|s_count[3]~9_combout\);

-- Location: FF_X111_Y55_N25
\inst|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \inst|s_count[1]~5_combout\,
	asdata => \SW[1]~input_o\,
	sclr => \SW[5]~input_o\,
	sload => \SW[7]~input_o\,
	ena => \inst|s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(1));

-- Location: LCCOMB_X111_Y55_N26
\inst|s_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[2]~7_combout\ = ((\inst|s_count\(2) $ (\SW[6]~input_o\ $ (\inst|s_count[1]~6\)))) # (GND)
-- \inst|s_count[2]~8\ = CARRY((\inst|s_count\(2) & ((!\inst|s_count[1]~6\) # (!\SW[6]~input_o\))) # (!\inst|s_count\(2) & (!\SW[6]~input_o\ & !\inst|s_count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(2),
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \inst|s_count[1]~6\,
	combout => \inst|s_count[2]~7_combout\,
	cout => \inst|s_count[2]~8\);

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

-- Location: FF_X111_Y55_N27
\inst|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \inst|s_count[2]~7_combout\,
	asdata => \SW[2]~input_o\,
	sclr => \SW[5]~input_o\,
	sload => \SW[7]~input_o\,
	ena => \inst|s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(2));

-- Location: LCCOMB_X111_Y55_N28
\inst|s_count[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[3]~12_combout\ = \SW[6]~input_o\ $ (\inst|s_count[2]~8\ $ (!\inst|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \inst|s_count\(3),
	cin => \inst|s_count[2]~8\,
	combout => \inst|s_count[3]~12_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X111_Y55_N29
\inst|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \inst|s_count[3]~12_combout\,
	asdata => \SW[3]~input_o\,
	sclr => \SW[5]~input_o\,
	sload => \SW[7]~input_o\,
	ena => \inst|s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(3));

-- Location: LCCOMB_X111_Y55_N0
\inst2|decOut_n[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[6]~2_combout\ = (\inst|s_count\(0) & (!\inst|s_count\(3) & (\inst|s_count\(1) $ (!\inst|s_count\(2))))) # (!\inst|s_count\(0) & (!\inst|s_count\(1) & (\inst|s_count\(2) $ (!\inst|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n[6]~2_combout\);

-- Location: LCCOMB_X112_Y55_N20
\inst2|decOut_n[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[6]~17_combout\ = (\inst2|decOut_n[6]~2_combout\) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \inst2|decOut_n[6]~2_combout\,
	combout => \inst2|decOut_n[6]~17_combout\);

-- Location: LCCOMB_X111_Y55_N12
\inst2|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~6_combout\ = (\inst|s_count\(0) & (\inst|s_count\(3) $ (((\inst|s_count\(1)) # (!\inst|s_count\(2)))))) # (!\inst|s_count\(0) & (\inst|s_count\(1) & (!\inst|s_count\(2) & !\inst|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n~6_combout\);

-- Location: LCCOMB_X112_Y55_N10
\inst2|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~7_combout\ = (\inst2|decOut_n~6_combout\) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decOut_n~6_combout\,
	datac => \SW[4]~input_o\,
	combout => \inst2|decOut_n~7_combout\);

-- Location: LCCOMB_X111_Y55_N6
\inst2|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~8_combout\ = (\inst|s_count\(1) & (\inst|s_count\(0) & ((!\inst|s_count\(3))))) # (!\inst|s_count\(1) & ((\inst|s_count\(2) & ((!\inst|s_count\(3)))) # (!\inst|s_count\(2) & (\inst|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n~8_combout\);

-- Location: LCCOMB_X112_Y55_N24
\inst2|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~9_combout\ = (\inst2|decOut_n~8_combout\) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \inst2|decOut_n~8_combout\,
	combout => \inst2|decOut_n~9_combout\);

-- Location: LCCOMB_X111_Y55_N14
\inst2|decOut_n[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[3]~5_combout\ = (\inst|s_count\(1) & ((\inst|s_count\(0) & (\inst|s_count\(2))) # (!\inst|s_count\(0) & (!\inst|s_count\(2) & \inst|s_count\(3))))) # (!\inst|s_count\(1) & (!\inst|s_count\(3) & (\inst|s_count\(0) $ (\inst|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n[3]~5_combout\);

-- Location: LCCOMB_X112_Y55_N30
\inst2|decOut_n[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[3]~18_combout\ = (\inst2|decOut_n[3]~5_combout\) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decOut_n[3]~5_combout\,
	datac => \SW[4]~input_o\,
	combout => \inst2|decOut_n[3]~18_combout\);

-- Location: LCCOMB_X111_Y55_N10
\inst2|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~11_combout\ = (\inst|s_count\(2) & (\inst|s_count\(3) & ((\inst|s_count\(1)) # (!\inst|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n~11_combout\);

-- Location: LCCOMB_X111_Y55_N8
\inst2|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~10_combout\ = (!\inst|s_count\(0) & (\inst|s_count\(1) & (!\inst|s_count\(2) & !\inst|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n~10_combout\);

-- Location: LCCOMB_X111_Y55_N4
\inst2|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~12_combout\ = (\inst2|decOut_n~11_combout\) # ((\inst2|decOut_n~10_combout\) # (!\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decOut_n~11_combout\,
	datac => \inst2|decOut_n~10_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst2|decOut_n~12_combout\);

-- Location: LCCOMB_X111_Y55_N18
\inst2|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~13_combout\ = (\inst|s_count\(2) & (!\inst|s_count\(3) & (\inst|s_count\(0) $ (\inst|s_count\(1))))) # (!\inst|s_count\(2) & (\inst|s_count\(0) & (\inst|s_count\(1) & \inst|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n~13_combout\);

-- Location: LCCOMB_X111_Y55_N16
\inst2|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~14_combout\ = (\inst2|decOut_n~11_combout\) # ((\inst2|decOut_n~13_combout\) # (!\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decOut_n~11_combout\,
	datab => \SW[4]~input_o\,
	datad => \inst2|decOut_n~13_combout\,
	combout => \inst2|decOut_n~14_combout\);

-- Location: LCCOMB_X111_Y55_N30
\inst2|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~15_combout\ = (\inst|s_count\(2) & (!\inst|s_count\(1) & (\inst|s_count\(0) $ (!\inst|s_count\(3))))) # (!\inst|s_count\(2) & (\inst|s_count\(0) & (\inst|s_count\(1) $ (!\inst|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n~15_combout\);

-- Location: LCCOMB_X111_Y55_N20
\inst2|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~16_combout\ = (\inst2|decOut_n~15_combout\) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|decOut_n~15_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst2|decOut_n~16_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


