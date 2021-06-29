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

-- DATE "04/18/2021 14:42:20"

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

ENTITY 	ALUN IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	op : IN std_logic_vector(2 DOWNTO 0);
	r : OUT std_logic_vector(7 DOWNTO 0);
	m : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALUN;

ARCHITECTURE structure OF ALUN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \r[2]~output_o\ : std_logic;
SIGNAL \r[3]~output_o\ : std_logic;
SIGNAL \r[4]~output_o\ : std_logic;
SIGNAL \r[5]~output_o\ : std_logic;
SIGNAL \r[6]~output_o\ : std_logic;
SIGNAL \r[7]~output_o\ : std_logic;
SIGNAL \m[0]~output_o\ : std_logic;
SIGNAL \m[1]~output_o\ : std_logic;
SIGNAL \m[2]~output_o\ : std_logic;
SIGNAL \m[3]~output_o\ : std_logic;
SIGNAL \m[4]~output_o\ : std_logic;
SIGNAL \m[5]~output_o\ : std_logic;
SIGNAL \m[6]~output_o\ : std_logic;
SIGNAL \m[7]~output_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \s_r[0]~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \s_r[0]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|selnose[0]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|selnose[9]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[34]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~21_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~23_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~28_combout\ : std_logic;
SIGNAL \s_r[0]~2_combout\ : std_logic;
SIGNAL \s_r[0]~3_combout\ : std_logic;
SIGNAL \s_r[0]~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \s_r[0]~5_combout\ : std_logic;
SIGNAL \RESULT~0_combout\ : std_logic;
SIGNAL \s_r[0]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \s_r[0]~7_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \s_r[1]~8_combout\ : std_logic;
SIGNAL \s_r[1]~9_combout\ : std_logic;
SIGNAL \s_r[1]~10_combout\ : std_logic;
SIGNAL \RESULT~1_combout\ : std_logic;
SIGNAL \s_r[1]~11_combout\ : std_logic;
SIGNAL \s_r[1]~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~29_combout\ : std_logic;
SIGNAL \s_r[2]~13_combout\ : std_logic;
SIGNAL \s_r[2]~14_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \RESULT~2_combout\ : std_logic;
SIGNAL \s_r[2]~15_combout\ : std_logic;
SIGNAL \s_r[2]~16_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \s_r[3]~17_combout\ : std_logic;
SIGNAL \s_r[3]~18_combout\ : std_logic;
SIGNAL \s_r[3]~19_combout\ : std_logic;
SIGNAL \RESULT~3_combout\ : std_logic;
SIGNAL \s_r[3]~20_combout\ : std_logic;
SIGNAL \s_r[3]~21_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~30_combout\ : std_logic;
SIGNAL \s_r[4]~22_combout\ : std_logic;
SIGNAL \s_r[4]~23_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \RESULT~4_combout\ : std_logic;
SIGNAL \s_r[4]~24_combout\ : std_logic;
SIGNAL \s_r[4]~25_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ : std_logic;
SIGNAL \s_r[5]~26_combout\ : std_logic;
SIGNAL \s_r[5]~27_combout\ : std_logic;
SIGNAL \s_r[5]~28_combout\ : std_logic;
SIGNAL \RESULT~5_combout\ : std_logic;
SIGNAL \s_r[5]~29_combout\ : std_logic;
SIGNAL \s_r[5]~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~31_combout\ : std_logic;
SIGNAL \s_r[6]~31_combout\ : std_logic;
SIGNAL \s_r[6]~32_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \RESULT~6_combout\ : std_logic;
SIGNAL \s_r[6]~33_combout\ : std_logic;
SIGNAL \s_r[6]~34_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ : std_logic;
SIGNAL \s_r[7]~35_combout\ : std_logic;
SIGNAL \s_r[7]~36_combout\ : std_logic;
SIGNAL \s_r[7]~37_combout\ : std_logic;
SIGNAL \RESULT~7_combout\ : std_logic;
SIGNAL \s_r[7]~38_combout\ : std_logic;
SIGNAL \s_r[7]~39_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \m~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \m~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \m~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \m~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \m~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \m~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \m~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \m~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_op <= op;
r <= ww_r;
m <= ww_m;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\);

\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\a[7]~input_o\ & \a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\b[7]~input_o\ & \b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\);

\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);

\r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_r[0]~7_combout\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

\r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_r[1]~12_combout\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

\r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_r[2]~16_combout\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

\r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_r[3]~21_combout\,
	devoe => ww_devoe,
	o => \r[3]~output_o\);

\r[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_r[4]~25_combout\,
	devoe => ww_devoe,
	o => \r[4]~output_o\);

\r[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_r[5]~30_combout\,
	devoe => ww_devoe,
	o => \r[5]~output_o\);

\r[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_r[6]~34_combout\,
	devoe => ww_devoe,
	o => \r[6]~output_o\);

\r[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_r[7]~39_combout\,
	devoe => ww_devoe,
	o => \r[7]~output_o\);

\m[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~0_combout\,
	devoe => ww_devoe,
	o => \m[0]~output_o\);

\m[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~1_combout\,
	devoe => ww_devoe,
	o => \m[1]~output_o\);

\m[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~2_combout\,
	devoe => ww_devoe,
	o => \m[2]~output_o\);

\m[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~3_combout\,
	devoe => ww_devoe,
	o => \m[3]~output_o\);

\m[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~4_combout\,
	devoe => ww_devoe,
	o => \m[4]~output_o\);

\m[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~5_combout\,
	devoe => ww_devoe,
	o => \m[5]~output_o\);

\m[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~6_combout\,
	devoe => ww_devoe,
	o => \m[6]~output_o\);

\m[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~7_combout\,
	devoe => ww_devoe,
	o => \m[7]~output_o\);

\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

