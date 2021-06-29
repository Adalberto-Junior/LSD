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

-- DATE "03/29/2021 18:41:26"

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

ENTITY 	AdderDemo IS
    PORT (
	LEDR : OUT std_logic_vector(4 DOWNTO 0);
	SW : IN std_logic_vector(7 DOWNTO 0)
	);
END AdderDemo;

ARCHITECTURE structure OF AdderDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|bit1|cout~0_combout\ : std_logic;
SIGNAL \inst|bit2|cout~0_combout\ : std_logic;
SIGNAL \inst|bit3|cout~0_combout\ : std_logic;
SIGNAL \inst|bit3|s~combout\ : std_logic;
SIGNAL \inst|bit2|s~0_combout\ : std_logic;
SIGNAL \inst|bit1|s~0_combout\ : std_logic;
SIGNAL \inst|bit0|s~0_combout\ : std_logic;
SIGNAL \inst|bit0|ALT_INV_s~0_combout\ : std_logic;

BEGIN

LEDR <= ww_LEDR;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|bit0|ALT_INV_s~0_combout\ <= NOT \inst|bit0|s~0_combout\;

\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bit3|cout~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bit3|s~combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bit2|s~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bit1|s~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bit0|ALT_INV_s~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\inst|bit1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit1|cout~0_combout\ = (\SW[5]~input_o\ & ((\SW[0]~input_o\) # ((\SW[4]~input_o\) # (\SW[1]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|bit1|cout~0_combout\);

\inst|bit2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit2|cout~0_combout\ = (\SW[6]~input_o\ & ((\SW[2]~input_o\) # (\inst|bit1|cout~0_combout\))) # (!\SW[6]~input_o\ & (\SW[2]~input_o\ & \inst|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \inst|bit1|cout~0_combout\,
	combout => \inst|bit2|cout~0_combout\);

\inst|bit3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit3|cout~0_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # (\inst|bit2|cout~0_combout\))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ & \inst|bit2|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \inst|bit2|cout~0_combout\,
	combout => \inst|bit3|cout~0_combout\);

\inst|bit3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit3|s~combout\ = \SW[7]~input_o\ $ (\SW[3]~input_o\ $ (\inst|bit2|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \inst|bit2|cout~0_combout\,
	combout => \inst|bit3|s~combout\);

\inst|bit2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit2|s~0_combout\ = \SW[6]~input_o\ $ (\SW[2]~input_o\ $ (\inst|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \inst|bit1|cout~0_combout\,
	combout => \inst|bit2|s~0_combout\);

\inst|bit1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit1|s~0_combout\ = \SW[5]~input_o\ $ (\SW[1]~input_o\ $ (((\SW[0]~input_o\) # (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|bit1|s~0_combout\);

\inst|bit0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit0|s~0_combout\ = \SW[0]~input_o\ $ (\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|bit0|s~0_combout\);

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


