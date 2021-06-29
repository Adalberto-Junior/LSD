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

-- DATE "03/30/2021 14:18:10"

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

ENTITY 	ALUDemo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	Enable : IN std_logic;
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END ALUDemo;

ARCHITECTURE structure OF ALUDemo IS
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
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ : std_logic;
SIGNAL \inst|Add1~1_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Add3~3_combout\ : std_logic;
SIGNAL \inst|Equal7~1_combout\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add3~5_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add3~7_combout\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Add3~9_combout\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Add3~11_combout\ : std_logic;
SIGNAL \inst|Add3~12_combout\ : std_logic;
SIGNAL \inst|Add3~13_combout\ : std_logic;
SIGNAL \inst|Add3~15_cout\ : std_logic;
SIGNAL \inst|Add3~17\ : std_logic;
SIGNAL \inst|Add3~19\ : std_logic;
SIGNAL \inst|Add3~21\ : std_logic;
SIGNAL \inst|Add3~22_combout\ : std_logic;
SIGNAL \inst|s_r[3]~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[0]~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[1]~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|cs3a[1]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[0]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[0]~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[1]~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[2]~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[3]~6_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|diff_signs~combout\ : std_logic;
SIGNAL \inst|s_r[3]~3_combout\ : std_logic;
SIGNAL \inst|s_r[3]~4_combout\ : std_logic;
SIGNAL \inst|s_r[3]~5_combout\ : std_logic;
SIGNAL \inst|s_r[3]~6_combout\ : std_logic;
SIGNAL \inst|Add3~24_combout\ : std_logic;
SIGNAL \inst|Add3~25_combout\ : std_logic;
SIGNAL \inst|Add3~37_combout\ : std_logic;
SIGNAL \inst|Add3~26_combout\ : std_logic;
SIGNAL \inst|Add3~18_combout\ : std_logic;
SIGNAL \inst|Add3~27_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|quotient[1]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[1]~2_combout\ : std_logic;
SIGNAL \inst|s_r[1]~7_combout\ : std_logic;
SIGNAL \inst|s_r[1]~8_combout\ : std_logic;
SIGNAL \inst|Add3~28_combout\ : std_logic;
SIGNAL \inst|Add3~29_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[2]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|quotient[2]~1_combout\ : std_logic;
SIGNAL \inst|Add3~30_combout\ : std_logic;
SIGNAL \inst|Add3~31_combout\ : std_logic;
SIGNAL \inst|Add3~32_combout\ : std_logic;
SIGNAL \inst|Add3~20_combout\ : std_logic;
SIGNAL \inst|Add3~33_combout\ : std_logic;
SIGNAL \inst|Add3~34_combout\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \inst6|decOut_n[5]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ : std_logic;
SIGNAL \inst|Add3~16_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[0]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \inst|s_r[0]~11_combout\ : std_logic;
SIGNAL \inst|s_r[0]~9_combout\ : std_logic;
SIGNAL \inst|s_r[0]~10_combout\ : std_logic;
SIGNAL \inst|Add3~35_combout\ : std_logic;
SIGNAL \inst|Add3~36_combout\ : std_logic;
SIGNAL \inst7|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst7|decOut_n[3]~1_combout\ : std_logic;
SIGNAL \inst7|decOut_n[3]~2_combout\ : std_logic;
SIGNAL \inst7|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst7|decOut_n[3]~4_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|decOut_n[6]~5_combout\ : std_logic;
SIGNAL \inst7|decOut_n~6_combout\ : std_logic;
SIGNAL \inst7|decOut_n~7_combout\ : std_logic;
SIGNAL \inst7|decOut_n~8_combout\ : std_logic;
SIGNAL \inst7|decOut_n~9_combout\ : std_logic;
SIGNAL \inst7|decOut_n[3]~10_combout\ : std_logic;
SIGNAL \inst7|decOut_n[3]~11_combout\ : std_logic;
SIGNAL \inst7|decOut_n~12_combout\ : std_logic;
SIGNAL \inst7|decOut_n~13_combout\ : std_logic;
SIGNAL \inst7|decOut_n~14_combout\ : std_logic;
SIGNAL \inst7|decOut_n~15_combout\ : std_logic;
SIGNAL \inst7|decOut_n~16_combout\ : std_logic;
SIGNAL \inst7|decOut_n~17_combout\ : std_logic;
SIGNAL \inst7|decOut_n~18_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[1]~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[2]~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[3]~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[2]~4_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[3]~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[4]~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[5]~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[3]~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[4]~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[5]~11\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[6]~12_combout\ : std_logic;
SIGNAL \inst4|decOut_n[5]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[6]~13\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[7]~14_combout\ : std_logic;
SIGNAL \inst|Equal7~2_combout\ : std_logic;
SIGNAL \inst4|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[4]~8_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ : std_logic;
SIGNAL \inst5|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst5|decOut_n[3]~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|decOut_n[6]~2_combout\ : std_logic;
SIGNAL \inst5|decOut_n~3_combout\ : std_logic;
SIGNAL \inst5|decOut_n~4_combout\ : std_logic;
SIGNAL \inst5|decOut_n~5_combout\ : std_logic;
SIGNAL \inst5|decOut_n~6_combout\ : std_logic;
SIGNAL \inst5|decOut_n[3]~7_combout\ : std_logic;
SIGNAL \inst5|decOut_n[3]~8_combout\ : std_logic;
SIGNAL \inst5|decOut_n~9_combout\ : std_logic;
SIGNAL \inst5|decOut_n~10_combout\ : std_logic;
SIGNAL \inst5|decOut_n~11_combout\ : std_logic;
SIGNAL \inst5|decOut_n~12_combout\ : std_logic;
SIGNAL \inst5|decOut_n~13_combout\ : std_logic;
SIGNAL \inst5|decOut_n~14_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|Div0|auto_generated|divider|divider|sel\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
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
	i => \inst6|decOut_n[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_n[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_n[5]~0_combout\,
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
	i => \inst6|decOut_n[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|decOut_n[6]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|decOut_n[3]~11_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|decOut_n~14_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|decOut_n~16_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|decOut_n~18_combout\,
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
	i => \inst4|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n[5]~1_combout\,
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
	i => \inst4|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n[6]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n[3]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~10_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~12_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~14_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

\inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\SW[7]~input_o\ & (!\SW[9]~input_o\ & !\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Add3~2_combout\);

\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (!\SW[9]~input_o\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Equal7~0_combout\);

\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \SW[2]~input_o\ $ ((((!\SW[1]~input_o\ & !\SW[0]~input_o\)) # (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Add1~0_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ = ((\SW[1]~input_o\ & ((!\SW[2]~input_o\) # (!\SW[3]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[3]~input_o\) # (\SW[2]~input_o\)))) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\);

\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ = (\SW[7]~input_o\ & (!\SW[5]~input_o\ & (!\SW[4]~input_o\ & !\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datab => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\);

\inst|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~1_combout\ = \SW[1]~input_o\ $ (((\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Add1~1_combout\);

\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \SW[6]~input_o\ $ ((((!\SW[5]~input_o\ & !\SW[4]~input_o\)) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Add0~0_combout\);

\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\inst|Add0~0_combout\ $ (GND))) # (!\SW[0]~input_o\ & ((GND) # (!\inst|Add0~0_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((!\inst|Add0~0_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Add0~0_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\inst|Add1~1_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Add1~1_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\inst|Add1~1_combout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\inst|Add1~1_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & (\inst|Add1~1_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\inst|Add1~1_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datab => \inst|Add1~1_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = (\inst|Add1~0_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ $ (GND))) # (!\inst|Add1~0_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ & VCC))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|Add1~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

\inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\SW[3]~input_o\ & (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Add1~2_combout\);

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

\inst|Mod0|auto_generated|divider|divider|StageOut[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & (!\inst|Add1~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \inst|Add1~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ = (\inst|Add1~2_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\)) # (!\inst|Add1~2_combout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\)) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \inst|Add1~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ = (\inst|Add1~2_combout\ & (((!\inst|Add0~0_combout\)))) # (!\inst|Add1~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((!\inst|Add0~0_combout\))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \inst|Add1~2_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \inst|Add0~0_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\);

\inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = \SW[5]~input_o\ $ (((\SW[4]~input_o\ & \SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~1_combout\);

\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\inst|Add0~1_combout\ $ (VCC))) # (!\SW[0]~input_o\ & ((\inst|Add0~1_combout\) # (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\inst|Add0~1_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Add0~1_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & ((\inst|Add1~1_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst|Add1~1_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & ((\inst|Add1~1_combout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # (!\inst|Add1~1_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & (\inst|Add1~1_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & ((\inst|Add1~1_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\,
	datab => \inst|Add1~1_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\inst|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ $ (\inst|Add1~0_combout\ $ (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # 
-- (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ & ((\inst|Add1~0_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ & (\inst|Add1~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\,
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ & ((\inst|Add1~2_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst|Add1~2_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ & ((\inst|Add1~2_combout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\inst|Add1~2_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ & (\inst|Add1~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ & ((\inst|Add1~2_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\,
	datab => \inst|Add1~2_combout\,
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

\inst|Mod0|auto_generated|divider|divider|StageOut[18]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & (!\inst|Add1~2_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \inst|Add1~2_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[18]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[17]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[16]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\);

\inst|Mod0|auto_generated|divider|divider|StageOut[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Add0~1_combout\)) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ 
-- & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~1_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\);

\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[4]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\) # (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & ((\inst|Add1~1_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\inst|Add1~1_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & ((\inst|Add1~1_combout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))) # (!\inst|Add1~1_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & (\inst|Add1~1_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & ((\inst|Add1~1_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\,
	datab => \inst|Add1~1_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\inst|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ $ (\inst|Add1~0_combout\ $ (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # 
-- (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ & ((\inst|Add1~0_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ & (\inst|Add1~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\,
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ & ((\inst|Add1~2_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\inst|Add1~2_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ & ((\inst|Add1~2_combout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # (!\inst|Add1~2_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ & (\inst|Add1~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ & ((\inst|Add1~2_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\,
	datab => \inst|Add1~2_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\) # ((\inst|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\);

\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

\inst|Add3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~3_combout\ = \SW[7]~input_o\ $ (((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add3~3_combout\);

\inst|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~1_combout\ = (\SW[8]~input_o\ & (!\SW[9]~input_o\ & !\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Equal7~1_combout\);

\inst|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|Equal7~0_combout\ & (\SW[3]~input_o\)) # (!\inst|Equal7~0_combout\ & ((\inst|Equal7~1_combout\ & (!\SW[3]~input_o\)) # (!\inst|Equal7~1_combout\ & ((\inst|Add3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|Equal7~0_combout\,
	datac => \inst|Add3~3_combout\,
	datad => \inst|Equal7~1_combout\,
	combout => \inst|Add3~4_combout\);

\inst|Add3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~5_combout\ = (\SW[6]~input_o\ & (!\SW[9]~input_o\ & !\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Add3~5_combout\);

\inst|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = \SW[7]~input_o\ $ (((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add3~6_combout\);

\inst|Add3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~7_combout\ = (\inst|Equal7~0_combout\ & (\SW[2]~input_o\)) # (!\inst|Equal7~0_combout\ & ((\inst|Equal7~1_combout\ & (!\SW[2]~input_o\)) # (!\inst|Equal7~1_combout\ & ((\inst|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|Equal7~0_combout\,
	datac => \inst|Add3~6_combout\,
	datad => \inst|Equal7~1_combout\,
	combout => \inst|Add3~7_combout\);

\inst|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\SW[5]~input_o\ & (!\SW[9]~input_o\ & !\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Add3~8_combout\);

\inst|Add3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~9_combout\ = \SW[7]~input_o\ $ (((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add3~9_combout\);

\inst|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = (\inst|Equal7~0_combout\ & (\SW[1]~input_o\)) # (!\inst|Equal7~0_combout\ & ((\inst|Equal7~1_combout\ & (!\SW[1]~input_o\)) # (!\inst|Equal7~1_combout\ & ((\inst|Add3~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Equal7~0_combout\,
	datac => \inst|Add3~9_combout\,
	datad => \inst|Equal7~1_combout\,
	combout => \inst|Add3~10_combout\);

\inst|Add3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~11_combout\ = \SW[7]~input_o\ $ (((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\SW[4]~input_o\))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add3~11_combout\);

\inst|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~12_combout\ = (\inst|Equal7~0_combout\ & (\SW[0]~input_o\)) # (!\inst|Equal7~0_combout\ & ((\inst|Equal7~1_combout\ & (!\SW[0]~input_o\)) # (!\inst|Equal7~1_combout\ & ((\inst|Add3~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Equal7~0_combout\,
	datac => \inst|Add3~11_combout\,
	datad => \inst|Equal7~1_combout\,
	combout => \inst|Add3~12_combout\);

\inst|Add3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~13_combout\ = (\SW[9]~input_o\ & (\SW[7]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[10]~input_o\ & (\SW[7]~input_o\)) # (!\SW[10]~input_o\ & ((\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Add3~13_combout\);

\inst|Add3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~15_cout\ = CARRY(\inst|Equal7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~1_combout\,
	datad => VCC,
	cout => \inst|Add3~15_cout\);

\inst|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~16_combout\ = (\inst|Add3~12_combout\ & ((\inst|Add3~13_combout\ & (\inst|Add3~15_cout\ & VCC)) # (!\inst|Add3~13_combout\ & (!\inst|Add3~15_cout\)))) # (!\inst|Add3~12_combout\ & ((\inst|Add3~13_combout\ & (!\inst|Add3~15_cout\)) # 
-- (!\inst|Add3~13_combout\ & ((\inst|Add3~15_cout\) # (GND)))))
-- \inst|Add3~17\ = CARRY((\inst|Add3~12_combout\ & (!\inst|Add3~13_combout\ & !\inst|Add3~15_cout\)) # (!\inst|Add3~12_combout\ & ((!\inst|Add3~15_cout\) # (!\inst|Add3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~12_combout\,
	datab => \inst|Add3~13_combout\,
	datad => VCC,
	cin => \inst|Add3~15_cout\,
	combout => \inst|Add3~16_combout\,
	cout => \inst|Add3~17\);

\inst|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~18_combout\ = ((\inst|Add3~8_combout\ $ (\inst|Add3~10_combout\ $ (!\inst|Add3~17\)))) # (GND)
-- \inst|Add3~19\ = CARRY((\inst|Add3~8_combout\ & ((\inst|Add3~10_combout\) # (!\inst|Add3~17\))) # (!\inst|Add3~8_combout\ & (\inst|Add3~10_combout\ & !\inst|Add3~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~8_combout\,
	datab => \inst|Add3~10_combout\,
	datad => VCC,
	cin => \inst|Add3~17\,
	combout => \inst|Add3~18_combout\,
	cout => \inst|Add3~19\);

\inst|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~20_combout\ = (\inst|Add3~5_combout\ & ((\inst|Add3~7_combout\ & (\inst|Add3~19\ & VCC)) # (!\inst|Add3~7_combout\ & (!\inst|Add3~19\)))) # (!\inst|Add3~5_combout\ & ((\inst|Add3~7_combout\ & (!\inst|Add3~19\)) # (!\inst|Add3~7_combout\ & 
-- ((\inst|Add3~19\) # (GND)))))
-- \inst|Add3~21\ = CARRY((\inst|Add3~5_combout\ & (!\inst|Add3~7_combout\ & !\inst|Add3~19\)) # (!\inst|Add3~5_combout\ & ((!\inst|Add3~19\) # (!\inst|Add3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~5_combout\,
	datab => \inst|Add3~7_combout\,
	datad => VCC,
	cin => \inst|Add3~19\,
	combout => \inst|Add3~20_combout\,
	cout => \inst|Add3~21\);

\inst|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~22_combout\ = \inst|Add3~2_combout\ $ (\inst|Add3~4_combout\ $ (!\inst|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~2_combout\,
	datab => \inst|Add3~4_combout\,
	cin => \inst|Add3~21\,
	combout => \inst|Add3~22_combout\);

\inst|s_r[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~2_combout\ = (!\SW[9]~input_o\ & ((!\SW[8]~input_o\) # (!\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_r[3]~2_combout\);

\inst|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(3) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[7]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[6]~input_o\ & (\SW[1]~input_o\)))

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
	combout => \inst|Mult0|auto_generated|le5a\(3));

\inst|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(2) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[5]~input_o\ & (\SW[1]~input_o\)))

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
	combout => \inst|Mult0|auto_generated|le5a\(2));

\inst|Mult0|auto_generated|add10_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[0]~0_combout\ = (\SW[3]~input_o\ & (\inst|Mult0|auto_generated|le5a\(2) $ (VCC))) # (!\SW[3]~input_o\ & (\inst|Mult0|auto_generated|le5a\(2) & VCC))
-- \inst|Mult0|auto_generated|add10_result[0]~1\ = CARRY((\SW[3]~input_o\ & \inst|Mult0|auto_generated|le5a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|add10_result[0]~0_combout\,
	cout => \inst|Mult0|auto_generated|add10_result[0]~1\);

\inst|Mult0|auto_generated|add10_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[1]~2_combout\ = (\inst|Mult0|auto_generated|le5a\(3) & (!\inst|Mult0|auto_generated|add10_result[0]~1\)) # (!\inst|Mult0|auto_generated|le5a\(3) & ((\inst|Mult0|auto_generated|add10_result[0]~1\) # (GND)))
-- \inst|Mult0|auto_generated|add10_result[1]~3\ = CARRY((!\inst|Mult0|auto_generated|add10_result[0]~1\) # (!\inst|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add10_result[0]~1\,
	combout => \inst|Mult0|auto_generated|add10_result[1]~2_combout\,
	cout => \inst|Mult0|auto_generated|add10_result[1]~3\);

\inst|Mult0|auto_generated|le2a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(1) = (\SW[4]~input_o\ & (\SW[1]~input_o\ & (\SW[2]~input_o\))) # (!\SW[4]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(1));

\inst|Mult0|auto_generated|cs3a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|cs3a[1]~0_combout\ = \SW[1]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|cs3a[1]~0_combout\);

\inst|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(1) = (\inst|Mult0|auto_generated|le2a\(1)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[5]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le2a\(1),
	datab => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(1));

\inst|Mult0|auto_generated|le2a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(0) = (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(0));

\inst|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(0) = (\inst|Mult0|auto_generated|le2a\(0)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le2a\(0),
	datab => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(0));

\inst|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(1) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[4]~input_o\ & (\SW[1]~input_o\)))

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
	combout => \inst|Mult0|auto_generated|le5a\(1));

\inst|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(0) = \SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(0));

\inst|Mult0|auto_generated|add6_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[0]~0_combout\ = (\SW[1]~input_o\ & (\inst|Mult0|auto_generated|le5a\(0) $ (VCC))) # (!\SW[1]~input_o\ & (\inst|Mult0|auto_generated|le5a\(0) & VCC))
-- \inst|Mult0|auto_generated|add6_result[0]~1\ = CARRY((\SW[1]~input_o\ & \inst|Mult0|auto_generated|le5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|add6_result[0]~0_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[0]~1\);

\inst|Mult0|auto_generated|add6_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[1]~2_combout\ = (\inst|Mult0|auto_generated|le5a\(1) & (!\inst|Mult0|auto_generated|add6_result[0]~1\)) # (!\inst|Mult0|auto_generated|le5a\(1) & ((\inst|Mult0|auto_generated|add6_result[0]~1\) # (GND)))
-- \inst|Mult0|auto_generated|add6_result[1]~3\ = CARRY((!\inst|Mult0|auto_generated|add6_result[0]~1\) # (!\inst|Mult0|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[0]~1\,
	combout => \inst|Mult0|auto_generated|add6_result[1]~2_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[1]~3\);

\inst|Mult0|auto_generated|add6_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[2]~4_combout\ = ((\inst|Mult0|auto_generated|add10_result[0]~0_combout\ $ (\inst|Mult0|auto_generated|le4a\(0) $ (!\inst|Mult0|auto_generated|add6_result[1]~3\)))) # (GND)
-- \inst|Mult0|auto_generated|add6_result[2]~5\ = CARRY((\inst|Mult0|auto_generated|add10_result[0]~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(0)) # (!\inst|Mult0|auto_generated|add6_result[1]~3\))) # 
-- (!\inst|Mult0|auto_generated|add10_result[0]~0_combout\ & (\inst|Mult0|auto_generated|le4a\(0) & !\inst|Mult0|auto_generated|add6_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add10_result[0]~0_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[1]~3\,
	combout => \inst|Mult0|auto_generated|add6_result[2]~4_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[2]~5\);

\inst|Mult0|auto_generated|add6_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[3]~6_combout\ = (\inst|Mult0|auto_generated|add10_result[1]~2_combout\ & ((\inst|Mult0|auto_generated|le4a\(1) & (\inst|Mult0|auto_generated|add6_result[2]~5\ & VCC)) # (!\inst|Mult0|auto_generated|le4a\(1) & 
-- (!\inst|Mult0|auto_generated|add6_result[2]~5\)))) # (!\inst|Mult0|auto_generated|add10_result[1]~2_combout\ & ((\inst|Mult0|auto_generated|le4a\(1) & (!\inst|Mult0|auto_generated|add6_result[2]~5\)) # (!\inst|Mult0|auto_generated|le4a\(1) & 
-- ((\inst|Mult0|auto_generated|add6_result[2]~5\) # (GND)))))
-- \inst|Mult0|auto_generated|add6_result[3]~7\ = CARRY((\inst|Mult0|auto_generated|add10_result[1]~2_combout\ & (!\inst|Mult0|auto_generated|le4a\(1) & !\inst|Mult0|auto_generated|add6_result[2]~5\)) # (!\inst|Mult0|auto_generated|add10_result[1]~2_combout\ 
-- & ((!\inst|Mult0|auto_generated|add6_result[2]~5\) # (!\inst|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add10_result[1]~2_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[2]~5\,
	combout => \inst|Mult0|auto_generated|add6_result[3]~6_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[3]~7\);

\inst|Div0|auto_generated|divider|divider|sel[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|sel\(0) = (\SW[1]~input_o\ & (((!\SW[0]~input_o\) # (!\SW[2]~input_o\)) # (!\SW[3]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|sel\(0));

\inst|Div0|auto_generated|divider|divider|add_sub_0|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\);

\inst|Div0|auto_generated|divider|divider|sel[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|sel\(5) = (\SW[3]~input_o\ & (((!\SW[1]~input_o\ & !\SW[0]~input_o\)) # (!\SW[2]~input_o\))) # (!\SW[3]~input_o\ & (((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|sel\(5));

\inst|Div0|auto_generated|divider|divider|StageOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|sel\(5)) # ((\inst|Add1~1_combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|sel\(5),
	datac => \inst|Add1~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\);

\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ = \SW[6]~input_o\ $ (((\SW[7]~input_o\ & ((\SW[5]~input_o\) # (\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\);

\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ = (\inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # ((!\inst|Add1~1_combout\) # 
-- (!\SW[0]~input_o\)))) # (!\inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & (!\inst|Add1~1_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datac => \SW[0]~input_o\,
	datad => \inst|Add1~1_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\);

\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ = \SW[2]~input_o\ $ (((\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\);

\inst|Div0|auto_generated|divider|divider|add_sub_1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\);

\inst|Div0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|sel\(5)) # (\inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ 
-- $ (\inst|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|sel\(5),
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datad => \inst|Add1~1_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\);

\inst|Div0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ = \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ $ (((!\inst|Div0|auto_generated|divider|divider|sel\(5) & (\SW[0]~input_o\ & 
-- \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|sel\(5),
	datac => \SW[0]~input_o\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\);

\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\inst|Add0~1_combout\ & ((GND) # (!\SW[0]~input_o\))) # (!\inst|Add0~1_combout\ & (\SW[0]~input_o\ $ (GND)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\inst|Add0~1_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~1_combout\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|Add1~1_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\inst|Add1~1_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|Add1~1_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # 
-- (!\inst|Add1~1_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~1_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ $ (\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
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

\inst|Div0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\inst|Add1~2_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\inst|Add1~2_combout\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \inst|Add1~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\);

\inst|Div0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\inst|Add1~2_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\inst|Add1~2_combout\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \inst|Add1~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\);

\inst|Div0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\inst|Add1~2_combout\ & (\inst|Add0~1_combout\)) # (!\inst|Add1~2_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Add0~1_combout\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~1_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \inst|Add1~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\);

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
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\inst|Add1~1_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\))) # (!\inst|Add1~1_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~1_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\inst|Add1~2_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\))) # (!\inst|Add1~2_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\,
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

\inst|Div0|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|op_1~0_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ $ (VCC)
-- \inst|Div0|auto_generated|divider|op_1~1\ = CARRY(\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \inst|Div0|auto_generated|divider|op_1~1\);

\inst|Div0|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|op_1~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((!\inst|Div0|auto_generated|divider|op_1~1\)))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Add1~2_combout\ & (!\inst|Div0|auto_generated|divider|op_1~1\)) # (!\inst|Add1~2_combout\ & ((\inst|Div0|auto_generated|divider|op_1~1\) # (GND)))))
-- \inst|Div0|auto_generated|divider|op_1~3\ = CARRY(((!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & !\inst|Add1~2_combout\)) # (!\inst|Div0|auto_generated|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst|Add1~2_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|op_1~1\,
	combout => \inst|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \inst|Div0|auto_generated|divider|op_1~3\);

\inst|Div0|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|op_1~4_combout\ = (\inst|Div0|auto_generated|divider|op_1~3\ & (((\inst|Div0|auto_generated|divider|divider|sel\(5)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))) # 
-- (!\inst|Div0|auto_generated|divider|op_1~3\ & ((((\inst|Div0|auto_generated|divider|divider|sel\(5)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))))
-- \inst|Div0|auto_generated|divider|op_1~5\ = CARRY((!\inst|Div0|auto_generated|divider|op_1~3\ & ((\inst|Div0|auto_generated|divider|divider|sel\(5)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|sel\(5),
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|op_1~3\,
	combout => \inst|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \inst|Div0|auto_generated|divider|op_1~5\);

\inst|Div0|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|op_1~6_combout\ = \inst|Div0|auto_generated|divider|op_1~5\ $ (((\inst|Div0|auto_generated|divider|divider|sel\(0)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|sel\(0),
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	cin => \inst|Div0|auto_generated|divider|op_1~5\,
	combout => \inst|Div0|auto_generated|divider|op_1~6_combout\);

\inst|Div0|auto_generated|divider|diff_signs\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|diff_signs~combout\ = \SW[3]~input_o\ $ (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Div0|auto_generated|divider|diff_signs~combout\);

\inst|s_r[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~3_combout\ = (\inst|Div0|auto_generated|divider|diff_signs~combout\ & (\inst|Div0|auto_generated|divider|op_1~6_combout\)) # (!\inst|Div0|auto_generated|divider|diff_signs~combout\ & 
-- (((\inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ & !\inst|Div0|auto_generated|divider|divider|sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|op_1~6_combout\,
	datab => \inst|Div0|auto_generated|divider|diff_signs~combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|sel\(0),
	combout => \inst|s_r[3]~3_combout\);

\inst|s_r[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~4_combout\ = (\SW[8]~input_o\ & (((\SW[3]~input_o\ & \SW[7]~input_o\)) # (!\SW[10]~input_o\))) # (!\SW[8]~input_o\ & (\SW[10]~input_o\ & ((\SW[3]~input_o\) # (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|s_r[3]~4_combout\);

\inst|s_r[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~5_combout\ = (\SW[10]~input_o\ & (((\inst|s_r[3]~4_combout\)))) # (!\SW[10]~input_o\ & ((\inst|s_r[3]~4_combout\ & ((\inst|s_r[3]~3_combout\))) # (!\inst|s_r[3]~4_combout\ & (\inst|Mult0|auto_generated|add6_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[3]~6_combout\,
	datab => \inst|s_r[3]~3_combout\,
	datac => \SW[10]~input_o\,
	datad => \inst|s_r[3]~4_combout\,
	combout => \inst|s_r[3]~5_combout\);

\inst|s_r[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~6_combout\ = (\SW[9]~input_o\ & (\SW[8]~input_o\ & \SW[10]~input_o\)) # (!\SW[9]~input_o\ & ((!\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	combout => \inst|s_r[3]~6_combout\);

\inst|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~24_combout\ = (\inst|s_r[3]~2_combout\ & (\inst|Add3~22_combout\)) # (!\inst|s_r[3]~2_combout\ & (((\inst|s_r[3]~5_combout\ & !\inst|s_r[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~22_combout\,
	datab => \inst|s_r[3]~2_combout\,
	datac => \inst|s_r[3]~5_combout\,
	datad => \inst|s_r[3]~6_combout\,
	combout => \inst|Add3~24_combout\);

\inst|Add3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~25_combout\ = (\SW[9]~input_o\ & (\SW[10]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	combout => \inst|Add3~25_combout\);

\inst|Add3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~37_combout\ = (\inst|Add3~24_combout\) # ((\inst|Add3~25_combout\ & (\SW[3]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \inst|Add3~24_combout\,
	datad => \inst|Add3~25_combout\,
	combout => \inst|Add3~37_combout\);

\inst|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~26_combout\ = (\inst|s_r[3]~6_combout\ & (!\inst|s_r[3]~2_combout\ & (\SW[5]~input_o\ $ (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~6_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \inst|s_r[3]~2_combout\,
	combout => \inst|Add3~26_combout\);

\inst|Add3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~27_combout\ = (\inst|Add3~18_combout\ & (!\SW[9]~input_o\ & ((!\SW[8]~input_o\) # (!\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~18_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|Add3~27_combout\);

\inst|Div0|auto_generated|divider|quotient[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|quotient[1]~0_combout\ = (\inst|Div0|auto_generated|divider|diff_signs~combout\ & (\inst|Div0|auto_generated|divider|op_1~2_combout\)) # (!\inst|Div0|auto_generated|divider|diff_signs~combout\ & (((!\inst|Add1~2_combout\ 
-- & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|op_1~2_combout\,
	datab => \inst|Div0|auto_generated|divider|diff_signs~combout\,
	datac => \inst|Add1~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|quotient[1]~0_combout\);

\inst|s_r[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~7_combout\ = (\SW[10]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[8]~input_o\ & (\inst|Div0|auto_generated|divider|quotient[1]~0_combout\)) # (!\SW[8]~input_o\ & ((\inst|Mult0|auto_generated|add6_result[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|Div0|auto_generated|divider|quotient[1]~0_combout\,
	datac => \SW[8]~input_o\,
	datad => \inst|Mult0|auto_generated|add6_result[1]~2_combout\,
	combout => \inst|s_r[1]~7_combout\);

\inst|s_r[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~8_combout\ = (\inst|s_r[1]~7_combout\ & (((\SW[1]~input_o\ & \SW[5]~input_o\)) # (!\SW[10]~input_o\))) # (!\inst|s_r[1]~7_combout\ & (\SW[10]~input_o\ & ((\SW[1]~input_o\) # (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \inst|s_r[1]~7_combout\,
	datad => \SW[10]~input_o\,
	combout => \inst|s_r[1]~8_combout\);

\inst|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~28_combout\ = \SW[9]~input_o\ $ (((\SW[10]~input_o\ & \SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Add3~28_combout\);

\inst|Add3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~29_combout\ = (\inst|Add3~26_combout\) # ((\inst|Add3~27_combout\) # ((\inst|s_r[1]~8_combout\ & \inst|Add3~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~26_combout\,
	datab => \inst|Add3~27_combout\,
	datac => \inst|s_r[1]~8_combout\,
	datad => \inst|Add3~28_combout\,
	combout => \inst|Add3~29_combout\);

\inst|Div0|auto_generated|divider|quotient[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|quotient[2]~1_combout\ = (\inst|Div0|auto_generated|divider|diff_signs~combout\ & (\inst|Div0|auto_generated|divider|op_1~4_combout\)) # (!\inst|Div0|auto_generated|divider|diff_signs~combout\ & 
-- (((\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & !\inst|Div0|auto_generated|divider|divider|sel\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|op_1~4_combout\,
	datab => \inst|Div0|auto_generated|divider|diff_signs~combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|sel\(5),
	combout => \inst|Div0|auto_generated|divider|quotient[2]~1_combout\);

\inst|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~30_combout\ = (\SW[8]~input_o\ & ((\SW[10]~input_o\) # ((\inst|Div0|auto_generated|divider|quotient[2]~1_combout\)))) # (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & (\inst|Mult0|auto_generated|add6_result[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst|Mult0|auto_generated|add6_result[2]~4_combout\,
	datad => \inst|Div0|auto_generated|divider|quotient[2]~1_combout\,
	combout => \inst|Add3~30_combout\);

\inst|Add3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~31_combout\ = (\SW[10]~input_o\ & ((\SW[2]~input_o\ & ((\SW[6]~input_o\) # (\inst|Add3~30_combout\))) # (!\SW[2]~input_o\ & (\SW[6]~input_o\ & \inst|Add3~30_combout\)))) # (!\SW[10]~input_o\ & (\SW[2]~input_o\ $ (\SW[6]~input_o\ $ 
-- (\inst|Add3~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \inst|Add3~30_combout\,
	combout => \inst|Add3~31_combout\);

\inst|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~32_combout\ = (\SW[10]~input_o\ & ((\SW[2]~input_o\ & ((\SW[6]~input_o\) # (!\inst|Add3~30_combout\))) # (!\SW[2]~input_o\ & (\SW[6]~input_o\ & !\inst|Add3~30_combout\)))) # (!\SW[10]~input_o\ & (((\inst|Add3~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \inst|Add3~30_combout\,
	combout => \inst|Add3~32_combout\);

\inst|Add3~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~33_combout\ = (\inst|s_r[3]~2_combout\ & (\inst|Add3~20_combout\ $ (((\inst|Add3~32_combout\))))) # (!\inst|s_r[3]~2_combout\ & (((\inst|s_r[3]~6_combout\ & \inst|Add3~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~20_combout\,
	datab => \inst|s_r[3]~2_combout\,
	datac => \inst|s_r[3]~6_combout\,
	datad => \inst|Add3~32_combout\,
	combout => \inst|Add3~33_combout\);

\inst|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~34_combout\ = (\inst|Add3~32_combout\ & (((\inst|Add3~25_combout\ & !\inst|Add3~31_combout\)) # (!\inst|Add3~33_combout\))) # (!\inst|Add3~32_combout\ & ((\inst|Add3~33_combout\) # ((\inst|Add3~25_combout\ & \inst|Add3~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~25_combout\,
	datab => \inst|Add3~31_combout\,
	datac => \inst|Add3~32_combout\,
	datad => \inst|Add3~33_combout\,
	combout => \inst|Add3~34_combout\);

\Enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

\inst6|decOut_n[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n[5]~0_combout\ = ((\inst|Add3~37_combout\ & ((\inst|Add3~29_combout\) # (\inst|Add3~34_combout\)))) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~37_combout\,
	datab => \inst|Add3~29_combout\,
	datac => \inst|Add3~34_combout\,
	datad => \Enable~input_o\,
	combout => \inst6|decOut_n[5]~0_combout\);

\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|Add3~29_combout\ $ (VCC)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|Add3~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~29_combout\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|Add3~34_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|Add3~34_combout\ & 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|Add3~34_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~34_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|Add3~37_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|Add3~37_combout\ & 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|Add3~37_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~37_combout\,
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
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Add3~37_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~37_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Add3~34_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~34_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\);

\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Add3~29_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~29_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\);

\inst|s_r[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~11_combout\ = (\SW[3]~input_o\ & ((\SW[7]~input_o\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))) # (!\SW[7]~input_o\ & (!\inst|Div0|auto_generated|divider|op_1~0_combout\)))) # (!\SW[3]~input_o\ & 
-- ((\SW[7]~input_o\ & (!\inst|Div0|auto_generated|divider|op_1~0_combout\)) # (!\SW[7]~input_o\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \inst|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|s_r[0]~11_combout\);

\inst|s_r[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~9_combout\ = (\SW[8]~input_o\ & (((\SW[0]~input_o\ & \SW[4]~input_o\)) # (!\SW[10]~input_o\))) # (!\SW[8]~input_o\ & (\SW[10]~input_o\ & ((\SW[0]~input_o\) # (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|s_r[0]~9_combout\);

\inst|s_r[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~10_combout\ = (\SW[10]~input_o\ & (((\inst|s_r[0]~9_combout\)))) # (!\SW[10]~input_o\ & ((\inst|s_r[0]~9_combout\ & ((!\inst|s_r[0]~11_combout\))) # (!\inst|s_r[0]~9_combout\ & (\inst|Mult0|auto_generated|add6_result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[0]~0_combout\,
	datab => \inst|s_r[0]~11_combout\,
	datac => \SW[10]~input_o\,
	datad => \inst|s_r[0]~9_combout\,
	combout => \inst|s_r[0]~10_combout\);

\inst|Add3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~35_combout\ = (\inst|s_r[3]~6_combout\ & ((\SW[0]~input_o\ $ (\SW[4]~input_o\)))) # (!\inst|s_r[3]~6_combout\ & (\inst|s_r[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~10_combout\,
	datab => \inst|s_r[3]~6_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Add3~35_combout\);

\inst|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~36_combout\ = (\inst|s_r[3]~2_combout\ & (\inst|Add3~16_combout\)) # (!\inst|s_r[3]~2_combout\ & ((\inst|Add3~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~16_combout\,
	datab => \inst|Add3~35_combout\,
	datad => \inst|s_r[3]~2_combout\,
	combout => \inst|Add3~36_combout\);

\inst7|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n[6]~0_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & 
-- !\inst|Add3~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst|Add3~36_combout\,
	combout => \inst7|decOut_n[6]~0_combout\);

\inst7|decOut_n[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n[3]~1_combout\ = (\inst|Add3~36_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ $ 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~36_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \inst7|decOut_n[3]~1_combout\);

\inst7|decOut_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n[3]~2_combout\ = (\Enable~input_o\ & !\inst7|decOut_n[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datad => \inst7|decOut_n[3]~1_combout\,
	combout => \inst7|decOut_n[3]~2_combout\);

\inst7|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n[3]~3_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst|Add3~36_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (!\inst|Add3~36_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \inst|Add3~36_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	combout => \inst7|decOut_n[3]~3_combout\);

\inst7|decOut_n[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n[3]~4_combout\ = (\Enable~input_o\ & \inst7|decOut_n[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \inst7|decOut_n[3]~3_combout\,
	combout => \inst7|decOut_n[3]~4_combout\);

\inst7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst|Add3~36_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \inst|Add3~36_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	combout => \inst7|Equal0~0_combout\);

\inst7|decOut_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n[6]~5_combout\ = (\inst7|decOut_n[3]~4_combout\ & (((!\inst7|Equal0~0_combout\)))) # (!\inst7|decOut_n[3]~4_combout\ & ((\inst7|decOut_n[6]~0_combout\) # ((!\inst7|decOut_n[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|decOut_n[6]~0_combout\,
	datab => \inst7|decOut_n[3]~2_combout\,
	datac => \inst7|decOut_n[3]~4_combout\,
	datad => \inst7|Equal0~0_combout\,
	combout => \inst7|decOut_n[6]~5_combout\);

\inst7|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n~6_combout\ = (\inst|Add3~36_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ $ (((\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))))) # (!\inst|Add3~36_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~36_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \inst7|decOut_n~6_combout\);

\inst7|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n~7_combout\ = (\inst7|decOut_n~6_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|decOut_n~6_combout\,
	datad => \Enable~input_o\,
	combout => \inst7|decOut_n~7_combout\);

\inst7|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n~8_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst|Add3~36_combout\ & ((!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\inst|Add3~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~36_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \inst7|decOut_n~8_combout\);

\inst7|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n~9_combout\ = (\inst7|decOut_n~8_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|decOut_n~8_combout\,
	datad => \Enable~input_o\,
	combout => \inst7|decOut_n~9_combout\);

\inst7|decOut_n[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n[3]~10_combout\ = (!\inst|Add3~36_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
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
	datad => \inst|Add3~36_combout\,
	combout => \inst7|decOut_n[3]~10_combout\);

\inst7|decOut_n[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n[3]~11_combout\ = (\inst7|decOut_n[3]~4_combout\ & (\inst7|Equal0~0_combout\)) # (!\inst7|decOut_n[3]~4_combout\ & (((\inst7|decOut_n[3]~10_combout\) # (!\inst7|decOut_n[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~0_combout\,
	datab => \inst7|decOut_n[3]~10_combout\,
	datac => \inst7|decOut_n[3]~2_combout\,
	datad => \inst7|decOut_n[3]~4_combout\,
	combout => \inst7|decOut_n[3]~11_combout\);

\inst7|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n~12_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (!\inst|Add3~36_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \inst|Add3~36_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	combout => \inst7|decOut_n~12_combout\);

\inst7|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n~13_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\) # 
-- (!\inst|Add3~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst|Add3~36_combout\,
	combout => \inst7|decOut_n~13_combout\);

\inst7|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n~14_combout\ = (\inst7|decOut_n~12_combout\) # ((\inst7|decOut_n~13_combout\) # (!\Enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|decOut_n~12_combout\,
	datab => \inst7|decOut_n~13_combout\,
	datad => \Enable~input_o\,
	combout => \inst7|decOut_n~14_combout\);

\inst7|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n~15_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst|Add3~36_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ $ (\inst|Add3~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \inst|Add3~36_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	combout => \inst7|decOut_n~15_combout\);

\inst7|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n~16_combout\ = (\inst7|decOut_n~13_combout\) # ((\inst7|decOut_n~15_combout\) # (!\Enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|decOut_n~13_combout\,
	datab => \inst7|decOut_n~15_combout\,
	datad => \Enable~input_o\,
	combout => \inst7|decOut_n~16_combout\);

\inst7|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n~17_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\inst|Add3~36_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ $ 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst|Add3~36_combout\ $ 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \inst|Add3~36_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	combout => \inst7|decOut_n~17_combout\);

\inst7|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|decOut_n~18_combout\ = (\inst7|decOut_n~17_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|decOut_n~17_combout\,
	datad => \Enable~input_o\,
	combout => \inst7|decOut_n~18_combout\);

\inst|Mult0|auto_generated|le5a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(4) = (\SW[1]~input_o\ & ((!\SW[7]~input_o\))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(4));

\inst|Mult0|auto_generated|add10_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[2]~4_combout\ = (\inst|Mult0|auto_generated|le5a\(4) & (\inst|Mult0|auto_generated|add10_result[1]~3\ $ (GND))) # (!\inst|Mult0|auto_generated|le5a\(4) & ((GND) # (!\inst|Mult0|auto_generated|add10_result[1]~3\)))
-- \inst|Mult0|auto_generated|add10_result[2]~5\ = CARRY((!\inst|Mult0|auto_generated|add10_result[1]~3\) # (!\inst|Mult0|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(4),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add10_result[1]~3\,
	combout => \inst|Mult0|auto_generated|add10_result[2]~4_combout\,
	cout => \inst|Mult0|auto_generated|add10_result[2]~5\);

\inst|Mult0|auto_generated|add10_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[3]~6_combout\ = !\inst|Mult0|auto_generated|add10_result[2]~5\
-- \inst|Mult0|auto_generated|add10_result[3]~7\ = CARRY(!\inst|Mult0|auto_generated|add10_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add10_result[2]~5\,
	combout => \inst|Mult0|auto_generated|add10_result[3]~6_combout\,
	cout => \inst|Mult0|auto_generated|add10_result[3]~7\);

\inst|Mult0|auto_generated|le2a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(3) = (\SW[6]~input_o\ & (\SW[1]~input_o\ & (\SW[2]~input_o\))) # (!\SW[6]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(3));

\inst|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(3) = (\inst|Mult0|auto_generated|le2a\(3)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \inst|Mult0|auto_generated|le2a\(3),
	datad => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \inst|Mult0|auto_generated|le4a\(3));

\inst|Mult0|auto_generated|le2a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(2) = (\SW[5]~input_o\ & (\SW[1]~input_o\ & (\SW[2]~input_o\))) # (!\SW[5]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(2));

\inst|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(2) = (\inst|Mult0|auto_generated|le2a\(2)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le2a\(2),
	datab => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(2));

\inst|Mult0|auto_generated|add6_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[4]~8_combout\ = ((\inst|Mult0|auto_generated|add10_result[2]~4_combout\ $ (\inst|Mult0|auto_generated|le4a\(2) $ (!\inst|Mult0|auto_generated|add6_result[3]~7\)))) # (GND)
-- \inst|Mult0|auto_generated|add6_result[4]~9\ = CARRY((\inst|Mult0|auto_generated|add10_result[2]~4_combout\ & ((\inst|Mult0|auto_generated|le4a\(2)) # (!\inst|Mult0|auto_generated|add6_result[3]~7\))) # 
-- (!\inst|Mult0|auto_generated|add10_result[2]~4_combout\ & (\inst|Mult0|auto_generated|le4a\(2) & !\inst|Mult0|auto_generated|add6_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add10_result[2]~4_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[3]~7\,
	combout => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[4]~9\);

\inst|Mult0|auto_generated|add6_result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[5]~10_combout\ = (\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & ((\inst|Mult0|auto_generated|le4a\(3) & (\inst|Mult0|auto_generated|add6_result[4]~9\ & VCC)) # (!\inst|Mult0|auto_generated|le4a\(3) & 
-- (!\inst|Mult0|auto_generated|add6_result[4]~9\)))) # (!\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & ((\inst|Mult0|auto_generated|le4a\(3) & (!\inst|Mult0|auto_generated|add6_result[4]~9\)) # (!\inst|Mult0|auto_generated|le4a\(3) & 
-- ((\inst|Mult0|auto_generated|add6_result[4]~9\) # (GND)))))
-- \inst|Mult0|auto_generated|add6_result[5]~11\ = CARRY((\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & (!\inst|Mult0|auto_generated|le4a\(3) & !\inst|Mult0|auto_generated|add6_result[4]~9\)) # 
-- (!\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & ((!\inst|Mult0|auto_generated|add6_result[4]~9\) # (!\inst|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add10_result[3]~6_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[4]~9\,
	combout => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[5]~11\);

\inst|Mult0|auto_generated|add10_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[4]~8_combout\ = !\inst|Mult0|auto_generated|add10_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mult0|auto_generated|add10_result[3]~7\,
	combout => \inst|Mult0|auto_generated|add10_result[4]~8_combout\);

\inst|Mult0|auto_generated|le2a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(4) = (\SW[7]~input_o\ & (\SW[1]~input_o\ & (\SW[2]~input_o\))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(4));

\inst|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(4) = (\inst|Mult0|auto_generated|le2a\(4)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \inst|Mult0|auto_generated|le2a\(4),
	datad => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \inst|Mult0|auto_generated|le4a\(4));

\inst|Mult0|auto_generated|add6_result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[6]~12_combout\ = ((\inst|Mult0|auto_generated|add10_result[4]~8_combout\ $ (\inst|Mult0|auto_generated|le4a\(4) $ (\inst|Mult0|auto_generated|add6_result[5]~11\)))) # (GND)
-- \inst|Mult0|auto_generated|add6_result[6]~13\ = CARRY((\inst|Mult0|auto_generated|add10_result[4]~8_combout\ & ((!\inst|Mult0|auto_generated|add6_result[5]~11\) # (!\inst|Mult0|auto_generated|le4a\(4)))) # 
-- (!\inst|Mult0|auto_generated|add10_result[4]~8_combout\ & (!\inst|Mult0|auto_generated|le4a\(4) & !\inst|Mult0|auto_generated|add6_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add10_result[4]~8_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[5]~11\,
	combout => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[6]~13\);

\inst4|decOut_n[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[5]~0_combout\ = (\inst|Mult0|auto_generated|add6_result[5]~10_combout\) # (\inst|Mult0|auto_generated|add6_result[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	combout => \inst4|decOut_n[5]~0_combout\);

\inst|Mult0|auto_generated|add6_result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[7]~14_combout\ = !\inst|Mult0|auto_generated|add6_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mult0|auto_generated|add6_result[6]~13\,
	combout => \inst|Mult0|auto_generated|add6_result[7]~14_combout\);

\inst|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~2_combout\ = (\SW[9]~input_o\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Equal7~2_combout\);

\inst4|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n[5]~1_combout\ = ((\inst4|decOut_n[5]~0_combout\ & (\inst|Mult0|auto_generated|add6_result[7]~14_combout\ & \inst|Equal7~2_combout\))) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n[5]~0_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \inst|Equal7~2_combout\,
	datad => \Enable~input_o\,
	combout => \inst4|decOut_n[5]~1_combout\);

\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst|Equal7~2_combout\ & \inst|Mult0|auto_generated|add6_result[5]~10_combout\)))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst|Equal7~2_combout\ & \inst|Mult0|auto_generated|add6_result[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~2_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	datad => VCC,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|Equal7~2_combout\ & ((\inst|Mult0|auto_generated|add6_result[6]~12_combout\ & (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\inst|Mult0|auto_generated|add6_result[6]~12_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))) # (!\inst|Equal7~2_combout\ & (((!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & ((!\inst|Mult0|auto_generated|add6_result[6]~12_combout\) # (!\inst|Equal7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~2_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (\inst|Equal7~2_combout\ & (\inst|Mult0|auto_generated|add6_result[7]~14_combout\ & VCC))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst|Equal7~2_combout\ & \inst|Mult0|auto_generated|add6_result[7]~14_combout\)))))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|Equal7~2_combout\ & (\inst|Mult0|auto_generated|add6_result[7]~14_combout\ & !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~2_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[7]~14_combout\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mult0|auto_generated|add6_result[6]~12_combout\ & (\inst|Equal7~2_combout\))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	datab => \inst|Equal7~2_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\);

\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst|Equal7~2_combout\ & \inst|Mult0|auto_generated|add6_result[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~2_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mult0|auto_generated|add6_result[4]~8_combout\ & (\inst|Equal7~2_combout\))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	datab => \inst|Equal7~2_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\);

\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mult0|auto_generated|add6_result[5]~10_combout\ & (\inst|Equal7~2_combout\))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	datab => \inst|Equal7~2_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\);

\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mult0|auto_generated|add6_result[7]~14_combout\ & (\inst|Equal7~2_combout\))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[7]~14_combout\,
	datab => \inst|Equal7~2_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\);

\inst5|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[6]~0_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ $ 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\)))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	combout => \inst5|decOut_n[6]~0_combout\);

\inst5|decOut_n[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[3]~1_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & 
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & !\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	combout => \inst5|decOut_n[3]~1_combout\);

\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & 
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	combout => \inst5|Equal0~0_combout\);

\inst5|decOut_n[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[6]~2_combout\ = ((\inst5|decOut_n[3]~1_combout\ & ((!\inst5|Equal0~0_combout\))) # (!\inst5|decOut_n[3]~1_combout\ & (\inst5|decOut_n[6]~0_combout\))) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n[6]~0_combout\,
	datab => \inst5|decOut_n[3]~1_combout\,
	datac => \inst5|Equal0~0_combout\,
	datad => \Enable~input_o\,
	combout => \inst5|decOut_n[6]~2_combout\);

\inst5|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~3_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ $ (((\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\))))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & !\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	combout => \inst5|decOut_n~3_combout\);

\inst5|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~4_combout\ = (\inst5|decOut_n~3_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n~3_combout\,
	datad => \Enable~input_o\,
	combout => \inst5|decOut_n~4_combout\);

\inst5|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~5_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & ((!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\)))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & ((!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	combout => \inst5|decOut_n~5_combout\);

\inst5|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~6_combout\ = (\inst5|decOut_n~5_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n~5_combout\,
	datad => \Enable~input_o\,
	combout => \inst5|decOut_n~6_combout\);

\inst5|decOut_n[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[3]~7_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- !\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ $ 
-- (((!\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	combout => \inst5|decOut_n[3]~7_combout\);

\inst5|decOut_n[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[3]~8_combout\ = ((\inst5|decOut_n[3]~1_combout\ & (\inst5|Equal0~0_combout\)) # (!\inst5|decOut_n[3]~1_combout\ & ((\inst5|decOut_n[3]~7_combout\)))) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~0_combout\,
	datab => \inst5|decOut_n[3]~7_combout\,
	datac => \inst5|decOut_n[3]~1_combout\,
	datad => \Enable~input_o\,
	combout => \inst5|decOut_n[3]~8_combout\);

\inst5|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~9_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\)))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & !\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	combout => \inst5|decOut_n~9_combout\);

\inst5|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~10_combout\ = (\inst5|decOut_n~9_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n~9_combout\,
	datad => \Enable~input_o\,
	combout => \inst5|decOut_n~10_combout\);

\inst5|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~11_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\)) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\))))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ $ (\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	combout => \inst5|decOut_n~11_combout\);

\inst5|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~12_combout\ = (\inst5|decOut_n~11_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n~11_combout\,
	datad => \Enable~input_o\,
	combout => \inst5|decOut_n~12_combout\);

\inst5|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~13_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ $ 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\)))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\ $ (\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[12]~1_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	combout => \inst5|decOut_n~13_combout\);

\inst5|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~14_combout\ = (\inst5|decOut_n~13_combout\) # (!\Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n~13_combout\,
	datad => \Enable~input_o\,
	combout => \inst5|decOut_n~14_combout\);

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


