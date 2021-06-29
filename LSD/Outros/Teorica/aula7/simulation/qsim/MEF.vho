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

-- DATE "05/10/2021 19:13:10"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	amor IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	w : IN std_logic;
	z : OUT std_logic
	);
END amor;

ARCHITECTURE structure OF amor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \S_y~7_combout\ : std_logic;
SIGNAL \S_y.S0~q\ : std_logic;
SIGNAL \S_y~6_combout\ : std_logic;
SIGNAL \S_y.S1~q\ : std_logic;
SIGNAL \S_y~5_combout\ : std_logic;
SIGNAL \S_y.S2~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_w <= w;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_y.S2~q\,
	devoe => ww_devoe,
	o => \z~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\w~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

\S_y~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_y~7_combout\ = (!\reset~input_o\ & (\w~input_o\ $ (!\S_y.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \w~input_o\,
	datad => \S_y.S1~q\,
	combout => \S_y~7_combout\);

\S_y.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \S_y~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_y.S0~q\);

\S_y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_y~6_combout\ = (!\reset~input_o\ & (!\w~input_o\ & !\S_y.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \w~input_o\,
	datac => \S_y.S0~q\,
	combout => \S_y~6_combout\);

\S_y.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \S_y~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_y.S1~q\);

\S_y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_y~5_combout\ = (!\reset~input_o\ & ((\w~input_o\ & (\S_y.S1~q\)) # (!\w~input_o\ & ((\S_y.S2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_y.S1~q\,
	datab => \S_y.S2~q\,
	datac => \w~input_o\,
	datad => \reset~input_o\,
	combout => \S_y~5_combout\);

\S_y.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \S_y~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_y.S2~q\);

ww_z <= \z~output_o\;
END structure;


