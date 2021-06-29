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

-- DATE "05/07/2021 10:30:25"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CombShiftUnit_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	SW7 : IN std_logic;
	SW6 : IN std_logic;
	SW5 : IN std_logic;
	SW4 : IN std_logic;
	SW3 : IN std_logic;
	SW2 : IN std_logic;
	SW1 : IN std_logic;
	SW0 : IN std_logic;
	SW17 : IN std_logic;
	SW16 : IN std_logic;
	SW15 : IN std_logic
	);
END CombShiftUnit_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW17	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW15	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW3	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW16	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW4	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW5	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW6	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW7	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CombShiftUnit_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW7 : std_logic;
SIGNAL ww_SW6 : std_logic;
SIGNAL ww_SW5 : std_logic;
SIGNAL ww_SW4 : std_logic;
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW17 : std_logic;
SIGNAL ww_SW16 : std_logic;
SIGNAL ww_SW15 : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \SW7~input_o\ : std_logic;
SIGNAL \SW15~input_o\ : std_logic;
SIGNAL \inst|RotateRight0~3_combout\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \inst|RotateRight0~2_combout\ : std_logic;
SIGNAL \SW16~input_o\ : std_logic;
SIGNAL \inst|RotateRight0~4_combout\ : std_logic;
SIGNAL \SW5~input_o\ : std_logic;
SIGNAL \SW6~input_o\ : std_logic;
SIGNAL \inst|RotateRight0~0_combout\ : std_logic;
SIGNAL \SW17~input_o\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \inst|RotateRight0~1_combout\ : std_logic;
SIGNAL \inst|dataOut[7]~2_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst|dataOut[7]~3_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst|dataOut[7]~4_combout\ : std_logic;
SIGNAL \inst|dataOut[7]~5_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \inst|dataOut[7]~0_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~0_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~1_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~2_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst|dataOut[7]~1_combout\ : std_logic;
SIGNAL \inst|dataOut[7]~6_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~6_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~7_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~8_combout\ : std_logic;
SIGNAL \inst|RotateRight0~5_combout\ : std_logic;
SIGNAL \inst|ShiftRight1~0_combout\ : std_logic;
SIGNAL \inst|RotateRight0~6_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~13_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~9_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~10_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \inst|ShiftRight1~1_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~11_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~8_combout\ : std_logic;
SIGNAL \inst|ShiftRight0~0_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~12_combout\ : std_logic;
SIGNAL \inst|RotateRight0~7_combout\ : std_logic;
SIGNAL \inst|RotateRight0~8_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~7_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~14_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~3_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~4_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~5_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~15_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~16_combout\ : std_logic;
SIGNAL \inst|RotateRight0~10_combout\ : std_logic;
SIGNAL \inst|RotateRight0~9_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~19_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \inst|ShiftRight1~2_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~17_combout\ : std_logic;
SIGNAL \inst|ShiftRight0~1_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~18_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~9_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~20_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~21_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~10_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~11_combout\ : std_logic;
SIGNAL \inst|ShiftRight1~3_combout\ : std_logic;
SIGNAL \inst|RotateRight0~13_combout\ : std_logic;
SIGNAL \inst|s_shiftReg~4_combout\ : std_logic;
SIGNAL \inst|ShiftRight0~2_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \inst|dataOut[4]~22_combout\ : std_logic;
SIGNAL \inst|RotateRight0~11_combout\ : std_logic;
SIGNAL \inst|RotateRight0~12_combout\ : std_logic;
SIGNAL \inst|dataOut[4]~23_combout\ : std_logic;
SIGNAL \inst|s_shiftReg~2_combout\ : std_logic;
SIGNAL \inst|RotateRight0~14_combout\ : std_logic;
SIGNAL \inst|s_shiftReg~3_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \inst|dataOut[3]~24_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~12_combout\ : std_logic;
SIGNAL \inst|RotateRight0~15_combout\ : std_logic;
SIGNAL \inst|dataOut[3]~25_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~26_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~32_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~29_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~28_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~30_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~27_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~31_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~33_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~34_combout\ : std_logic;
SIGNAL \inst|dataOut[1]~37_combout\ : std_logic;
SIGNAL \inst|dataOut[1]~35_combout\ : std_logic;
SIGNAL \inst|dataOut[1]~36_combout\ : std_logic;
SIGNAL \inst|dataOut[1]~38_combout\ : std_logic;
SIGNAL \inst|dataOut[0]~41_combout\ : std_logic;
SIGNAL \inst|dataOut[0]~39_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \inst|dataOut[0]~40_combout\ : std_logic;
SIGNAL \inst|dataOut[0]~42_combout\ : std_logic;
SIGNAL \inst|dataOut[0]~43_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_SW7 <= SW7;
ww_SW6 <= SW6;
ww_SW5 <= SW5;
ww_SW4 <= SW4;
ww_SW3 <= SW3;
ww_SW2 <= SW2;
ww_SW1 <= SW1;
ww_SW0 <= SW0;
ww_SW17 <= SW17;
ww_SW16 <= SW16;
ww_SW15 <= SW15;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[7]~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[6]~16_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[5]~21_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[4]~23_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[3]~25_combout\,
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
	i => \inst|dataOut[2]~34_combout\,
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
	i => \inst|dataOut[1]~38_combout\,
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
	i => \inst|dataOut[0]~43_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X105_Y73_N8
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\SW7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW7,
	o => \SW7~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\SW15~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW15,
	o => \SW15~input_o\);

-- Location: LCCOMB_X106_Y70_N22
\inst|RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~3_combout\ = (\SW15~input_o\ & (\SW0~input_o\)) # (!\SW15~input_o\ & ((\SW7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW0~input_o\,
	datac => \SW7~input_o\,
	datad => \SW15~input_o\,
	combout => \inst|RotateRight0~3_combout\);

