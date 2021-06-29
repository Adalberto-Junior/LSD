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

-- DATE "04/12/2021 18:32:23"

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

ENTITY 	PEnc4_2 IS
    PORT (
	decodeIn : IN std_logic_vector(3 DOWNTO 0);
	validOut : OUT std_logic;
	encodedOut : OUT std_logic_vector(1 DOWNTO 0)
	);
END PEnc4_2;

ARCHITECTURE structure OF PEnc4_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_decodeIn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_validOut : std_logic;
SIGNAL ww_encodedOut : std_logic_vector(1 DOWNTO 0);
SIGNAL \validOut~output_o\ : std_logic;
SIGNAL \encodedOut[0]~output_o\ : std_logic;
SIGNAL \encodedOut[1]~output_o\ : std_logic;
SIGNAL \decodeIn[0]~input_o\ : std_logic;
SIGNAL \decodeIn[1]~input_o\ : std_logic;
SIGNAL \decodeIn[2]~input_o\ : std_logic;
SIGNAL \decodeIn[3]~input_o\ : std_logic;
SIGNAL \validOut~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \encodedOut[0]$latch~combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \encodedOut[1]$latch~combout\ : std_logic;

BEGIN

ww_decodeIn <= decodeIn;
validOut <= ww_validOut;
encodedOut <= ww_encodedOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\validOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \validOut~0_combout\,
	devoe => ww_devoe,
	o => \validOut~output_o\);

\encodedOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedOut[0]$latch~combout\,
	devoe => ww_devoe,
	o => \encodedOut[0]~output_o\);

\encodedOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedOut[1]$latch~combout\,
	devoe => ww_devoe,
	o => \encodedOut[1]~output_o\);

\decodeIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodeIn(0),
	o => \decodeIn[0]~input_o\);

\decodeIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodeIn(1),
	o => \decodeIn[1]~input_o\);

\decodeIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodeIn(2),
	o => \decodeIn[2]~input_o\);

\decodeIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodeIn(3),
	o => \decodeIn[3]~input_o\);

\validOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \validOut~0_combout\ = (\decodeIn[0]~input_o\ & (!\decodeIn[1]~input_o\ & (!\decodeIn[2]~input_o\ & !\decodeIn[3]~input_o\))) # (!\decodeIn[0]~input_o\ & ((\decodeIn[1]~input_o\ & (!\decodeIn[2]~input_o\ & !\decodeIn[3]~input_o\)) # 
-- (!\decodeIn[1]~input_o\ & (\decodeIn[2]~input_o\ $ (\decodeIn[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodeIn[0]~input_o\,
	datab => \decodeIn[1]~input_o\,
	datac => \decodeIn[2]~input_o\,
	datad => \decodeIn[3]~input_o\,
	combout => \validOut~0_combout\);

\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\decodeIn[0]~input_o\ & (!\decodeIn[2]~input_o\ & (\decodeIn[1]~input_o\ $ (\decodeIn[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodeIn[1]~input_o\,
	datab => \decodeIn[3]~input_o\,
	datac => \decodeIn[0]~input_o\,
	datad => \decodeIn[2]~input_o\,
	combout => \comb~1_combout\);

\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\decodeIn[1]~input_o\ & (!\decodeIn[3]~input_o\ & (\decodeIn[0]~input_o\ $ (\decodeIn[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodeIn[0]~input_o\,
	datab => \decodeIn[2]~input_o\,
	datac => \decodeIn[1]~input_o\,
	datad => \decodeIn[3]~input_o\,
	combout => \comb~0_combout\);

\encodedOut[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut[0]$latch~combout\ = (!\comb~0_combout\ & ((\encodedOut[0]$latch~combout\) # (\comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encodedOut[0]$latch~combout\,
	datac => \comb~1_combout\,
	datad => \comb~0_combout\,
	combout => \encodedOut[0]$latch~combout\);

\comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\decodeIn[0]~input_o\ & (!\decodeIn[1]~input_o\ & (\decodeIn[2]~input_o\ $ (\decodeIn[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodeIn[2]~input_o\,
	datab => \decodeIn[3]~input_o\,
	datac => \decodeIn[0]~input_o\,
	datad => \decodeIn[1]~input_o\,
	combout => \comb~3_combout\);

\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\decodeIn[2]~input_o\ & (!\decodeIn[3]~input_o\ & (\decodeIn[0]~input_o\ $ (\decodeIn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodeIn[0]~input_o\,
	datab => \decodeIn[1]~input_o\,
	datac => \decodeIn[2]~input_o\,
	datad => \decodeIn[3]~input_o\,
	combout => \comb~2_combout\);

\encodedOut[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut[1]$latch~combout\ = (!\comb~2_combout\ & ((\encodedOut[1]$latch~combout\) # (\comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encodedOut[1]$latch~combout\,
	datac => \comb~3_combout\,
	datad => \comb~2_combout\,
	combout => \encodedOut[1]$latch~combout\);

ww_validOut <= \validOut~output_o\;

ww_encodedOut(0) <= \encodedOut[0]~output_o\;

ww_encodedOut(1) <= \encodedOut[1]~output_o\;
END structure;


