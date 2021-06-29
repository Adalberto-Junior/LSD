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

-- DATE "03/29/2021 21:04:30"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUDemo1 IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	enable : IN std_logic;
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALUDemo1;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_enable : std_logic;
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|Add0~4_cout\ : std_logic;
SIGNAL \inst|Add0~5_combout\ : std_logic;
SIGNAL \inst|s_r[3]~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
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
SIGNAL \inst|s_r[3]~5_combout\ : std_logic;
SIGNAL \inst|s_r[3]~4_combout\ : std_logic;
SIGNAL \inst|s_r[0]~19_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|s_r[0]~20_combout\ : std_logic;
SIGNAL \inst|s_r[0]~21_combout\ : std_logic;
SIGNAL \inst|s_r[0]~22_combout\ : std_logic;
SIGNAL \inst|s_r[3]~2_combout\ : std_logic;
SIGNAL \inst|s_r[0]~18_combout\ : std_logic;
SIGNAL \inst|s_r[0]~23_combout\ : std_logic;
SIGNAL \inst|s_r[2]~6_combout\ : std_logic;
SIGNAL \inst|s_r[2]~7_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|s_r[2]~3_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \inst|s_r[2]~8_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~8\ : std_logic;
SIGNAL \inst|Add0~9_combout\ : std_logic;
SIGNAL \inst|s_r[2]~9_combout\ : std_logic;
SIGNAL \inst|s_r[2]~1_combout\ : std_logic;
SIGNAL \inst|s_r[2]~10_combout\ : std_logic;
SIGNAL \inst|Add0~11_combout\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|s_r[3]~13_combout\ : std_logic;
SIGNAL \inst|s_r[3]~12_combout\ : std_logic;
SIGNAL \inst|s_r[3]~14_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \inst|s_r[3]~15_combout\ : std_logic;
SIGNAL \inst|s_r[3]~16_combout\ : std_logic;
SIGNAL \inst|s_r[3]~11_combout\ : std_logic;
SIGNAL \inst|s_r[3]~17_combout\ : std_logic;
SIGNAL \inst|s_r[1]~24_combout\ : std_logic;
SIGNAL \inst|s_r[1]~26_combout\ : std_logic;
SIGNAL \inst|s_r[1]~27_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|s_r[1]~25_combout\ : std_logic;
SIGNAL \inst|s_r[1]~28_combout\ : std_logic;
SIGNAL \inst|Add0~7_combout\ : std_logic;
SIGNAL \inst|s_r[1]~29_combout\ : std_logic;
SIGNAL \inst|s_r[1]~30_combout\ : std_logic;
SIGNAL \inst2|decOut_n[3]~1_combout\ : std_logic;
SIGNAL \inst2|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \inst2|Equal7~0_combout\ : std_logic;
SIGNAL \inst2|decOut_n[6]~2_combout\ : std_logic;
SIGNAL \inst2|decOut_n~3_combout\ : std_logic;
SIGNAL \inst2|decOut_n~4_combout\ : std_logic;
SIGNAL \inst2|decOut_n~5_combout\ : std_logic;
SIGNAL \inst2|decOut_n~6_combout\ : std_logic;
SIGNAL \inst2|decOut_n[3]~7_combout\ : std_logic;
SIGNAL \inst2|decOut_n[3]~8_combout\ : std_logic;
SIGNAL \inst2|decOut_n~9_combout\ : std_logic;
SIGNAL \inst2|decOut_n~10_combout\ : std_logic;
SIGNAL \inst2|decOut_n~11_combout\ : std_logic;
SIGNAL \inst2|decOut_n~12_combout\ : std_logic;
SIGNAL \inst2|decOut_n~13_combout\ : std_logic;
SIGNAL \inst2|decOut_n~14_combout\ : std_logic;
SIGNAL \inst2|decOut_n~15_combout\ : std_logic;
SIGNAL \inst2|decOut_n~16_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst1|decOut_n[6]~5_combout\ : std_logic;
SIGNAL \inst1|decOut_n[6]~3_combout\ : std_logic;
SIGNAL \inst1|decOut_n[6]~33_combout\ : std_logic;
SIGNAL \inst1|decOut_n~20_combout\ : std_logic;
SIGNAL \inst1|decOut_n~22_combout\ : std_logic;
SIGNAL \inst|m[0]~8_combout\ : std_logic;
SIGNAL \inst|m[3]~11_combout\ : std_logic;
SIGNAL \inst|m[1]~9_combout\ : std_logic;
SIGNAL \inst|m[2]~10_combout\ : std_logic;
SIGNAL \inst1|decOut_n~21_combout\ : std_logic;
SIGNAL \inst1|decOut_n~23_combout\ : std_logic;
SIGNAL \inst1|decOut_n~24_combout\ : std_logic;
SIGNAL \inst1|decOut_n[4]~25_combout\ : std_logic;
SIGNAL \inst1|decOut_n[3]~15_combout\ : std_logic;
SIGNAL \inst1|decOut_n[3]~13_combout\ : std_logic;
SIGNAL \inst1|decOut_n[3]~34_combout\ : std_logic;
SIGNAL \inst1|decOut_n~26_combout\ : std_logic;
SIGNAL \inst1|decOut_n~27_combout\ : std_logic;
SIGNAL \inst1|decOut_n~28_combout\ : std_logic;
SIGNAL \inst1|decOut_n~29_combout\ : std_logic;
SIGNAL \inst1|decOut_n~30_combout\ : std_logic;
SIGNAL \inst1|decOut_n~31_combout\ : std_logic;
SIGNAL \inst1|decOut_n~32_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|ALT_INV_m[0]~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_s_r[0]~23_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_enable <= enable;
ww_SW <= SW;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_m[0]~8_combout\ <= NOT \inst|m[0]~8_combout\;
\inst|ALT_INV_s_r[0]~23_combout\ <= NOT \inst|s_r[0]~23_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X49_Y0_N9
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[6]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[3]~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~12_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~14_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n~16_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[6]~33_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n~23_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[4]~25_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[3]~34_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n~28_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n~30_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n~32_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|m[3]~11_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|m[2]~10_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|m[1]~9_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_m[0]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_r[3]~17_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_r[2]~10_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_r[1]~30_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_s_r[0]~23_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X60_Y0_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X61_Y1_N28
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = \SW[0]~input_o\ $ (((!\SW[10]~input_o\ & (!\SW[9]~input_o\ & !\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Add0~2_combout\);

-- Location: LCCOMB_X61_Y1_N30
\inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (!\SW[10]~input_o\ & (!\SW[9]~input_o\ & !\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Equal7~0_combout\);

-- Location: LCCOMB_X61_Y1_N10
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_cout\ = CARRY(!\inst|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~0_combout\,
	datad => VCC,
	cout => \inst|Add0~4_cout\);

-- Location: LCCOMB_X61_Y1_N12
\inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~5_combout\ = (\SW[4]~input_o\ & ((\inst|Add0~2_combout\ & (!\inst|Add0~4_cout\)) # (!\inst|Add0~2_combout\ & (\inst|Add0~4_cout\ & VCC)))) # (!\SW[4]~input_o\ & ((\inst|Add0~2_combout\ & ((\inst|Add0~4_cout\) # (GND))) # (!\inst|Add0~2_combout\ 
-- & (!\inst|Add0~4_cout\))))
-- \inst|Add0~6\ = CARRY((\SW[4]~input_o\ & (\inst|Add0~2_combout\ & !\inst|Add0~4_cout\)) # (!\SW[4]~input_o\ & ((\inst|Add0~2_combout\) # (!\inst|Add0~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst|Add0~2_combout\,
	datad => VCC,
	cin => \inst|Add0~4_cout\,
	combout => \inst|Add0~5_combout\,
	cout => \inst|Add0~6\);

-- Location: LCCOMB_X61_Y1_N24
\inst|s_r[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~0_combout\ = (!\SW[9]~input_o\ & ((\SW[8]~input_o\) # (!\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_r[3]~0_combout\);

-- Location: IOIBUF_X62_Y0_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X62_Y2_N2
\inst|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(0) = \SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X61_Y2_N4
\inst|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~0_combout\ = (\inst|Mult0|auto_generated|le3a\(0) & (\SW[1]~input_o\ $ (VCC))) # (!\inst|Mult0|auto_generated|le3a\(0) & (\SW[1]~input_o\ & VCC))
-- \inst|Mult0|auto_generated|op_3~1\ = CARRY((\inst|Mult0|auto_generated|le3a\(0) & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(0),
	datab => \SW[1]~input_o\,
	datad => VCC,
	combout => \inst|Mult0|auto_generated|op_3~0_combout\,
	cout => \inst|Mult0|auto_generated|op_3~1\);

-- Location: IOIBUF_X62_Y0_N22
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X60_Y3_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\ & !\SW[6]~input_o\)) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X62_Y3_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X60_Y3_N26
\inst|Mod0|auto_generated|divider|divider|selnose[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\SW[3]~input_o\) # ((\SW[2]~input_o\) # ((!\SW[7]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X60_Y3_N12
\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ = (\SW[6]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\);

-- Location: IOIBUF_X65_Y0_N1
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X62_Y3_N8
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[5]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[5]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X62_Y3_N10
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & (\SW[1]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X62_Y3_N12
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ $ (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\SW[2]~input_o\ 
-- & ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X62_Y3_N14
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

-- Location: LCCOMB_X62_Y3_N16
\inst|Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\))) # (!\SW[3]~input_o\ & 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X61_Y3_N20
\inst|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\)) # (!\SW[3]~input_o\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X62_Y3_N2
\inst|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[5]~input_o\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X60_Y3_N14
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X60_Y3_N16
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\SW[1]~input_o\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X60_Y3_N18
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

-- Location: LCCOMB_X60_Y3_N20
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

-- Location: LCCOMB_X60_Y3_N22
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

-- Location: LCCOMB_X63_Y1_N0
\inst|s_r[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~5_combout\ = (!\SW[8]~input_o\ & \SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|s_r[3]~5_combout\);

-- Location: LCCOMB_X61_Y1_N4
\inst|s_r[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~4_combout\ = (\SW[8]~input_o\) # ((\SW[10]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_r[3]~4_combout\);

-- Location: LCCOMB_X61_Y3_N22
\inst|s_r[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~19_combout\ = (\inst|s_r[3]~5_combout\ & (((\inst|s_r[3]~4_combout\)))) # (!\inst|s_r[3]~5_combout\ & ((\inst|s_r[3]~4_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))) # (!\inst|s_r[3]~4_combout\ & 
-- (\inst|Mult0|auto_generated|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst|s_r[3]~5_combout\,
	datad => \inst|s_r[3]~4_combout\,
	combout => \inst|s_r[0]~19_combout\);

-- Location: LCCOMB_X61_Y3_N10
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

-- Location: LCCOMB_X62_Y3_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[5]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[5]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X62_Y3_N20
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & (\SW[1]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X62_Y3_N22
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ $ (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\SW[2]~input_o\ 
-- & ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X62_Y3_N24
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

-- Location: LCCOMB_X62_Y3_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)) # (!\SW[3]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\);

-- Location: LCCOMB_X62_Y3_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\))) # (!\SW[3]~input_o\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\);

-- Location: LCCOMB_X62_Y3_N4
\inst|Mod0|auto_generated|divider|divider|StageOut[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[5]~input_o\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\);

-- Location: LCCOMB_X61_Y3_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & ((\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & (\SW[1]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & ((\SW[1]~input_o\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X61_Y3_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ $ (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # (!\SW[2]~input_o\ 
-- & ((\inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X61_Y3_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\SW[3]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\SW[3]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\SW[3]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & (\SW[3]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\SW[3]~input_o\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X61_Y3_N18
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

-- Location: LCCOMB_X61_Y3_N24
\inst|s_r[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~20_combout\ = (\inst|s_r[0]~19_combout\ & (((\SW[4]~input_o\)))) # (!\inst|s_r[0]~19_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\SW[4]~input_o\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \SW[4]~input_o\,
	datac => \inst|s_r[0]~19_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|s_r[0]~20_combout\);

-- Location: LCCOMB_X61_Y3_N28
\inst|s_r[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~21_combout\ = (\inst|s_r[3]~5_combout\ & ((\inst|s_r[0]~20_combout\) # ((\inst|s_r[0]~19_combout\ & \SW[0]~input_o\)))) # (!\inst|s_r[3]~5_combout\ & (\inst|s_r[0]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~19_combout\,
	datab => \inst|s_r[0]~20_combout\,
	datac => \SW[0]~input_o\,
	datad => \inst|s_r[3]~5_combout\,
	combout => \inst|s_r[0]~21_combout\);

-- Location: LCCOMB_X61_Y1_N20
\inst|s_r[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~22_combout\ = (\inst|s_r[3]~0_combout\ & (\inst|Add0~5_combout\)) # (!\inst|s_r[3]~0_combout\ & ((\inst|s_r[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~5_combout\,
	datab => \inst|s_r[3]~0_combout\,
	datad => \inst|s_r[0]~21_combout\,
	combout => \inst|s_r[0]~22_combout\);

-- Location: LCCOMB_X61_Y1_N26
\inst|s_r[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~2_combout\ = (\SW[10]~input_o\ & ((!\SW[8]~input_o\) # (!\SW[9]~input_o\))) # (!\SW[10]~input_o\ & (\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_r[3]~2_combout\);

-- Location: LCCOMB_X61_Y1_N2
\inst|s_r[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~18_combout\ = (\SW[4]~input_o\ & (\inst|s_r[3]~2_combout\ $ (!\SW[0]~input_o\))) # (!\SW[4]~input_o\ & (!\inst|s_r[3]~2_combout\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \inst|s_r[3]~2_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_r[0]~18_combout\);

-- Location: LCCOMB_X60_Y1_N28
\inst|s_r[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[0]~23_combout\ = (\inst|s_r[0]~22_combout\ & (!\inst|s_r[0]~18_combout\ & (\inst|s_r[3]~0_combout\ $ (!\inst|s_r[3]~2_combout\)))) # (!\inst|s_r[0]~22_combout\ & ((\inst|s_r[3]~0_combout\ $ (\inst|s_r[3]~2_combout\)) # 
-- (!\inst|s_r[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~22_combout\,
	datab => \inst|s_r[3]~0_combout\,
	datac => \inst|s_r[3]~2_combout\,
	datad => \inst|s_r[0]~18_combout\,
	combout => \inst|s_r[0]~23_combout\);

-- Location: LCCOMB_X60_Y3_N0
\inst|s_r[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~6_combout\ = (\inst|s_r[3]~5_combout\ & (((\SW[6]~input_o\) # (\SW[2]~input_o\)))) # (!\inst|s_r[3]~5_combout\ & (\SW[0]~input_o\ & (!\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~5_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_r[2]~6_combout\);

-- Location: LCCOMB_X60_Y3_N10
\inst|s_r[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~7_combout\ = (\inst|s_r[3]~4_combout\ & ((\inst|s_r[2]~6_combout\ & ((!\inst|s_r[3]~5_combout\))) # (!\inst|s_r[2]~6_combout\ & ((\inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (\inst|s_r[3]~5_combout\))))) # 
-- (!\inst|s_r[3]~4_combout\ & (((\inst|s_r[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~4_combout\,
	datab => \inst|s_r[2]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datad => \inst|s_r[3]~5_combout\,
	combout => \inst|s_r[2]~7_combout\);

-- Location: LCCOMB_X61_Y3_N8
\inst|s_r[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~3_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\,
	combout => \inst|s_r[2]~3_combout\);

-- Location: LCCOMB_X60_Y2_N0
\inst|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(2) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ ((\SW[6]~input_o\)))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X60_Y3_N24
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

-- Location: LCCOMB_X60_Y2_N18
\inst|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~0_combout\ = (\inst|Mult0|auto_generated|le3a\(2) & (\inst|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\inst|Mult0|auto_generated|le3a\(2) & (\inst|Mult0|auto_generated|le4a\(5) & VCC))
-- \inst|Mult0|auto_generated|op_1~1\ = CARRY((\inst|Mult0|auto_generated|le3a\(2) & \inst|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(2),
	datab => \inst|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|op_1~0_combout\,
	cout => \inst|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X62_Y2_N8
\inst|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(0) = \SW[3]~input_o\ $ (((\SW[1]~input_o\ & ((\SW[4]~input_o\) # (\SW[2]~input_o\))) # (!\SW[1]~input_o\ & (\SW[4]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X61_Y3_N30
\inst|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(1) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (((\SW[5]~input_o\))))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & (!\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X61_Y2_N6
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

-- Location: LCCOMB_X61_Y2_N8
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

-- Location: LCCOMB_X60_Y3_N4
\inst|s_r[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~8_combout\ = (\inst|s_r[2]~7_combout\ & (\inst|s_r[2]~3_combout\ & ((!\inst|s_r[3]~4_combout\)))) # (!\inst|s_r[2]~7_combout\ & (((\inst|Mult0|auto_generated|op_3~4_combout\) # (\inst|s_r[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[2]~7_combout\,
	datab => \inst|s_r[2]~3_combout\,
	datac => \inst|Mult0|auto_generated|op_3~4_combout\,
	datad => \inst|s_r[3]~4_combout\,
	combout => \inst|s_r[2]~8_combout\);

-- Location: LCCOMB_X61_Y1_N6
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \SW[2]~input_o\ $ (((!\SW[10]~input_o\ & (!\SW[9]~input_o\ & !\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Add0~0_combout\);

-- Location: LCCOMB_X61_Y1_N8
\inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = \SW[1]~input_o\ $ (((!\SW[8]~input_o\ & (!\SW[9]~input_o\ & !\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Add0~1_combout\);

-- Location: LCCOMB_X61_Y1_N14
\inst|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~7_combout\ = ((\SW[5]~input_o\ $ (\inst|Add0~1_combout\ $ (\inst|Add0~6\)))) # (GND)
-- \inst|Add0~8\ = CARRY((\SW[5]~input_o\ & ((!\inst|Add0~6\) # (!\inst|Add0~1_combout\))) # (!\SW[5]~input_o\ & (!\inst|Add0~1_combout\ & !\inst|Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Add0~1_combout\,
	datad => VCC,
	cin => \inst|Add0~6\,
	combout => \inst|Add0~7_combout\,
	cout => \inst|Add0~8\);

-- Location: LCCOMB_X61_Y1_N16
\inst|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~9_combout\ = (\inst|Add0~0_combout\ & ((\SW[6]~input_o\ & (!\inst|Add0~8\)) # (!\SW[6]~input_o\ & ((\inst|Add0~8\) # (GND))))) # (!\inst|Add0~0_combout\ & ((\SW[6]~input_o\ & (\inst|Add0~8\ & VCC)) # (!\SW[6]~input_o\ & (!\inst|Add0~8\))))
-- \inst|Add0~10\ = CARRY((\inst|Add0~0_combout\ & ((!\inst|Add0~8\) # (!\SW[6]~input_o\))) # (!\inst|Add0~0_combout\ & (!\SW[6]~input_o\ & !\inst|Add0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \inst|Add0~8\,
	combout => \inst|Add0~9_combout\,
	cout => \inst|Add0~10\);

-- Location: LCCOMB_X60_Y1_N10
\inst|s_r[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~9_combout\ = (\inst|s_r[3]~2_combout\ & (\inst|s_r[2]~8_combout\)) # (!\inst|s_r[3]~2_combout\ & ((\inst|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~2_combout\,
	datac => \inst|s_r[2]~8_combout\,
	datad => \inst|Add0~9_combout\,
	combout => \inst|s_r[2]~9_combout\);

-- Location: LCCOMB_X60_Y1_N0
\inst|s_r[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~1_combout\ = (\SW[6]~input_o\ & (\SW[2]~input_o\ $ (!\inst|s_r[3]~0_combout\))) # (!\SW[6]~input_o\ & (\SW[2]~input_o\ & !\inst|s_r[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst|s_r[3]~0_combout\,
	combout => \inst|s_r[2]~1_combout\);

-- Location: LCCOMB_X60_Y1_N20
\inst|s_r[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[2]~10_combout\ = (\inst|s_r[2]~9_combout\ & ((\inst|s_r[2]~1_combout\) # (\inst|s_r[3]~2_combout\ $ (\inst|s_r[3]~0_combout\)))) # (!\inst|s_r[2]~9_combout\ & (\inst|s_r[2]~1_combout\ & (\inst|s_r[3]~2_combout\ $ (!\inst|s_r[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[2]~9_combout\,
	datab => \inst|s_r[2]~1_combout\,
	datac => \inst|s_r[3]~2_combout\,
	datad => \inst|s_r[3]~0_combout\,
	combout => \inst|s_r[2]~10_combout\);

-- Location: LCCOMB_X61_Y1_N0
\inst|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~11_combout\ = \SW[3]~input_o\ $ (((!\SW[8]~input_o\ & (!\SW[9]~input_o\ & !\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Add0~11_combout\);

-- Location: LCCOMB_X61_Y1_N18
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = \SW[7]~input_o\ $ (\inst|Add0~10\ $ (\inst|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datad => \inst|Add0~11_combout\,
	cin => \inst|Add0~10\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X60_Y3_N2
\inst|s_r[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~13_combout\ = (\SW[3]~input_o\) # ((\SW[7]~input_o\ & ((\inst|s_r[3]~5_combout\))) # (!\SW[7]~input_o\ & (\SW[0]~input_o\ & !\inst|s_r[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \inst|s_r[3]~5_combout\,
	combout => \inst|s_r[3]~13_combout\);

-- Location: LCCOMB_X60_Y3_N8
\inst|s_r[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~12_combout\ = (\SW[1]~input_o\) # (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_r[3]~12_combout\);

-- Location: LCCOMB_X60_Y3_N28
\inst|s_r[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~14_combout\ = (\inst|s_r[3]~4_combout\ & ((\inst|s_r[3]~13_combout\ & ((!\inst|s_r[3]~5_combout\))) # (!\inst|s_r[3]~13_combout\ & ((\inst|s_r[3]~12_combout\) # (\inst|s_r[3]~5_combout\))))) # (!\inst|s_r[3]~4_combout\ & 
-- (((\inst|s_r[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~4_combout\,
	datab => \inst|s_r[3]~13_combout\,
	datac => \inst|s_r[3]~12_combout\,
	datad => \inst|s_r[3]~5_combout\,
	combout => \inst|s_r[3]~14_combout\);

-- Location: LCCOMB_X61_Y3_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X60_Y2_N4
\inst|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|cs2a[1]~0_combout\ = \SW[2]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X60_Y2_N14
\inst|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(1) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(5) $ (\SW[5]~input_o\)))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[4]~input_o\ & 
-- (\inst|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst|Mult0|auto_generated|le4a\(5),
	datac => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X60_Y2_N2
\inst|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(3) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[7]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[6]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X60_Y2_N20
\inst|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~2_combout\ = (\inst|Mult0|auto_generated|le3a\(3) & (!\inst|Mult0|auto_generated|op_1~1\)) # (!\inst|Mult0|auto_generated|le3a\(3) & ((\inst|Mult0|auto_generated|op_1~1\) # (GND)))
-- \inst|Mult0|auto_generated|op_1~3\ = CARRY((!\inst|Mult0|auto_generated|op_1~1\) # (!\inst|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~1\,
	combout => \inst|Mult0|auto_generated|op_1~2_combout\,
	cout => \inst|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X61_Y2_N10
\inst|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~6_combout\ = (\inst|Mult0|auto_generated|le4a\(1) & ((\inst|Mult0|auto_generated|op_1~2_combout\ & (\inst|Mult0|auto_generated|op_3~5\ & VCC)) # (!\inst|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\inst|Mult0|auto_generated|op_3~5\)))) # (!\inst|Mult0|auto_generated|le4a\(1) & ((\inst|Mult0|auto_generated|op_1~2_combout\ & (!\inst|Mult0|auto_generated|op_3~5\)) # (!\inst|Mult0|auto_generated|op_1~2_combout\ & ((\inst|Mult0|auto_generated|op_3~5\) 
-- # (GND)))))
-- \inst|Mult0|auto_generated|op_3~7\ = CARRY((\inst|Mult0|auto_generated|le4a\(1) & (!\inst|Mult0|auto_generated|op_1~2_combout\ & !\inst|Mult0|auto_generated|op_3~5\)) # (!\inst|Mult0|auto_generated|le4a\(1) & ((!\inst|Mult0|auto_generated|op_3~5\) # 
-- (!\inst|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(1),
	datab => \inst|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~5\,
	combout => \inst|Mult0|auto_generated|op_3~6_combout\,
	cout => \inst|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X60_Y3_N30
\inst|s_r[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~15_combout\ = (\inst|s_r[3]~4_combout\ & (!\inst|s_r[3]~14_combout\)) # (!\inst|s_r[3]~4_combout\ & ((\inst|s_r[3]~14_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\)) # (!\inst|s_r[3]~14_combout\ & 
-- ((\inst|Mult0|auto_generated|op_3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~4_combout\,
	datab => \inst|s_r[3]~14_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datad => \inst|Mult0|auto_generated|op_3~6_combout\,
	combout => \inst|s_r[3]~15_combout\);

-- Location: LCCOMB_X60_Y1_N16
\inst|s_r[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~16_combout\ = (\inst|s_r[3]~0_combout\ & (\inst|Add0~12_combout\)) # (!\inst|s_r[3]~0_combout\ & ((\inst|s_r[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~12_combout\,
	datac => \inst|s_r[3]~15_combout\,
	datad => \inst|s_r[3]~0_combout\,
	combout => \inst|s_r[3]~16_combout\);

-- Location: LCCOMB_X60_Y1_N22
\inst|s_r[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~11_combout\ = (\SW[7]~input_o\ & (\inst|s_r[3]~2_combout\ $ (!\SW[3]~input_o\))) # (!\SW[7]~input_o\ & (!\inst|s_r[3]~2_combout\ & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \inst|s_r[3]~2_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_r[3]~11_combout\);

-- Location: LCCOMB_X60_Y1_N26
\inst|s_r[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[3]~17_combout\ = (\inst|s_r[3]~2_combout\ & ((\inst|s_r[3]~0_combout\ & ((\inst|s_r[3]~11_combout\))) # (!\inst|s_r[3]~0_combout\ & (\inst|s_r[3]~16_combout\)))) # (!\inst|s_r[3]~2_combout\ & ((\inst|s_r[3]~0_combout\ & 
-- (\inst|s_r[3]~16_combout\)) # (!\inst|s_r[3]~0_combout\ & ((\inst|s_r[3]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~2_combout\,
	datab => \inst|s_r[3]~16_combout\,
	datac => \inst|s_r[3]~11_combout\,
	datad => \inst|s_r[3]~0_combout\,
	combout => \inst|s_r[3]~17_combout\);

-- Location: LCCOMB_X60_Y1_N6
\inst|s_r[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~24_combout\ = (\inst|s_r[3]~0_combout\ & (\SW[1]~input_o\ & \SW[5]~input_o\)) # (!\inst|s_r[3]~0_combout\ & (\SW[1]~input_o\ $ (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_r[3]~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_r[1]~24_combout\);

-- Location: LCCOMB_X61_Y3_N0
\inst|s_r[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~26_combout\ = (\inst|s_r[3]~5_combout\ & (((\SW[1]~input_o\) # (\SW[5]~input_o\)))) # (!\inst|s_r[3]~5_combout\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~5_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_r[1]~26_combout\);

-- Location: LCCOMB_X61_Y3_N2
\inst|s_r[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~27_combout\ = (\inst|s_r[3]~4_combout\ & ((\inst|s_r[1]~26_combout\ & ((!\inst|s_r[3]~5_combout\))) # (!\inst|s_r[1]~26_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (\inst|s_r[3]~5_combout\))))) 
-- # (!\inst|s_r[3]~4_combout\ & (((\inst|s_r[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~4_combout\,
	datab => \inst|s_r[1]~26_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \inst|s_r[3]~5_combout\,
	combout => \inst|s_r[1]~27_combout\);

-- Location: LCCOMB_X61_Y3_N6
\inst|s_r[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~25_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\,
	combout => \inst|s_r[1]~25_combout\);

-- Location: LCCOMB_X61_Y3_N4
\inst|s_r[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~28_combout\ = (\inst|s_r[3]~4_combout\ & (!\inst|s_r[1]~27_combout\)) # (!\inst|s_r[3]~4_combout\ & ((\inst|s_r[1]~27_combout\ & ((\inst|s_r[1]~25_combout\))) # (!\inst|s_r[1]~27_combout\ & (\inst|Mult0|auto_generated|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~4_combout\,
	datab => \inst|s_r[1]~27_combout\,
	datac => \inst|Mult0|auto_generated|op_3~2_combout\,
	datad => \inst|s_r[1]~25_combout\,
	combout => \inst|s_r[1]~28_combout\);

-- Location: LCCOMB_X61_Y1_N22
\inst|s_r[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~29_combout\ = (\inst|s_r[3]~2_combout\ & (\inst|s_r[1]~28_combout\)) # (!\inst|s_r[3]~2_combout\ & ((\inst|Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~2_combout\,
	datab => \inst|s_r[1]~28_combout\,
	datac => \inst|Add0~7_combout\,
	combout => \inst|s_r[1]~29_combout\);

-- Location: LCCOMB_X60_Y1_N8
\inst|s_r[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r[1]~30_combout\ = (\inst|s_r[1]~24_combout\ & ((\inst|s_r[1]~29_combout\) # (\inst|s_r[3]~0_combout\ $ (!\inst|s_r[3]~2_combout\)))) # (!\inst|s_r[1]~24_combout\ & (\inst|s_r[1]~29_combout\ & (\inst|s_r[3]~0_combout\ $ 
-- (\inst|s_r[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[1]~24_combout\,
	datab => \inst|s_r[3]~0_combout\,
	datac => \inst|s_r[3]~2_combout\,
	datad => \inst|s_r[1]~29_combout\,
	combout => \inst|s_r[1]~30_combout\);

-- Location: LCCOMB_X53_Y1_N10
\inst2|decOut_n[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[3]~1_combout\ = (\inst|s_r[0]~23_combout\ & (!\inst|s_r[2]~10_combout\ & (!\inst|s_r[3]~17_combout\ & !\inst|s_r[1]~30_combout\))) # (!\inst|s_r[0]~23_combout\ & (\inst|s_r[2]~10_combout\ & (\inst|s_r[3]~17_combout\ & 
-- \inst|s_r[1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~23_combout\,
	datab => \inst|s_r[2]~10_combout\,
	datac => \inst|s_r[3]~17_combout\,
	datad => \inst|s_r[1]~30_combout\,
	combout => \inst2|decOut_n[3]~1_combout\);

-- Location: LCCOMB_X53_Y1_N8
\inst2|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[6]~0_combout\ = (\inst|s_r[0]~23_combout\ & (\inst|s_r[2]~10_combout\ & (\inst|s_r[3]~17_combout\ & !\inst|s_r[1]~30_combout\))) # (!\inst|s_r[0]~23_combout\ & (!\inst|s_r[3]~17_combout\ & (\inst|s_r[2]~10_combout\ $ 
-- (!\inst|s_r[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~23_combout\,
	datab => \inst|s_r[2]~10_combout\,
	datac => \inst|s_r[3]~17_combout\,
	datad => \inst|s_r[1]~30_combout\,
	combout => \inst2|decOut_n[6]~0_combout\);

-- Location: IOIBUF_X54_Y0_N22
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X53_Y1_N4
\inst2|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal7~0_combout\ = (!\inst|s_r[0]~23_combout\ & (\inst|s_r[2]~10_combout\ & (\inst|s_r[3]~17_combout\ & \inst|s_r[1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~23_combout\,
	datab => \inst|s_r[2]~10_combout\,
	datac => \inst|s_r[3]~17_combout\,
	datad => \inst|s_r[1]~30_combout\,
	combout => \inst2|Equal7~0_combout\);

-- Location: LCCOMB_X53_Y1_N22
\inst2|decOut_n[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[6]~2_combout\ = ((\inst2|decOut_n[3]~1_combout\ & ((!\inst2|Equal7~0_combout\))) # (!\inst2|decOut_n[3]~1_combout\ & (\inst2|decOut_n[6]~0_combout\))) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decOut_n[3]~1_combout\,
	datab => \inst2|decOut_n[6]~0_combout\,
	datac => \enable~input_o\,
	datad => \inst2|Equal7~0_combout\,
	combout => \inst2|decOut_n[6]~2_combout\);

-- Location: LCCOMB_X53_Y1_N16
\inst2|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~3_combout\ = (\inst|s_r[0]~23_combout\ & (!\inst|s_r[2]~10_combout\ & (!\inst|s_r[3]~17_combout\ & \inst|s_r[1]~30_combout\))) # (!\inst|s_r[0]~23_combout\ & (\inst|s_r[3]~17_combout\ $ (((\inst|s_r[1]~30_combout\) # 
-- (!\inst|s_r[2]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~23_combout\,
	datab => \inst|s_r[2]~10_combout\,
	datac => \inst|s_r[3]~17_combout\,
	datad => \inst|s_r[1]~30_combout\,
	combout => \inst2|decOut_n~3_combout\);

-- Location: LCCOMB_X53_Y1_N26
\inst2|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~4_combout\ = (\inst2|decOut_n~3_combout\) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decOut_n~3_combout\,
	datac => \enable~input_o\,
	combout => \inst2|decOut_n~4_combout\);

-- Location: LCCOMB_X53_Y1_N28
\inst2|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~5_combout\ = (\inst|s_r[1]~30_combout\ & ((\inst|s_r[0]~23_combout\) # ((\inst|s_r[3]~17_combout\)))) # (!\inst|s_r[1]~30_combout\ & ((\inst|s_r[2]~10_combout\ & ((\inst|s_r[3]~17_combout\))) # (!\inst|s_r[2]~10_combout\ & 
-- (\inst|s_r[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~23_combout\,
	datab => \inst|s_r[2]~10_combout\,
	datac => \inst|s_r[3]~17_combout\,
	datad => \inst|s_r[1]~30_combout\,
	combout => \inst2|decOut_n~5_combout\);

-- Location: LCCOMB_X53_Y1_N14
\inst2|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~6_combout\ = (!\enable~input_o\) # (!\inst2|decOut_n~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decOut_n~5_combout\,
	datac => \enable~input_o\,
	combout => \inst2|decOut_n~6_combout\);

-- Location: LCCOMB_X53_Y1_N0
\inst2|decOut_n[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[3]~7_combout\ = (\inst|s_r[0]~23_combout\ & ((\inst|s_r[2]~10_combout\ & ((\inst|s_r[3]~17_combout\) # (\inst|s_r[1]~30_combout\))) # (!\inst|s_r[2]~10_combout\ & ((!\inst|s_r[1]~30_combout\) # (!\inst|s_r[3]~17_combout\))))) # 
-- (!\inst|s_r[0]~23_combout\ & ((\inst|s_r[3]~17_combout\) # (\inst|s_r[2]~10_combout\ $ (\inst|s_r[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~23_combout\,
	datab => \inst|s_r[2]~10_combout\,
	datac => \inst|s_r[3]~17_combout\,
	datad => \inst|s_r[1]~30_combout\,
	combout => \inst2|decOut_n[3]~7_combout\);

-- Location: LCCOMB_X53_Y1_N2
\inst2|decOut_n[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[3]~8_combout\ = ((\inst2|decOut_n[3]~1_combout\ & (\inst2|Equal7~0_combout\)) # (!\inst2|decOut_n[3]~1_combout\ & ((!\inst2|decOut_n[3]~7_combout\)))) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decOut_n[3]~1_combout\,
	datab => \inst2|Equal7~0_combout\,
	datac => \enable~input_o\,
	datad => \inst2|decOut_n[3]~7_combout\,
	combout => \inst2|decOut_n[3]~8_combout\);

-- Location: LCCOMB_X53_Y1_N12
\inst2|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~9_combout\ = (\inst|s_r[0]~23_combout\ & (!\inst|s_r[2]~10_combout\ & (!\inst|s_r[3]~17_combout\ & \inst|s_r[1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~23_combout\,
	datab => \inst|s_r[2]~10_combout\,
	datac => \inst|s_r[3]~17_combout\,
	datad => \inst|s_r[1]~30_combout\,
	combout => \inst2|decOut_n~9_combout\);

-- Location: LCCOMB_X53_Y1_N6
\inst2|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~10_combout\ = (!\inst|s_r[0]~23_combout\ & !\inst|s_r[1]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_r[0]~23_combout\,
	datad => \inst|s_r[1]~30_combout\,
	combout => \inst2|decOut_n~10_combout\);

-- Location: LCCOMB_X53_Y1_N24
\inst2|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~11_combout\ = (\enable~input_o\ & ((\inst2|decOut_n~10_combout\) # ((!\inst|s_r[2]~10_combout\) # (!\inst|s_r[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decOut_n~10_combout\,
	datab => \enable~input_o\,
	datac => \inst|s_r[3]~17_combout\,
	datad => \inst|s_r[2]~10_combout\,
	combout => \inst2|decOut_n~11_combout\);

-- Location: LCCOMB_X53_Y1_N18
\inst2|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~12_combout\ = (\inst2|decOut_n~9_combout\) # (!\inst2|decOut_n~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decOut_n~9_combout\,
	datad => \inst2|decOut_n~11_combout\,
	combout => \inst2|decOut_n~12_combout\);

-- Location: LCCOMB_X60_Y1_N2
\inst2|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~13_combout\ = (\inst|s_r[3]~17_combout\ & (!\inst|s_r[2]~10_combout\ & (\inst|s_r[1]~30_combout\ & !\inst|s_r[0]~23_combout\))) # (!\inst|s_r[3]~17_combout\ & (\inst|s_r[2]~10_combout\ & (\inst|s_r[1]~30_combout\ $ 
-- (!\inst|s_r[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[3]~17_combout\,
	datab => \inst|s_r[2]~10_combout\,
	datac => \inst|s_r[1]~30_combout\,
	datad => \inst|s_r[0]~23_combout\,
	combout => \inst2|decOut_n~13_combout\);

-- Location: LCCOMB_X56_Y1_N24
\inst2|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~14_combout\ = (\inst2|decOut_n~13_combout\) # (!\inst2|decOut_n~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decOut_n~11_combout\,
	datac => \inst2|decOut_n~13_combout\,
	combout => \inst2|decOut_n~14_combout\);

-- Location: LCCOMB_X53_Y1_N20
\inst2|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~15_combout\ = (\inst|s_r[2]~10_combout\ & (!\inst|s_r[1]~30_combout\ & (\inst|s_r[0]~23_combout\ $ (\inst|s_r[3]~17_combout\)))) # (!\inst|s_r[2]~10_combout\ & (!\inst|s_r[0]~23_combout\ & (\inst|s_r[3]~17_combout\ $ 
-- (!\inst|s_r[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r[0]~23_combout\,
	datab => \inst|s_r[2]~10_combout\,
	datac => \inst|s_r[3]~17_combout\,
	datad => \inst|s_r[1]~30_combout\,
	combout => \inst2|decOut_n~15_combout\);

-- Location: LCCOMB_X53_Y1_N30
\inst2|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n~16_combout\ = (\inst2|decOut_n~15_combout\) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decOut_n~15_combout\,
	datac => \enable~input_o\,
	combout => \inst2|decOut_n~16_combout\);

-- Location: LCCOMB_X60_Y2_N6
\inst|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(3) = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X60_Y1_N12
\inst|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(2) = (\SW[6]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X60_Y2_N8
\inst|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(4) = (\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X60_Y2_N12
\inst|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(1) = (\SW[5]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X60_Y2_N10
\inst|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(3) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(5) $ (\SW[7]~input_o\)))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[6]~input_o\ & 
-- (\inst|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \inst|Mult0|auto_generated|le4a\(5),
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X60_Y2_N30
\inst|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(4) = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X60_Y2_N16
\inst|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(2) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SW[6]~input_o\ $ ((\inst|Mult0|auto_generated|le4a\(5))))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (((\inst|Mult0|auto_generated|le4a\(5) & 
-- !\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \inst|Mult0|auto_generated|le4a\(5),
	datad => \SW[5]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X60_Y2_N22
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

-- Location: LCCOMB_X60_Y2_N24
\inst|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~6_combout\ = (\inst|Mult0|auto_generated|le5a\(1) & ((\inst|Mult0|auto_generated|le4a\(3) & (\inst|Mult0|auto_generated|op_1~5\ & VCC)) # (!\inst|Mult0|auto_generated|le4a\(3) & (!\inst|Mult0|auto_generated|op_1~5\)))) # 
-- (!\inst|Mult0|auto_generated|le5a\(1) & ((\inst|Mult0|auto_generated|le4a\(3) & (!\inst|Mult0|auto_generated|op_1~5\)) # (!\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \inst|Mult0|auto_generated|op_1~7\ = CARRY((\inst|Mult0|auto_generated|le5a\(1) & (!\inst|Mult0|auto_generated|le4a\(3) & !\inst|Mult0|auto_generated|op_1~5\)) # (!\inst|Mult0|auto_generated|le5a\(1) & ((!\inst|Mult0|auto_generated|op_1~5\) # 
-- (!\inst|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(1),
	datab => \inst|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~5\,
	combout => \inst|Mult0|auto_generated|op_1~6_combout\,
	cout => \inst|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X60_Y2_N26
\inst|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~8_combout\ = ((\inst|Mult0|auto_generated|le5a\(2) $ (\inst|Mult0|auto_generated|le4a\(4) $ (!\inst|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \inst|Mult0|auto_generated|op_1~9\ = CARRY((\inst|Mult0|auto_generated|le5a\(2) & ((\inst|Mult0|auto_generated|le4a\(4)) # (!\inst|Mult0|auto_generated|op_1~7\))) # (!\inst|Mult0|auto_generated|le5a\(2) & (\inst|Mult0|auto_generated|le4a\(4) & 
-- !\inst|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(2),
	datab => \inst|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~7\,
	combout => \inst|Mult0|auto_generated|op_1~8_combout\,
	cout => \inst|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X60_Y2_N28
\inst|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~10_combout\ = \inst|Mult0|auto_generated|le4a\(5) $ (\inst|Mult0|auto_generated|op_1~9\ $ (!\inst|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|le4a\(5),
	datad => \inst|Mult0|auto_generated|le5a\(3),
	cin => \inst|Mult0|auto_generated|op_1~9\,
	combout => \inst|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X62_Y3_N28
\inst|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(0) = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X61_Y2_N12
\inst|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~8_combout\ = ((\inst|Mult0|auto_generated|le5a\(0) $ (\inst|Mult0|auto_generated|op_1~4_combout\ $ (!\inst|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~9\ = CARRY((\inst|Mult0|auto_generated|le5a\(0) & ((\inst|Mult0|auto_generated|op_1~4_combout\) # (!\inst|Mult0|auto_generated|op_3~7\))) # (!\inst|Mult0|auto_generated|le5a\(0) & (\inst|Mult0|auto_generated|op_1~4_combout\ 
-- & !\inst|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(0),
	datab => \inst|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~7\,
	combout => \inst|Mult0|auto_generated|op_3~8_combout\,
	cout => \inst|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X61_Y2_N14
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

-- Location: LCCOMB_X61_Y2_N16
\inst|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~12_combout\ = ((\inst|Mult0|auto_generated|op_1~8_combout\ $ (\SW[1]~input_o\ $ (!\inst|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~13\ = CARRY((\inst|Mult0|auto_generated|op_1~8_combout\ & ((\SW[1]~input_o\) # (!\inst|Mult0|auto_generated|op_3~11\))) # (!\inst|Mult0|auto_generated|op_1~8_combout\ & (\SW[1]~input_o\ & 
-- !\inst|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_1~8_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~11\,
	combout => \inst|Mult0|auto_generated|op_3~12_combout\,
	cout => \inst|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X61_Y2_N18
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

-- Location: LCCOMB_X61_Y2_N28
\inst1|decOut_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~5_combout\ = (\inst|Mult0|auto_generated|op_3~8_combout\ & (!\inst|Mult0|auto_generated|op_3~14_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ $ (!\inst|Mult0|auto_generated|op_3~10_combout\)))) # 
-- (!\inst|Mult0|auto_generated|op_3~8_combout\ & (!\inst|Mult0|auto_generated|op_3~10_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ $ (!\inst|Mult0|auto_generated|op_3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~14_combout\,
	datab => \inst|Mult0|auto_generated|op_3~12_combout\,
	datac => \inst|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst1|decOut_n[6]~5_combout\);

-- Location: LCCOMB_X61_Y2_N30
\inst1|decOut_n[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~3_combout\ = (\inst1|decOut_n[6]~5_combout\) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \inst1|decOut_n[6]~5_combout\,
	combout => \inst1|decOut_n[6]~3_combout\);

-- Location: LCCOMB_X61_Y2_N24
\inst1|decOut_n[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~33_combout\ = (\SW[8]~input_o\) # ((\SW[10]~input_o\) # ((\inst1|decOut_n[6]~3_combout\) # (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst1|decOut_n[6]~3_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst1|decOut_n[6]~33_combout\);

-- Location: LCCOMB_X65_Y2_N24
\inst1|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~20_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst1|decOut_n~20_combout\);

-- Location: LCCOMB_X65_Y2_N12
\inst1|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~22_combout\ = (!\inst|Mult0|auto_generated|op_3~14_combout\ & (\inst|Mult0|auto_generated|op_3~8_combout\ & (\inst|Mult0|auto_generated|op_3~10_combout\ & \inst1|decOut_n~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~14_combout\,
	datab => \inst|Mult0|auto_generated|op_3~8_combout\,
	datac => \inst|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst1|decOut_n~20_combout\,
	combout => \inst1|decOut_n~22_combout\);

-- Location: LCCOMB_X65_Y2_N28
\inst|m[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[0]~8_combout\ = ((\SW[8]~input_o\) # ((\SW[10]~input_o\) # (!\SW[9]~input_o\))) # (!\inst|Mult0|auto_generated|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~8_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|m[0]~8_combout\);

-- Location: LCCOMB_X65_Y2_N2
\inst|m[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[3]~11_combout\ = (\inst|Mult0|auto_generated|op_3~14_combout\ & (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~14_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|m[3]~11_combout\);

-- Location: LCCOMB_X65_Y2_N30
\inst|m[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[1]~9_combout\ = (\SW[9]~input_o\ & (\inst|Mult0|auto_generated|op_3~10_combout\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst|Mult0|auto_generated|op_3~10_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|m[1]~9_combout\);

-- Location: LCCOMB_X65_Y2_N0
\inst|m[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[2]~10_combout\ = (\inst|Mult0|auto_generated|op_3~12_combout\ & (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~12_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|m[2]~10_combout\);

-- Location: LCCOMB_X65_Y2_N10
\inst1|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~21_combout\ = (\inst|m[0]~8_combout\ & (!\inst|m[3]~11_combout\ & (\inst|m[1]~9_combout\ & !\inst|m[2]~10_combout\))) # (!\inst|m[0]~8_combout\ & (!\inst|m[1]~9_combout\ & (\inst|m[3]~11_combout\ $ (!\inst|m[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|m[0]~8_combout\,
	datab => \inst|m[3]~11_combout\,
	datac => \inst|m[1]~9_combout\,
	datad => \inst|m[2]~10_combout\,
	combout => \inst1|decOut_n~21_combout\);

-- Location: LCCOMB_X65_Y2_N14
\inst1|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~23_combout\ = (\inst1|decOut_n~22_combout\) # ((\inst1|decOut_n~21_combout\) # (!\enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~22_combout\,
	datac => \enable~input_o\,
	datad => \inst1|decOut_n~21_combout\,
	combout => \inst1|decOut_n~23_combout\);

-- Location: LCCOMB_X61_Y2_N0
\inst1|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~24_combout\ = (\inst|Mult0|auto_generated|op_3~10_combout\ & (!\inst|Mult0|auto_generated|op_3~14_combout\ & ((\inst|Mult0|auto_generated|op_3~8_combout\)))) # (!\inst|Mult0|auto_generated|op_3~10_combout\ & 
-- ((\inst|Mult0|auto_generated|op_3~12_combout\ & (!\inst|Mult0|auto_generated|op_3~14_combout\)) # (!\inst|Mult0|auto_generated|op_3~12_combout\ & ((\inst|Mult0|auto_generated|op_3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~14_combout\,
	datab => \inst|Mult0|auto_generated|op_3~12_combout\,
	datac => \inst|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst1|decOut_n~24_combout\);

-- Location: LCCOMB_X61_Y2_N26
\inst1|decOut_n[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[4]~25_combout\ = ((\inst1|decOut_n~24_combout\ & \inst1|decOut_n~20_combout\)) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|decOut_n~24_combout\,
	datac => \enable~input_o\,
	datad => \inst1|decOut_n~20_combout\,
	combout => \inst1|decOut_n[4]~25_combout\);

-- Location: LCCOMB_X61_Y2_N2
\inst1|decOut_n[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[3]~15_combout\ = (\inst|Mult0|auto_generated|op_3~10_combout\ & ((\inst|Mult0|auto_generated|op_3~12_combout\ & ((\inst|Mult0|auto_generated|op_3~8_combout\))) # (!\inst|Mult0|auto_generated|op_3~12_combout\ & 
-- (\inst|Mult0|auto_generated|op_3~14_combout\ & !\inst|Mult0|auto_generated|op_3~8_combout\)))) # (!\inst|Mult0|auto_generated|op_3~10_combout\ & (!\inst|Mult0|auto_generated|op_3~14_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ $ 
-- (\inst|Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~14_combout\,
	datab => \inst|Mult0|auto_generated|op_3~12_combout\,
	datac => \inst|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst1|decOut_n[3]~15_combout\);

-- Location: LCCOMB_X61_Y2_N20
\inst1|decOut_n[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[3]~13_combout\ = (\inst1|decOut_n[3]~15_combout\ & !\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|decOut_n[3]~15_combout\,
	datac => \SW[10]~input_o\,
	combout => \inst1|decOut_n[3]~13_combout\);

-- Location: LCCOMB_X61_Y2_N22
\inst1|decOut_n[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[3]~34_combout\ = ((!\SW[8]~input_o\ & (\inst1|decOut_n[3]~13_combout\ & \SW[9]~input_o\))) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst1|decOut_n[3]~13_combout\,
	datac => \enable~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst1|decOut_n[3]~34_combout\);

-- Location: LCCOMB_X65_Y2_N8
\inst1|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~26_combout\ = (\inst|m[3]~11_combout\ & (\inst|m[2]~10_combout\ & ((\inst|m[0]~8_combout\) # (\inst|m[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|m[0]~8_combout\,
	datab => \inst|m[3]~11_combout\,
	datac => \inst|m[1]~9_combout\,
	datad => \inst|m[2]~10_combout\,
	combout => \inst1|decOut_n~26_combout\);

-- Location: LCCOMB_X65_Y2_N18
\inst1|decOut_n~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~27_combout\ = (!\inst|Mult0|auto_generated|op_3~14_combout\ & (!\inst|Mult0|auto_generated|op_3~8_combout\ & (\inst|m[1]~9_combout\ & !\inst|m[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~14_combout\,
	datab => \inst|Mult0|auto_generated|op_3~8_combout\,
	datac => \inst|m[1]~9_combout\,
	datad => \inst|m[2]~10_combout\,
	combout => \inst1|decOut_n~27_combout\);

-- Location: LCCOMB_X65_Y2_N20
\inst1|decOut_n~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~28_combout\ = ((\inst1|decOut_n~26_combout\) # (\inst1|decOut_n~27_combout\)) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \inst1|decOut_n~26_combout\,
	datad => \inst1|decOut_n~27_combout\,
	combout => \inst1|decOut_n~28_combout\);

-- Location: LCCOMB_X65_Y2_N22
\inst1|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~29_combout\ = (\inst|m[3]~11_combout\ & ((\inst|m[1]~9_combout\ & ((!\inst|m[2]~10_combout\))) # (!\inst|m[1]~9_combout\ & (!\inst|m[0]~8_combout\ & \inst|m[2]~10_combout\)))) # (!\inst|m[3]~11_combout\ & (\inst|m[2]~10_combout\ & 
-- (\inst|m[0]~8_combout\ $ (\inst|m[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|m[0]~8_combout\,
	datab => \inst|m[3]~11_combout\,
	datac => \inst|m[1]~9_combout\,
	datad => \inst|m[2]~10_combout\,
	combout => \inst1|decOut_n~29_combout\);

-- Location: LCCOMB_X65_Y2_N16
\inst1|decOut_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~30_combout\ = ((\inst1|decOut_n~29_combout\ & (\inst|Mult0|auto_generated|op_3~8_combout\ & !\inst|m[2]~10_combout\)) # (!\inst1|decOut_n~29_combout\ & ((\inst|m[2]~10_combout\)))) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~29_combout\,
	datab => \inst|Mult0|auto_generated|op_3~8_combout\,
	datac => \enable~input_o\,
	datad => \inst|m[2]~10_combout\,
	combout => \inst1|decOut_n~30_combout\);

-- Location: LCCOMB_X65_Y2_N26
\inst1|decOut_n~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~31_combout\ = (\inst|m[3]~11_combout\ & (!\inst|m[0]~8_combout\ & (\inst|m[1]~9_combout\ $ (\inst|m[2]~10_combout\)))) # (!\inst|m[3]~11_combout\ & (!\inst|m[1]~9_combout\ & (\inst|m[0]~8_combout\ $ (!\inst|m[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|m[0]~8_combout\,
	datab => \inst|m[3]~11_combout\,
	datac => \inst|m[1]~9_combout\,
	datad => \inst|m[2]~10_combout\,
	combout => \inst1|decOut_n~31_combout\);

-- Location: LCCOMB_X66_Y1_N24
\inst1|decOut_n~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~32_combout\ = (\inst1|decOut_n~31_combout\) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \inst1|decOut_n~31_combout\,
	combout => \inst1|decOut_n~32_combout\);

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

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


