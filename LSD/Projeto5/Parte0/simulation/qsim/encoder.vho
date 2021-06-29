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

-- DATE "04/23/2021 00:36:34"

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

ENTITY 	mux_16_1 IS
    PORT (
	Sel : IN std_logic_vector(3 DOWNTO 0);
	imput : IN std_logic_vector(15 DOWNTO 0);
	Muxout : OUT std_logic
	);
END mux_16_1;

ARCHITECTURE structure OF mux_16_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_imput : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Muxout : std_logic;
SIGNAL \Muxout~output_o\ : std_logic;
SIGNAL \imput[6]~input_o\ : std_logic;
SIGNAL \imput[4]~input_o\ : std_logic;
SIGNAL \Sel[0]~input_o\ : std_logic;
SIGNAL \Sel[1]~input_o\ : std_logic;
SIGNAL \imput[7]~input_o\ : std_logic;
SIGNAL \imput[5]~input_o\ : std_logic;
SIGNAL \Muxout~0_combout\ : std_logic;
SIGNAL \Muxout~1_combout\ : std_logic;
SIGNAL \Sel[2]~input_o\ : std_logic;
SIGNAL \imput[10]~input_o\ : std_logic;
SIGNAL \imput[8]~input_o\ : std_logic;
SIGNAL \imput[11]~input_o\ : std_logic;
SIGNAL \imput[9]~input_o\ : std_logic;
SIGNAL \Muxout~2_combout\ : std_logic;
SIGNAL \Muxout~3_combout\ : std_logic;
SIGNAL \Sel[3]~input_o\ : std_logic;
SIGNAL \imput[2]~input_o\ : std_logic;
SIGNAL \imput[0]~input_o\ : std_logic;
SIGNAL \imput[3]~input_o\ : std_logic;
SIGNAL \imput[1]~input_o\ : std_logic;
SIGNAL \Muxout~4_combout\ : std_logic;
SIGNAL \Muxout~5_combout\ : std_logic;
SIGNAL \Muxout~6_combout\ : std_logic;
SIGNAL \imput[14]~input_o\ : std_logic;
SIGNAL \imput[12]~input_o\ : std_logic;
SIGNAL \imput[15]~input_o\ : std_logic;
SIGNAL \imput[13]~input_o\ : std_logic;
SIGNAL \Muxout~7_combout\ : std_logic;
SIGNAL \Muxout~8_combout\ : std_logic;
SIGNAL \Muxout~9_combout\ : std_logic;

BEGIN

ww_Sel <= Sel;
ww_imput <= imput;
Muxout <= ww_Muxout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Muxout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Muxout~9_combout\,
	devoe => ww_devoe,
	o => \Muxout~output_o\);

\imput[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(6),
	o => \imput[6]~input_o\);

\imput[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(4),
	o => \imput[4]~input_o\);

\Sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(0),
	o => \Sel[0]~input_o\);

\Sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(1),
	o => \Sel[1]~input_o\);

\imput[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(7),
	o => \imput[7]~input_o\);

\imput[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(5),
	o => \imput[5]~input_o\);

\Muxout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Muxout~0_combout\ = (\Sel[1]~input_o\ & (((\imput[7]~input_o\)) # (!\Sel[0]~input_o\))) # (!\Sel[1]~input_o\ & (\Sel[0]~input_o\ & ((\imput[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \imput[7]~input_o\,
	datad => \imput[5]~input_o\,
	combout => \Muxout~0_combout\);

\Muxout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Muxout~1_combout\ = (\Sel[0]~input_o\ & (((\Muxout~0_combout\)))) # (!\Sel[0]~input_o\ & ((\Muxout~0_combout\ & (\imput[6]~input_o\)) # (!\Muxout~0_combout\ & ((\imput[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imput[6]~input_o\,
	datab => \imput[4]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \Muxout~0_combout\,
	combout => \Muxout~1_combout\);

\Sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(2),
	o => \Sel[2]~input_o\);

\imput[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(10),
	o => \imput[10]~input_o\);

\imput[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(8),
	o => \imput[8]~input_o\);

\imput[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(11),
	o => \imput[11]~input_o\);

