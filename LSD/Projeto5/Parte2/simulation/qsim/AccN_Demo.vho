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

-- DATE "04/16/2021 12:39:38"

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

ENTITY 	AccN IS
    PORT (
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	enable : IN std_logic;
	clk : IN std_logic;
	dataOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END AccN;

ARCHITECTURE structure OF AccN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \regN|dataOut[0]~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \regN|dataOut[0]~10_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \regN|dataOut[0]~9\ : std_logic;
SIGNAL \regN|dataOut[1]~11_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \regN|dataOut[1]~12\ : std_logic;
SIGNAL \regN|dataOut[2]~13_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \regN|dataOut[2]~14\ : std_logic;
SIGNAL \regN|dataOut[3]~15_combout\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \regN|dataOut[3]~16\ : std_logic;
SIGNAL \regN|dataOut[4]~17_combout\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \regN|dataOut[4]~18\ : std_logic;
SIGNAL \regN|dataOut[5]~19_combout\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \regN|dataOut[5]~20\ : std_logic;
SIGNAL \regN|dataOut[6]~21_combout\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \regN|dataOut[6]~22\ : std_logic;
SIGNAL \regN|dataOut[7]~23_combout\ : std_logic;
SIGNAL \regN|dataOut\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_dataIn <= dataIn;
ww_reset <= reset;
ww_enable <= enable;
ww_clk <= clk;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regN|dataOut\(0),
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regN|dataOut\(1),
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regN|dataOut\(2),
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regN|dataOut\(3),
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regN|dataOut\(4),
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regN|dataOut\(5),
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regN|dataOut\(6),
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regN|dataOut\(7),
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

\regN|dataOut[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regN|dataOut[0]~8_combout\ = (\regN|dataOut\(0) & (\dataIn[0]~input_o\ $ (VCC))) # (!\regN|dataOut\(0) & (\dataIn[0]~input_o\ & VCC))
-- \regN|dataOut[0]~9\ = CARRY((\regN|dataOut\(0) & \dataIn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regN|dataOut\(0),
	datab => \dataIn[0]~input_o\,
	datad => VCC,
	combout => \regN|dataOut[0]~8_combout\,
	cout => \regN|dataOut[0]~9\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\regN|dataOut[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regN|dataOut[0]~10_combout\ = (\reset~input_o\) # (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \enable~input_o\,
	combout => \regN|dataOut[0]~10_combout\);

\regN|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \regN|dataOut[0]~8_combout\,
	sclr => \reset~input_o\,
	ena => \regN|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regN|dataOut\(0));

\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\regN|dataOut[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regN|dataOut[1]~11_combout\ = (\regN|dataOut\(1) & ((\dataIn[1]~input_o\ & (\regN|dataOut[0]~9\ & VCC)) # (!\dataIn[1]~input_o\ & (!\regN|dataOut[0]~9\)))) # (!\regN|dataOut\(1) & ((\dataIn[1]~input_o\ & (!\regN|dataOut[0]~9\)) # (!\dataIn[1]~input_o\ & 
-- ((\regN|dataOut[0]~9\) # (GND)))))
-- \regN|dataOut[1]~12\ = CARRY((\regN|dataOut\(1) & (!\dataIn[1]~input_o\ & !\regN|dataOut[0]~9\)) # (!\regN|dataOut\(1) & ((!\regN|dataOut[0]~9\) # (!\dataIn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regN|dataOut\(1),
	datab => \dataIn[1]~input_o\,
	datad => VCC,
	cin => \regN|dataOut[0]~9\,
	combout => \regN|dataOut[1]~11_combout\,
	cout => \regN|dataOut[1]~12\);

\regN|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \regN|dataOut[1]~11_combout\,
	sclr => \reset~input_o\,
	ena => \regN|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regN|dataOut\(1));

\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\regN|dataOut[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regN|dataOut[2]~13_combout\ = ((\regN|dataOut\(2) $ (\dataIn[2]~input_o\ $ (!\regN|dataOut[1]~12\)))) # (GND)
-- \regN|dataOut[2]~14\ = CARRY((\regN|dataOut\(2) & ((\dataIn[2]~input_o\) # (!\regN|dataOut[1]~12\))) # (!\regN|dataOut\(2) & (\dataIn[2]~input_o\ & !\regN|dataOut[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regN|dataOut\(2),
	datab => \dataIn[2]~input_o\,
	datad => VCC,
	cin => \regN|dataOut[1]~12\,
	combout => \regN|dataOut[2]~13_combout\,
	cout => \regN|dataOut[2]~14\);

\regN|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \regN|dataOut[2]~13_combout\,
	sclr => \reset~input_o\,
	ena => \regN|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regN|dataOut\(2));

\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

\regN|dataOut[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \regN|dataOut[3]~15_combout\ = (\regN|dataOut\(3) & ((\dataIn[3]~input_o\ & (\regN|dataOut[2]~14\ & VCC)) # (!\dataIn[3]~input_o\ & (!\regN|dataOut[2]~14\)))) # (!\regN|dataOut\(3) & ((\dataIn[3]~input_o\ & (!\regN|dataOut[2]~14\)) # (!\dataIn[3]~input_o\ 
-- & ((\regN|dataOut[2]~14\) # (GND)))))
-- \regN|dataOut[3]~16\ = CARRY((\regN|dataOut\(3) & (!\dataIn[3]~input_o\ & !\regN|dataOut[2]~14\)) # (!\regN|dataOut\(3) & ((!\regN|dataOut[2]~14\) # (!\dataIn[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regN|dataOut\(3),
	datab => \dataIn[3]~input_o\,
	datad => VCC,
	cin => \regN|dataOut[2]~14\,
	combout => \regN|dataOut[3]~15_combout\,
	cout => \regN|dataOut[3]~16\);

\regN|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \regN|dataOut[3]~15_combout\,
	sclr => \reset~input_o\,
	ena => \regN|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regN|dataOut\(3));

\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

\regN|dataOut[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \regN|dataOut[4]~17_combout\ = ((\regN|dataOut\(4) $ (\dataIn[4]~input_o\ $ (!\regN|dataOut[3]~16\)))) # (GND)
-- \regN|dataOut[4]~18\ = CARRY((\regN|dataOut\(4) & ((\dataIn[4]~input_o\) # (!\regN|dataOut[3]~16\))) # (!\regN|dataOut\(4) & (\dataIn[4]~input_o\ & !\regN|dataOut[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regN|dataOut\(4),
	datab => \dataIn[4]~input_o\,
	datad => VCC,
	cin => \regN|dataOut[3]~16\,
	combout => \regN|dataOut[4]~17_combout\,
	cout => \regN|dataOut[4]~18\);

\regN|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \regN|dataOut[4]~17_combout\,
	sclr => \reset~input_o\,
	ena => \regN|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regN|dataOut\(4));

\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

\regN|dataOut[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \regN|dataOut[5]~19_combout\ = (\regN|dataOut\(5) & ((\dataIn[5]~input_o\ & (\regN|dataOut[4]~18\ & VCC)) # (!\dataIn[5]~input_o\ & (!\regN|dataOut[4]~18\)))) # (!\regN|dataOut\(5) & ((\dataIn[5]~input_o\ & (!\regN|dataOut[4]~18\)) # (!\dataIn[5]~input_o\ 
-- & ((\regN|dataOut[4]~18\) # (GND)))))
-- \regN|dataOut[5]~20\ = CARRY((\regN|dataOut\(5) & (!\dataIn[5]~input_o\ & !\regN|dataOut[4]~18\)) # (!\regN|dataOut\(5) & ((!\regN|dataOut[4]~18\) # (!\dataIn[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regN|dataOut\(5),
	datab => \dataIn[5]~input_o\,
	datad => VCC,
	cin => \regN|dataOut[4]~18\,
	combout => \regN|dataOut[5]~19_combout\,
	cout => \regN|dataOut[5]~20\);

\regN|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \regN|dataOut[5]~19_combout\,
	sclr => \reset~input_o\,
	ena => \regN|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regN|dataOut\(5));

\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

\regN|dataOut[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \regN|dataOut[6]~21_combout\ = ((\regN|dataOut\(6) $ (\dataIn[6]~input_o\ $ (!\regN|dataOut[5]~20\)))) # (GND)
-- \regN|dataOut[6]~22\ = CARRY((\regN|dataOut\(6) & ((\dataIn[6]~input_o\) # (!\regN|dataOut[5]~20\))) # (!\regN|dataOut\(6) & (\dataIn[6]~input_o\ & !\regN|dataOut[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regN|dataOut\(6),
	datab => \dataIn[6]~input_o\,
	datad => VCC,
	cin => \regN|dataOut[5]~20\,
	combout => \regN|dataOut[6]~21_combout\,
	cout => \regN|dataOut[6]~22\);

\regN|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \regN|dataOut[6]~21_combout\,
	sclr => \reset~input_o\,
	ena => \regN|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regN|dataOut\(6));

\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

\regN|dataOut[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \regN|dataOut[7]~23_combout\ = \regN|dataOut\(7) $ (\dataIn[7]~input_o\ $ (\regN|dataOut[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regN|dataOut\(7),
	datab => \dataIn[7]~input_o\,
	cin => \regN|dataOut[6]~22\,
	combout => \regN|dataOut[7]~23_combout\);

\regN|dataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \regN|dataOut[7]~23_combout\,
	sclr => \reset~input_o\,
	ena => \regN|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regN|dataOut\(7));

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;
END structure;