-- Location: IOIBUF_X100_Y73_N15
\SW2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: LCCOMB_X103_Y70_N6
\inst|RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~2_combout\ = (\SW15~input_o\ & (\SW2~input_o\)) # (!\SW15~input_o\ & ((\SW1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW2~input_o\,
	datac => \SW1~input_o\,
	datad => \SW15~input_o\,
	combout => \inst|RotateRight0~2_combout\);

-- Location: IOIBUF_X107_Y73_N1
\SW16~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW16,
	o => \SW16~input_o\);

-- Location: LCCOMB_X107_Y70_N22
\inst|RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~4_combout\ = (\SW16~input_o\ & ((\inst|RotateRight0~2_combout\))) # (!\SW16~input_o\ & (\inst|RotateRight0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RotateRight0~3_combout\,
	datac => \inst|RotateRight0~2_combout\,
	datad => \SW16~input_o\,
	combout => \inst|RotateRight0~4_combout\);

-- Location: IOIBUF_X102_Y73_N8
\SW5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW5,
	o => \SW5~input_o\);

-- Location: IOIBUF_X109_Y73_N1
\SW6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW6,
	o => \SW6~input_o\);

-- Location: LCCOMB_X106_Y70_N12
\inst|RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~0_combout\ = (\SW15~input_o\ & ((\SW6~input_o\))) # (!\SW15~input_o\ & (\SW5~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \SW15~input_o\,
	datad => \SW6~input_o\,
	combout => \inst|RotateRight0~0_combout\);

-- Location: IOIBUF_X107_Y73_N22
\SW17~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW17,
	o => \SW17~input_o\);

-- Location: IOIBUF_X100_Y73_N22
\SW4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\SW3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

-- Location: LCCOMB_X103_Y70_N4
\inst|RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~1_combout\ = (\SW15~input_o\ & (\SW4~input_o\)) # (!\SW15~input_o\ & ((\SW3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW15~input_o\,
	datad => \SW3~input_o\,
	combout => \inst|RotateRight0~1_combout\);

