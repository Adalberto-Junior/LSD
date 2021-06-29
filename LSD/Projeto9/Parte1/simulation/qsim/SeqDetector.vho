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

-- DATE "05/20/2021 18:27:17"

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

ENTITY 	SeqDetFSM IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	Xin : IN std_logic;
	Zout : OUT std_logic_vector(3 DOWNTO 0);
	Yout : OUT std_logic
	);
END SeqDetFSM;

ARCHITECTURE structure OF SeqDetFSM IS
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
SIGNAL ww_Xin : std_logic;
SIGNAL ww_Zout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Yout : std_logic;
SIGNAL \Zout[0]~output_o\ : std_logic;
SIGNAL \Zout[1]~output_o\ : std_logic;
SIGNAL \Zout[2]~output_o\ : std_logic;
SIGNAL \Zout[3]~output_o\ : std_logic;
SIGNAL \Yout~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Xin~input_o\ : std_logic;
SIGNAL \pstaty~7_combout\ : std_logic;
SIGNAL \pstaty.S1~q\ : std_logic;
SIGNAL \pstaty~8_combout\ : std_logic;
SIGNAL \pstaty.S10~q\ : std_logic;
SIGNAL \pstaty~6_combout\ : std_logic;
SIGNAL \pstaty.S0~q\ : std_logic;
SIGNAL \pstaty~9_combout\ : std_logic;
SIGNAL \pstaty.S100~q\ : std_logic;
SIGNAL \Yout~1_combout\ : std_logic;
SIGNAL \ALT_INV_pstaty.S0~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_Xin <= Xin;
Zout <= ww_Zout;
Yout <= ww_Yout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_pstaty.S0~q\ <= NOT \pstaty.S0~q\;

\Zout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pstaty.S0~q\,
	devoe => ww_devoe,
	o => \Zout[0]~output_o\);

\Zout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pstaty.S1~q\,
	devoe => ww_devoe,
	o => \Zout[1]~output_o\);

\Zout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pstaty.S10~q\,
	devoe => ww_devoe,
	o => \Zout[2]~output_o\);

\Zout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pstaty.S100~q\,
	devoe => ww_devoe,
	o => \Zout[3]~output_o\);

\Yout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout~1_combout\,
	devoe => ww_devoe,
	o => \Yout~output_o\);

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

\Xin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin,
	o => \Xin~input_o\);

\pstaty~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~7_combout\ = (\Xin~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin~input_o\,
	datad => \reset~input_o\,
	combout => \pstaty~7_combout\);

\pstaty.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pstaty~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pstaty.S1~q\);

\pstaty~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~8_combout\ = (!\Xin~input_o\ & (!\reset~input_o\ & \pstaty.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin~input_o\,
	datab => \reset~input_o\,
	datad => \pstaty.S1~q\,
	combout => \pstaty~8_combout\);

\pstaty.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pstaty~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pstaty.S10~q\);

\pstaty~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~6_combout\ = (!\reset~input_o\ & ((\pstaty.S1~q\) # ((\pstaty.S10~q\) # (\Xin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pstaty.S1~q\,
	datac => \pstaty.S10~q\,
	datad => \Xin~input_o\,
	combout => \pstaty~6_combout\);

\pstaty.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pstaty~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pstaty.S0~q\);

\pstaty~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~9_combout\ = (!\Xin~input_o\ & (!\reset~input_o\ & \pstaty.S10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin~input_o\,
	datab => \reset~input_o\,
	datad => \pstaty.S10~q\,
	combout => \pstaty~9_combout\);

\pstaty.S100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pstaty~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pstaty.S100~q\);

\Yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout~1_combout\ = (\pstaty.S100~q\ & \Xin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pstaty.S100~q\,
	datab => \Xin~input_o\,
	combout => \Yout~1_combout\);

ww_Zout(0) <= \Zout[0]~output_o\;

ww_Zout(1) <= \Zout[1]~output_o\;

ww_Zout(2) <= \Zout[2]~output_o\;

ww_Zout(3) <= \Zout[3]~output_o\;

ww_Yout <= \Yout~output_o\;
END structure;


