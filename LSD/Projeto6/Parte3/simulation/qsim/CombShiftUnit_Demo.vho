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

-- DATE "05/02/2021 15:47:45"

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

ENTITY 	CombShiftUnit IS
    PORT (
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	dirLeft : IN std_logic;
	shAmount : IN std_logic_vector(2 DOWNTO 0);
	shArith : IN std_logic;
	rotate : IN std_logic;
	dataOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END CombShiftUnit;

ARCHITECTURE structure OF CombShiftUnit IS
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
SIGNAL ww_dirLeft : std_logic;
SIGNAL ww_shAmount : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_shArith : std_logic;
SIGNAL ww_rotate : std_logic;
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \shAmount[0]~input_o\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \shAmount[1]~input_o\ : std_logic;
SIGNAL \ShiftRight1~0_combout\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \RotateRight0~0_combout\ : std_logic;
SIGNAL \ShiftRight1~1_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \ShiftRight1~2_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \RotateRight0~1_combout\ : std_logic;
SIGNAL \ShiftRight1~3_combout\ : std_logic;
SIGNAL \shAmount[2]~input_o\ : std_logic;
SIGNAL \dirLeft~input_o\ : std_logic;
SIGNAL \s_shiftReg~0_combout\ : std_logic;
SIGNAL \rotate~input_o\ : std_logic;
SIGNAL \RotateLeft0~0_combout\ : std_logic;
SIGNAL \RotateLeft0~1_combout\ : std_logic;
SIGNAL \RotateLeft0~2_combout\ : std_logic;
SIGNAL \RotateLeft0~3_combout\ : std_logic;
SIGNAL \RotateLeft0~4_combout\ : std_logic;
SIGNAL \RotateLeft0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \s_shiftReg~1_combout\ : std_logic;
SIGNAL \s_shiftReg~2_combout\ : std_logic;
SIGNAL \s_shiftReg~3_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \shArith~input_o\ : std_logic;
SIGNAL \s_shiftReg~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \RotateLeft0~6_combout\ : std_logic;
SIGNAL \RotateLeft0~7_combout\ : std_logic;
SIGNAL \RotateLeft0~8_combout\ : std_logic;
SIGNAL \RotateLeft0~9_combout\ : std_logic;
SIGNAL \s_shiftReg~5_combout\ : std_logic;
SIGNAL \RotateRight0~2_combout\ : std_logic;
SIGNAL \RotateRight0~3_combout\ : std_logic;
SIGNAL \s_shiftReg~6_combout\ : std_logic;
SIGNAL \s_shiftReg~7_combout\ : std_logic;
SIGNAL \s_shiftReg~8_combout\ : std_logic;
SIGNAL \s_shiftReg~9_combout\ : std_logic;
SIGNAL \s_shiftReg~10_combout\ : std_logic;
SIGNAL \ShiftRight1~4_combout\ : std_logic;
SIGNAL \s_shiftReg~11_combout\ : std_logic;
SIGNAL \ShiftRight1~5_combout\ : std_logic;
SIGNAL \ShiftRight1~6_combout\ : std_logic;
SIGNAL \s_shiftReg~12_combout\ : std_logic;
SIGNAL \RotateLeft0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \RotateLeft0~11_combout\ : std_logic;
SIGNAL \RotateLeft0~12_combout\ : std_logic;
SIGNAL \RotateLeft0~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftRight1~7_combout\ : std_logic;
SIGNAL \RotateRight0~4_combout\ : std_logic;
SIGNAL \RotateRight0~5_combout\ : std_logic;
SIGNAL \s_shiftReg~13_combout\ : std_logic;
SIGNAL \s_shiftReg~14_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \s_shiftReg~15_combout\ : std_logic;
SIGNAL \RotateRight0~6_combout\ : std_logic;
SIGNAL \RotateRight0~7_combout\ : std_logic;
SIGNAL \s_shiftReg~16_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \RotateLeft0~14_combout\ : std_logic;
SIGNAL \RotateRight0~8_combout\ : std_logic;
SIGNAL \s_shiftReg~17_combout\ : std_logic;
SIGNAL \RotateRight0~9_combout\ : std_logic;
SIGNAL \RotateRight0~10_combout\ : std_logic;
SIGNAL \s_shiftReg~18_combout\ : std_logic;
SIGNAL \s_shiftReg~19_combout\ : std_logic;
SIGNAL \s_shiftReg~20_combout\ : std_logic;
SIGNAL \s_shiftReg~21_combout\ : std_logic;
SIGNAL \RotateRight0~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \s_shiftReg~22_combout\ : std_logic;
SIGNAL \s_shiftReg~23_combout\ : std_logic;
SIGNAL \RotateLeft0~15_combout\ : std_logic;
SIGNAL \s_shiftReg~24_combout\ : std_logic;
SIGNAL \s_shiftReg~25_combout\ : std_logic;
SIGNAL \s_shiftReg~26_combout\ : std_logic;
SIGNAL \s_shiftReg~27_combout\ : std_logic;
SIGNAL \s_shiftReg~28_combout\ : std_logic;
SIGNAL \s_shiftReg~29_combout\ : std_logic;
SIGNAL \s_shiftReg~30_combout\ : std_logic;
SIGNAL \s_shiftReg~31_combout\ : std_logic;
SIGNAL \s_shiftReg~32_combout\ : std_logic;
SIGNAL \s_shiftReg~33_combout\ : std_logic;
SIGNAL \s_shiftReg~34_combout\ : std_logic;
SIGNAL \s_shiftReg~35_combout\ : std_logic;
SIGNAL \s_shiftReg~36_combout\ : std_logic;
SIGNAL \s_shiftReg~37_combout\ : std_logic;
SIGNAL \s_shiftReg~38_combout\ : std_logic;
SIGNAL \s_shiftReg~39_combout\ : std_logic;
SIGNAL \s_shiftReg~40_combout\ : std_logic;
SIGNAL \s_shiftReg~41_combout\ : std_logic;
SIGNAL \s_shiftReg~42_combout\ : std_logic;
SIGNAL \s_shiftReg~43_combout\ : std_logic;
SIGNAL \s_shiftReg~44_combout\ : std_logic;
SIGNAL \s_shiftReg~45_combout\ : std_logic;
SIGNAL \s_shiftReg~46_combout\ : std_logic;

BEGIN

ww_dataIn <= dataIn;
ww_dirLeft <= dirLeft;
ww_shAmount <= shAmount;
ww_shArith <= shArith;
ww_rotate <= rotate;
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
	i => \s_shiftReg~3_combout\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_shiftReg~12_combout\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_shiftReg~16_combout\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_shiftReg~21_combout\,
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_shiftReg~24_combout\,
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_shiftReg~34_combout\,
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_shiftReg~39_combout\,
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_shiftReg~46_combout\,
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

\shAmount[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shAmount(0),
	o => \shAmount[0]~input_o\);

\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

\shAmount[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shAmount(1),
	o => \shAmount[1]~input_o\);

\ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~0_combout\ = (\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & (\dataIn[7]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[0]~input_o\,
	datab => \dataIn[7]~input_o\,
	datac => \dataIn[5]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftRight1~0_combout\);

\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

\RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~0_combout\ = (\shAmount[1]~input_o\ & (\dataIn[6]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[6]~input_o\,
	datab => \dataIn[4]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateRight0~0_combout\);

\ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~1_combout\ = (\ShiftRight1~0_combout\) # ((\RotateRight0~0_combout\ & !\shAmount[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~0_combout\,
	datab => \RotateRight0~0_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \ShiftRight1~1_combout\);

\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~2_combout\ = (\shAmount[1]~input_o\ & (\dataIn[3]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[3]~input_o\,
	datab => \dataIn[1]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftRight1~2_combout\);

\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

\RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~1_combout\ = (\shAmount[1]~input_o\ & (\dataIn[2]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => \dataIn[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateRight0~1_combout\);

\ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~3_combout\ = (\shAmount[0]~input_o\ & (\ShiftRight1~2_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~2_combout\,
	datab => \RotateRight0~1_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \ShiftRight1~3_combout\);

\shAmount[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shAmount(2),
	o => \shAmount[2]~input_o\);

\dirLeft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dirLeft,
	o => \dirLeft~input_o\);

\s_shiftReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~0_combout\ = (!\dirLeft~input_o\ & ((\shAmount[2]~input_o\ & (\ShiftRight1~1_combout\)) # (!\shAmount[2]~input_o\ & ((\ShiftRight1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~1_combout\,
	datab => \ShiftRight1~3_combout\,
	datac => \shAmount[2]~input_o\,
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg~0_combout\);

\rotate~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rotate,
	o => \rotate~input_o\);

\RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~0_combout\ = (\shAmount[1]~input_o\ & (\dataIn[1]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[1]~input_o\,
	datab => \dataIn[3]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~0_combout\);

\RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~1_combout\ = (\shAmount[1]~input_o\ & (\dataIn[2]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => \dataIn[4]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~1_combout\);

\RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~2_combout\ = (\shAmount[0]~input_o\ & (\RotateLeft0~0_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateLeft0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~0_combout\,
	datab => \RotateLeft0~1_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~2_combout\);

\RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~3_combout\ = (!\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & (\dataIn[6]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[6]~input_o\,
	datab => \dataIn[0]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~3_combout\);

\RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~4_combout\ = (\shAmount[1]~input_o\ & (\dataIn[5]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datab => \dataIn[7]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~4_combout\);

\RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~5_combout\ = (\RotateLeft0~3_combout\) # ((\shAmount[0]~input_o\ & \RotateLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~3_combout\,
	datab => \shAmount[0]~input_o\,
	datac => \RotateLeft0~4_combout\,
	combout => \RotateLeft0~5_combout\);

\ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (!\shAmount[0]~input_o\ & !\shAmount[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftRight0~0_combout\);

\s_shiftReg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~1_combout\ = (\rotate~input_o\ & (\RotateLeft0~5_combout\)) # (!\rotate~input_o\ & (((\dataIn[0]~input_o\ & \ShiftRight0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~5_combout\,
	datab => \dataIn[0]~input_o\,
	datac => \ShiftRight0~0_combout\,
	datad => \rotate~input_o\,
	combout => \s_shiftReg~1_combout\);

\s_shiftReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~2_combout\ = (\shAmount[2]~input_o\ & (\rotate~input_o\ & (\RotateLeft0~2_combout\))) # (!\shAmount[2]~input_o\ & (((\s_shiftReg~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \RotateLeft0~2_combout\,
	datac => \s_shiftReg~1_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \s_shiftReg~2_combout\);

\s_shiftReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~3_combout\ = (\s_shiftReg~0_combout\) # ((\dirLeft~input_o\ & \s_shiftReg~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftReg~0_combout\,
	datab => \dirLeft~input_o\,
	datac => \s_shiftReg~2_combout\,
	combout => \s_shiftReg~3_combout\);

\ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (!\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[6]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[6]~input_o\,
	datab => \dataIn[5]~input_o\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftRight0~1_combout\);

\ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = (\ShiftRight0~1_combout\) # ((\shAmount[1]~input_o\ & \dataIn[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~1_combout\,
	datab => \shAmount[1]~input_o\,
	datac => \dataIn[7]~input_o\,
	combout => \ShiftRight0~2_combout\);

\shArith~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shArith,
	o => \shArith~input_o\);

\s_shiftReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~4_combout\ = (!\dirLeft~input_o\ & (((\shArith~input_o\ & !\rotate~input_o\)) # (!\shAmount[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shArith~input_o\,
	datab => \rotate~input_o\,
	datac => \shAmount[2]~input_o\,
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg~4_combout\);

\ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (!\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[0]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \dataIn[1]~input_o\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftLeft0~0_combout\);

\RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~6_combout\ = (\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[6]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[1]~input_o\,
	datab => \dataIn[6]~input_o\,
	datac => \dataIn[7]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~6_combout\);

\RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~7_combout\ = (\ShiftLeft0~0_combout\) # (\RotateLeft0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datab => \RotateLeft0~6_combout\,
	combout => \RotateLeft0~7_combout\);

\RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~8_combout\ = (\shAmount[1]~input_o\ & (\dataIn[3]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[3]~input_o\,
	datab => \dataIn[5]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~8_combout\);

\RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~9_combout\ = (\shAmount[0]~input_o\ & (\RotateLeft0~1_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~1_combout\,
	datab => \RotateLeft0~8_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~9_combout\);

\s_shiftReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~5_combout\ = (\dirLeft~input_o\ & \rotate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \rotate~input_o\,
	combout => \s_shiftReg~5_combout\);

\RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~2_combout\ = (\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[0]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[1]~input_o\,
	datab => \dataIn[0]~input_o\,
	datac => \dataIn[7]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateRight0~2_combout\);

\RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~3_combout\ = (\ShiftRight0~1_combout\) # (\RotateRight0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~1_combout\,
	datab => \RotateRight0~2_combout\,
	combout => \RotateRight0~3_combout\);

\s_shiftReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~6_combout\ = (\rotate~input_o\ & ((!\dirLeft~input_o\))) # (!\rotate~input_o\ & (!\shAmount[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rotate~input_o\,
	datac => \shAmount[2]~input_o\,
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg~6_combout\);

\s_shiftReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~7_combout\ = (\rotate~input_o\ & ((\shAmount[2]~input_o\) # (!\dirLeft~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \shAmount[2]~input_o\,
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg~7_combout\);

\s_shiftReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~8_combout\ = (\s_shiftReg~6_combout\ & ((\s_shiftReg~7_combout\ & ((\RotateRight0~3_combout\))) # (!\s_shiftReg~7_combout\ & (\ShiftLeft0~0_combout\)))) # (!\s_shiftReg~6_combout\ & (((\s_shiftReg~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datab => \RotateRight0~3_combout\,
	datac => \s_shiftReg~6_combout\,
	datad => \s_shiftReg~7_combout\,
	combout => \s_shiftReg~8_combout\);

\s_shiftReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~9_combout\ = (\s_shiftReg~5_combout\ & ((\s_shiftReg~8_combout\ & ((\RotateLeft0~9_combout\))) # (!\s_shiftReg~8_combout\ & (\RotateLeft0~7_combout\)))) # (!\s_shiftReg~5_combout\ & (((\s_shiftReg~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~7_combout\,
	datab => \RotateLeft0~9_combout\,
	datac => \s_shiftReg~5_combout\,
	datad => \s_shiftReg~8_combout\,
	combout => \s_shiftReg~9_combout\);

\s_shiftReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~10_combout\ = (\dirLeft~input_o\) # ((\rotate~input_o\) # (!\shAmount[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \rotate~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \s_shiftReg~10_combout\);

\ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~4_combout\ = (\ShiftRight0~1_combout\) # ((\shAmount[1]~input_o\ & (\dataIn[7]~input_o\ & !\shAmount[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~1_combout\,
	datab => \shAmount[1]~input_o\,
	datac => \dataIn[7]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \ShiftRight1~4_combout\);

\s_shiftReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~11_combout\ = (\s_shiftReg~4_combout\ & (((\s_shiftReg~10_combout\)))) # (!\s_shiftReg~4_combout\ & ((\s_shiftReg~10_combout\ & (\s_shiftReg~9_combout\)) # (!\s_shiftReg~10_combout\ & ((\ShiftRight1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftReg~4_combout\,
	datab => \s_shiftReg~9_combout\,
	datac => \s_shiftReg~10_combout\,
	datad => \ShiftRight1~4_combout\,
	combout => \s_shiftReg~11_combout\);

\ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~5_combout\ = (\shAmount[1]~input_o\ & (\dataIn[4]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[4]~input_o\,
	datab => \dataIn[2]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftRight1~5_combout\);

\ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~6_combout\ = (\shAmount[0]~input_o\ & (\ShiftRight1~5_combout\)) # (!\shAmount[0]~input_o\ & ((\ShiftRight1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~5_combout\,
	datab => \ShiftRight1~2_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \ShiftRight1~6_combout\);

\s_shiftReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~12_combout\ = (\s_shiftReg~4_combout\ & ((\s_shiftReg~11_combout\ & ((\ShiftRight1~6_combout\))) # (!\s_shiftReg~11_combout\ & (\ShiftRight0~2_combout\)))) # (!\s_shiftReg~4_combout\ & (((\s_shiftReg~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datab => \s_shiftReg~4_combout\,
	datac => \s_shiftReg~11_combout\,
	datad => \ShiftRight1~6_combout\,
	combout => \s_shiftReg~12_combout\);

\RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~10_combout\ = (\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & (\dataIn[7]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[0]~input_o\,
	datab => \dataIn[7]~input_o\,
	datac => \dataIn[1]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~10_combout\);

\ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (\shAmount[1]~input_o\ & (\dataIn[0]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \dataIn[2]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftLeft0~1_combout\);

\RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~11_combout\ = (\RotateLeft0~10_combout\) # ((\ShiftLeft0~1_combout\ & !\shAmount[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~10_combout\,
	datab => \ShiftLeft0~1_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~11_combout\);

\RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~12_combout\ = (\shAmount[1]~input_o\ & (\dataIn[4]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[4]~input_o\,
	datab => \dataIn[6]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~12_combout\);

\RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~13_combout\ = (\shAmount[0]~input_o\ & (\RotateLeft0~8_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateLeft0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~8_combout\,
	datab => \RotateLeft0~12_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~13_combout\);

\ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\shAmount[0]~input_o\ & (((\dataIn[1]~input_o\ & !\shAmount[1]~input_o\)))) # (!\shAmount[0]~input_o\ & (\ShiftLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~1_combout\,
	datab => \dataIn[1]~input_o\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftLeft0~2_combout\);

\ShiftRight1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~7_combout\ = (!\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[7]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[7]~input_o\,
	datab => \dataIn[6]~input_o\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftRight1~7_combout\);

\RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~4_combout\ = (\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[1]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[1]~input_o\,
	datab => \dataIn[1]~input_o\,
	datac => \dataIn[0]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateRight0~4_combout\);

\RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~5_combout\ = (\ShiftRight1~7_combout\) # (\RotateRight0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~7_combout\,
	datab => \RotateRight0~4_combout\,
	combout => \RotateRight0~5_combout\);

\s_shiftReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~13_combout\ = (\s_shiftReg~6_combout\ & ((\s_shiftReg~7_combout\ & ((\RotateRight0~5_combout\))) # (!\s_shiftReg~7_combout\ & (\ShiftLeft0~2_combout\)))) # (!\s_shiftReg~6_combout\ & (((\s_shiftReg~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~2_combout\,
	datab => \RotateRight0~5_combout\,
	datac => \s_shiftReg~6_combout\,
	datad => \s_shiftReg~7_combout\,
	combout => \s_shiftReg~13_combout\);

\s_shiftReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~14_combout\ = (\s_shiftReg~5_combout\ & ((\s_shiftReg~13_combout\ & ((\RotateLeft0~13_combout\))) # (!\s_shiftReg~13_combout\ & (\RotateLeft0~11_combout\)))) # (!\s_shiftReg~5_combout\ & (((\s_shiftReg~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~11_combout\,
	datab => \RotateLeft0~13_combout\,
	datac => \s_shiftReg~5_combout\,
	datad => \s_shiftReg~13_combout\,
	combout => \s_shiftReg~14_combout\);

\ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = (\shAmount[0]~input_o\ & (\dataIn[7]~input_o\)) # (!\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & (\dataIn[7]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[7]~input_o\,
	datab => \dataIn[6]~input_o\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftRight0~3_combout\);

\s_shiftReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~15_combout\ = (\s_shiftReg~10_combout\ & (((\s_shiftReg~4_combout\)))) # (!\s_shiftReg~10_combout\ & ((\s_shiftReg~4_combout\ & (\ShiftRight0~3_combout\)) # (!\s_shiftReg~4_combout\ & ((\ShiftRight1~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftReg~10_combout\,
	datab => \ShiftRight0~3_combout\,
	datac => \s_shiftReg~4_combout\,
	datad => \ShiftRight1~7_combout\,
	combout => \s_shiftReg~15_combout\);

\RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~6_combout\ = (\shAmount[1]~input_o\ & (\dataIn[5]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datab => \dataIn[3]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateRight0~6_combout\);

\RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~7_combout\ = (\shAmount[0]~input_o\ & (\RotateRight0~6_combout\)) # (!\shAmount[0]~input_o\ & ((\ShiftRight1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~6_combout\,
	datab => \ShiftRight1~5_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateRight0~7_combout\);

\s_shiftReg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~16_combout\ = (\s_shiftReg~10_combout\ & ((\s_shiftReg~15_combout\ & ((\RotateRight0~7_combout\))) # (!\s_shiftReg~15_combout\ & (\s_shiftReg~14_combout\)))) # (!\s_shiftReg~10_combout\ & (((\s_shiftReg~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftReg~14_combout\,
	datab => \s_shiftReg~10_combout\,
	datac => \s_shiftReg~15_combout\,
	datad => \RotateRight0~7_combout\,
	combout => \s_shiftReg~16_combout\);

\ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (!\shAmount[2]~input_o\ & ((\shAmount[0]~input_o\ & (\ShiftLeft0~1_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateLeft0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~1_combout\,
	datab => \RotateLeft0~0_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \ShiftLeft0~3_combout\);

\RotateLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~14_combout\ = (\shAmount[0]~input_o\ & (\RotateLeft0~12_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~12_combout\,
	datab => \RotateLeft0~4_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~14_combout\);

\RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~8_combout\ = (!\shAmount[2]~input_o\ & ((\shAmount[0]~input_o\ & (\RotateRight0~0_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~0_combout\,
	datab => \RotateRight0~6_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \RotateRight0~8_combout\);

\s_shiftReg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~17_combout\ = (\shAmount[2]~input_o\ & ((\dataIn[7]~input_o\) # (\rotate~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[2]~input_o\,
	datab => \dataIn[7]~input_o\,
	datac => \rotate~input_o\,
	combout => \s_shiftReg~17_combout\);

\RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~9_combout\ = (!\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & (\dataIn[1]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[1]~input_o\,
	datab => \dataIn[7]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateRight0~9_combout\);

\RotateRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~10_combout\ = (\RotateRight0~9_combout\) # ((\shAmount[0]~input_o\ & \RotateRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~9_combout\,
	datab => \shAmount[0]~input_o\,
	datac => \RotateRight0~1_combout\,
	combout => \RotateRight0~10_combout\);

\s_shiftReg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~18_combout\ = (\shArith~input_o\) # ((!\shAmount[0]~input_o\ & !\shAmount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shArith~input_o\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \s_shiftReg~18_combout\);

\s_shiftReg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~19_combout\ = (\dirLeft~input_o\ & (((\rotate~input_o\)))) # (!\dirLeft~input_o\ & ((\rotate~input_o\ & (\RotateRight0~10_combout\)) # (!\rotate~input_o\ & ((\s_shiftReg~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~10_combout\,
	datab => \s_shiftReg~18_combout\,
	datac => \dirLeft~input_o\,
	datad => \rotate~input_o\,
	combout => \s_shiftReg~19_combout\);

\s_shiftReg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~20_combout\ = (\RotateRight0~8_combout\ & (((\s_shiftReg~17_combout\ & \s_shiftReg~19_combout\)) # (!\dirLeft~input_o\))) # (!\RotateRight0~8_combout\ & (\s_shiftReg~17_combout\ & ((\s_shiftReg~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~8_combout\,
	datab => \s_shiftReg~17_combout\,
	datac => \dirLeft~input_o\,
	datad => \s_shiftReg~19_combout\,
	combout => \s_shiftReg~20_combout\);

\s_shiftReg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~21_combout\ = (\dirLeft~input_o\ & ((\ShiftLeft0~3_combout\) # ((\RotateLeft0~14_combout\ & \s_shiftReg~20_combout\)))) # (!\dirLeft~input_o\ & (((\s_shiftReg~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~3_combout\,
	datab => \RotateLeft0~14_combout\,
	datac => \dirLeft~input_o\,
	datad => \s_shiftReg~20_combout\,
	combout => \s_shiftReg~21_combout\);

\RotateRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~11_combout\ = (\shAmount[2]~input_o\ & (\ShiftRight1~3_combout\)) # (!\shAmount[2]~input_o\ & ((\ShiftRight1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~3_combout\,
	datab => \ShiftRight1~1_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \RotateRight0~11_combout\);

\ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (!\shAmount[2]~input_o\ & ((\shAmount[0]~input_o\ & (\RotateLeft0~0_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateLeft0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~0_combout\,
	datab => \RotateLeft0~1_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \ShiftLeft0~4_combout\);

\ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\ShiftLeft0~4_combout\) # ((\shAmount[2]~input_o\ & (\dataIn[0]~input_o\ & \ShiftRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \shAmount[2]~input_o\,
	datac => \dataIn[0]~input_o\,
	datad => \ShiftRight0~0_combout\,
	combout => \ShiftLeft0~5_combout\);

\s_shiftReg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~22_combout\ = (\shAmount[2]~input_o\ & (\dataIn[7]~input_o\ & (\shArith~input_o\))) # (!\shAmount[2]~input_o\ & (((\ShiftRight1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[7]~input_o\,
	datab => \shArith~input_o\,
	datac => \ShiftRight1~1_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \s_shiftReg~22_combout\);

\s_shiftReg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~23_combout\ = (\rotate~input_o\ & (((\dirLeft~input_o\)))) # (!\rotate~input_o\ & ((\dirLeft~input_o\ & (\ShiftLeft0~5_combout\)) # (!\dirLeft~input_o\ & ((\s_shiftReg~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \ShiftLeft0~5_combout\,
	datac => \dirLeft~input_o\,
	datad => \s_shiftReg~22_combout\,
	combout => \s_shiftReg~23_combout\);

\RotateLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~15_combout\ = (\ShiftLeft0~4_combout\) # ((\shAmount[2]~input_o\ & \RotateLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \shAmount[2]~input_o\,
	datac => \RotateLeft0~5_combout\,
	combout => \RotateLeft0~15_combout\);

\s_shiftReg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~24_combout\ = (\rotate~input_o\ & ((\s_shiftReg~23_combout\ & ((\RotateLeft0~15_combout\))) # (!\s_shiftReg~23_combout\ & (\RotateRight0~11_combout\)))) # (!\rotate~input_o\ & (((\s_shiftReg~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~11_combout\,
	datab => \rotate~input_o\,
	datac => \s_shiftReg~23_combout\,
	datad => \RotateLeft0~15_combout\,
	combout => \s_shiftReg~24_combout\);

\s_shiftReg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~25_combout\ = (\rotate~input_o\ & ((\dirLeft~input_o\) # (\shAmount[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \dirLeft~input_o\,
	datac => \shAmount[2]~input_o\,
	combout => \s_shiftReg~25_combout\);

\s_shiftReg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~26_combout\ = (\shArith~input_o\ & !\dirLeft~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shArith~input_o\,
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg~26_combout\);

\s_shiftReg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~27_combout\ = (\dirLeft~input_o\) # ((!\shAmount[2]~input_o\ & !\shArith~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datac => \shAmount[2]~input_o\,
	datad => \shArith~input_o\,
	combout => \s_shiftReg~27_combout\);

\s_shiftReg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~28_combout\ = (\dirLeft~input_o\) # ((\shAmount[2]~input_o\ & \shArith~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \shAmount[2]~input_o\,
	datac => \shArith~input_o\,
	combout => \s_shiftReg~28_combout\);

\s_shiftReg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~29_combout\ = (\s_shiftReg~27_combout\ & ((\s_shiftReg~28_combout\ & ((\ShiftLeft0~0_combout\))) # (!\s_shiftReg~28_combout\ & (\ShiftRight1~4_combout\)))) # (!\s_shiftReg~27_combout\ & (((\s_shiftReg~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~4_combout\,
	datab => \ShiftLeft0~0_combout\,
	datac => \s_shiftReg~27_combout\,
	datad => \s_shiftReg~28_combout\,
	combout => \s_shiftReg~29_combout\);

\s_shiftReg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~30_combout\ = (\s_shiftReg~26_combout\ & ((\s_shiftReg~29_combout\ & ((\dataIn[7]~input_o\))) # (!\s_shiftReg~29_combout\ & (\ShiftRight0~2_combout\)))) # (!\s_shiftReg~26_combout\ & (((\s_shiftReg~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datab => \dataIn[7]~input_o\,
	datac => \s_shiftReg~26_combout\,
	datad => \s_shiftReg~29_combout\,
	combout => \s_shiftReg~30_combout\);

\s_shiftReg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~31_combout\ = (\dirLeft~input_o\) # (!\rotate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datad => \rotate~input_o\,
	combout => \s_shiftReg~31_combout\);

\s_shiftReg~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~32_combout\ = (\s_shiftReg~25_combout\ & (((\s_shiftReg~31_combout\)))) # (!\s_shiftReg~25_combout\ & ((\s_shiftReg~31_combout\ & (\s_shiftReg~30_combout\)) # (!\s_shiftReg~31_combout\ & ((\RotateRight0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftReg~25_combout\,
	datab => \s_shiftReg~30_combout\,
	datac => \s_shiftReg~31_combout\,
	datad => \RotateRight0~3_combout\,
	combout => \s_shiftReg~32_combout\);

\s_shiftReg~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~33_combout\ = (\s_shiftReg~25_combout\ & ((\s_shiftReg~32_combout\ & ((\RotateLeft0~7_combout\))) # (!\s_shiftReg~32_combout\ & (\ShiftRight1~6_combout\)))) # (!\s_shiftReg~25_combout\ & (((\s_shiftReg~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~6_combout\,
	datab => \s_shiftReg~25_combout\,
	datac => \s_shiftReg~32_combout\,
	datad => \RotateLeft0~7_combout\,
	combout => \s_shiftReg~33_combout\);

\s_shiftReg~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~34_combout\ = (\dirLeft~input_o\ & ((\shAmount[2]~input_o\ & (\s_shiftReg~33_combout\)) # (!\shAmount[2]~input_o\ & ((\RotateLeft0~9_combout\))))) # (!\dirLeft~input_o\ & (\s_shiftReg~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftReg~33_combout\,
	datab => \RotateLeft0~9_combout\,
	datac => \dirLeft~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \s_shiftReg~34_combout\);

\s_shiftReg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~35_combout\ = (\s_shiftReg~27_combout\ & ((\s_shiftReg~28_combout\ & ((\ShiftLeft0~2_combout\))) # (!\s_shiftReg~28_combout\ & (\ShiftRight1~7_combout\)))) # (!\s_shiftReg~27_combout\ & (((\s_shiftReg~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~7_combout\,
	datab => \ShiftLeft0~2_combout\,
	datac => \s_shiftReg~27_combout\,
	datad => \s_shiftReg~28_combout\,
	combout => \s_shiftReg~35_combout\);

\s_shiftReg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~36_combout\ = (\s_shiftReg~26_combout\ & ((\s_shiftReg~35_combout\ & ((\dataIn[7]~input_o\))) # (!\s_shiftReg~35_combout\ & (\ShiftRight0~3_combout\)))) # (!\s_shiftReg~26_combout\ & (((\s_shiftReg~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~3_combout\,
	datab => \dataIn[7]~input_o\,
	datac => \s_shiftReg~26_combout\,
	datad => \s_shiftReg~35_combout\,
	combout => \s_shiftReg~36_combout\);

\s_shiftReg~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~37_combout\ = (\s_shiftReg~31_combout\ & (((\s_shiftReg~25_combout\)))) # (!\s_shiftReg~31_combout\ & ((\s_shiftReg~25_combout\ & (\RotateRight0~7_combout\)) # (!\s_shiftReg~25_combout\ & ((\RotateRight0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftReg~31_combout\,
	datab => \RotateRight0~7_combout\,
	datac => \s_shiftReg~25_combout\,
	datad => \RotateRight0~5_combout\,
	combout => \s_shiftReg~37_combout\);

\s_shiftReg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~38_combout\ = (\s_shiftReg~31_combout\ & ((\s_shiftReg~37_combout\ & ((\RotateLeft0~11_combout\))) # (!\s_shiftReg~37_combout\ & (\s_shiftReg~36_combout\)))) # (!\s_shiftReg~31_combout\ & (((\s_shiftReg~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftReg~36_combout\,
	datab => \s_shiftReg~31_combout\,
	datac => \s_shiftReg~37_combout\,
	datad => \RotateLeft0~11_combout\,
	combout => \s_shiftReg~38_combout\);

\s_shiftReg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~39_combout\ = (\dirLeft~input_o\ & ((\shAmount[2]~input_o\ & (\s_shiftReg~38_combout\)) # (!\shAmount[2]~input_o\ & ((\RotateLeft0~13_combout\))))) # (!\dirLeft~input_o\ & (\s_shiftReg~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftReg~38_combout\,
	datab => \RotateLeft0~13_combout\,
	datac => \dirLeft~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \s_shiftReg~39_combout\);

\s_shiftReg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~40_combout\ = (\shAmount[2]~input_o\ & ((\shAmount[0]~input_o\ & (\ShiftLeft0~1_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateLeft0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[2]~input_o\,
	datab => \ShiftLeft0~1_combout\,
	datac => \RotateLeft0~0_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \s_shiftReg~40_combout\);

\s_shiftReg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~41_combout\ = (\dirLeft~input_o\ & ((\s_shiftReg~40_combout\) # ((\RotateLeft0~14_combout\ & !\shAmount[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \s_shiftReg~40_combout\,
	datac => \RotateLeft0~14_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \s_shiftReg~41_combout\);

\s_shiftReg~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~42_combout\ = (\shAmount[2]~input_o\ & ((\shAmount[0]~input_o\ & (\RotateRight0~0_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[2]~input_o\,
	datab => \RotateRight0~0_combout\,
	datac => \RotateRight0~6_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \s_shiftReg~42_combout\);

\s_shiftReg~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~43_combout\ = (\rotate~input_o\ & ((\s_shiftReg~42_combout\) # ((\RotateRight0~10_combout\ & !\shAmount[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \s_shiftReg~42_combout\,
	datac => \RotateRight0~10_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \s_shiftReg~43_combout\);

\s_shiftReg~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~44_combout\ = (\dataIn[7]~input_o\ & !\rotate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[7]~input_o\,
	datad => \rotate~input_o\,
	combout => \s_shiftReg~44_combout\);

\s_shiftReg~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~45_combout\ = (\s_shiftReg~44_combout\ & ((\shArith~input_o\) # ((\ShiftRight0~0_combout\ & !\shAmount[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftReg~44_combout\,
	datab => \shArith~input_o\,
	datac => \ShiftRight0~0_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \s_shiftReg~45_combout\);

\s_shiftReg~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~46_combout\ = (\s_shiftReg~41_combout\) # ((!\dirLeft~input_o\ & ((\s_shiftReg~43_combout\) # (\s_shiftReg~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_shiftReg~41_combout\,
	datab => \s_shiftReg~43_combout\,
	datac => \s_shiftReg~45_combout\,
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg~46_combout\);

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;
END structure;


