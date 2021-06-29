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

-- DATE "03/30/2021 13:40:02"

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

ENTITY 	ALUDemo1 IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	Enable : IN std_logic;
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END ALUDemo1;

ARCHITECTURE structure OF ALUDemo1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Enable : std_logic;
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst|s_r[1]~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|s_r[1]~1_combout\ : std_logic;
SIGNAL \inst|s_r[3]~2_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|Add0~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|Add0~5_cout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \inst|s_r[1]~3_combout\ : std_logic;
SIGNAL \inst|s_r[3]~4_combout\ : std_logic;
SIGNAL \inst|s_r[1]~5_combout\ : std_logic;
SIGNAL \inst|s_r[3]~6_combout\ : std_logic;
SIGNAL \inst|s_r[3]~7_combout\ : std_logic;
SIGNAL \inst|s_r[3]~8_combout\ : std_logic;
SIGNAL \inst|s_r[3]~9_combout\ : std_logic;
SIGNAL \inst|s_r[3]~10_combout\ : std_logic;
SIGNAL \inst|s_r[2]~11_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|s_r[2]~12_combout\ : std_logic;
SIGNAL \inst|s_r[2]~13_combout\ : std_logic;
SIGNAL \inst|s_r[2]~14_combout\ : std_logic;
SIGNAL \inst|s_r[2]~15_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|s_r[2]~16_combout\ : std_logic;
SIGNAL \inst|s_r[2]~17_combout\ : std_logic;
SIGNAL \inst|s_r[1]~18_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|s_r[1]~19_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|s_r[1]~20_combout\ : std_logic;
SIGNAL \inst|s_r[1]~21_combout\ : std_logic;
SIGNAL \inst|s_r[1]~22_combout\ : std_logic;
SIGNAL \inst|s_r[1]~23_combout\ : std_logic;
SIGNAL \inst|s_r[1]~24_combout\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \inst3|decOut_n[5]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ : std_logic;
SIGNAL \inst|s_r[0]~25_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \inst|s_r[0]~26_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|s_r[0]~27_combout\ : std_logic;
SIGNAL \inst|s_r[0]~28_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|s_r[0]~29_combout\ : std_logic;
SIGNAL \inst|s_r[0]~30_combout\ : std_logic;
SIGNAL \inst4|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst4|decOut_n[6]~1_combout\ : std_logic;
SIGNAL \inst4|decOut_n[3]~2_combout\ : std_logic;
SIGNAL \inst4|decOut_n[6]~3_combout\ : std_logic;
SIGNAL \inst4|decOut_n[6]~4_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|decOut_n[6]~5_combout\ : std_logic;
SIGNAL \inst4|decOut_n~6_combout\ : std_logic;
SIGNAL \inst4|decOut_n~7_combout\ : std_logic;
SIGNAL \inst4|decOut_n~8_combout\ : std_logic;
SIGNAL \inst4|decOut_n~9_combout\ : std_logic;
SIGNAL \inst4|decOut_n[3]~10_combout\ : std_logic;
SIGNAL \inst4|decOut_n[3]~11_combout\ : std_logic;
SIGNAL \inst4|decOut_n~12_combout\ : std_logic;
SIGNAL \inst4|decOut_n~13_combout\ : std_logic;
SIGNAL \inst4|decOut_n~14_combout\ : std_logic;
SIGNAL \inst4|decOut_n~15_combout\ : std_logic;
SIGNAL \inst4|decOut_n~16_combout\ : std_logic;
SIGNAL \inst4|decOut_n~17_combout\ : std_logic;
SIGNAL \inst4|decOut_n~18_combout\ : std_logic;
SIGNAL \inst4|decOut_n~19_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \inst5|decOut_n[5]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \inst|Equal7~1_combout\ : std_logic;
SIGNAL \inst5|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ : std_logic;
SIGNAL \inst6|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst6|decOut_n[3]~1_combout\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|decOut_n[6]~2_combout\ : std_logic;
SIGNAL \inst6|decOut_n~3_combout\ : std_logic;
SIGNAL \inst6|decOut_n~4_combout\ : std_logic;
SIGNAL \inst6|decOut_n~5_combout\ : std_logic;
SIGNAL \inst6|decOut_n~6_combout\ : std_logic;
SIGNAL \inst6|decOut_n[3]~7_combout\ : std_logic;
SIGNAL \inst6|decOut_n[3]~8_combout\ : std_logic;
SIGNAL \inst6|decOut_n~9_combout\ : std_logic;
SIGNAL \inst6|decOut_n~10_combout\ : std_logic;
SIGNAL \inst6|decOut_n~11_combout\ : std_logic;
SIGNAL \inst6|decOut_n~12_combout\ : std_logic;
SIGNAL \inst6|decOut_n~13_combout\ : std_logic;
SIGNAL \inst6|decOut_n~14_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Enable~input_o\ : std_logic;

BEGIN

HEX0 <= ww_HEX0;
ww_Enable <= Enable;
ww_SW <= SW;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Enable~input_o\ <= NOT \Enable~input_o\;

\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Enable~input_o\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Enable~input_o\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n[6]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n[3]~11_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~15_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~17_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~19_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Enable~input_o\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Enable~input_o\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_n[6]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_n[3]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_n~10_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_n~12_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_n~14_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\inst|s_r[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~0_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\) # (!\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_r[1]~0_combout\);

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