\imput[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(9),
	o => \imput[9]~input_o\);

\Muxout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Muxout~2_combout\ = (\Sel[1]~input_o\ & (((\imput[11]~input_o\)) # (!\Sel[0]~input_o\))) # (!\Sel[1]~input_o\ & (\Sel[0]~input_o\ & ((\imput[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \imput[11]~input_o\,
	datad => \imput[9]~input_o\,
	combout => \Muxout~2_combout\);

\Muxout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Muxout~3_combout\ = (\Sel[0]~input_o\ & (((\Muxout~2_combout\)))) # (!\Sel[0]~input_o\ & ((\Muxout~2_combout\ & (\imput[10]~input_o\)) # (!\Muxout~2_combout\ & ((\imput[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imput[10]~input_o\,
	datab => \imput[8]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \Muxout~2_combout\,
	combout => \Muxout~3_combout\);

\Sel[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(3),
	o => \Sel[3]~input_o\);

\imput[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(2),
	o => \imput[2]~input_o\);

\imput[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(0),
	o => \imput[0]~input_o\);

\imput[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(3),
	o => \imput[3]~input_o\);

\imput[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(1),
	o => \imput[1]~input_o\);

\Muxout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Muxout~4_combout\ = (\Sel[1]~input_o\ & (((\imput[3]~input_o\)) # (!\Sel[0]~input_o\))) # (!\Sel[1]~input_o\ & (\Sel[0]~input_o\ & ((\imput[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \imput[3]~input_o\,
	datad => \imput[1]~input_o\,
	combout => \Muxout~4_combout\);

\Muxout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Muxout~5_combout\ = (\Sel[0]~input_o\ & (((\Muxout~4_combout\)))) # (!\Sel[0]~input_o\ & ((\Muxout~4_combout\ & (\imput[2]~input_o\)) # (!\Muxout~4_combout\ & ((\imput[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imput[2]~input_o\,
	datab => \imput[0]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \Muxout~4_combout\,
	combout => \Muxout~5_combout\);

\Muxout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Muxout~6_combout\ = (\Sel[2]~input_o\ & (((\Sel[3]~input_o\)))) # (!\Sel[2]~input_o\ & ((\Sel[3]~input_o\ & (\Muxout~3_combout\)) # (!\Sel[3]~input_o\ & ((\Muxout~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[2]~input_o\,
	datab => \Muxout~3_combout\,
	datac => \Sel[3]~input_o\,
	datad => \Muxout~5_combout\,
	combout => \Muxout~6_combout\);

\imput[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(14),
	o => \imput[14]~input_o\);

\imput[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(12),
	o => \imput[12]~input_o\);

\imput[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(15),
	o => \imput[15]~input_o\);

\imput[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imput(13),
	o => \imput[13]~input_o\);

\Muxout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Muxout~7_combout\ = (\Sel[1]~input_o\ & (((\imput[15]~input_o\)) # (!\Sel[0]~input_o\))) # (!\Sel[1]~input_o\ & (\Sel[0]~input_o\ & ((\imput[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \imput[15]~input_o\,
	datad => \imput[13]~input_o\,
	combout => \Muxout~7_combout\);

\Muxout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Muxout~8_combout\ = (\Sel[0]~input_o\ & (((\Muxout~7_combout\)))) # (!\Sel[0]~input_o\ & ((\Muxout~7_combout\ & (\imput[14]~input_o\)) # (!\Muxout~7_combout\ & ((\imput[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imput[14]~input_o\,
	datab => \imput[12]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \Muxout~7_combout\,
	combout => \Muxout~8_combout\);

\Muxout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Muxout~9_combout\ = (\Sel[2]~input_o\ & ((\Muxout~6_combout\ & ((\Muxout~8_combout\))) # (!\Muxout~6_combout\ & (\Muxout~1_combout\)))) # (!\Sel[2]~input_o\ & (((\Muxout~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Muxout~1_combout\,
	datab => \Sel[2]~input_o\,
	datac => \Muxout~6_combout\,
	datad => \Muxout~8_combout\,
	combout => \Muxout~9_combout\);

ww_Muxout <= \Muxout~output_o\;
END structure;


