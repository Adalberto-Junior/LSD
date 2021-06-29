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

-- DATE "05/17/2021 17:49:53"

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

ENTITY 	contadorgray IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	dataIn : IN std_logic_vector(2 DOWNTO 0);
	dataOut : OUT std_logic_vector(2 DOWNTO 0)
	);
END contadorgray;

ARCHITECTURE structure OF contadorgray IS
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
SIGNAL ww_dataIn : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(2 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \pstaty~26_combout\ : std_logic;
SIGNAL \pstaty~27_combout\ : std_logic;
SIGNAL \pstaty.S010~q\ : std_logic;
SIGNAL \pstaty~24_combout\ : std_logic;
SIGNAL \pstaty~19_combout\ : std_logic;
SIGNAL \pstaty~25_combout\ : std_logic;
SIGNAL \pstaty.S011~q\ : std_logic;
SIGNAL \pstaty~18_combout\ : std_logic;
SIGNAL \pstaty~20_combout\ : std_logic;
SIGNAL \pstaty~21_combout\ : std_logic;
SIGNAL \pstaty.S100~q\ : std_logic;
SIGNAL \pstaty~22_combout\ : std_logic;
SIGNAL \pstaty~23_combout\ : std_logic;
SIGNAL \pstaty.S101~q\ : std_logic;
SIGNAL \pstaty~12_combout\ : std_logic;
SIGNAL \pstaty~13_combout\ : std_logic;
SIGNAL \pstaty.S110~q\ : std_logic;
SIGNAL \pstaty~14_combout\ : std_logic;
SIGNAL \pstaty~15_combout\ : std_logic;
SIGNAL \pstaty.S111~q\ : std_logic;
SIGNAL \pstaty~16_combout\ : std_logic;
SIGNAL \pstaty~17_combout\ : std_logic;
SIGNAL \pstaty.S000~q\ : std_logic;
SIGNAL \pstaty~10_combout\ : std_logic;
SIGNAL \pstaty~11_combout\ : std_logic;
SIGNAL \pstaty.S001~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_dataIn <= dataIn;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;

\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

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

\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\pstaty~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~26_combout\ = (!\dataIn[2]~input_o\ & ((\dataIn[1]~input_o\ & (\pstaty.S010~q\)) # (!\dataIn[1]~input_o\ & (!\pstaty.S010~q\ & \pstaty.S001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => \dataIn[1]~input_o\,
	datac => \pstaty.S010~q\,
	datad => \pstaty.S001~q\,
	combout => \pstaty~26_combout\);

\pstaty~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~27_combout\ = (\reset~input_o\ & ((\pstaty~26_combout\ & (\dataIn[0]~input_o\)) # (!\pstaty~26_combout\ & ((\pstaty.S010~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \reset~input_o\,
	datac => \pstaty.S010~q\,
	datad => \pstaty~26_combout\,
	combout => \pstaty~27_combout\);

\pstaty.S010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pstaty~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pstaty.S010~q\);

\pstaty~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~24_combout\ = (\dataIn[1]~input_o\ & (\reset~input_o\ & (!\dataIn[2]~input_o\ & !\dataIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[1]~input_o\,
	datab => \reset~input_o\,
	datac => \dataIn[2]~input_o\,
	datad => \dataIn[0]~input_o\,
	combout => \pstaty~24_combout\);

\pstaty~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~19_combout\ = (\dataIn[0]~input_o\ & (\dataIn[1]~input_o\ & !\dataIn[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \dataIn[1]~input_o\,
	datad => \dataIn[2]~input_o\,
	combout => \pstaty~19_combout\);

\pstaty~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~25_combout\ = (\pstaty.S010~q\ & ((\pstaty~24_combout\) # ((\pstaty~18_combout\ & !\pstaty~19_combout\)))) # (!\pstaty.S010~q\ & (((\pstaty~18_combout\ & !\pstaty~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pstaty.S010~q\,
	datab => \pstaty~24_combout\,
	datac => \pstaty~18_combout\,
	datad => \pstaty~19_combout\,
	combout => \pstaty~25_combout\);

\pstaty.S011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pstaty~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pstaty.S011~q\);

\pstaty~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~18_combout\ = (\pstaty.S011~q\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pstaty.S011~q\,
	datab => \reset~input_o\,
	combout => \pstaty~18_combout\);

\pstaty~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~20_combout\ = (\reset~input_o\ & ((\dataIn[0]~input_o\) # ((\dataIn[1]~input_o\) # (!\dataIn[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dataIn[0]~input_o\,
	datac => \dataIn[1]~input_o\,
	datad => \dataIn[2]~input_o\,
	combout => \pstaty~20_combout\);

\pstaty~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~21_combout\ = (\pstaty.S100~q\ & ((\pstaty~20_combout\) # ((\pstaty~18_combout\ & \pstaty~19_combout\)))) # (!\pstaty.S100~q\ & (\pstaty~18_combout\ & (\pstaty~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pstaty.S100~q\,
	datab => \pstaty~18_combout\,
	datac => \pstaty~19_combout\,
	datad => \pstaty~20_combout\,
	combout => \pstaty~21_combout\);

\pstaty.S100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pstaty~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pstaty.S100~q\);

\pstaty~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~22_combout\ = (\dataIn[1]~input_o\ & (((!\pstaty.S101~q\)))) # (!\dataIn[1]~input_o\ & ((\dataIn[2]~input_o\ & (\dataIn[0]~input_o\)) # (!\dataIn[2]~input_o\ & ((!\pstaty.S101~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[1]~input_o\,
	datab => \dataIn[2]~input_o\,
	datac => \dataIn[0]~input_o\,
	datad => \pstaty.S101~q\,
	combout => \pstaty~22_combout\);

\pstaty~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~23_combout\ = (\reset~input_o\ & (!\pstaty~22_combout\ & ((\pstaty.S100~q\) # (\pstaty.S101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pstaty.S100~q\,
	datac => \pstaty.S101~q\,
	datad => \pstaty~22_combout\,
	combout => \pstaty~23_combout\);

\pstaty.S101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pstaty~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pstaty.S101~q\);

\pstaty~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~12_combout\ = (\dataIn[2]~input_o\ & ((\dataIn[1]~input_o\ & (\pstaty.S110~q\)) # (!\dataIn[1]~input_o\ & (!\pstaty.S110~q\ & \pstaty.S101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => \dataIn[1]~input_o\,
	datac => \pstaty.S110~q\,
	datad => \pstaty.S101~q\,
	combout => \pstaty~12_combout\);

\pstaty~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~13_combout\ = (\reset~input_o\ & ((\pstaty~12_combout\ & (\dataIn[0]~input_o\)) # (!\pstaty~12_combout\ & ((\pstaty.S110~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \reset~input_o\,
	datac => \pstaty.S110~q\,
	datad => \pstaty~12_combout\,
	combout => \pstaty~13_combout\);

\pstaty.S110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pstaty~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pstaty.S110~q\);

\pstaty~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~14_combout\ = (\dataIn[2]~input_o\ & ((\dataIn[1]~input_o\ & (\dataIn[0]~input_o\)) # (!\dataIn[1]~input_o\ & ((!\pstaty.S111~q\))))) # (!\dataIn[2]~input_o\ & (((!\pstaty.S111~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => \dataIn[1]~input_o\,
	datac => \dataIn[0]~input_o\,
	datad => \pstaty.S111~q\,
	combout => \pstaty~14_combout\);

\pstaty~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~15_combout\ = (\reset~input_o\ & (!\pstaty~14_combout\ & ((\pstaty.S110~q\) # (\pstaty.S111~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pstaty.S110~q\,
	datac => \pstaty.S111~q\,
	datad => \pstaty~14_combout\,
	combout => \pstaty~15_combout\);

\pstaty.S111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pstaty~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pstaty.S111~q\);

\pstaty~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~16_combout\ = (\dataIn[2]~input_o\ & (((\dataIn[0]~input_o\ & \dataIn[1]~input_o\)) # (!\pstaty.S000~q\))) # (!\dataIn[2]~input_o\ & (!\pstaty.S000~q\ & ((\dataIn[0]~input_o\) # (\dataIn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => \dataIn[0]~input_o\,
	datac => \dataIn[1]~input_o\,
	datad => \pstaty.S000~q\,
	combout => \pstaty~16_combout\);

\pstaty~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~17_combout\ = (\reset~input_o\ & (((!\pstaty.S111~q\ & \pstaty.S000~q\)) # (!\pstaty~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pstaty.S111~q\,
	datab => \reset~input_o\,
	datac => \pstaty.S000~q\,
	datad => \pstaty~16_combout\,
	combout => \pstaty~17_combout\);

\pstaty.S000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pstaty~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pstaty.S000~q\);

\pstaty~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~10_combout\ = (\dataIn[2]~input_o\ & (((!\pstaty.S001~q\)))) # (!\dataIn[2]~input_o\ & ((\dataIn[1]~input_o\ & ((!\pstaty.S001~q\))) # (!\dataIn[1]~input_o\ & (\dataIn[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => \dataIn[1]~input_o\,
	datac => \dataIn[0]~input_o\,
	datad => \pstaty.S001~q\,
	combout => \pstaty~10_combout\);

\pstaty~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pstaty~11_combout\ = (\reset~input_o\ & (!\pstaty~10_combout\ & ((\pstaty.S001~q\) # (!\pstaty.S000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pstaty.S000~q\,
	datac => \pstaty.S001~q\,
	datad => \pstaty~10_combout\,
	combout => \pstaty~11_combout\);

\pstaty.S001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pstaty~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pstaty.S001~q\);

\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\pstaty.S001~q\) # ((\pstaty.S110~q\) # ((\pstaty.S111~q\) # (!\pstaty.S000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pstaty.S001~q\,
	datab => \pstaty.S110~q\,
	datac => \pstaty.S111~q\,
	datad => \pstaty.S000~q\,
	combout => \WideOr2~0_combout\);

\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\pstaty.S111~q\) # ((\pstaty.S100~q\) # ((\pstaty.S101~q\) # (!\pstaty.S000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pstaty.S111~q\,
	datab => \pstaty.S100~q\,
	datac => \pstaty.S101~q\,
	datad => \pstaty.S000~q\,
	combout => \WideOr1~0_combout\);

\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\pstaty.S001~q\) # ((\pstaty.S100~q\) # ((\pstaty.S011~q\) # (!\pstaty.S000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pstaty.S001~q\,
	datab => \pstaty.S100~q\,
	datac => \pstaty.S011~q\,
	datad => \pstaty.S000~q\,
	combout => \WideOr0~0_combout\);

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;
END structure;