\s_r[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[0]~0_combout\ = (\op[0]~input_o\) # ((\op[2]~input_o\ & \op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	combout => \s_r[0]~0_combout\);

\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 8,
	datab_clock => "none",
	datab_width => 8,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 16,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

\s_r[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[0]~1_combout\ = (\op[1]~input_o\ & !\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \s_r[0]~1_combout\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[0]~input_o\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ = CARRY((\a[0]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\);

\Mod0|auto_generated|divider|divider|selnose[36]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ = (!\b[7]~input_o\ & (!\b[5]~input_o\ & !\b[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[7]~input_o\,
	datac => \b[5]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\);

\Mod0|auto_generated|divider|divider|selnose[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose[0]~1_combout\ = (\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & (!\b[3]~input_o\ & (!\b[4]~input_o\ & !\b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	datab => \b[3]~input_o\,
	datac => \b[4]~input_o\,
	datad => \b[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|selnose[0]~1_combout\);

\Mod0|auto_generated|divider|divider|StageOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\a[7]~input_o\ & ((\b[1]~input_o\) # ((!\Mod0|auto_generated|divider|divider|selnose[0]~1_combout\) # (!\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|selnose[0]~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\);

\Mod0|auto_generated|divider|divider|add_sub_1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\ = (\a[6]~input_o\) # (!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\);

\Mod0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\b[1]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datab => \b[1]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|selnose[0]~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\);

\Mod0|auto_generated|divider|divider|selnose[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose[9]~2_combout\ = ((\b[1]~input_o\ & ((!\Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\) # (!\Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\))) # (!\b[1]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\))) # (!\Mod0|auto_generated|divider|divider|selnose[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|selnose[0]~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|selnose[9]~2_combout\);

\Mod0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\ = \a[6]~input_o\ $ (((!\Mod0|auto_generated|divider|divider|selnose[9]~2_combout\ & \b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|selnose[9]~2_combout\,
	datad => \b[0]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\);

\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[5]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[5]~input_o\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\a[5]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[5]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\b[1]~input_o\ 
-- & (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\b[1]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\b[1]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\ $ (\b[2]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\ & (!\b[2]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

\Mod0|auto_generated|divider|divider|selnose[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose\(18) = (\b[3]~input_o\) # ((\b[4]~input_o\) # ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[4]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|selnose\(18));

\Mod0|auto_generated|divider|divider|StageOut[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ = (\Mod0|auto_generated|divider|divider|selnose\(18) & (\Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\)) # (!\Mod0|auto_generated|divider|divider|selnose\(18) & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|selnose\(18),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\);

\Mod0|auto_generated|divider|divider|StageOut[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\Mod0|auto_generated|divider|divider|selnose\(18) & (\Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\)) # (!\Mod0|auto_generated|divider|divider|selnose\(18) & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|selnose\(18),
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\);

\Mod0|auto_generated|divider|divider|StageOut[16]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\Mod0|auto_generated|divider|divider|selnose\(18) & (\a[5]~input_o\)) # (!\Mod0|auto_generated|divider|divider|selnose\(18) & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|selnose\(18),
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~5_combout\);

\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[4]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[4]~input_o\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\a[4]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[4]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ((\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ((\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # 
-- (!\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[16]~5_combout\ & (\b[1]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ((\b[1]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ $ (\b[2]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ & (!\b[2]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ & ((\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\b[3]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ & ((\b[3]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # 
-- (!\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ & (\b[3]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ & ((\b[3]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

\Mod0|auto_generated|divider|divider|selnose[27]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ = (!\b[7]~input_o\ & (!\b[4]~input_o\ & (!\b[5]~input_o\ & !\b[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \b[4]~input_o\,
	datac => \b[5]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|selnose[27]~3_combout\);

\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

\Mod0|auto_generated|divider|divider|StageOut[27]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~6_combout\ = (\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[27]~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~6_combout\);

\Mod0|auto_generated|divider|divider|StageOut[26]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~7_combout\ = (\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[27]~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~7_combout\);

\Mod0|auto_generated|divider|divider|StageOut[25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~8_combout\ = (\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[16]~5_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[16]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[27]~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~8_combout\);

\Mod0|auto_generated|divider|divider|StageOut[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~9_combout\ = (\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\a[4]~input_o\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))) # (!\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & (\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[27]~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~9_combout\);

\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[3]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[3]~input_o\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\a[3]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[3]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[24]~9_combout\ & ((\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[24]~9_combout\ & ((\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))) # 
-- (!\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[24]~9_combout\ & (\b[1]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[24]~9_combout\ & ((\b[1]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[25]~8_combout\ $ (\b[2]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[25]~8_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~8_combout\ & (!\b[2]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\b[3]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\b[3]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # 
-- (!\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[26]~7_combout\ & (\b[3]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\b[3]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[27]~6_combout\ $ (\b[4]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[27]~6_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\) # (!\b[4]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[27]~6_combout\ & (!\b[4]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

\Mod0|auto_generated|divider|divider|StageOut[36]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~10_combout\ = (\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~6_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[27]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~10_combout\);

\Mod0|auto_generated|divider|divider|StageOut[35]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~11_combout\ = (\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~7_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[26]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~11_combout\);

\Mod0|auto_generated|divider|divider|StageOut[34]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[34]~12_combout\ = (\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~8_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[25]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[34]~12_combout\);

\Mod0|auto_generated|divider|divider|StageOut[33]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~13_combout\ = (\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[24]~9_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[24]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~13_combout\);

\Mod0|auto_generated|divider|divider|StageOut[32]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\ = (\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\a[3]~input_o\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))) # (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\);

\Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[2]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[2]~input_o\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\a[2]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))) # 
-- (!\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\ & (\b[1]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\b[1]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[33]~13_combout\ $ (\b[2]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[33]~13_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[33]~13_combout\ & (!\b[2]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\b[3]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\b[3]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))) # 
-- (!\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[34]~12_combout\ & (\b[3]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\b[3]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[35]~11_combout\ $ (\b[4]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[35]~11_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\) # (!\b[4]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[35]~11_combout\ & (!\b[4]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\b[5]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\b[5]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\b[5]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))) # 
-- (!\b[5]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[36]~10_combout\ & (\b[5]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\b[5]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

\Mod0|auto_generated|divider|divider|selnose[45]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ = (!\b[7]~input_o\ & !\b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[7]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\);

\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

\Mod0|auto_generated|divider|divider|StageOut[45]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\ = (\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[36]~10_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[36]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\);

\Mod0|auto_generated|divider|divider|StageOut[44]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~16_combout\ = (\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[35]~11_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[35]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~16_combout\);

\Mod0|auto_generated|divider|divider|StageOut[43]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~17_combout\ = (\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[34]~12_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[34]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~17_combout\);

\Mod0|auto_generated|divider|divider|StageOut[42]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~18_combout\ = (\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[33]~13_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[33]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~18_combout\);

\Mod0|auto_generated|divider|divider|StageOut[41]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~19_combout\ = (\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~19_combout\);

\Mod0|auto_generated|divider|divider|StageOut[40]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~20_combout\ = (\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\a[2]~input_o\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\))))) # (!\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~20_combout\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[1]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[1]~input_o\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\a[1]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # 
-- (!\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[40]~20_combout\ & (\b[1]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\b[1]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[41]~19_combout\ $ (\b[2]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[41]~19_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[41]~19_combout\ & (!\b[2]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\b[3]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\b[3]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))) # 
-- (!\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[42]~18_combout\ & (\b[3]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\b[3]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[43]~17_combout\ $ (\b[4]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[43]~17_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\) # (!\b[4]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[43]~17_combout\ & (!\b[4]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[44]~16_combout\ & ((\b[5]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\b[5]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[44]~16_combout\ & ((\b[5]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))) # 
-- (!\b[5]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[44]~16_combout\ & (\b[5]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[44]~16_combout\ & ((\b[5]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\ $ (\b[6]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\) # (!\b[6]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\ & (!\b[6]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datab => \b[6]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

\Mod0|auto_generated|divider|divider|StageOut[54]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~21_combout\ = (\b[7]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\)) # (!\b[7]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	datac => \b[7]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~21_combout\);

\Mod0|auto_generated|divider|divider|StageOut[53]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~22_combout\ = (\b[7]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[44]~16_combout\)) # (!\b[7]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[44]~16_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datac => \b[7]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~22_combout\);

\Mod0|auto_generated|divider|divider|StageOut[52]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~23_combout\ = (\b[7]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[43]~17_combout\)) # (!\b[7]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[43]~17_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datac => \b[7]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~23_combout\);

\Mod0|auto_generated|divider|divider|StageOut[51]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~24_combout\ = (\b[7]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[42]~18_combout\)) # (!\b[7]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~18_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datac => \b[7]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~24_combout\);

\Mod0|auto_generated|divider|divider|StageOut[50]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\ = (\b[7]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[41]~19_combout\)) # (!\b[7]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[41]~19_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datac => \b[7]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\);

\Mod0|auto_generated|divider|divider|StageOut[49]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\ = (\b[7]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[40]~20_combout\)) # (!\b[7]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[40]~20_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datac => \b[7]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\);

\Mod0|auto_generated|divider|divider|StageOut[48]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~27_combout\ = (\b[7]~input_o\ & (\a[1]~input_o\)) # (!\b[7]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\a[1]~input_o\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datac => \b[7]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~27_combout\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[48]~27_combout\ & ((\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[48]~27_combout\ & ((\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # (GND))) # 
-- (!\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[48]~27_combout\ & (\b[1]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[48]~27_combout\ & ((\b[1]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[48]~27_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\ $ (\b[2]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\ & (!\b[2]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\ & ((\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # (!\b[3]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\ & ((\b[3]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # (GND))) # 
-- (!\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\ & (\b[3]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\ & ((\b[3]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[51]~24_combout\ $ (\b[4]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[51]~24_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\) # (!\b[4]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[51]~24_combout\ & (!\b[4]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[51]~24_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[52]~23_combout\ & ((\b[5]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)) # (!\b[5]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[52]~23_combout\ & ((\b[5]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # (GND))) # 
-- (!\b[5]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[52]~23_combout\ & (\b[5]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[52]~23_combout\ & ((\b[5]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~23_combout\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[53]~22_combout\ $ (\b[6]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[53]~22_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\) # (!\b[6]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[53]~22_combout\ & (!\b[6]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[53]~22_combout\,
	datab => \b[6]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[54]~21_combout\ & ((\b[7]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)) # (!\b[7]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[54]~21_combout\ & ((\b[7]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # (GND))) # 
-- (!\b[7]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[54]~21_combout\ & (\b[7]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[54]~21_combout\ & ((\b[7]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[54]~21_combout\,
	datab => \b[7]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

\Mod0|auto_generated|divider|divider|StageOut[56]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~28_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\a[0]~input_o\)) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~28_combout\);

\s_r[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[0]~2_combout\ = (\s_r[0]~0_combout\ & (((\s_r[0]~1_combout\)))) # (!\s_r[0]~0_combout\ & ((\s_r[0]~1_combout\ & (\Mult0|auto_generated|mac_out2~dataout\)) # (!\s_r[0]~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[56]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~0_combout\,
	datab => \Mult0|auto_generated|mac_out2~dataout\,
	datac => \s_r[0]~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[56]~28_combout\,
	combout => \s_r[0]~2_combout\);

\s_r[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[0]~3_combout\ = (\b[0]~input_o\ & ((\s_r[0]~2_combout\) # ((\a[0]~input_o\ & \s_r[0]~0_combout\)))) # (!\b[0]~input_o\ & (\s_r[0]~2_combout\ & ((\a[0]~input_o\) # (!\s_r[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \s_r[0]~2_combout\,
	datad => \s_r[0]~0_combout\,
	combout => \s_r[0]~3_combout\);

\s_r[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[0]~4_combout\ = (\op[2]~input_o\ & ((!\op[0]~input_o\) # (!\op[1]~input_o\))) # (!\op[2]~input_o\ & (\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \s_r[0]~4_combout\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \b[0]~input_o\ $ (((!\op[0]~input_o\ & (!\op[2]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Add0~0_combout\);

\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\op[0]~input_o\ & (!\op[2]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Equal7~0_combout\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(!\Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datad => VCC,
	cout => \Add0~2_cout\);

\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((\a[0]~input_o\ & (!\Add0~2_cout\)) # (!\a[0]~input_o\ & ((\Add0~2_cout\) # (GND))))) # (!\Add0~0_combout\ & ((\a[0]~input_o\ & (\Add0~2_cout\ & VCC)) # (!\a[0]~input_o\ & (!\Add0~2_cout\))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & ((!\Add0~2_cout\) # (!\a[0]~input_o\))) # (!\Add0~0_combout\ & (!\a[0]~input_o\ & !\Add0~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \a[0]~input_o\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

\s_r[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[0]~5_combout\ = (!\op[2]~input_o\ & ((\op[0]~input_o\) # (!\op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[2]~input_o\,
	combout => \s_r[0]~5_combout\);

\RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~0_combout\ = \b[0]~input_o\ $ (\a[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \RESULT~0_combout\);

\s_r[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[0]~6_combout\ = (\s_r[0]~4_combout\ & (((\s_r[0]~5_combout\)))) # (!\s_r[0]~4_combout\ & ((\s_r[0]~5_combout\ & (\Add0~3_combout\)) # (!\s_r[0]~5_combout\ & ((\RESULT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~4_combout\,
	datab => \Add0~3_combout\,
	datac => \s_r[0]~5_combout\,
	datad => \RESULT~0_combout\,
	combout => \s_r[0]~6_combout\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[5]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[5]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\a[5]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[5]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\b[1]~input_o\ 
-- & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\ & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

\Div0|auto_generated|divider|divider|selnose[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(18) = (\b[3]~input_o\) # ((\b[4]~input_o\) # ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[4]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(18));

\Div0|auto_generated|divider|divider|StageOut[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = (\Div0|auto_generated|divider|divider|selnose\(18) & (\Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\)) # (!\Div0|auto_generated|divider|divider|selnose\(18) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(18),
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

\Div0|auto_generated|divider|divider|StageOut[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ = (\Div0|auto_generated|divider|divider|selnose\(18) & (\Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\)) # (!\Div0|auto_generated|divider|divider|selnose\(18) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(18),
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\);

\Div0|auto_generated|divider|divider|StageOut[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ = (\Div0|auto_generated|divider|divider|selnose\(18) & (\a[5]~input_o\)) # (!\Div0|auto_generated|divider|divider|selnose\(18) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(18),
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~2_combout\);

\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[4]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[4]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\a[4]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[4]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ & ((\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ & ((\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # 
-- (!\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~2_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & ((\b[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\b[3]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & ((\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # 
-- (!\b[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & (\b[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & ((\b[3]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

\Div0|auto_generated|divider|divider|StageOut[27]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~3_combout\ = (\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[18]~0_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & (\Div0|auto_generated|divider|divider|StageOut[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[27]~3_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~3_combout\);

\Div0|auto_generated|divider|divider|StageOut[26]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ = (\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~1_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & (\Div0|auto_generated|divider|divider|StageOut[17]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[27]~3_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~4_combout\);

\Div0|auto_generated|divider|divider|StageOut[25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~5_combout\ = (\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~2_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & (\Div0|auto_generated|divider|divider|StageOut[16]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[27]~3_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~5_combout\);

\Div0|auto_generated|divider|divider|StageOut[24]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ = (\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\a[4]~input_o\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))) # (!\Mod0|auto_generated|divider|divider|selnose[27]~3_combout\ & (\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[27]~3_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~6_combout\);

\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[3]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[3]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\a[3]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[3]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ & ((\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ & ((\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))) # 
-- (!\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[24]~6_combout\ & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[24]~6_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[25]~5_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~5_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[25]~5_combout\ & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~5_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ & ((\b[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\b[3]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ & ((\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # 
-- (!\b[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ & (\b[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~4_combout\ & ((\b[3]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~4_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[27]~3_combout\ $ (\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[27]~3_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\) # (!\b[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[27]~3_combout\ & (!\b[4]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~3_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

\Div0|auto_generated|divider|divider|StageOut[36]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ = (\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~3_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & (\Div0|auto_generated|divider|divider|StageOut[27]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~3_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\);

\Div0|auto_generated|divider|divider|StageOut[35]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~8_combout\ = (\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~4_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & (\Div0|auto_generated|divider|divider|StageOut[26]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~8_combout\);

\Div0|auto_generated|divider|divider|StageOut[34]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~9_combout\ = (\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[25]~5_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & (\Div0|auto_generated|divider|divider|StageOut[25]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~9_combout\);

\Div0|auto_generated|divider|divider|StageOut[33]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ = (\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[24]~6_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & (\Div0|auto_generated|divider|divider|StageOut[24]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[24]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\);

\Div0|auto_generated|divider|divider|StageOut[32]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ = (\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\a[3]~input_o\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))) # (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~11_combout\);

\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[2]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[2]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\a[2]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ & ((\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ & ((\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))) # 
-- (!\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~11_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[34]~9_combout\ & ((\b[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\b[3]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[34]~9_combout\ & ((\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))) # 
-- (!\b[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[34]~9_combout\ & (\b[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[34]~9_combout\ & ((\b[3]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[34]~9_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[35]~8_combout\ $ (\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[35]~8_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\) # (!\b[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[35]~8_combout\ & (!\b[4]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[35]~8_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ & ((\b[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\b[5]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ & ((\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))) # 
-- (!\b[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ & (\b[5]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ & ((\b[5]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

\Div0|auto_generated|divider|divider|StageOut[45]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~12_combout\ = (\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~12_combout\);

\Div0|auto_generated|divider|divider|StageOut[44]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ = (\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[35]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[35]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[35]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\);

\Div0|auto_generated|divider|divider|StageOut[43]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~14_combout\ = (\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[34]~9_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[34]~9_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~14_combout\);

\Div0|auto_generated|divider|divider|StageOut[42]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ = (\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[33]~10_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[33]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~15_combout\);

\Div0|auto_generated|divider|divider|StageOut[41]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~16_combout\ = (\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~11_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[32]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~11_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~16_combout\);

\Div0|auto_generated|divider|divider|StageOut[40]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~17_combout\ = (\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\a[2]~input_o\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\))))) # (!\Mod0|auto_generated|divider|divider|selnose[45]~4_combout\ & (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose[45]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~17_combout\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[1]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[1]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\a[1]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[40]~17_combout\ & ((\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[40]~17_combout\ & ((\b[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # 
-- (!\b[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[40]~17_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[40]~17_combout\ & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~17_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[41]~16_combout\ $ (\b[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[41]~16_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[41]~16_combout\ & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~16_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ & ((\b[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\b[3]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ & ((\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))) # 
-- (!\b[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ & (\b[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[42]~15_combout\ & ((\b[3]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[42]~15_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[43]~14_combout\ $ (\b[4]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[43]~14_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\) # (!\b[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[43]~14_combout\ & (!\b[4]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[43]~14_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ & ((\b[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\b[5]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ & ((\b[5]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))) # 
-- (!\b[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ & (\b[5]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ & ((\b[5]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[45]~12_combout\ $ (\b[6]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[45]~12_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\) # (!\b[6]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[45]~12_combout\ & (!\b[6]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[45]~12_combout\,
	datab => \b[6]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

\Div0|auto_generated|divider|divider|StageOut[54]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~18_combout\ = (\b[7]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[45]~12_combout\)) # (!\b[7]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[45]~12_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[45]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	datac => \b[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~18_combout\);

\Div0|auto_generated|divider|divider|StageOut[53]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~19_combout\ = (\b[7]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[44]~13_combout\)) # (!\b[7]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[44]~13_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datac => \b[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~19_combout\);

\Div0|auto_generated|divider|divider|StageOut[52]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~20_combout\ = (\b[7]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[43]~14_combout\)) # (!\b[7]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[43]~14_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[43]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datac => \b[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~20_combout\);

\Div0|auto_generated|divider|divider|StageOut[51]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~21_combout\ = (\b[7]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[42]~15_combout\)) # (!\b[7]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[42]~15_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[42]~15_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datac => \b[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~21_combout\);

\Div0|auto_generated|divider|divider|StageOut[50]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~22_combout\ = (\b[7]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[41]~16_combout\)) # (!\b[7]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[41]~16_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datac => \b[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~22_combout\);

\Div0|auto_generated|divider|divider|StageOut[49]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~23_combout\ = (\b[7]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[40]~17_combout\)) # (!\b[7]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[40]~17_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~17_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datac => \b[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~23_combout\);

\Div0|auto_generated|divider|divider|StageOut[48]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~24_combout\ = (\b[7]~input_o\ & (\a[1]~input_o\)) # (!\b[7]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\a[1]~input_o\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datac => \b[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~24_combout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ = CARRY((\a[0]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[48]~24_combout\ & (\b[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[48]~24_combout\ & ((\b[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[48]~24_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[49]~23_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\) # (!\b[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[49]~23_combout\ & (!\b[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~23_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[50]~22_combout\ & (\b[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[50]~22_combout\ & ((\b[3]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~22_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[51]~21_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\) # (!\b[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[51]~21_combout\ & (!\b[4]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~21_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[52]~20_combout\ & (\b[5]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[52]~20_combout\ & ((\b[5]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~20_combout\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[53]~19_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\) # (!\b[6]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[53]~19_combout\ & (!\b[6]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~19_combout\,
	datab => \b[6]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[54]~18_combout\ & (\b[7]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[54]~18_combout\ & ((\b[7]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~18_combout\,
	datab => \b[7]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

\s_r[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[0]~7_combout\ = (\s_r[0]~4_combout\ & ((\s_r[0]~6_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\))) # (!\s_r[0]~6_combout\ & (\s_r[0]~3_combout\)))) # (!\s_r[0]~4_combout\ & (((\s_r[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~3_combout\,
	datab => \s_r[0]~4_combout\,
	datac => \s_r[0]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \s_r[0]~7_combout\);

\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \b[1]~input_o\ $ (((!\op[0]~input_o\ & (!\op[2]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Add0~5_combout\);

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\Add0~5_combout\ $ (\a[1]~input_o\ $ (\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\Add0~5_combout\ & (\a[1]~input_o\ & !\Add0~4\)) # (!\Add0~5_combout\ & ((\a[1]~input_o\) # (!\Add0~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\s_r[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[1]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[48]~27_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[48]~27_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \s_r[1]~8_combout\);

\s_r[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[1]~9_combout\ = (\b[1]~input_o\ & ((\s_r[0]~1_combout\) # ((\a[1]~input_o\ & \s_r[0]~0_combout\)))) # (!\b[1]~input_o\ & (\s_r[0]~1_combout\ & ((\a[1]~input_o\) # (!\s_r[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datac => \s_r[0]~1_combout\,
	datad => \s_r[0]~0_combout\,
	combout => \s_r[1]~9_combout\);

\s_r[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[1]~10_combout\ = (\s_r[0]~0_combout\ & (((\s_r[1]~9_combout\)))) # (!\s_r[0]~0_combout\ & ((\s_r[1]~9_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT1\)) # (!\s_r[1]~9_combout\ & ((\s_r[1]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \s_r[1]~8_combout\,
	datac => \s_r[0]~0_combout\,
	datad => \s_r[1]~9_combout\,
	combout => \s_r[1]~10_combout\);

\RESULT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~1_combout\ = \b[1]~input_o\ $ (\a[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \RESULT~1_combout\);

\s_r[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[1]~11_combout\ = (\s_r[0]~5_combout\ & (((\s_r[0]~4_combout\)))) # (!\s_r[0]~5_combout\ & ((\s_r[0]~4_combout\ & (\s_r[1]~10_combout\)) # (!\s_r[0]~4_combout\ & ((\RESULT~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~5_combout\,
	datab => \s_r[1]~10_combout\,
	datac => \s_r[0]~4_combout\,
	datad => \RESULT~1_combout\,
	combout => \s_r[1]~11_combout\);

\Div0|auto_generated|divider|divider|selnose[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(54) = (\b[7]~input_o\) # (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(54));

\s_r[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[1]~12_combout\ = (\s_r[0]~5_combout\ & ((\s_r[1]~11_combout\ & ((!\Div0|auto_generated|divider|divider|selnose\(54)))) # (!\s_r[1]~11_combout\ & (\Add0~6_combout\)))) # (!\s_r[0]~5_combout\ & (((\s_r[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \s_r[0]~5_combout\,
	datac => \s_r[1]~11_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(54),
	combout => \s_r[1]~12_combout\);

\Mod0|auto_generated|divider|divider|StageOut[58]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~29_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~29_combout\);

\s_r[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[2]~13_combout\ = (\s_r[0]~0_combout\ & (((\s_r[0]~1_combout\)))) # (!\s_r[0]~0_combout\ & ((\s_r[0]~1_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT2\)) # (!\s_r[0]~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[58]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~0_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datac => \s_r[0]~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[58]~29_combout\,
	combout => \s_r[2]~13_combout\);

\s_r[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[2]~14_combout\ = (\b[2]~input_o\ & ((\s_r[2]~13_combout\) # ((\a[2]~input_o\ & \s_r[0]~0_combout\)))) # (!\b[2]~input_o\ & (\s_r[2]~13_combout\ & ((\a[2]~input_o\) # (!\s_r[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datac => \s_r[2]~13_combout\,
	datad => \s_r[0]~0_combout\,
	combout => \s_r[2]~14_combout\);

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \b[2]~input_o\ $ (((!\op[0]~input_o\ & (!\op[2]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Add0~8_combout\);

\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & ((\a[2]~input_o\ & (!\Add0~7\)) # (!\a[2]~input_o\ & ((\Add0~7\) # (GND))))) # (!\Add0~8_combout\ & ((\a[2]~input_o\ & (\Add0~7\ & VCC)) # (!\a[2]~input_o\ & (!\Add0~7\))))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & ((!\Add0~7\) # (!\a[2]~input_o\))) # (!\Add0~8_combout\ & (!\a[2]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

\RESULT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~2_combout\ = \b[2]~input_o\ $ (\a[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[2]~input_o\,
	datad => \a[2]~input_o\,
	combout => \RESULT~2_combout\);

\s_r[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[2]~15_combout\ = (\s_r[0]~4_combout\ & (((\s_r[0]~5_combout\)))) # (!\s_r[0]~4_combout\ & ((\s_r[0]~5_combout\ & (\Add0~9_combout\)) # (!\s_r[0]~5_combout\ & ((\RESULT~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~4_combout\,
	datab => \Add0~9_combout\,
	datac => \s_r[0]~5_combout\,
	datad => \RESULT~2_combout\,
	combout => \s_r[2]~15_combout\);

\Div0|auto_generated|divider|divider|selnose[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(45) = (\b[7]~input_o\) # ((\b[6]~input_o\) # (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \b[6]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(45));

\s_r[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[2]~16_combout\ = (\s_r[0]~4_combout\ & ((\s_r[2]~15_combout\ & ((!\Div0|auto_generated|divider|divider|selnose\(45)))) # (!\s_r[2]~15_combout\ & (\s_r[2]~14_combout\)))) # (!\s_r[0]~4_combout\ & (((\s_r[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[2]~14_combout\,
	datab => \s_r[0]~4_combout\,
	datac => \s_r[2]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(45),
	combout => \s_r[2]~16_combout\);

\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \b[3]~input_o\ $ (((!\op[0]~input_o\ & (!\op[2]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Add0~11_combout\);

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Add0~11_combout\ $ (\a[3]~input_o\ $ (\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\Add0~11_combout\ & (\a[3]~input_o\ & !\Add0~10\)) # (!\Add0~11_combout\ & ((\a[3]~input_o\) # (!\Add0~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\s_r[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[3]~17_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \s_r[3]~17_combout\);

\s_r[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[3]~18_combout\ = (\b[3]~input_o\ & ((\s_r[0]~1_combout\) # ((\a[3]~input_o\ & \s_r[0]~0_combout\)))) # (!\b[3]~input_o\ & (\s_r[0]~1_combout\ & ((\a[3]~input_o\) # (!\s_r[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datac => \s_r[0]~1_combout\,
	datad => \s_r[0]~0_combout\,
	combout => \s_r[3]~18_combout\);

\s_r[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[3]~19_combout\ = (\s_r[0]~0_combout\ & (((\s_r[3]~18_combout\)))) # (!\s_r[0]~0_combout\ & ((\s_r[3]~18_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\)) # (!\s_r[3]~18_combout\ & ((\s_r[3]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \s_r[3]~17_combout\,
	datac => \s_r[0]~0_combout\,
	datad => \s_r[3]~18_combout\,
	combout => \s_r[3]~19_combout\);

\RESULT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~3_combout\ = \b[3]~input_o\ $ (\a[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[3]~input_o\,
	datad => \a[3]~input_o\,
	combout => \RESULT~3_combout\);

\s_r[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[3]~20_combout\ = (\s_r[0]~5_combout\ & (((\s_r[0]~4_combout\)))) # (!\s_r[0]~5_combout\ & ((\s_r[0]~4_combout\ & (\s_r[3]~19_combout\)) # (!\s_r[0]~4_combout\ & ((\RESULT~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~5_combout\,
	datab => \s_r[3]~19_combout\,
	datac => \s_r[0]~4_combout\,
	datad => \RESULT~3_combout\,
	combout => \s_r[3]~20_combout\);

\Div0|auto_generated|divider|divider|selnose[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(36) = (\b[7]~input_o\) # ((\b[5]~input_o\) # ((\b[6]~input_o\) # (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \b[5]~input_o\,
	datac => \b[6]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(36));

\s_r[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[3]~21_combout\ = (\s_r[0]~5_combout\ & ((\s_r[3]~20_combout\ & ((!\Div0|auto_generated|divider|divider|selnose\(36)))) # (!\s_r[3]~20_combout\ & (\Add0~12_combout\)))) # (!\s_r[0]~5_combout\ & (((\s_r[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \s_r[0]~5_combout\,
	datac => \s_r[3]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(36),
	combout => \s_r[3]~21_combout\);

\Mod0|auto_generated|divider|divider|StageOut[60]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[51]~24_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[51]~24_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~30_combout\);

\s_r[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[4]~22_combout\ = (\s_r[0]~0_combout\ & (((\s_r[0]~1_combout\)))) # (!\s_r[0]~0_combout\ & ((\s_r[0]~1_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT4\)) # (!\s_r[0]~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~0_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datac => \s_r[0]~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[60]~30_combout\,
	combout => \s_r[4]~22_combout\);

\s_r[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[4]~23_combout\ = (\b[4]~input_o\ & ((\s_r[4]~22_combout\) # ((\a[4]~input_o\ & \s_r[0]~0_combout\)))) # (!\b[4]~input_o\ & (\s_r[4]~22_combout\ & ((\a[4]~input_o\) # (!\s_r[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \a[4]~input_o\,
	datac => \s_r[4]~22_combout\,
	datad => \s_r[0]~0_combout\,
	combout => \s_r[4]~23_combout\);

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \b[4]~input_o\ $ (((!\op[0]~input_o\ & (!\op[2]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Add0~14_combout\);

\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~14_combout\ & ((\a[4]~input_o\ & (!\Add0~13\)) # (!\a[4]~input_o\ & ((\Add0~13\) # (GND))))) # (!\Add0~14_combout\ & ((\a[4]~input_o\ & (\Add0~13\ & VCC)) # (!\a[4]~input_o\ & (!\Add0~13\))))
-- \Add0~16\ = CARRY((\Add0~14_combout\ & ((!\Add0~13\) # (!\a[4]~input_o\))) # (!\Add0~14_combout\ & (!\a[4]~input_o\ & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \a[4]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

\RESULT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~4_combout\ = \b[4]~input_o\ $ (\a[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \RESULT~4_combout\);

\s_r[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[4]~24_combout\ = (\s_r[0]~4_combout\ & (((\s_r[0]~5_combout\)))) # (!\s_r[0]~4_combout\ & ((\s_r[0]~5_combout\ & (\Add0~15_combout\)) # (!\s_r[0]~5_combout\ & ((\RESULT~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~4_combout\,
	datab => \Add0~15_combout\,
	datac => \s_r[0]~5_combout\,
	datad => \RESULT~4_combout\,
	combout => \s_r[4]~24_combout\);

\Div0|auto_generated|divider|divider|selnose[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(27) = (\b[4]~input_o\) # ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (!\Mod0|auto_generated|divider|divider|selnose[36]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|selnose[36]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(27));

\s_r[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[4]~25_combout\ = (\s_r[0]~4_combout\ & ((\s_r[4]~24_combout\ & ((!\Div0|auto_generated|divider|divider|selnose\(27)))) # (!\s_r[4]~24_combout\ & (\s_r[4]~23_combout\)))) # (!\s_r[0]~4_combout\ & (((\s_r[4]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[4]~23_combout\,
	datab => \s_r[0]~4_combout\,
	datac => \s_r[4]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(27),
	combout => \s_r[4]~25_combout\);

\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \b[5]~input_o\ $ (((!\op[0]~input_o\ & (!\op[2]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Add0~17_combout\);

\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\Add0~17_combout\ $ (\a[5]~input_o\ $ (\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\Add0~17_combout\ & (\a[5]~input_o\ & !\Add0~16\)) # (!\Add0~17_combout\ & ((\a[5]~input_o\) # (!\Add0~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

\s_r[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[5]~26_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[52]~23_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~23_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \s_r[5]~26_combout\);

\s_r[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[5]~27_combout\ = (\b[5]~input_o\ & ((\s_r[0]~1_combout\) # ((\a[5]~input_o\ & \s_r[0]~0_combout\)))) # (!\b[5]~input_o\ & (\s_r[0]~1_combout\ & ((\a[5]~input_o\) # (!\s_r[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \a[5]~input_o\,
	datac => \s_r[0]~1_combout\,
	datad => \s_r[0]~0_combout\,
	combout => \s_r[5]~27_combout\);

\s_r[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[5]~28_combout\ = (\s_r[0]~0_combout\ & (((\s_r[5]~27_combout\)))) # (!\s_r[0]~0_combout\ & ((\s_r[5]~27_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT5\)) # (!\s_r[5]~27_combout\ & ((\s_r[5]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \s_r[5]~26_combout\,
	datac => \s_r[0]~0_combout\,
	datad => \s_r[5]~27_combout\,
	combout => \s_r[5]~28_combout\);

\RESULT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~5_combout\ = \b[5]~input_o\ $ (\a[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[5]~input_o\,
	datad => \a[5]~input_o\,
	combout => \RESULT~5_combout\);

\s_r[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[5]~29_combout\ = (\s_r[0]~5_combout\ & (((\s_r[0]~4_combout\)))) # (!\s_r[0]~5_combout\ & ((\s_r[0]~4_combout\ & (\s_r[5]~28_combout\)) # (!\s_r[0]~4_combout\ & ((\RESULT~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~5_combout\,
	datab => \s_r[5]~28_combout\,
	datac => \s_r[0]~4_combout\,
	datad => \RESULT~5_combout\,
	combout => \s_r[5]~29_combout\);

\s_r[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[5]~30_combout\ = (\s_r[0]~5_combout\ & ((\s_r[5]~29_combout\ & ((!\Div0|auto_generated|divider|divider|selnose\(18)))) # (!\s_r[5]~29_combout\ & (\Add0~18_combout\)))) # (!\s_r[0]~5_combout\ & (((\s_r[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \s_r[0]~5_combout\,
	datac => \s_r[5]~29_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(18),
	combout => \s_r[5]~30_combout\);

\Mod0|auto_generated|divider|divider|StageOut[62]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~31_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[53]~22_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[53]~22_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~31_combout\);

\s_r[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[6]~31_combout\ = (\s_r[0]~0_combout\ & (((\s_r[0]~1_combout\)))) # (!\s_r[0]~0_combout\ & ((\s_r[0]~1_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT6\)) # (!\s_r[0]~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[62]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~0_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datac => \s_r[0]~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[62]~31_combout\,
	combout => \s_r[6]~31_combout\);

\s_r[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[6]~32_combout\ = (\b[6]~input_o\ & ((\s_r[6]~31_combout\) # ((\a[6]~input_o\ & \s_r[0]~0_combout\)))) # (!\b[6]~input_o\ & (\s_r[6]~31_combout\ & ((\a[6]~input_o\) # (!\s_r[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \a[6]~input_o\,
	datac => \s_r[6]~31_combout\,
	datad => \s_r[0]~0_combout\,
	combout => \s_r[6]~32_combout\);

\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \b[6]~input_o\ $ (((!\op[0]~input_o\ & (!\op[2]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Add0~20_combout\);

\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20_combout\ & ((\a[6]~input_o\ & (!\Add0~19\)) # (!\a[6]~input_o\ & ((\Add0~19\) # (GND))))) # (!\Add0~20_combout\ & ((\a[6]~input_o\ & (\Add0~19\ & VCC)) # (!\a[6]~input_o\ & (!\Add0~19\))))
-- \Add0~22\ = CARRY((\Add0~20_combout\ & ((!\Add0~19\) # (!\a[6]~input_o\))) # (!\Add0~20_combout\ & (!\a[6]~input_o\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \a[6]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

\RESULT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~6_combout\ = \b[6]~input_o\ $ (\a[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[6]~input_o\,
	datad => \a[6]~input_o\,
	combout => \RESULT~6_combout\);

\s_r[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[6]~33_combout\ = (\s_r[0]~4_combout\ & (((\s_r[0]~5_combout\)))) # (!\s_r[0]~4_combout\ & ((\s_r[0]~5_combout\ & (\Add0~21_combout\)) # (!\s_r[0]~5_combout\ & ((\RESULT~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~4_combout\,
	datab => \Add0~21_combout\,
	datac => \s_r[0]~5_combout\,
	datad => \RESULT~6_combout\,
	combout => \s_r[6]~33_combout\);

\s_r[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[6]~34_combout\ = (\s_r[0]~4_combout\ & ((\s_r[6]~33_combout\ & ((!\Mod0|auto_generated|divider|divider|selnose[9]~2_combout\))) # (!\s_r[6]~33_combout\ & (\s_r[6]~32_combout\)))) # (!\s_r[0]~4_combout\ & (((\s_r[6]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[6]~32_combout\,
	datab => \s_r[0]~4_combout\,
	datac => \s_r[6]~33_combout\,
	datad => \Mod0|auto_generated|divider|divider|selnose[9]~2_combout\,
	combout => \s_r[6]~34_combout\);

\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \b[7]~input_o\ $ (((!\op[0]~input_o\ & (!\op[2]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Add0~23_combout\);

\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \Add0~23_combout\ $ (\a[7]~input_o\ $ (\Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \a[7]~input_o\,
	cin => \Add0~22\,
	combout => \Add0~24_combout\);

\s_r[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[7]~35_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[54]~21_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[54]~21_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \s_r[7]~35_combout\);

\s_r[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[7]~36_combout\ = (\b[7]~input_o\ & ((\s_r[0]~1_combout\) # ((\a[7]~input_o\ & \s_r[0]~0_combout\)))) # (!\b[7]~input_o\ & (\s_r[0]~1_combout\ & ((\a[7]~input_o\) # (!\s_r[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	datac => \s_r[0]~1_combout\,
	datad => \s_r[0]~0_combout\,
	combout => \s_r[7]~36_combout\);

\s_r[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[7]~37_combout\ = (\s_r[0]~0_combout\ & (((\s_r[7]~36_combout\)))) # (!\s_r[0]~0_combout\ & ((\s_r[7]~36_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT7\)) # (!\s_r[7]~36_combout\ & ((\s_r[7]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \s_r[7]~35_combout\,
	datac => \s_r[0]~0_combout\,
	datad => \s_r[7]~36_combout\,
	combout => \s_r[7]~37_combout\);

\RESULT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~7_combout\ = \b[7]~input_o\ $ (\a[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[7]~input_o\,
	datad => \a[7]~input_o\,
	combout => \RESULT~7_combout\);

\s_r[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[7]~38_combout\ = (\s_r[0]~5_combout\ & (((\s_r[0]~4_combout\)))) # (!\s_r[0]~5_combout\ & ((\s_r[0]~4_combout\ & (\s_r[7]~37_combout\)) # (!\s_r[0]~4_combout\ & ((\RESULT~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r[0]~5_combout\,
	datab => \s_r[7]~37_combout\,
	datac => \s_r[0]~4_combout\,
	datad => \RESULT~7_combout\,
	combout => \s_r[7]~38_combout\);

\Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose\(0) = (\b[1]~input_o\) # (((\b[0]~input_o\ & !\a[7]~input_o\)) # (!\Mod0|auto_generated|divider|divider|selnose[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[7]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|selnose[0]~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|selnose\(0));

\s_r[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r[7]~39_combout\ = (\s_r[0]~5_combout\ & ((\s_r[7]~38_combout\ & ((!\Mod0|auto_generated|divider|divider|selnose\(0)))) # (!\s_r[7]~38_combout\ & (\Add0~24_combout\)))) # (!\s_r[0]~5_combout\ & (((\s_r[7]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \s_r[0]~5_combout\,
	datac => \s_r[7]~38_combout\,
	datad => \Mod0|auto_generated|divider|divider|selnose\(0),
	combout => \s_r[7]~39_combout\);

\m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~0_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \m~0_combout\);

\m~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~1_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \m~1_combout\);

\m~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~2_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \m~2_combout\);

\m~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~3_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \m~3_combout\);

\m~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~4_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \m~4_combout\);

\m~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~5_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \m~5_combout\);

\m~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~6_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \m~6_combout\);

\m~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~7_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \m~7_combout\);

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_r(3) <= \r[3]~output_o\;

ww_r(4) <= \r[4]~output_o\;

ww_r(5) <= \r[5]~output_o\;

ww_r(6) <= \r[6]~output_o\;

ww_r(7) <= \r[7]~output_o\;

ww_m(0) <= \m[0]~output_o\;

ww_m(1) <= \m[1]~output_o\;

ww_m(2) <= \m[2]~output_o\;

ww_m(3) <= \m[3]~output_o\;

ww_m(4) <= \m[4]~output_o\;

ww_m(5) <= \m[5]~output_o\;

ww_m(6) <= \m[6]~output_o\;

ww_m(7) <= \m[7]~output_o\;
END structure;


