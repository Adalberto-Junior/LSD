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

-- DATE "05/16/2021 18:41:31"

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

ENTITY 	DrinksFSM IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	M20 : IN std_logic;
	M50 : IN std_logic;
	Drink : OUT std_logic
	);
END DrinksFSM;

ARCHITECTURE structure OF DrinksFSM IS
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
SIGNAL ww_M20 : std_logic;
SIGNAL ww_M50 : std_logic;
SIGNAL ww_Drink : std_logic;
SIGNAL \Drink~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \M20~input_o\ : std_logic;
SIGNAL \M50~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reg_fstate.S3~0_combout\ : std_logic;
SIGNAL \reg_fstate.S4~2_combout\ : std_logic;
SIGNAL \reg_fstate.S0~0_combout\ : std_logic;
SIGNAL \reg_fstate.S0~1_combout\ : std_logic;
SIGNAL \fstate.S0~q\ : std_logic;
SIGNAL \reg_fstate.S1~0_combout\ : std_logic;
SIGNAL \fstate.S1~q\ : std_logic;
SIGNAL \reg_fstate.S2~0_combout\ : std_logic;
SIGNAL \fstate.S2~q\ : std_logic;
SIGNAL \reg_fstate.S3~1_combout\ : std_logic;
SIGNAL \reg_fstate.S3~2_combout\ : std_logic;
SIGNAL \fstate.S3~q\ : std_logic;
SIGNAL \reg_fstate.S4~0_combout\ : std_logic;
SIGNAL \reg_fstate.S4~1_combout\ : std_logic;
SIGNAL \fstate.S4~q\ : std_logic;
SIGNAL \reg_fstate.S5~0_combout\ : std_logic;
SIGNAL \reg_fstate.S5~1_combout\ : std_logic;
SIGNAL \fstate.S5~q\ : std_logic;
SIGNAL \Drink~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_M20 <= M20;
ww_M50 <= M50;
Drink <= ww_Drink;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Drink~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Drink~0_combout\,
	devoe => ww_devoe,
	o => \Drink~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\M20~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M20,
	o => \M20~input_o\);

\M50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M50,
	o => \M50~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\reg_fstate.S3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.S3~0_combout\ = (!\reset~input_o\ & (\M20~input_o\ $ (!\M50~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M20~input_o\,
	datab => \M50~input_o\,
	datad => \reset~input_o\,
	combout => \reg_fstate.S3~0_combout\);

\reg_fstate.S4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.S4~2_combout\ = (\M20~input_o\ & (!\reset~input_o\ & !\M50~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M20~input_o\,
	datac => \reset~input_o\,
	datad => \M50~input_o\,
	combout => \reg_fstate.S4~2_combout\);

\reg_fstate.S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.S0~0_combout\ = (\reset~input_o\) # ((!\fstate.S0~q\ & (\M20~input_o\ $ (!\M50~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \M20~input_o\,
	datac => \M50~input_o\,
	datad => \fstate.S0~q\,
	combout => \reg_fstate.S0~0_combout\);

\reg_fstate.S0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.S0~1_combout\ = (!\fstate.S5~q\ & !\reg_fstate.S0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.S5~q\,
	datab => \reg_fstate.S0~0_combout\,
	combout => \reg_fstate.S0~1_combout\);

\fstate.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg_fstate.S0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S0~q\);

\reg_fstate.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.S1~0_combout\ = (\fstate.S1~q\ & ((\reg_fstate.S3~0_combout\) # ((\reg_fstate.S4~2_combout\ & !\fstate.S0~q\)))) # (!\fstate.S1~q\ & (((\reg_fstate.S4~2_combout\ & !\fstate.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.S1~q\,
	datab => \reg_fstate.S3~0_combout\,
	datac => \reg_fstate.S4~2_combout\,
	datad => \fstate.S0~q\,
	combout => \reg_fstate.S1~0_combout\);

\fstate.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg_fstate.S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S1~q\);

\reg_fstate.S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.S2~0_combout\ = (\fstate.S2~q\ & ((\reg_fstate.S3~0_combout\) # ((\reg_fstate.S4~2_combout\ & \fstate.S1~q\)))) # (!\fstate.S2~q\ & (\reg_fstate.S4~2_combout\ & (\fstate.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.S2~q\,
	datab => \reg_fstate.S4~2_combout\,
	datac => \fstate.S1~q\,
	datad => \reg_fstate.S3~0_combout\,
	combout => \reg_fstate.S2~0_combout\);

\fstate.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg_fstate.S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S2~q\);

\reg_fstate.S3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.S3~1_combout\ = (\M20~input_o\ & (\fstate.S3~q\ & (\M50~input_o\))) # (!\M20~input_o\ & ((\M50~input_o\ & ((!\fstate.S0~q\))) # (!\M50~input_o\ & (\fstate.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.S3~q\,
	datab => \M20~input_o\,
	datac => \M50~input_o\,
	datad => \fstate.S0~q\,
	combout => \reg_fstate.S3~1_combout\);

\reg_fstate.S3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.S3~2_combout\ = (\reset~input_o\ & (\fstate.S2~q\ & (\reg_fstate.S4~2_combout\))) # (!\reset~input_o\ & ((\reg_fstate.S3~1_combout\) # ((\fstate.S2~q\ & \reg_fstate.S4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \fstate.S2~q\,
	datac => \reg_fstate.S4~2_combout\,
	datad => \reg_fstate.S3~1_combout\,
	combout => \reg_fstate.S3~2_combout\);

\fstate.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg_fstate.S3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S3~q\);

\reg_fstate.S4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.S4~0_combout\ = (\M20~input_o\ & (((!\M50~input_o\ & \fstate.S3~q\)))) # (!\M20~input_o\ & ((\fstate.S4~q\) # ((\M50~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M20~input_o\,
	datab => \fstate.S4~q\,
	datac => \M50~input_o\,
	datad => \fstate.S3~q\,
	combout => \reg_fstate.S4~0_combout\);

\reg_fstate.S4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.S4~1_combout\ = (!\reset~input_o\ & (\reg_fstate.S4~0_combout\ & ((\fstate.S1~q\) # (!\M50~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \fstate.S1~q\,
	datac => \M50~input_o\,
	datad => \reg_fstate.S4~0_combout\,
	combout => \reg_fstate.S4~1_combout\);

\fstate.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg_fstate.S4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S4~q\);

\reg_fstate.S5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.S5~0_combout\ = (\fstate.S4~q\ & (((\reset~input_o\)))) # (!\fstate.S4~q\ & (!\reset~input_o\ & ((\fstate.S2~q\) # (\fstate.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.S4~q\,
	datab => \fstate.S2~q\,
	datac => \fstate.S3~q\,
	datad => \reset~input_o\,
	combout => \reg_fstate.S5~0_combout\);

\reg_fstate.S5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.S5~1_combout\ = (\M20~input_o\ & (((\fstate.S4~q\ & !\reg_fstate.S5~0_combout\)))) # (!\M20~input_o\ & (\M50~input_o\ & (\fstate.S4~q\ $ (\reg_fstate.S5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M20~input_o\,
	datab => \M50~input_o\,
	datac => \fstate.S4~q\,
	datad => \reg_fstate.S5~0_combout\,
	combout => \reg_fstate.S5~1_combout\);

\fstate.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg_fstate.S5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S5~q\);

\Drink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Drink~0_combout\ = (\fstate.S5~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.S5~q\,
	datad => \reset~input_o\,
	combout => \Drink~0_combout\);

ww_Drink <= \Drink~output_o\;
END structure;


