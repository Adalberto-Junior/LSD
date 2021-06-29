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

-- DATE "06/10/2021 02:09:03"

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

ENTITY 	modoDeAcu IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	selModAc : IN std_logic;
	maisAc : IN std_logic;
	menusAc : IN std_logic;
	selBar : OUT std_logic_vector(2 DOWNTO 0)
	);
END modoDeAcu;

ARCHITECTURE structure OF modoDeAcu IS
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
SIGNAL ww_selModAc : std_logic;
SIGNAL ww_maisAc : std_logic;
SIGNAL ww_menusAc : std_logic;
SIGNAL ww_selBar : std_logic_vector(2 DOWNTO 0);
SIGNAL \selBar[0]~output_o\ : std_logic;
SIGNAL \selBar[1]~output_o\ : std_logic;
SIGNAL \selBar[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \selModAc~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_currentState~10_combout\ : std_logic;
SIGNAL \menusAc~input_o\ : std_logic;
SIGNAL \maisAc~input_o\ : std_logic;
SIGNAL \s_currentState~18_combout\ : std_logic;
SIGNAL \s_currentState~19_combout\ : std_logic;
SIGNAL \s_currentState.Inicio~q\ : std_logic;
SIGNAL \s_currentState~16_combout\ : std_logic;
SIGNAL \s_currentState~17_combout\ : std_logic;
SIGNAL \s_currentState.Start~q\ : std_logic;
SIGNAL \s_currentState~13_combout\ : std_logic;
SIGNAL \s_currentState~20_combout\ : std_logic;
SIGNAL \s_currentState.fourBar~q\ : std_logic;
SIGNAL \s_currentState~14_combout\ : std_logic;
SIGNAL \s_currentState~15_combout\ : std_logic;
SIGNAL \s_currentState.threeBar~q\ : std_logic;
SIGNAL \s_currentState~11_combout\ : std_logic;
SIGNAL \s_currentState~12_combout\ : std_logic;
SIGNAL \s_currentState.twoBar~q\ : std_logic;
SIGNAL \selBar~2_combout\ : std_logic;
SIGNAL \selBar~3_combout\ : std_logic;
SIGNAL \ALT_INV_selBar~2_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_selModAc <= selModAc;
ww_maisAc <= maisAc;
ww_menusAc <= menusAc;
selBar <= ww_selBar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_selBar~2_combout\ <= NOT \selBar~2_combout\;

\selBar[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_selBar~2_combout\,
	devoe => ww_devoe,
	o => \selBar[0]~output_o\);

\selBar[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \selBar~3_combout\,
	devoe => ww_devoe,
	o => \selBar[1]~output_o\);

\selBar[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_currentState.fourBar~q\,
	devoe => ww_devoe,
	o => \selBar[2]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\selModAc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selModAc,
	o => \selModAc~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~10_combout\ = (\selModAc~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selModAc~input_o\,
	datad => \reset~input_o\,
	combout => \s_currentState~10_combout\);

\menusAc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_menusAc,
	o => \menusAc~input_o\);

\maisAc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_maisAc,
	o => \maisAc~input_o\);

\s_currentState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~18_combout\ = (!\maisAc~input_o\ & ((\s_currentState.Inicio~q\) # ((\s_currentState.Start~q\ & \menusAc~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.Inicio~q\,
	datab => \s_currentState.Start~q\,
	datac => \menusAc~input_o\,
	datad => \maisAc~input_o\,
	combout => \s_currentState~18_combout\);

\s_currentState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~19_combout\ = (\selModAc~input_o\ & ((\reset~input_o\) # (\s_currentState~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selModAc~input_o\,
	datab => \reset~input_o\,
	datac => \s_currentState~18_combout\,
	combout => \s_currentState~19_combout\);

\s_currentState.Inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.Inicio~q\);

\s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~16_combout\ = (\menusAc~input_o\ & (\s_currentState.twoBar~q\)) # (!\menusAc~input_o\ & ((\s_currentState.Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.twoBar~q\,
	datab => \s_currentState.Start~q\,
	datad => \menusAc~input_o\,
	combout => \s_currentState~16_combout\);

\s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~17_combout\ = (\s_currentState~10_combout\ & ((\maisAc~input_o\ & (\s_currentState.Inicio~q\)) # (!\maisAc~input_o\ & ((\s_currentState~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState~10_combout\,
	datab => \s_currentState.Inicio~q\,
	datac => \s_currentState~16_combout\,
	datad => \maisAc~input_o\,
	combout => \s_currentState~17_combout\);

\s_currentState.Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.Start~q\);

\s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~13_combout\ = (\s_currentState.threeBar~q\ & ((\maisAc~input_o\) # ((\s_currentState.fourBar~q\ & !\menusAc~input_o\)))) # (!\s_currentState.threeBar~q\ & (((\s_currentState.fourBar~q\ & !\menusAc~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.threeBar~q\,
	datab => \maisAc~input_o\,
	datac => \s_currentState.fourBar~q\,
	datad => \menusAc~input_o\,
	combout => \s_currentState~13_combout\);

\s_currentState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~20_combout\ = (\selModAc~input_o\ & (!\reset~input_o\ & \s_currentState~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selModAc~input_o\,
	datab => \reset~input_o\,
	datac => \s_currentState~13_combout\,
	combout => \s_currentState~20_combout\);

\s_currentState.fourBar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.fourBar~q\);

\s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~14_combout\ = (\menusAc~input_o\ & (\s_currentState.fourBar~q\)) # (!\menusAc~input_o\ & (((!\maisAc~input_o\ & \s_currentState.threeBar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.fourBar~q\,
	datab => \menusAc~input_o\,
	datac => \maisAc~input_o\,
	datad => \s_currentState.threeBar~q\,
	combout => \s_currentState~14_combout\);

\s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~15_combout\ = (\s_currentState~10_combout\ & ((\s_currentState~14_combout\) # ((\s_currentState.twoBar~q\ & \maisAc~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState~10_combout\,
	datab => \s_currentState.twoBar~q\,
	datac => \maisAc~input_o\,
	datad => \s_currentState~14_combout\,
	combout => \s_currentState~15_combout\);

\s_currentState.threeBar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.threeBar~q\);

\s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~11_combout\ = (\menusAc~input_o\ & (\s_currentState.threeBar~q\)) # (!\menusAc~input_o\ & ((\s_currentState.twoBar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.threeBar~q\,
	datab => \s_currentState.twoBar~q\,
	datad => \menusAc~input_o\,
	combout => \s_currentState~11_combout\);

\s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~12_combout\ = (\s_currentState~10_combout\ & ((\maisAc~input_o\ & (\s_currentState.Start~q\)) # (!\maisAc~input_o\ & ((\s_currentState~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState~10_combout\,
	datab => \s_currentState.Start~q\,
	datac => \s_currentState~11_combout\,
	datad => \maisAc~input_o\,
	combout => \s_currentState~12_combout\);

\s_currentState.twoBar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.twoBar~q\);

\selBar~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \selBar~2_combout\ = (\s_currentState.twoBar~q\) # (\s_currentState.fourBar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.twoBar~q\,
	datab => \s_currentState.fourBar~q\,
	combout => \selBar~2_combout\);

\selBar~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \selBar~3_combout\ = (\s_currentState.twoBar~q\) # (\s_currentState.threeBar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.twoBar~q\,
	datab => \s_currentState.threeBar~q\,
	combout => \selBar~3_combout\);

ww_selBar(0) <= \selBar[0]~output_o\;

ww_selBar(1) <= \selBar[1]~output_o\;

ww_selBar(2) <= \selBar[2]~output_o\;
END structure;