-- Location: LCCOMB_X107_Y70_N20
\inst|dataOut[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[7]~2_combout\ = (\SW17~input_o\ & ((\SW16~input_o\ & (\inst|RotateRight0~0_combout\)) # (!\SW16~input_o\ & ((\inst|RotateRight0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~0_combout\,
	datab => \SW16~input_o\,
	datac => \SW17~input_o\,
	datad => \inst|RotateRight0~1_combout\,
	combout => \inst|dataOut[7]~2_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X107_Y70_N8
\inst|dataOut[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[7]~3_combout\ = (\KEY[0]~input_o\ & ((\inst|dataOut[7]~2_combout\) # ((\inst|RotateRight0~4_combout\ & !\SW17~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~4_combout\,
	datab => \inst|dataOut[7]~2_combout\,
	datac => \KEY[0]~input_o\,
	datad => \SW17~input_o\,
	combout => \inst|dataOut[7]~3_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X105_Y70_N2
\inst|dataOut[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[7]~4_combout\ = (\KEY[2]~input_o\) # ((!\SW16~input_o\ & (!\SW17~input_o\ & !\SW15~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \SW17~input_o\,
	datac => \SW15~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \inst|dataOut[7]~4_combout\);

-- Location: LCCOMB_X105_Y70_N12
\inst|dataOut[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[7]~5_combout\ = (\inst|dataOut[7]~3_combout\) # ((\SW7~input_o\ & (!\KEY[0]~input_o\ & \inst|dataOut[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[7]~3_combout\,
	datab => \SW7~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \inst|dataOut[7]~4_combout\,
	combout => \inst|dataOut[7]~5_combout\);

-- Location: LCCOMB_X103_Y70_N24
\inst|ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~1_combout\ = (\SW15~input_o\ & ((\SW2~input_o\))) # (!\SW15~input_o\ & (\SW3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datac => \SW2~input_o\,
	datad => \SW15~input_o\,
	combout => \inst|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X106_Y70_N0
\inst|ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~0_combout\ = (\SW15~input_o\ & (\SW0~input_o\)) # (!\SW15~input_o\ & ((\SW1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW15~input_o\,
	datac => \SW0~input_o\,
	datad => \SW1~input_o\,
	combout => \inst|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X107_Y70_N24
\inst|dataOut[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[7]~0_combout\ = (\SW17~input_o\ & ((\SW16~input_o\ & ((\inst|ShiftLeft0~0_combout\))) # (!\SW16~input_o\ & (\inst|ShiftLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst|ShiftLeft0~1_combout\,
	datac => \inst|ShiftLeft0~0_combout\,
	datad => \SW16~input_o\,
	combout => \inst|dataOut[7]~0_combout\);

-- Location: LCCOMB_X103_Y70_N10
\inst|RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~0_combout\ = (\SW15~input_o\ & (\SW4~input_o\)) # (!\SW15~input_o\ & ((\SW5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datac => \SW5~input_o\,
	datad => \SW15~input_o\,
	combout => \inst|RotateLeft0~0_combout\);

-- Location: LCCOMB_X106_Y70_N26
\inst|RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~1_combout\ = (\SW15~input_o\ & ((\SW6~input_o\))) # (!\SW15~input_o\ & (\SW7~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW15~input_o\,
	datac => \SW7~input_o\,
	datad => \SW6~input_o\,
	combout => \inst|RotateLeft0~1_combout\);

-- Location: LCCOMB_X107_Y70_N2
\inst|RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~2_combout\ = (\SW16~input_o\ & (\inst|RotateLeft0~0_combout\)) # (!\SW16~input_o\ & ((\inst|RotateLeft0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RotateLeft0~0_combout\,
	datac => \inst|RotateLeft0~1_combout\,
	datad => \SW16~input_o\,
	combout => \inst|RotateLeft0~2_combout\);

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

-- Location: LCCOMB_X105_Y70_N16
\inst|dataOut[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[7]~1_combout\ = (\KEY[1]~input_o\ & ((\inst|dataOut[7]~0_combout\) # ((\inst|RotateLeft0~2_combout\ & !\SW17~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[7]~0_combout\,
	datab => \inst|RotateLeft0~2_combout\,
	datac => \SW17~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[7]~1_combout\);

-- Location: LCCOMB_X105_Y70_N22
\inst|dataOut[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[7]~6_combout\ = (\inst|dataOut[7]~1_combout\) # ((\inst|dataOut[7]~5_combout\ & !\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[7]~5_combout\,
	datab => \inst|dataOut[7]~1_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[7]~6_combout\);

-- Location: LCCOMB_X103_Y70_N14
\inst|RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~6_combout\ = (\SW15~input_o\ & ((\SW3~input_o\))) # (!\SW15~input_o\ & (\SW4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW15~input_o\,
	datad => \SW3~input_o\,
	combout => \inst|RotateLeft0~6_combout\);

-- Location: LCCOMB_X106_Y70_N24
\inst|RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~7_combout\ = (\SW15~input_o\ & (\SW5~input_o\)) # (!\SW15~input_o\ & ((\SW6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \SW15~input_o\,
	datad => \SW6~input_o\,
	combout => \inst|RotateLeft0~7_combout\);

-- Location: LCCOMB_X106_Y70_N2
\inst|RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~8_combout\ = (\SW16~input_o\ & (\inst|RotateLeft0~6_combout\)) # (!\SW16~input_o\ & ((\inst|RotateLeft0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RotateLeft0~6_combout\,
	datac => \SW16~input_o\,
	datad => \inst|RotateLeft0~7_combout\,
	combout => \inst|RotateLeft0~8_combout\);

-- Location: LCCOMB_X103_Y70_N18
\inst|RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~5_combout\ = (\SW15~input_o\ & (\SW3~input_o\)) # (!\SW15~input_o\ & ((\SW2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datac => \SW2~input_o\,
	datad => \SW15~input_o\,
	combout => \inst|RotateRight0~5_combout\);

-- Location: LCCOMB_X103_Y70_N16
\inst|ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftRight1~0_combout\ = (\SW15~input_o\ & ((\SW5~input_o\))) # (!\SW15~input_o\ & (\SW4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datac => \SW5~input_o\,
	datad => \SW15~input_o\,
	combout => \inst|ShiftRight1~0_combout\);

-- Location: LCCOMB_X103_Y70_N28
\inst|RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~6_combout\ = (\SW16~input_o\ & ((\inst|ShiftRight1~0_combout\))) # (!\SW16~input_o\ & (\inst|RotateRight0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \inst|RotateRight0~5_combout\,
	datad => \inst|ShiftRight1~0_combout\,
	combout => \inst|RotateRight0~6_combout\);

-- Location: LCCOMB_X107_Y69_N10
\inst|dataOut[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~13_combout\ = (\KEY[1]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[5]~13_combout\);

-- Location: LCCOMB_X106_Y69_N26
\inst|dataOut[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~9_combout\ = (\KEY[1]~input_o\) # ((!\KEY[2]~input_o\ & !\SW17~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datac => \SW17~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[5]~9_combout\);

-- Location: LCCOMB_X106_Y69_N28
\inst|dataOut[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~10_combout\ = (\KEY[1]~input_o\) # ((\KEY[2]~input_o\ & \SW17~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datac => \SW17~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[5]~10_combout\);

-- Location: LCCOMB_X103_Y70_N30
\inst|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~2_combout\ = (!\SW15~input_o\ & ((\SW16~input_o\ & (\SW0~input_o\)) # (!\SW16~input_o\ & ((\SW2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \SW2~input_o\,
	datac => \SW16~input_o\,
	datad => \SW15~input_o\,
	combout => \inst|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X103_Y70_N0
\inst|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~3_combout\ = (\inst|ShiftLeft0~2_combout\) # ((!\SW16~input_o\ & (\SW15~input_o\ & \SW1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \SW15~input_o\,
	datac => \SW1~input_o\,
	datad => \inst|ShiftLeft0~2_combout\,
	combout => \inst|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X106_Y70_N18
\inst|ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftRight1~1_combout\ = (!\SW16~input_o\ & ((\SW15~input_o\ & (\SW7~input_o\)) # (!\SW15~input_o\ & ((\SW6~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \SW15~input_o\,
	datac => \SW7~input_o\,
	datad => \SW6~input_o\,
	combout => \inst|ShiftRight1~1_combout\);

-- Location: LCCOMB_X106_Y69_N22
\inst|dataOut[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~11_combout\ = (\inst|dataOut[5]~9_combout\ & ((\inst|dataOut[5]~10_combout\ & (\inst|ShiftLeft0~3_combout\)) # (!\inst|dataOut[5]~10_combout\ & ((\inst|ShiftRight1~1_combout\))))) # (!\inst|dataOut[5]~9_combout\ & 
-- (\inst|dataOut[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[5]~9_combout\,
	datab => \inst|dataOut[5]~10_combout\,
	datac => \inst|ShiftLeft0~3_combout\,
	datad => \inst|ShiftRight1~1_combout\,
	combout => \inst|dataOut[6]~11_combout\);

-- Location: LCCOMB_X106_Y69_N0
\inst|dataOut[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~8_combout\ = (\KEY[2]~input_o\ & !\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[5]~8_combout\);

-- Location: LCCOMB_X106_Y70_N16
\inst|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftRight0~0_combout\ = (\SW16~input_o\ & (((\SW7~input_o\)))) # (!\SW16~input_o\ & ((\SW15~input_o\ & (\SW7~input_o\)) # (!\SW15~input_o\ & ((\SW6~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \SW15~input_o\,
	datac => \SW7~input_o\,
	datad => \SW6~input_o\,
	combout => \inst|ShiftRight0~0_combout\);

-- Location: LCCOMB_X106_Y69_N24
\inst|dataOut[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~12_combout\ = (\inst|dataOut[6]~11_combout\ & (((\SW7~input_o\)) # (!\inst|dataOut[5]~8_combout\))) # (!\inst|dataOut[6]~11_combout\ & (\inst|dataOut[5]~8_combout\ & (\inst|ShiftRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[6]~11_combout\,
	datab => \inst|dataOut[5]~8_combout\,
	datac => \inst|ShiftRight0~0_combout\,
	datad => \SW7~input_o\,
	combout => \inst|dataOut[6]~12_combout\);

-- Location: LCCOMB_X103_Y70_N26
\inst|RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~7_combout\ = (\SW15~input_o\ & ((\SW1~input_o\))) # (!\SW15~input_o\ & (\SW0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \SW15~input_o\,
	datac => \SW1~input_o\,
	combout => \inst|RotateRight0~7_combout\);

-- Location: LCCOMB_X106_Y69_N2
\inst|RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~8_combout\ = (\inst|ShiftRight1~1_combout\) # ((\inst|RotateRight0~7_combout\ & \SW16~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftRight1~1_combout\,
	datab => \inst|RotateRight0~7_combout\,
	datad => \SW16~input_o\,
	combout => \inst|RotateRight0~8_combout\);

-- Location: LCCOMB_X107_Y69_N24
\inst|dataOut[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~7_combout\ = (\KEY[0]~input_o\ & ((\SW17~input_o\) # (\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[5]~7_combout\);

-- Location: LCCOMB_X107_Y69_N28
\inst|dataOut[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~14_combout\ = (\inst|dataOut[5]~13_combout\ & ((\inst|dataOut[6]~12_combout\) # ((\inst|dataOut[5]~7_combout\)))) # (!\inst|dataOut[5]~13_combout\ & (((\inst|RotateRight0~8_combout\ & !\inst|dataOut[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[5]~13_combout\,
	datab => \inst|dataOut[6]~12_combout\,
	datac => \inst|RotateRight0~8_combout\,
	datad => \inst|dataOut[5]~7_combout\,
	combout => \inst|dataOut[6]~14_combout\);

-- Location: LCCOMB_X106_Y70_N20
\inst|RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~3_combout\ = (\SW15~input_o\ & ((\SW7~input_o\))) # (!\SW15~input_o\ & (\SW0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW0~input_o\,
	datac => \SW7~input_o\,
	datad => \SW15~input_o\,
	combout => \inst|RotateLeft0~3_combout\);

-- Location: LCCOMB_X103_Y70_N20
\inst|RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~4_combout\ = (\SW15~input_o\ & ((\SW1~input_o\))) # (!\SW15~input_o\ & (\SW2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW2~input_o\,
	datac => \SW1~input_o\,
	datad => \SW15~input_o\,
	combout => \inst|RotateLeft0~4_combout\);

-- Location: LCCOMB_X106_Y70_N30
\inst|RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~5_combout\ = (\SW16~input_o\ & (\inst|RotateLeft0~3_combout\)) # (!\SW16~input_o\ & ((\inst|RotateLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \inst|RotateLeft0~3_combout\,
	datac => \inst|RotateLeft0~4_combout\,
	combout => \inst|RotateLeft0~5_combout\);

-- Location: LCCOMB_X107_Y69_N30
\inst|dataOut[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~15_combout\ = (\inst|dataOut[6]~14_combout\ & (((\inst|RotateLeft0~5_combout\) # (!\inst|dataOut[5]~7_combout\)))) # (!\inst|dataOut[6]~14_combout\ & (\inst|RotateRight0~6_combout\ & ((\inst|dataOut[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~6_combout\,
	datab => \inst|dataOut[6]~14_combout\,
	datac => \inst|RotateLeft0~5_combout\,
	datad => \inst|dataOut[5]~7_combout\,
	combout => \inst|dataOut[6]~15_combout\);

-- Location: LCCOMB_X107_Y69_N0
\inst|dataOut[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~16_combout\ = (\SW17~input_o\ & (((\inst|dataOut[6]~15_combout\)))) # (!\SW17~input_o\ & ((\KEY[1]~input_o\ & (\inst|RotateLeft0~8_combout\)) # (!\KEY[1]~input_o\ & ((\inst|dataOut[6]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst|RotateLeft0~8_combout\,
	datac => \inst|dataOut[6]~15_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[6]~16_combout\);

-- Location: LCCOMB_X107_Y70_N4
\inst|RotateRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~10_combout\ = (\SW16~input_o\ & ((\inst|RotateRight0~3_combout\))) # (!\SW16~input_o\ & (\inst|RotateRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~0_combout\,
	datab => \SW16~input_o\,
	datad => \inst|RotateRight0~3_combout\,
	combout => \inst|RotateRight0~10_combout\);

-- Location: LCCOMB_X107_Y70_N18
\inst|RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~9_combout\ = (\SW16~input_o\ & (\inst|RotateRight0~1_combout\)) # (!\SW16~input_o\ & ((\inst|RotateRight0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~1_combout\,
	datac => \inst|RotateRight0~2_combout\,
	datad => \SW16~input_o\,
	combout => \inst|RotateRight0~9_combout\);

-- Location: LCCOMB_X107_Y69_N2
\inst|dataOut[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~19_combout\ = (\inst|dataOut[5]~7_combout\ & (((\inst|RotateRight0~9_combout\) # (\inst|dataOut[5]~13_combout\)))) # (!\inst|dataOut[5]~7_combout\ & (\inst|RotateRight0~10_combout\ & ((!\inst|dataOut[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~10_combout\,
	datab => \inst|dataOut[5]~7_combout\,
	datac => \inst|RotateRight0~9_combout\,
	datad => \inst|dataOut[5]~13_combout\,
	combout => \inst|dataOut[5]~19_combout\);

-- Location: LCCOMB_X106_Y70_N8
\inst|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~4_combout\ = (!\SW16~input_o\ & ((\SW15~input_o\ & (\SW0~input_o\)) # (!\SW15~input_o\ & ((\SW1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \SW15~input_o\,
	datac => \SW0~input_o\,
	datad => \SW1~input_o\,
	combout => \inst|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X106_Y70_N14
\inst|ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftRight1~2_combout\ = (\SW16~input_o\ & (!\SW15~input_o\ & (\SW7~input_o\))) # (!\SW16~input_o\ & (((\inst|RotateRight0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \SW15~input_o\,
	datac => \SW7~input_o\,
	datad => \inst|RotateRight0~0_combout\,
	combout => \inst|ShiftRight1~2_combout\);

-- Location: LCCOMB_X106_Y69_N4
\inst|dataOut[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~17_combout\ = (\inst|dataOut[5]~9_combout\ & ((\inst|dataOut[5]~10_combout\ & (\inst|ShiftLeft0~4_combout\)) # (!\inst|dataOut[5]~10_combout\ & ((\inst|ShiftRight1~2_combout\))))) # (!\inst|dataOut[5]~9_combout\ & 
-- (\inst|dataOut[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[5]~9_combout\,
	datab => \inst|dataOut[5]~10_combout\,
	datac => \inst|ShiftLeft0~4_combout\,
	datad => \inst|ShiftRight1~2_combout\,
	combout => \inst|dataOut[5]~17_combout\);

-- Location: LCCOMB_X106_Y70_N28
\inst|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftRight0~1_combout\ = (\SW16~input_o\ & ((\SW7~input_o\))) # (!\SW16~input_o\ & (\inst|RotateRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~0_combout\,
	datab => \SW7~input_o\,
	datac => \SW16~input_o\,
	combout => \inst|ShiftRight0~1_combout\);

-- Location: LCCOMB_X106_Y69_N14
\inst|dataOut[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~18_combout\ = (\inst|dataOut[5]~8_combout\ & ((\inst|dataOut[5]~17_combout\ & (\SW7~input_o\)) # (!\inst|dataOut[5]~17_combout\ & ((\inst|ShiftRight0~1_combout\))))) # (!\inst|dataOut[5]~8_combout\ & (((\inst|dataOut[5]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW7~input_o\,
	datab => \inst|dataOut[5]~8_combout\,
	datac => \inst|dataOut[5]~17_combout\,
	datad => \inst|ShiftRight0~1_combout\,
	combout => \inst|dataOut[5]~18_combout\);

-- Location: LCCOMB_X106_Y69_N8
\inst|RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~9_combout\ = (\inst|ShiftLeft0~4_combout\) # ((\inst|RotateLeft0~1_combout\ & \SW16~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RotateLeft0~1_combout\,
	datac => \inst|ShiftLeft0~4_combout\,
	datad => \SW16~input_o\,
	combout => \inst|RotateLeft0~9_combout\);

-- Location: LCCOMB_X107_Y69_N20
\inst|dataOut[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~20_combout\ = (\inst|dataOut[5]~13_combout\ & ((\inst|dataOut[5]~19_combout\ & ((\inst|RotateLeft0~9_combout\))) # (!\inst|dataOut[5]~19_combout\ & (\inst|dataOut[5]~18_combout\)))) # (!\inst|dataOut[5]~13_combout\ & 
-- (\inst|dataOut[5]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[5]~13_combout\,
	datab => \inst|dataOut[5]~19_combout\,
	datac => \inst|dataOut[5]~18_combout\,
	datad => \inst|RotateLeft0~9_combout\,
	combout => \inst|dataOut[5]~20_combout\);

-- Location: LCCOMB_X107_Y70_N30
\inst|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~5_combout\ = (\SW16~input_o\ & (\inst|ShiftLeft0~1_combout\)) # (!\SW16~input_o\ & ((\inst|RotateLeft0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ShiftLeft0~1_combout\,
	datac => \inst|RotateLeft0~0_combout\,
	datad => \SW16~input_o\,
	combout => \inst|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X107_Y69_N22
\inst|dataOut[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~21_combout\ = (\SW17~input_o\ & (\inst|dataOut[5]~20_combout\)) # (!\SW17~input_o\ & ((\KEY[1]~input_o\ & ((\inst|ShiftLeft0~5_combout\))) # (!\KEY[1]~input_o\ & (\inst|dataOut[5]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst|dataOut[5]~20_combout\,
	datac => \inst|ShiftLeft0~5_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[5]~21_combout\);

-- Location: LCCOMB_X103_Y70_N2
\inst|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~6_combout\ = (!\SW17~input_o\ & ((\SW16~input_o\ & (\inst|RotateLeft0~4_combout\)) # (!\SW16~input_o\ & ((\inst|RotateLeft0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \inst|RotateLeft0~4_combout\,
	datac => \inst|RotateLeft0~6_combout\,
	datad => \SW17~input_o\,
	combout => \inst|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X106_Y70_N4
\inst|RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~10_combout\ = (\SW16~input_o\ & ((\inst|RotateLeft0~7_combout\))) # (!\SW16~input_o\ & (\inst|RotateLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RotateLeft0~3_combout\,
	datac => \SW16~input_o\,
	datad => \inst|RotateLeft0~7_combout\,
	combout => \inst|RotateLeft0~10_combout\);

-- Location: LCCOMB_X105_Y70_N18
\inst|RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~11_combout\ = (\inst|ShiftLeft0~6_combout\) # ((\inst|RotateLeft0~10_combout\ & \SW17~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftLeft0~6_combout\,
	datab => \inst|RotateLeft0~10_combout\,
	datac => \SW17~input_o\,
	combout => \inst|RotateLeft0~11_combout\);

-- Location: LCCOMB_X106_Y70_N10
\inst|ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftRight1~3_combout\ = (\SW15~input_o\ & (\SW7~input_o\)) # (!\SW15~input_o\ & ((\SW6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW15~input_o\,
	datac => \SW7~input_o\,
	datad => \SW6~input_o\,
	combout => \inst|ShiftRight1~3_combout\);

-- Location: LCCOMB_X105_Y70_N14
\inst|RotateRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~13_combout\ = (!\SW17~input_o\ & ((\SW16~input_o\ & (\inst|ShiftRight1~3_combout\)) # (!\SW16~input_o\ & ((\inst|ShiftRight1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \inst|ShiftRight1~3_combout\,
	datac => \SW17~input_o\,
	datad => \inst|ShiftRight1~0_combout\,
	combout => \inst|RotateRight0~13_combout\);

-- Location: LCCOMB_X105_Y70_N6
\inst|s_shiftReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~4_combout\ = (\inst|RotateRight0~13_combout\) # ((\SW17~input_o\ & (\SW7~input_o\ & \KEY[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst|RotateRight0~13_combout\,
	datac => \SW7~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \inst|s_shiftReg~4_combout\);

-- Location: LCCOMB_X105_Y70_N10
\inst|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftRight0~2_combout\ = (!\SW16~input_o\ & !\SW15~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datac => \SW15~input_o\,
	combout => \inst|ShiftRight0~2_combout\);

-- Location: LCCOMB_X105_Y70_N28
\inst|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~7_combout\ = (\inst|ShiftLeft0~6_combout\) # ((\inst|ShiftRight0~2_combout\ & (\SW17~input_o\ & \SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftRight0~2_combout\,
	datab => \SW17~input_o\,
	datac => \inst|ShiftLeft0~6_combout\,
	datad => \SW0~input_o\,
	combout => \inst|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X105_Y70_N8
\inst|dataOut[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[4]~22_combout\ = (\KEY[0]~input_o\ & (((\KEY[1]~input_o\)))) # (!\KEY[0]~input_o\ & ((\KEY[1]~input_o\ & ((\inst|ShiftLeft0~7_combout\))) # (!\KEY[1]~input_o\ & (\inst|s_shiftReg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg~4_combout\,
	datab => \inst|ShiftLeft0~7_combout\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[4]~22_combout\);

-- Location: LCCOMB_X103_Y70_N8
\inst|RotateRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~11_combout\ = (\SW16~input_o\ & ((\inst|RotateRight0~5_combout\) # ((!\SW17~input_o\)))) # (!\SW16~input_o\ & (((\inst|RotateRight0~7_combout\ & \SW17~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \inst|RotateRight0~5_combout\,
	datac => \inst|RotateRight0~7_combout\,
	datad => \SW17~input_o\,
	combout => \inst|RotateRight0~11_combout\);

-- Location: LCCOMB_X105_Y70_N24
\inst|RotateRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~12_combout\ = (\inst|RotateRight0~11_combout\ & ((\SW17~input_o\) # ((\inst|ShiftRight1~3_combout\)))) # (!\inst|RotateRight0~11_combout\ & (!\SW17~input_o\ & ((\inst|ShiftRight1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~11_combout\,
	datab => \SW17~input_o\,
	datac => \inst|ShiftRight1~3_combout\,
	datad => \inst|ShiftRight1~0_combout\,
	combout => \inst|RotateRight0~12_combout\);

-- Location: LCCOMB_X105_Y70_N20
\inst|dataOut[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[4]~23_combout\ = (\KEY[0]~input_o\ & ((\inst|dataOut[4]~22_combout\ & (\inst|RotateLeft0~11_combout\)) # (!\inst|dataOut[4]~22_combout\ & ((\inst|RotateRight0~12_combout\))))) # (!\KEY[0]~input_o\ & (((\inst|dataOut[4]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst|RotateLeft0~11_combout\,
	datac => \inst|dataOut[4]~22_combout\,
	datad => \inst|RotateRight0~12_combout\,
	combout => \inst|dataOut[4]~23_combout\);

-- Location: LCCOMB_X107_Y70_N0
\inst|s_shiftReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~2_combout\ = (\SW17~input_o\ & \SW7~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datad => \SW7~input_o\,
	combout => \inst|s_shiftReg~2_combout\);

-- Location: LCCOMB_X107_Y70_N10
\inst|RotateRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~14_combout\ = (!\SW17~input_o\ & ((\SW16~input_o\ & (\inst|RotateRight0~0_combout\)) # (!\SW16~input_o\ & ((\inst|RotateRight0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~0_combout\,
	datab => \SW16~input_o\,
	datac => \SW17~input_o\,
	datad => \inst|RotateRight0~1_combout\,
	combout => \inst|RotateRight0~14_combout\);

-- Location: LCCOMB_X107_Y70_N16
\inst|s_shiftReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~3_combout\ = (\inst|RotateRight0~14_combout\) # ((\inst|s_shiftReg~2_combout\ & ((\inst|ShiftRight0~2_combout\) # (\KEY[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftRight0~2_combout\,
	datab => \inst|s_shiftReg~2_combout\,
	datac => \KEY[2]~input_o\,
	datad => \inst|RotateRight0~14_combout\,
	combout => \inst|s_shiftReg~3_combout\);

-- Location: LCCOMB_X107_Y70_N14
\inst|ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~8_combout\ = (!\SW17~input_o\ & ((\SW16~input_o\ & ((\inst|ShiftLeft0~0_combout\))) # (!\SW16~input_o\ & (\inst|ShiftLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst|ShiftLeft0~1_combout\,
	datac => \inst|ShiftLeft0~0_combout\,
	datad => \SW16~input_o\,
	combout => \inst|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X107_Y70_N26
\inst|dataOut[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[3]~24_combout\ = (\KEY[0]~input_o\ & (((\KEY[1]~input_o\)))) # (!\KEY[0]~input_o\ & ((\KEY[1]~input_o\ & ((\inst|ShiftLeft0~8_combout\))) # (!\KEY[1]~input_o\ & (\inst|s_shiftReg~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst|s_shiftReg~3_combout\,
	datac => \inst|ShiftLeft0~8_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[3]~24_combout\);

-- Location: LCCOMB_X107_Y70_N28
\inst|RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~12_combout\ = (\inst|ShiftLeft0~8_combout\) # ((\inst|RotateLeft0~2_combout\ & \SW17~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RotateLeft0~2_combout\,
	datac => \inst|ShiftLeft0~8_combout\,
	datad => \SW17~input_o\,
	combout => \inst|RotateLeft0~12_combout\);

-- Location: LCCOMB_X107_Y70_N12
\inst|RotateRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~15_combout\ = (\inst|RotateRight0~14_combout\) # ((\inst|RotateRight0~4_combout\ & \SW17~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~14_combout\,
	datac => \inst|RotateRight0~4_combout\,
	datad => \SW17~input_o\,
	combout => \inst|RotateRight0~15_combout\);

-- Location: LCCOMB_X107_Y70_N6
\inst|dataOut[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[3]~25_combout\ = (\inst|dataOut[3]~24_combout\ & ((\inst|RotateLeft0~12_combout\) # ((!\KEY[0]~input_o\)))) # (!\inst|dataOut[3]~24_combout\ & (((\KEY[0]~input_o\ & \inst|RotateRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[3]~24_combout\,
	datab => \inst|RotateLeft0~12_combout\,
	datac => \KEY[0]~input_o\,
	datad => \inst|RotateRight0~15_combout\,
	combout => \inst|dataOut[3]~25_combout\);

-- Location: LCCOMB_X106_Y69_N18
\inst|dataOut[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~26_combout\ = (!\KEY[1]~input_o\ & (((\KEY[2]~input_o\ & !\KEY[0]~input_o\)) # (!\SW17~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \SW17~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[2]~26_combout\);

-- Location: LCCOMB_X106_Y69_N30
\inst|dataOut[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~32_combout\ = (\KEY[0]~input_o\) # ((\KEY[1]~input_o\) # (!\SW17~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \SW17~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[2]~32_combout\);

-- Location: LCCOMB_X107_Y69_N12
\inst|dataOut[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~29_combout\ = (\KEY[0]~input_o\ & ((\SW17~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[2]~29_combout\);

-- Location: LCCOMB_X107_Y69_N18
\inst|dataOut[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~28_combout\ = (\KEY[0]~input_o\ & ((!\KEY[1]~input_o\))) # (!\KEY[0]~input_o\ & (!\SW17~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[2]~28_combout\);

-- Location: LCCOMB_X106_Y69_N12
\inst|dataOut[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~30_combout\ = (\inst|dataOut[2]~29_combout\ & (((\inst|RotateRight0~8_combout\) # (!\inst|dataOut[2]~28_combout\)))) # (!\inst|dataOut[2]~29_combout\ & (\inst|ShiftLeft0~3_combout\ & ((\inst|dataOut[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftLeft0~3_combout\,
	datab => \inst|RotateRight0~8_combout\,
	datac => \inst|dataOut[2]~29_combout\,
	datad => \inst|dataOut[2]~28_combout\,
	combout => \inst|dataOut[2]~30_combout\);

-- Location: LCCOMB_X107_Y69_N16
\inst|dataOut[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~27_combout\ = (\KEY[0]~input_o\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[2]~27_combout\);

-- Location: LCCOMB_X107_Y69_N6
\inst|dataOut[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~31_combout\ = (\inst|dataOut[2]~30_combout\ & ((\inst|RotateLeft0~8_combout\) # ((!\inst|dataOut[2]~27_combout\)))) # (!\inst|dataOut[2]~30_combout\ & (((\inst|RotateLeft0~5_combout\ & \inst|dataOut[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[2]~30_combout\,
	datab => \inst|RotateLeft0~8_combout\,
	datac => \inst|RotateLeft0~5_combout\,
	datad => \inst|dataOut[2]~27_combout\,
	combout => \inst|dataOut[2]~31_combout\);

-- Location: LCCOMB_X106_Y69_N16
\inst|dataOut[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~33_combout\ = (\inst|dataOut[2]~32_combout\ & ((\inst|dataOut[2]~26_combout\) # ((\inst|dataOut[2]~31_combout\)))) # (!\inst|dataOut[2]~32_combout\ & (!\inst|dataOut[2]~26_combout\ & ((\inst|ShiftRight1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[2]~32_combout\,
	datab => \inst|dataOut[2]~26_combout\,
	datac => \inst|dataOut[2]~31_combout\,
	datad => \inst|ShiftRight1~1_combout\,
	combout => \inst|dataOut[2]~33_combout\);

-- Location: LCCOMB_X106_Y69_N10
\inst|dataOut[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~34_combout\ = (\inst|dataOut[2]~26_combout\ & ((\inst|dataOut[2]~33_combout\ & (\inst|RotateRight0~6_combout\)) # (!\inst|dataOut[2]~33_combout\ & ((\inst|ShiftRight0~0_combout\))))) # (!\inst|dataOut[2]~26_combout\ & 
-- (((\inst|dataOut[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~6_combout\,
	datab => \inst|dataOut[2]~26_combout\,
	datac => \inst|ShiftRight0~0_combout\,
	datad => \inst|dataOut[2]~33_combout\,
	combout => \inst|dataOut[2]~34_combout\);

-- Location: LCCOMB_X106_Y69_N20
\inst|dataOut[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[1]~37_combout\ = (\inst|dataOut[2]~26_combout\ & (((\inst|dataOut[2]~32_combout\) # (\inst|ShiftRight0~1_combout\)))) # (!\inst|dataOut[2]~26_combout\ & (\inst|ShiftRight1~2_combout\ & (!\inst|dataOut[2]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftRight1~2_combout\,
	datab => \inst|dataOut[2]~26_combout\,
	datac => \inst|dataOut[2]~32_combout\,
	datad => \inst|ShiftRight0~1_combout\,
	combout => \inst|dataOut[1]~37_combout\);

-- Location: LCCOMB_X107_Y69_N8
\inst|dataOut[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[1]~35_combout\ = (\inst|dataOut[2]~29_combout\ & (((\inst|RotateRight0~10_combout\) # (!\inst|dataOut[2]~28_combout\)))) # (!\inst|dataOut[2]~29_combout\ & (\inst|ShiftLeft0~4_combout\ & ((\inst|dataOut[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[2]~29_combout\,
	datab => \inst|ShiftLeft0~4_combout\,
	datac => \inst|RotateRight0~10_combout\,
	datad => \inst|dataOut[2]~28_combout\,
	combout => \inst|dataOut[1]~35_combout\);

-- Location: LCCOMB_X107_Y69_N26
\inst|dataOut[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[1]~36_combout\ = (\inst|dataOut[2]~27_combout\ & ((\inst|dataOut[1]~35_combout\ & ((\inst|ShiftLeft0~5_combout\))) # (!\inst|dataOut[1]~35_combout\ & (\inst|RotateLeft0~9_combout\)))) # (!\inst|dataOut[2]~27_combout\ & 
-- (((\inst|dataOut[1]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateLeft0~9_combout\,
	datab => \inst|dataOut[2]~27_combout\,
	datac => \inst|ShiftLeft0~5_combout\,
	datad => \inst|dataOut[1]~35_combout\,
	combout => \inst|dataOut[1]~36_combout\);

-- Location: LCCOMB_X106_Y69_N6
\inst|dataOut[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[1]~38_combout\ = (\inst|dataOut[1]~37_combout\ & ((\inst|RotateRight0~9_combout\) # ((!\inst|dataOut[2]~32_combout\)))) # (!\inst|dataOut[1]~37_combout\ & (((\inst|dataOut[2]~32_combout\ & \inst|dataOut[1]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~9_combout\,
	datab => \inst|dataOut[1]~37_combout\,
	datac => \inst|dataOut[2]~32_combout\,
	datad => \inst|dataOut[1]~36_combout\,
	combout => \inst|dataOut[1]~38_combout\);

-- Location: LCCOMB_X105_Y70_N26
\inst|dataOut[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[0]~41_combout\ = (\SW17~input_o\ & ((\SW16~input_o\ & (\inst|ShiftRight1~3_combout\)) # (!\SW16~input_o\ & ((\inst|ShiftRight1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \inst|ShiftRight1~3_combout\,
	datac => \SW17~input_o\,
	datad => \inst|ShiftRight1~0_combout\,
	combout => \inst|dataOut[0]~41_combout\);

-- Location: LCCOMB_X105_Y70_N30
\inst|dataOut[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[0]~39_combout\ = (\KEY[0]~input_o\ & (((\inst|RotateLeft0~10_combout\)))) # (!\KEY[0]~input_o\ & (\SW0~input_o\ & ((\inst|ShiftRight0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|RotateLeft0~10_combout\,
	datac => \KEY[0]~input_o\,
	datad => \inst|ShiftRight0~2_combout\,
	combout => \inst|dataOut[0]~39_combout\);

-- Location: LCCOMB_X106_Y70_N6
\inst|ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~9_combout\ = (\SW16~input_o\ & ((\inst|RotateLeft0~4_combout\))) # (!\SW16~input_o\ & (\inst|RotateLeft0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \inst|RotateLeft0~6_combout\,
	datac => \inst|RotateLeft0~4_combout\,
	combout => \inst|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X105_Y70_N0
\inst|dataOut[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[0]~40_combout\ = (\SW17~input_o\ & (((\KEY[0]~input_o\ & \inst|ShiftLeft0~9_combout\)))) # (!\SW17~input_o\ & (\inst|dataOut[0]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[0]~39_combout\,
	datab => \SW17~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \inst|ShiftLeft0~9_combout\,
	combout => \inst|dataOut[0]~40_combout\);

-- Location: LCCOMB_X103_Y70_N12
\inst|dataOut[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[0]~42_combout\ = (!\SW17~input_o\ & ((\SW16~input_o\ & (\inst|RotateRight0~5_combout\)) # (!\SW16~input_o\ & ((\inst|RotateRight0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datab => \inst|RotateRight0~5_combout\,
	datac => \inst|RotateRight0~7_combout\,
	datad => \SW17~input_o\,
	combout => \inst|dataOut[0]~42_combout\);

-- Location: LCCOMB_X105_Y70_N4
\inst|dataOut[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[0]~43_combout\ = (\KEY[1]~input_o\ & (((\inst|dataOut[0]~40_combout\)))) # (!\KEY[1]~input_o\ & ((\inst|dataOut[0]~41_combout\) # ((\inst|dataOut[0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[0]~41_combout\,
	datab => \inst|dataOut[0]~40_combout\,
	datac => \inst|dataOut[0]~42_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[0]~43_combout\);

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