\inst|s_r[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~1_combout\ = (\SW[9]~input_o\ & ((!\SW[8]~input_o\) # (!\SW[10]~input_o\))) # (!\SW[9]~input_o\ & (\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_r[1]~1_combout\);

\inst|s_r[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~2_combout\ = (\SW[7]~input_o\ & (\SW[3]~input_o\ $ (!\inst|s_r[1]~1_combout\))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ & !\inst|s_r[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_r[1]~1_combout\,
	combout => \inst|s_r[3]~2_combout\);

\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \SW[3]~input_o\ $ (((!\SW[8]~input_o\ & (!\SW[9]~input_o\ & !\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Add0~0_combout\);

\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = \SW[2]~input_o\ $ (((!\SW[8]~input_o\ & (!\SW[9]~input_o\ & !\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Add0~1_combout\);

\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = \SW[1]~input_o\ $ (((!\SW[8]~input_o\ & (!\SW[9]~input_o\ & !\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Add0~2_combout\);

\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\inst|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~3_combout\ = \SW[0]~input_o\ $ (((!\SW[8]~input_o\ & (!\SW[9]~input_o\ & !\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Add0~3_combout\);

\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (!\SW[8]~input_o\ & (!\SW[9]~input_o\ & !\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Equal7~0_combout\);

\inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~5_cout\ = CARRY(!\inst|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~0_combout\,
	datad => VCC,
	cout => \inst|Add0~5_cout\);

\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|Add0~3_combout\ & ((\SW[4]~input_o\ & (!\inst|Add0~5_cout\)) # (!\SW[4]~input_o\ & ((\inst|Add0~5_cout\) # (GND))))) # (!\inst|Add0~3_combout\ & ((\SW[4]~input_o\ & (\inst|Add0~5_cout\ & VCC)) # (!\SW[4]~input_o\ & 
-- (!\inst|Add0~5_cout\))))
-- \inst|Add0~7\ = CARRY((\inst|Add0~3_combout\ & ((!\inst|Add0~5_cout\) # (!\SW[4]~input_o\))) # (!\inst|Add0~3_combout\ & (!\SW[4]~input_o\ & !\inst|Add0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~3_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \inst|Add0~5_cout\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = ((\inst|Add0~2_combout\ $ (\SW[5]~input_o\ $ (\inst|Add0~7\)))) # (GND)
-- \inst|Add0~9\ = CARRY((\inst|Add0~2_combout\ & (\SW[5]~input_o\ & !\inst|Add0~7\)) # (!\inst|Add0~2_combout\ & ((\SW[5]~input_o\) # (!\inst|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|Add0~1_combout\ & ((\SW[6]~input_o\ & (!\inst|Add0~9\)) # (!\SW[6]~input_o\ & ((\inst|Add0~9\) # (GND))))) # (!\inst|Add0~1_combout\ & ((\SW[6]~input_o\ & (\inst|Add0~9\ & VCC)) # (!\SW[6]~input_o\ & (!\inst|Add0~9\))))
-- \inst|Add0~11\ = CARRY((\inst|Add0~1_combout\ & ((!\inst|Add0~9\) # (!\SW[6]~input_o\))) # (!\inst|Add0~1_combout\ & (!\SW[6]~input_o\ & !\inst|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~1_combout\,
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = \inst|Add0~0_combout\ $ (\SW[7]~input_o\ $ (\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \SW[7]~input_o\,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\ & !\SW[6]~input_o\)) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\);

\inst|Mod0|auto_generated|divider|divider|selnose[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\SW[3]~input_o\) # ((\SW[2]~input_o\) # ((\SW[1]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ = (\SW[6]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\);

\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[5]~input_o\) # (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\SW[1]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\SW[2]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & (!\SW[2]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\SW[3]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ 
-- & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\SW[3]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ 
-- & (\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\SW[3]~input_o\ & (\SW[5]~input_o\)) # (!\SW[3]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\SW[5]~input_o\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\);

\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[4]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\) # (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (\SW[1]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ $ (\SW[2]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ & (!\SW[2]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\SW[3]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\SW[3]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\SW[3]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (\SW[3]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\SW[3]~input_o\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\);

\inst|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(3) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[7]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[6]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(3));

\inst|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(5) = \SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(5));

\inst|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(2) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[5]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(2));

\inst|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~0_combout\ = (\inst|Mult0|auto_generated|le4a\(5) & (\inst|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\inst|Mult0|auto_generated|le4a\(5) & (\inst|Mult0|auto_generated|le3a\(2) & VCC))
-- \inst|Mult0|auto_generated|op_1~1\ = CARRY((\inst|Mult0|auto_generated|le4a\(5) & \inst|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(5),
	datab => \inst|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|op_1~0_combout\,
	cout => \inst|Mult0|auto_generated|op_1~1\);

\inst|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~2_combout\ = (\inst|Mult0|auto_generated|le3a\(3) & (!\inst|Mult0|auto_generated|op_1~1\)) # (!\inst|Mult0|auto_generated|le3a\(3) & ((\inst|Mult0|auto_generated|op_1~1\) # (GND)))
-- \inst|Mult0|auto_generated|op_1~3\ = CARRY((!\inst|Mult0|auto_generated|op_1~1\) # (!\inst|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~1\,
	combout => \inst|Mult0|auto_generated|op_1~2_combout\,
	cout => \inst|Mult0|auto_generated|op_1~3\);

\inst|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|cs2a[1]~0_combout\ = \SW[1]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|cs2a[1]~0_combout\);

\inst|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(1) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(5) $ (\SW[5]~input_o\)))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[4]~input_o\ & 
-- (\inst|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \SW[4]~input_o\,
	datac => \inst|Mult0|auto_generated|le4a\(5),
	datad => \SW[5]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(1));

\inst|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(0) = \SW[3]~input_o\ $ (((\SW[1]~input_o\ & ((\SW[2]~input_o\) # (\SW[4]~input_o\))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(0));

\inst|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(1) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[4]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(1));

\inst|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(0) = \SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(0));

\inst|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~0_combout\ = (\SW[1]~input_o\ & (\inst|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\SW[1]~input_o\ & (\inst|Mult0|auto_generated|le3a\(0) & VCC))
-- \inst|Mult0|auto_generated|op_3~1\ = CARRY((\SW[1]~input_o\ & \inst|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|op_3~0_combout\,
	cout => \inst|Mult0|auto_generated|op_3~1\);

\inst|Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~2_combout\ = (\inst|Mult0|auto_generated|le3a\(1) & (!\inst|Mult0|auto_generated|op_3~1\)) # (!\inst|Mult0|auto_generated|le3a\(1) & ((\inst|Mult0|auto_generated|op_3~1\) # (GND)))
-- \inst|Mult0|auto_generated|op_3~3\ = CARRY((!\inst|Mult0|auto_generated|op_3~1\) # (!\inst|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~1\,
	combout => \inst|Mult0|auto_generated|op_3~2_combout\,
	cout => \inst|Mult0|auto_generated|op_3~3\);

\inst|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~4_combout\ = ((\inst|Mult0|auto_generated|op_1~0_combout\ $ (\inst|Mult0|auto_generated|le4a\(0) $ (!\inst|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~5\ = CARRY((\inst|Mult0|auto_generated|op_1~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(0)) # (!\inst|Mult0|auto_generated|op_3~3\))) # (!\inst|Mult0|auto_generated|op_1~0_combout\ & (\inst|Mult0|auto_generated|le4a\(0) 
-- & !\inst|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_1~0_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~3\,
	combout => \inst|Mult0|auto_generated|op_3~4_combout\,
	cout => \inst|Mult0|auto_generated|op_3~5\);

\inst|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~6_combout\ = (\inst|Mult0|auto_generated|op_1~2_combout\ & ((\inst|Mult0|auto_generated|le4a\(1) & (\inst|Mult0|auto_generated|op_3~5\ & VCC)) # (!\inst|Mult0|auto_generated|le4a\(1) & 
-- (!\inst|Mult0|auto_generated|op_3~5\)))) # (!\inst|Mult0|auto_generated|op_1~2_combout\ & ((\inst|Mult0|auto_generated|le4a\(1) & (!\inst|Mult0|auto_generated|op_3~5\)) # (!\inst|Mult0|auto_generated|le4a\(1) & ((\inst|Mult0|auto_generated|op_3~5\) # 
-- (GND)))))
-- \inst|Mult0|auto_generated|op_3~7\ = CARRY((\inst|Mult0|auto_generated|op_1~2_combout\ & (!\inst|Mult0|auto_generated|le4a\(1) & !\inst|Mult0|auto_generated|op_3~5\)) # (!\inst|Mult0|auto_generated|op_1~2_combout\ & ((!\inst|Mult0|auto_generated|op_3~5\) 
-- # (!\inst|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_1~2_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~5\,
	combout => \inst|Mult0|auto_generated|op_3~6_combout\,
	cout => \inst|Mult0|auto_generated|op_3~7\);

\inst|s_r[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~3_combout\ = (\SW[8]~input_o\) # ((\SW[9]~input_o\ & \SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	combout => \inst|s_r[1]~3_combout\);

\inst|s_r[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~4_combout\ = (\SW[2]~input_o\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \inst|s_r[3]~4_combout\);

\inst|s_r[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~5_combout\ = (\SW[10]~input_o\ & !\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_r[1]~5_combout\);

\inst|s_r[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~6_combout\ = (\SW[3]~input_o\) # ((\inst|s_r[1]~5_combout\ & ((\SW[7]~input_o\))) # (!\inst|s_r[1]~5_combout\ & (\SW[0]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_r[1]~5_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst|s_r[3]~6_combout\);

\inst|s_r[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~7_combout\ = (\inst|s_r[1]~3_combout\ & ((\inst|s_r[1]~5_combout\ & ((!\inst|s_r[3]~6_combout\))) # (!\inst|s_r[1]~5_combout\ & ((\inst|s_r[3]~4_combout\) # (\inst|s_r[3]~6_combout\))))) # (!\inst|s_r[1]~3_combout\ & 
-- (((\inst|s_r[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[1]~3_combout\,
	datab => \inst|s_r[3]~4_combout\,
	datac => \inst|s_r[1]~5_combout\,
	datad => \inst|s_r[3]~6_combout\,
	combout => \inst|s_r[3]~7_combout\);

\inst|s_r[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~8_combout\ = (\inst|s_r[1]~3_combout\ & (((!\inst|s_r[3]~7_combout\)))) # (!\inst|s_r[1]~3_combout\ & ((\inst|s_r[3]~7_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\)) # (!\inst|s_r[3]~7_combout\ & 
-- ((\inst|Mult0|auto_generated|op_3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datab => \inst|Mult0|auto_generated|op_3~6_combout\,
	datac => \inst|s_r[1]~3_combout\,
	datad => \inst|s_r[3]~7_combout\,
	combout => \inst|s_r[3]~8_combout\);

\inst|s_r[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~9_combout\ = (\inst|s_r[1]~1_combout\ & ((\inst|s_r[3]~8_combout\))) # (!\inst|s_r[1]~1_combout\ & (\inst|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~12_combout\,
	datab => \inst|s_r[3]~8_combout\,
	datac => \inst|s_r[1]~1_combout\,
	combout => \inst|s_r[3]~9_combout\);

\inst|s_r[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~10_combout\ = (\inst|s_r[1]~0_combout\ & ((\inst|s_r[1]~1_combout\ & (\inst|s_r[3]~2_combout\)) # (!\inst|s_r[1]~1_combout\ & ((\inst|s_r[3]~9_combout\))))) # (!\inst|s_r[1]~0_combout\ & ((\inst|s_r[1]~1_combout\ & 
-- ((\inst|s_r[3]~9_combout\))) # (!\inst|s_r[1]~1_combout\ & (\inst|s_r[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[1]~0_combout\,
	datab => \inst|s_r[3]~2_combout\,
	datac => \inst|s_r[1]~1_combout\,
	datad => \inst|s_r[3]~9_combout\,
	combout => \inst|s_r[3]~10_combout\);

\inst|s_r[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~11_combout\ = (\SW[2]~input_o\ & (\SW[6]~input_o\ $ (!\inst|s_r[1]~0_combout\))) # (!\SW[2]~input_o\ & (\SW[6]~input_o\ & !\inst|s_r[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \inst|s_r[1]~0_combout\,
	combout => \inst|s_r[2]~11_combout\);

\inst|s_r[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~12_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\)) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ 
-- & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|s_r[2]~12_combout\);

\inst|s_r[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~13_combout\ = (\SW[6]~input_o\ & (((\inst|s_r[1]~5_combout\)))) # (!\SW[6]~input_o\ & ((\inst|s_r[1]~5_combout\ & ((\SW[2]~input_o\))) # (!\inst|s_r[1]~5_combout\ & (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \inst|s_r[1]~5_combout\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_r[2]~13_combout\);

\inst|s_r[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~14_combout\ = (\inst|s_r[1]~3_combout\ & ((\inst|s_r[1]~5_combout\ & ((!\inst|s_r[2]~13_combout\))) # (!\inst|s_r[1]~5_combout\ & ((\inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (\inst|s_r[2]~13_combout\))))) # 
-- (!\inst|s_r[1]~3_combout\ & (((\inst|s_r[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datab => \inst|s_r[1]~3_combout\,
	datac => \inst|s_r[1]~5_combout\,
	datad => \inst|s_r[2]~13_combout\,
	combout => \inst|s_r[2]~14_combout\);

\inst|s_r[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~15_combout\ = (\inst|s_r[1]~3_combout\ & (((!\inst|s_r[2]~14_combout\)))) # (!\inst|s_r[1]~3_combout\ & ((\inst|s_r[2]~14_combout\ & ((\inst|s_r[2]~12_combout\))) # (!\inst|s_r[2]~14_combout\ & (\inst|Mult0|auto_generated|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~4_combout\,
	datab => \inst|s_r[2]~12_combout\,
	datac => \inst|s_r[1]~3_combout\,
	datad => \inst|s_r[2]~14_combout\,
	combout => \inst|s_r[2]~15_combout\);

\inst|s_r[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~16_combout\ = (\inst|s_r[1]~0_combout\ & ((\inst|Add0~10_combout\))) # (!\inst|s_r[1]~0_combout\ & (\inst|s_r[2]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[2]~15_combout\,
	datab => \inst|Add0~10_combout\,
	datac => \inst|s_r[1]~0_combout\,
	combout => \inst|s_r[2]~16_combout\);

\inst|s_r[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~17_combout\ = (\inst|s_r[1]~1_combout\ & ((\inst|s_r[1]~0_combout\ & (\inst|s_r[2]~11_combout\)) # (!\inst|s_r[1]~0_combout\ & ((\inst|s_r[2]~16_combout\))))) # (!\inst|s_r[1]~1_combout\ & ((\inst|s_r[1]~0_combout\ & 
-- ((\inst|s_r[2]~16_combout\))) # (!\inst|s_r[1]~0_combout\ & (\inst|s_r[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[1]~1_combout\,
	datab => \inst|s_r[2]~11_combout\,
	datac => \inst|s_r[1]~0_combout\,
	datad => \inst|s_r[2]~16_combout\,
	combout => \inst|s_r[2]~17_combout\);

\inst|s_r[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~18_combout\ = (\SW[1]~input_o\ & (\SW[5]~input_o\ $ (!\inst|s_r[1]~1_combout\))) # (!\SW[1]~input_o\ & (\SW[5]~input_o\ & !\inst|s_r[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \inst|s_r[1]~1_combout\,
	combout => \inst|s_r[1]~18_combout\);

\inst|s_r[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~19_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\)) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ 
-- & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|s_r[1]~19_combout\);

\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[5]~input_o\) # (GND)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\SW[1]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\SW[2]~input_o\ $ (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & (!\SW[2]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

\inst|s_r[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~20_combout\ = (\inst|s_r[1]~5_combout\ & (((\SW[1]~input_o\) # (\SW[5]~input_o\)))) # (!\inst|s_r[1]~5_combout\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_r[1]~5_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_r[1]~20_combout\);

\inst|s_r[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~21_combout\ = (\inst|s_r[1]~3_combout\ & ((\inst|s_r[1]~5_combout\ & ((!\inst|s_r[1]~20_combout\))) # (!\inst|s_r[1]~5_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (\inst|s_r[1]~20_combout\))))) 
-- # (!\inst|s_r[1]~3_combout\ & (((\inst|s_r[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst|s_r[1]~3_combout\,
	datac => \inst|s_r[1]~5_combout\,
	datad => \inst|s_r[1]~20_combout\,
	combout => \inst|s_r[1]~21_combout\);

\inst|s_r[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~22_combout\ = (\inst|s_r[1]~3_combout\ & (((!\inst|s_r[1]~21_combout\)))) # (!\inst|s_r[1]~3_combout\ & ((\inst|s_r[1]~21_combout\ & ((\inst|s_r[1]~19_combout\))) # (!\inst|s_r[1]~21_combout\ & (\inst|Mult0|auto_generated|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~2_combout\,
	datab => \inst|s_r[1]~19_combout\,
	datac => \inst|s_r[1]~3_combout\,
	datad => \inst|s_r[1]~21_combout\,
	combout => \inst|s_r[1]~22_combout\);

\inst|s_r[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~23_combout\ = (\inst|s_r[1]~1_combout\ & ((\inst|s_r[1]~22_combout\))) # (!\inst|s_r[1]~1_combout\ & (\inst|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|s_r[1]~22_combout\,
	datac => \inst|s_r[1]~1_combout\,
	combout => \inst|s_r[1]~23_combout\);

\inst|s_r[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~24_combout\ = (\inst|s_r[1]~0_combout\ & ((\inst|s_r[1]~1_combout\ & (!\inst|s_r[1]~18_combout\)) # (!\inst|s_r[1]~1_combout\ & ((!\inst|s_r[1]~23_combout\))))) # (!\inst|s_r[1]~0_combout\ & ((\inst|s_r[1]~1_combout\ & 
-- ((!\inst|s_r[1]~23_combout\))) # (!\inst|s_r[1]~1_combout\ & (!\inst|s_r[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[1]~0_combout\,
	datab => \inst|s_r[1]~18_combout\,
	datac => \inst|s_r[1]~1_combout\,
	datad => \inst|s_r[1]~23_combout\,
	combout => \inst|s_r[1]~24_combout\);

\Enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

\inst3|decOut_n[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[5]~0_combout\ = ((\inst|s_r[3]~10_combout\ & ((\inst|s_r[2]~17_combout\) # (!\inst|s_r[1]~24_combout\)))) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~10_combout\,
	datab => \inst|s_r[2]~17_combout\,
	datac => \inst|s_r[1]~24_combout\,
	datad => \Enable~input_o\,
	combout => \inst3|decOut_n[5]~0_combout\);

\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ = CARRY(!\inst|s_r[1]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[1]~24_combout\,
	datad => VCC,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\);

\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|s_r[2]~17_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ & VCC)) # (!\inst|s_r[2]~17_combout\ & 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|s_r[2]~17_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[2]~17_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|s_r[3]~10_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|s_r[3]~10_combout\ & 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|s_r[3]~10_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~10_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|s_r[3]~10_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~10_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|s_r[2]~17_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[2]~17_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\);

\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ = \inst|s_r[1]~24_combout\ $ (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_r[1]~24_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\);

\inst|s_r[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~25_combout\ = (\SW[0]~input_o\ & (\SW[4]~input_o\ $ (!\inst|s_r[1]~0_combout\))) # (!\SW[0]~input_o\ & (\SW[4]~input_o\ & !\inst|s_r[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \inst|s_r[1]~0_combout\,
	combout => \inst|s_r[0]~25_combout\);

\inst|Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\SW[3]~input_o\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ 
-- & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

\inst|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\SW[3]~input_o\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ 
-- & (\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

\inst|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\SW[3]~input_o\ & (\SW[5]~input_o\)) # (!\SW[3]~input_o\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\SW[5]~input_o\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\SW[1]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\SW[1]~input_o\) # (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # (!\SW[2]~input_o\))) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & (!\SW[2]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & (\SW[3]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & ((\SW[3]~input_o\) # (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

\inst|s_r[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~26_combout\ = (\inst|s_r[1]~5_combout\ & (((\inst|s_r[1]~3_combout\)))) # (!\inst|s_r[1]~5_combout\ & ((\inst|s_r[1]~3_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)) # (!\inst|s_r[1]~3_combout\ & 
-- ((\inst|Mult0|auto_generated|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[1]~5_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst|s_r[1]~3_combout\,
	datad => \inst|Mult0|auto_generated|op_3~0_combout\,
	combout => \inst|s_r[0]~26_combout\);

\inst|s_r[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~27_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\SW[4]~input_o\)) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|s_r[0]~26_combout\ & 
-- (\SW[4]~input_o\)) # (!\inst|s_r[0]~26_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \inst|s_r[0]~26_combout\,
	combout => \inst|s_r[0]~27_combout\);

\inst|s_r[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~28_combout\ = (\inst|s_r[1]~5_combout\ & ((\inst|s_r[0]~27_combout\) # ((\SW[0]~input_o\ & \inst|s_r[0]~26_combout\)))) # (!\inst|s_r[1]~5_combout\ & (((\inst|s_r[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|s_r[1]~5_combout\,
	datac => \inst|s_r[0]~26_combout\,
	datad => \inst|s_r[0]~27_combout\,
	combout => \inst|s_r[0]~28_combout\);

\inst|s_r[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~29_combout\ = (\inst|s_r[1]~0_combout\ & ((\inst|Add0~6_combout\))) # (!\inst|s_r[1]~0_combout\ & (\inst|s_r[0]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~28_combout\,
	datab => \inst|Add0~6_combout\,
	datac => \inst|s_r[1]~0_combout\,
	combout => \inst|s_r[0]~29_combout\);

\inst|s_r[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~30_combout\ = (\inst|s_r[1]~1_combout\ & ((\inst|s_r[1]~0_combout\ & (\inst|s_r[0]~25_combout\)) # (!\inst|s_r[1]~0_combout\ & ((\inst|s_r[0]~29_combout\))))) # (!\inst|s_r[1]~1_combout\ & ((\inst|s_r[1]~0_combout\ & 
-- ((\inst|s_r[0]~29_combout\))) # (!\inst|s_r[1]~0_combout\ & (\inst|s_r[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[1]~1_combout\,
	datab => \inst|s_r[0]~25_combout\,
	datac => \inst|s_r[1]~0_combout\,
	datad => \inst|s_r[0]~29_combout\,
	combout => \inst|s_r[0]~30_combout\);

\inst4|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[6]~0_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & 
-- !\inst|s_r[0]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst|s_r[0]~30_combout\,
	combout => \inst4|decOut_n[6]~0_combout\);

\inst4|decOut_n[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[6]~1_combout\ = \inst|s_r[1]~24_combout\ $ (((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst|s_r[2]~17_combout\)) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[2]~17_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst|s_r[1]~24_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst4|decOut_n[6]~1_combout\);

\inst4|decOut_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[3]~2_combout\ = (\Enable~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\) # ((\inst4|decOut_n[6]~1_combout\) # (!\inst|s_r[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \inst4|decOut_n[6]~1_combout\,
	datad => \inst|s_r[0]~30_combout\,
	combout => \inst4|decOut_n[3]~2_combout\);

\inst4|decOut_n[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[6]~3_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst|s_r[0]~30_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (!\inst|s_r[0]~30_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \inst|s_r[0]~30_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	combout => \inst4|decOut_n[6]~3_combout\);

\inst4|decOut_n[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[6]~4_combout\ = (\Enable~input_o\ & \inst4|decOut_n[6]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \inst4|decOut_n[6]~3_combout\,
	combout => \inst4|decOut_n[6]~4_combout\);

\inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst|s_r[0]~30_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \inst|s_r[0]~30_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	combout => \inst4|Equal0~0_combout\);

\inst4|decOut_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[6]~5_combout\ = (\inst4|decOut_n[6]~4_combout\ & (((!\inst4|Equal0~0_combout\)))) # (!\inst4|decOut_n[6]~4_combout\ & ((\inst4|decOut_n[6]~0_combout\) # ((!\inst4|decOut_n[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n[6]~0_combout\,
	datab => \inst4|decOut_n[3]~2_combout\,
	datac => \inst4|decOut_n[6]~4_combout\,
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|decOut_n[6]~5_combout\);

\inst4|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~6_combout\ = (\inst|s_r[0]~30_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ $ (((\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))))) # (!\inst|s_r[0]~30_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~30_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \inst4|decOut_n~6_combout\);

\inst4|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~7_combout\ = (\inst4|decOut_n~6_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~6_combout\,
	datad => \Enable~input_o\,
	combout => \inst4|decOut_n~7_combout\);

\inst4|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~8_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst|s_r[0]~30_combout\ & ((!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\inst|s_r[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~30_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \inst4|decOut_n~8_combout\);

\inst4|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~9_combout\ = (\inst4|decOut_n~8_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~8_combout\,
	datad => \Enable~input_o\,
	combout => \inst4|decOut_n~9_combout\);

\inst4|decOut_n[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[3]~10_combout\ = (!\inst|s_r[0]~30_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \inst|s_r[0]~30_combout\,
	combout => \inst4|decOut_n[3]~10_combout\);

\inst4|decOut_n[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[3]~11_combout\ = (\inst4|decOut_n[6]~4_combout\ & (\inst4|Equal0~0_combout\)) # (!\inst4|decOut_n[6]~4_combout\ & (((\inst4|decOut_n[3]~10_combout\) # (!\inst4|decOut_n[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~0_combout\,
	datab => \inst4|decOut_n[3]~10_combout\,
	datac => \inst4|decOut_n[3]~2_combout\,
	datad => \inst4|decOut_n[6]~4_combout\,
	combout => \inst4|decOut_n[3]~11_combout\);

\inst4|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~12_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (!\inst|s_r[0]~30_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \inst|s_r[0]~30_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	combout => \inst4|decOut_n~12_combout\);

\inst4|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~13_combout\ = (\inst|s_r[0]~30_combout\ & (\inst|s_r[1]~24_combout\ $ (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~30_combout\,
	datab => \inst|s_r[1]~24_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst4|decOut_n~13_combout\);

\inst4|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~14_combout\ = (\Enable~input_o\ & ((\inst4|decOut_n~13_combout\) # ((!\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \inst4|decOut_n~13_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	combout => \inst4|decOut_n~14_combout\);

\inst4|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~15_combout\ = (\inst4|decOut_n~12_combout\) # (!\inst4|decOut_n~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~12_combout\,
	datad => \inst4|decOut_n~14_combout\,
	combout => \inst4|decOut_n~15_combout\);

\inst4|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~16_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst|s_r[0]~30_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ $ (\inst|s_r[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \inst|s_r[0]~30_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	combout => \inst4|decOut_n~16_combout\);

\inst4|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~17_combout\ = (\inst4|decOut_n~16_combout\) # (!\inst4|decOut_n~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~16_combout\,
	datad => \inst4|decOut_n~14_combout\,
	combout => \inst4|decOut_n~17_combout\);

\inst4|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~18_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\inst|s_r[0]~30_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ $ 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst|s_r[0]~30_combout\ $ 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \inst|s_r[0]~30_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	combout => \inst4|decOut_n~18_combout\);

\inst4|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~19_combout\ = (\inst4|decOut_n~18_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~18_combout\,
	datad => \Enable~input_o\,
	combout => \inst4|decOut_n~19_combout\);

\inst|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(3) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(5) $ (\SW[7]~input_o\)))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[6]~input_o\ & 
-- (\inst|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \SW[6]~input_o\,
	datac => \inst|Mult0|auto_generated|le4a\(5),
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(3));

\inst|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(1) = (\SW[5]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(1));

\inst|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(4) = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(4));

\inst|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(2) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(5) $ (\SW[6]~input_o\)))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[5]~input_o\ & 
-- (\inst|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \SW[5]~input_o\,
	datac => \inst|Mult0|auto_generated|le4a\(5),
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(2));

\inst|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~4_combout\ = ((\inst|Mult0|auto_generated|le3a\(4) $ (\inst|Mult0|auto_generated|le4a\(2) $ (!\inst|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \inst|Mult0|auto_generated|op_1~5\ = CARRY((\inst|Mult0|auto_generated|le3a\(4) & ((\inst|Mult0|auto_generated|le4a\(2)) # (!\inst|Mult0|auto_generated|op_1~3\))) # (!\inst|Mult0|auto_generated|le3a\(4) & (\inst|Mult0|auto_generated|le4a\(2) & 
-- !\inst|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(4),
	datab => \inst|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~3\,
	combout => \inst|Mult0|auto_generated|op_1~4_combout\,
	cout => \inst|Mult0|auto_generated|op_1~5\);

\inst|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~6_combout\ = (\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|le5a\(1) & (\inst|Mult0|auto_generated|op_1~5\ & VCC)) # (!\inst|Mult0|auto_generated|le5a\(1) & (!\inst|Mult0|auto_generated|op_1~5\)))) # 
-- (!\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|le5a\(1) & (!\inst|Mult0|auto_generated|op_1~5\)) # (!\inst|Mult0|auto_generated|le5a\(1) & ((\inst|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \inst|Mult0|auto_generated|op_1~7\ = CARRY((\inst|Mult0|auto_generated|le4a\(3) & (!\inst|Mult0|auto_generated|le5a\(1) & !\inst|Mult0|auto_generated|op_1~5\)) # (!\inst|Mult0|auto_generated|le4a\(3) & ((!\inst|Mult0|auto_generated|op_1~5\) # 
-- (!\inst|Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(3),
	datab => \inst|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~5\,
	combout => \inst|Mult0|auto_generated|op_1~6_combout\,
	cout => \inst|Mult0|auto_generated|op_1~7\);

\inst|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(0) = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(0));

\inst|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~8_combout\ = ((\inst|Mult0|auto_generated|op_1~4_combout\ $ (\inst|Mult0|auto_generated|le5a\(0) $ (!\inst|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~9\ = CARRY((\inst|Mult0|auto_generated|op_1~4_combout\ & ((\inst|Mult0|auto_generated|le5a\(0)) # (!\inst|Mult0|auto_generated|op_3~7\))) # (!\inst|Mult0|auto_generated|op_1~4_combout\ & (\inst|Mult0|auto_generated|le5a\(0) 
-- & !\inst|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_1~4_combout\,
	datab => \inst|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~7\,
	combout => \inst|Mult0|auto_generated|op_3~8_combout\,
	cout => \inst|Mult0|auto_generated|op_3~9\);

\inst|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~10_combout\ = (\SW[1]~input_o\ & ((\inst|Mult0|auto_generated|op_1~6_combout\ & (\inst|Mult0|auto_generated|op_3~9\ & VCC)) # (!\inst|Mult0|auto_generated|op_1~6_combout\ & (!\inst|Mult0|auto_generated|op_3~9\)))) # 
-- (!\SW[1]~input_o\ & ((\inst|Mult0|auto_generated|op_1~6_combout\ & (!\inst|Mult0|auto_generated|op_3~9\)) # (!\inst|Mult0|auto_generated|op_1~6_combout\ & ((\inst|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \inst|Mult0|auto_generated|op_3~11\ = CARRY((\SW[1]~input_o\ & (!\inst|Mult0|auto_generated|op_1~6_combout\ & !\inst|Mult0|auto_generated|op_3~9\)) # (!\SW[1]~input_o\ & ((!\inst|Mult0|auto_generated|op_3~9\) # 
-- (!\inst|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~9\,
	combout => \inst|Mult0|auto_generated|op_3~10_combout\,
	cout => \inst|Mult0|auto_generated|op_3~11\);

\inst|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(4) = (\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(4));

\inst|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(2) = (\SW[6]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(2));

\inst|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~8_combout\ = ((\inst|Mult0|auto_generated|le4a\(4) $ (\inst|Mult0|auto_generated|le5a\(2) $ (!\inst|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \inst|Mult0|auto_generated|op_1~9\ = CARRY((\inst|Mult0|auto_generated|le4a\(4) & ((\inst|Mult0|auto_generated|le5a\(2)) # (!\inst|Mult0|auto_generated|op_1~7\))) # (!\inst|Mult0|auto_generated|le4a\(4) & (\inst|Mult0|auto_generated|le5a\(2) & 
-- !\inst|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(4),
	datab => \inst|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~7\,
	combout => \inst|Mult0|auto_generated|op_1~8_combout\,
	cout => \inst|Mult0|auto_generated|op_1~9\);

\inst|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~12_combout\ = ((\SW[1]~input_o\ $ (\inst|Mult0|auto_generated|op_1~8_combout\ $ (!\inst|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~13\ = CARRY((\SW[1]~input_o\ & ((\inst|Mult0|auto_generated|op_1~8_combout\) # (!\inst|Mult0|auto_generated|op_3~11\))) # (!\SW[1]~input_o\ & (\inst|Mult0|auto_generated|op_1~8_combout\ & 
-- !\inst|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~11\,
	combout => \inst|Mult0|auto_generated|op_3~12_combout\,
	cout => \inst|Mult0|auto_generated|op_3~13\);

\inst5|decOut_n[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[5]~0_combout\ = (\inst|Mult0|auto_generated|op_3~10_combout\) # (\inst|Mult0|auto_generated|op_3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~10_combout\,
	datab => \inst|Mult0|auto_generated|op_3~12_combout\,
	combout => \inst5|decOut_n[5]~0_combout\);

\inst|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(3) = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(3));

\inst|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~10_combout\ = \inst|Mult0|auto_generated|le4a\(5) $ (\inst|Mult0|auto_generated|le5a\(3) $ (!\inst|Mult0|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(5),
	datab => \inst|Mult0|auto_generated|le5a\(3),
	cin => \inst|Mult0|auto_generated|op_1~9\,
	combout => \inst|Mult0|auto_generated|op_1~10_combout\);

\inst|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~14_combout\ = \SW[1]~input_o\ $ (\inst|Mult0|auto_generated|op_1~10_combout\ $ (!\inst|Mult0|auto_generated|op_3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|op_1~10_combout\,
	cin => \inst|Mult0|auto_generated|op_3~13\,
	combout => \inst|Mult0|auto_generated|op_3~14_combout\);

\inst|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~1_combout\ = (\SW[9]~input_o\ & (!\SW[8]~input_o\ & !\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Equal7~1_combout\);

\inst5|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[5]~1_combout\ = ((\inst5|decOut_n[5]~0_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & \inst|Equal7~1_combout\))) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n[5]~0_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst|Equal7~1_combout\,
	datad => \Enable~input_o\,
	combout => \inst5|decOut_n[5]~1_combout\);

\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst|Equal7~1_combout\ & \inst|Mult0|auto_generated|op_3~10_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst|Equal7~1_combout\ & \inst|Mult0|auto_generated|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~1_combout\,
	datab => \inst|Mult0|auto_generated|op_3~10_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|Equal7~1_combout\ & ((\inst|Mult0|auto_generated|op_3~12_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\inst|Mult0|auto_generated|op_3~12_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))) # (!\inst|Equal7~1_combout\ & (((!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & ((!\inst|Mult0|auto_generated|op_3~12_combout\) # (!\inst|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~1_combout\,
	datab => \inst|Mult0|auto_generated|op_3~12_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (\inst|Equal7~1_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & VCC))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst|Equal7~1_combout\ & \inst|Mult0|auto_generated|op_3~14_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|Equal7~1_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~1_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ & (\inst|Equal7~1_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~12_combout\,
	datab => \inst|Equal7~1_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\);

\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst|Equal7~1_combout\ & \inst|Mult0|auto_generated|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~1_combout\,
	datab => \inst|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mult0|auto_generated|op_3~8_combout\ & (\inst|Equal7~1_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst|Equal7~1_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\);

\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mult0|auto_generated|op_3~10_combout\ & (\inst|Equal7~1_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~10_combout\,
	datab => \inst|Equal7~1_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\);

\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & (\inst|Equal7~1_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~14_combout\,
	datab => \inst|Equal7~1_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\);

\inst6|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n[6]~0_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ $ 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	combout => \inst6|decOut_n[6]~0_combout\);

\inst6|decOut_n[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n[3]~1_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	combout => \inst6|decOut_n[3]~1_combout\);

\inst6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	combout => \inst6|Equal0~0_combout\);

\inst6|decOut_n[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n[6]~2_combout\ = ((\inst6|decOut_n[3]~1_combout\ & ((!\inst6|Equal0~0_combout\))) # (!\inst6|decOut_n[3]~1_combout\ & (\inst6|decOut_n[6]~0_combout\))) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_n[6]~0_combout\,
	datab => \inst6|decOut_n[3]~1_combout\,
	datac => \inst6|Equal0~0_combout\,
	datad => \Enable~input_o\,
	combout => \inst6|decOut_n[6]~2_combout\);

\inst6|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~3_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ $ (((\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	combout => \inst6|decOut_n~3_combout\);

\inst6|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~4_combout\ = (\inst6|decOut_n~3_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_n~3_combout\,
	datad => \Enable~input_o\,
	combout => \inst6|decOut_n~4_combout\);

\inst6|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~5_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & ((!\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\)))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & ((!\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	combout => \inst6|decOut_n~5_combout\);

\inst6|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~6_combout\ = (\inst6|decOut_n~5_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_n~5_combout\,
	datad => \Enable~input_o\,
	combout => \inst6|decOut_n~6_combout\);

\inst6|decOut_n[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n[3]~7_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ $ 
-- (((!\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	combout => \inst6|decOut_n[3]~7_combout\);

\inst6|decOut_n[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n[3]~8_combout\ = ((\inst6|decOut_n[3]~1_combout\ & (\inst6|Equal0~0_combout\)) # (!\inst6|decOut_n[3]~1_combout\ & ((\inst6|decOut_n[3]~7_combout\)))) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~0_combout\,
	datab => \inst6|decOut_n[3]~7_combout\,
	datac => \inst6|decOut_n[3]~1_combout\,
	datad => \Enable~input_o\,
	combout => \inst6|decOut_n[3]~8_combout\);

\inst6|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~9_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	combout => \inst6|decOut_n~9_combout\);

\inst6|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~10_combout\ = (\inst6|decOut_n~9_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_n~9_combout\,
	datad => \Enable~input_o\,
	combout => \inst6|decOut_n~10_combout\);

\inst6|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~11_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ $ (\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	combout => \inst6|decOut_n~11_combout\);

\inst6|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~12_combout\ = (\inst6|decOut_n~11_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_n~11_combout\,
	datad => \Enable~input_o\,
	combout => \inst6|decOut_n~12_combout\);

\inst6|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~13_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ $ 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ $ (\inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	combout => \inst6|decOut_n~13_combout\);

\inst6|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~14_combout\ = (\inst6|decOut_n~13_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_n~13_combout\,
	datad => \Enable~input_o\,
	combout => \inst6|decOut_n~14_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;
END structure;


