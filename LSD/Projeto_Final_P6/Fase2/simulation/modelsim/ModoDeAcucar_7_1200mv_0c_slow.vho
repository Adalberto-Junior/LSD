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

-- DATE "06/20/2021 19:19:34"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ModoDeAcucarDemo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(4 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END ModoDeAcucarDemo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ModoDeAcucarDemo IS
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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst10|s_acucar~q\ : std_logic;
SIGNAL \inst10|selModAc~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst10|s_reset~q\ : std_logic;
SIGNAL \inst10|reset~q\ : std_logic;
SIGNAL \inst2|s_currentState.Start~0_combout\ : std_logic;
SIGNAL \inst2|s_currentState.Start~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst10|s_cha~q\ : std_logic;
SIGNAL \inst10|cha~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst10|s_cafe~q\ : std_logic;
SIGNAL \inst10|cafe~q\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst10|s_choc~feeder_combout\ : std_logic;
SIGNAL \inst10|s_choc~q\ : std_logic;
SIGNAL \inst10|choc~feeder_combout\ : std_logic;
SIGNAL \inst10|choc~q\ : std_logic;
SIGNAL \inst2|Selector6~1_combout\ : std_logic;
SIGNAL \inst2|Selector6~2_combout\ : std_logic;
SIGNAL \inst2|s_currentState.Tchoc~q\ : std_logic;
SIGNAL \inst2|Selector5~2_combout\ : std_logic;
SIGNAL \inst2|Selector5~3_combout\ : std_logic;
SIGNAL \inst2|s_currentState.Tcha~q\ : std_logic;
SIGNAL \inst2|WideOr12~0_combout\ : std_logic;
SIGNAL \inst2|WideOr0~combout\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][27]~0_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|_~2_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][22]~1_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \inst7|Add0~1_cout\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~6\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~12\ : std_logic;
SIGNAL \inst7|Add0~15\ : std_logic;
SIGNAL \inst7|Add0~18\ : std_logic;
SIGNAL \inst7|Add0~20\ : std_logic;
SIGNAL \inst7|Add0~22\ : std_logic;
SIGNAL \inst7|Add0~24\ : std_logic;
SIGNAL \inst7|Add0~26\ : std_logic;
SIGNAL \inst7|Add0~28\ : std_logic;
SIGNAL \inst7|Add0~30\ : std_logic;
SIGNAL \inst7|Add0~32\ : std_logic;
SIGNAL \inst7|Add0~34\ : std_logic;
SIGNAL \inst7|Add0~36\ : std_logic;
SIGNAL \inst7|Add0~38\ : std_logic;
SIGNAL \inst7|Add0~40\ : std_logic;
SIGNAL \inst7|Add0~42\ : std_logic;
SIGNAL \inst7|Add0~43_combout\ : std_logic;
SIGNAL \inst7|Add0~39_combout\ : std_logic;
SIGNAL \inst7|Add0~33_combout\ : std_logic;
SIGNAL \inst7|Add0~31_combout\ : std_logic;
SIGNAL \inst7|Add0~27_combout\ : std_logic;
SIGNAL \inst7|Add0~25_combout\ : std_logic;
SIGNAL \inst7|Add0~19_combout\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|Add0~11_combout\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add1~0_combout\ : std_logic;
SIGNAL \inst7|s_counter~17_combout\ : std_logic;
SIGNAL \inst7|s_counter[4]~18_combout\ : std_logic;
SIGNAL \inst7|Add1~1\ : std_logic;
SIGNAL \inst7|Add1~2_combout\ : std_logic;
SIGNAL \inst7|s_counter~19_combout\ : std_logic;
SIGNAL \inst7|Add1~3\ : std_logic;
SIGNAL \inst7|Add1~4_combout\ : std_logic;
SIGNAL \inst7|s_counter~20_combout\ : std_logic;
SIGNAL \inst7|Add1~5\ : std_logic;
SIGNAL \inst7|Add1~6_combout\ : std_logic;
SIGNAL \inst7|s_counter~21_combout\ : std_logic;
SIGNAL \inst7|Add1~7\ : std_logic;
SIGNAL \inst7|Add1~8_combout\ : std_logic;
SIGNAL \inst7|s_counter~22_combout\ : std_logic;
SIGNAL \inst7|Add1~9\ : std_logic;
SIGNAL \inst7|Add1~10_combout\ : std_logic;
SIGNAL \inst7|s_counter~23_combout\ : std_logic;
SIGNAL \inst7|Add1~11\ : std_logic;
SIGNAL \inst7|Add1~12_combout\ : std_logic;
SIGNAL \inst7|s_counter~24_combout\ : std_logic;
SIGNAL \inst7|Add1~13\ : std_logic;
SIGNAL \inst7|Add1~14_combout\ : std_logic;
SIGNAL \inst7|s_counter~25_combout\ : std_logic;
SIGNAL \inst7|s_counter[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_currentState.Start~_wirecell_combout\ : std_logic;
SIGNAL \inst7|Add1~15\ : std_logic;
SIGNAL \inst7|Add1~16_combout\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|Add1~17\ : std_logic;
SIGNAL \inst7|Add1~18_combout\ : std_logic;
SIGNAL \inst7|Add0~5_combout\ : std_logic;
SIGNAL \inst7|Add0~7_combout\ : std_logic;
SIGNAL \inst7|Add1~19\ : std_logic;
SIGNAL \inst7|Add1~20_combout\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|Add1~21\ : std_logic;
SIGNAL \inst7|Add1~22_combout\ : std_logic;
SIGNAL \inst7|Add0~13_combout\ : std_logic;
SIGNAL \inst7|Add1~23\ : std_logic;
SIGNAL \inst7|Add1~24_combout\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|Add1~25\ : std_logic;
SIGNAL \inst7|Add1~26_combout\ : std_logic;
SIGNAL \inst7|Add0~17_combout\ : std_logic;
SIGNAL \inst7|s_counter[13]~0_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][22]~1_wirecell_combout\ : std_logic;
SIGNAL \inst7|Add1~27\ : std_logic;
SIGNAL \inst7|Add1~28_combout\ : std_logic;
SIGNAL \inst7|s_counter[14]~1_combout\ : std_logic;
SIGNAL \inst7|Add1~29\ : std_logic;
SIGNAL \inst7|Add1~30_combout\ : std_logic;
SIGNAL \inst7|Add0~21_combout\ : std_logic;
SIGNAL \inst7|s_counter[15]~2_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|_~2_wirecell_combout\ : std_logic;
SIGNAL \inst7|Add1~31\ : std_logic;
SIGNAL \inst7|Add1~32_combout\ : std_logic;
SIGNAL \inst7|Add0~23_combout\ : std_logic;
SIGNAL \inst7|s_counter[16]~3_combout\ : std_logic;
SIGNAL \inst7|Add1~33\ : std_logic;
SIGNAL \inst7|Add1~34_combout\ : std_logic;
SIGNAL \inst7|s_counter[17]~4_combout\ : std_logic;
SIGNAL \inst7|Add1~35\ : std_logic;
SIGNAL \inst7|Add1~36_combout\ : std_logic;
SIGNAL \inst7|s_counter[18]~5_combout\ : std_logic;
SIGNAL \inst7|Add1~37\ : std_logic;
SIGNAL \inst7|Add1~38_combout\ : std_logic;
SIGNAL \inst7|Add0~29_combout\ : std_logic;
SIGNAL \inst7|s_counter[19]~6_combout\ : std_logic;
SIGNAL \inst7|Add1~39\ : std_logic;
SIGNAL \inst7|Add1~40_combout\ : std_logic;
SIGNAL \inst7|s_counter[20]~7_combout\ : std_logic;
SIGNAL \inst7|Add1~41\ : std_logic;
SIGNAL \inst7|Add1~42_combout\ : std_logic;
SIGNAL \inst7|s_counter[21]~8_combout\ : std_logic;
SIGNAL \inst7|Add1~43\ : std_logic;
SIGNAL \inst7|Add1~44_combout\ : std_logic;
SIGNAL \inst7|Add0~35_combout\ : std_logic;
SIGNAL \inst7|s_counter[22]~9_combout\ : std_logic;
SIGNAL \inst7|Add1~45\ : std_logic;
SIGNAL \inst7|Add1~46_combout\ : std_logic;
SIGNAL \inst7|Add0~37_combout\ : std_logic;
SIGNAL \inst7|s_counter[23]~10_combout\ : std_logic;
SIGNAL \inst7|Add1~47\ : std_logic;
SIGNAL \inst7|Add1~48_combout\ : std_logic;
SIGNAL \inst7|s_counter[24]~11_combout\ : std_logic;
SIGNAL \inst7|Add1~49\ : std_logic;
SIGNAL \inst7|Add1~50_combout\ : std_logic;
SIGNAL \inst7|Add0~41_combout\ : std_logic;
SIGNAL \inst7|s_counter[25]~12_combout\ : std_logic;
SIGNAL \inst7|Add1~51\ : std_logic;
SIGNAL \inst7|Add1~52_combout\ : std_logic;
SIGNAL \inst7|s_counter[26]~13_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~8_combout\ : std_logic;
SIGNAL \inst7|Add1~53\ : std_logic;
SIGNAL \inst7|Add1~54_combout\ : std_logic;
SIGNAL \inst7|Add0~44\ : std_logic;
SIGNAL \inst7|Add0~45_combout\ : std_logic;
SIGNAL \inst7|s_counter[27]~14_combout\ : std_logic;
SIGNAL \inst7|Add0~46\ : std_logic;
SIGNAL \inst7|Add0~48\ : std_logic;
SIGNAL \inst7|Add0~49_combout\ : std_logic;
SIGNAL \inst7|Add1~55\ : std_logic;
SIGNAL \inst7|Add1~56_combout\ : std_logic;
SIGNAL \inst7|Add0~47_combout\ : std_logic;
SIGNAL \inst7|s_counter[28]~15_combout\ : std_logic;
SIGNAL \inst7|Add1~57\ : std_logic;
SIGNAL \inst7|Add1~58_combout\ : std_logic;
SIGNAL \inst7|s_counter[29]~16_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~9_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~1_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~0_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~2_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~6_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~3_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~5_combout\ : std_logic;
SIGNAL \inst7|Add0~50\ : std_logic;
SIGNAL \inst7|Add0~51_combout\ : std_logic;
SIGNAL \inst7|Add1~59\ : std_logic;
SIGNAL \inst7|Add1~60_combout\ : std_logic;
SIGNAL \inst7|Add0~53_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~4_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~7_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~10_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~11_combout\ : std_logic;
SIGNAL \inst7|s_cntZero~q\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|s_currentState.Helo~q\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|Selector3~2_combout\ : std_logic;
SIGNAL \inst2|Selector3~3_combout\ : std_logic;
SIGNAL \inst2|Selector7~0_combout\ : std_logic;
SIGNAL \inst2|Selector9~0_combout\ : std_logic;
SIGNAL \inst2|s_currentState.Ready_Choc~q\ : std_logic;
SIGNAL \inst2|Selector8~0_combout\ : std_logic;
SIGNAL \inst2|s_currentState.Ready_Cha~q\ : std_logic;
SIGNAL \inst2|WideOr1~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~4_combout\ : std_logic;
SIGNAL \inst2|s_currentState.choose~q\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|Selector4~1_combout\ : std_logic;
SIGNAL \inst2|s_currentState.Tcafe~q\ : std_logic;
SIGNAL \inst2|Selector7~1_combout\ : std_logic;
SIGNAL \inst2|s_currentState.Ready_Cafe~q\ : std_logic;
SIGNAL \inst2|WideOr4~0_combout\ : std_logic;
SIGNAL \inst2|WideOr3~0_combout\ : std_logic;
SIGNAL \inst8|OutHex0~0_combout\ : std_logic;
SIGNAL \inst8|OutHex2~6_combout\ : std_logic;
SIGNAL \inst8|Equal3~0_combout\ : std_logic;
SIGNAL \inst8|OutHex0~1_combout\ : std_logic;
SIGNAL \inst8|OutHex1~2_combout\ : std_logic;
SIGNAL \inst8|OutHex1~3_combout\ : std_logic;
SIGNAL \inst8|OutHex1~4_combout\ : std_logic;
SIGNAL \inst8|OutHex1~7_combout\ : std_logic;
SIGNAL \inst8|OutHex1~5_combout\ : std_logic;
SIGNAL \inst8|OutHex1~6_combout\ : std_logic;
SIGNAL \inst8|OutHex2~7_combout\ : std_logic;
SIGNAL \inst2|selModAc~0_combout\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst5|s_dirtyIn~q\ : std_logic;
SIGNAL \inst5|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \inst5|s_previousIn~q\ : std_logic;
SIGNAL \inst5|s_debounceCnt[22]~4_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~29_combout\ : std_logic;
SIGNAL \inst5|LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[22]~2_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst5|Add0~41\ : std_logic;
SIGNAL \inst5|Add0~42_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[21]~13_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst5|Add0~33\ : std_logic;
SIGNAL \inst5|Add0~34_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst5|Add0~35\ : std_logic;
SIGNAL \inst5|Add0~36_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[18]~20_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[22]~5_combout\ : std_logic;
SIGNAL \inst5|Add0~37\ : std_logic;
SIGNAL \inst5|Add0~38_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[19]~21_combout\ : std_logic;
SIGNAL \inst5|Add0~39\ : std_logic;
SIGNAL \inst5|Add0~40_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[20]~12_combout\ : std_logic;
SIGNAL \inst5|LessThan0~4_combout\ : std_logic;
SIGNAL \inst5|LessThan0~5_combout\ : std_logic;
SIGNAL \inst5|LessThan0~6_combout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|LessThan0~3_combout\ : std_logic;
SIGNAL \inst5|LessThan0~7_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[22]~30_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst5|Add0~43\ : std_logic;
SIGNAL \inst5|Add0~44_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[22]~6_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~q\ : std_logic;
SIGNAL \inst6|s_currentState~8_combout\ : std_logic;
SIGNAL \inst6|s_currentState.Inicio~q\ : std_logic;
SIGNAL \inst6|comb_proc~0_combout\ : std_logic;
SIGNAL \inst9|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst9|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \inst9|s_dirtyIn~q\ : std_logic;
SIGNAL \inst9|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \inst9|s_previousIn~q\ : std_logic;
SIGNAL \inst9|Add0~3\ : std_logic;
SIGNAL \inst9|Add0~4_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst9|Add0~5\ : std_logic;
SIGNAL \inst9|Add0~6_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst9|Add0~7\ : std_logic;
SIGNAL \inst9|Add0~8_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst9|Add0~9\ : std_logic;
SIGNAL \inst9|Add0~10_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst9|Add0~11\ : std_logic;
SIGNAL \inst9|Add0~12_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst9|Add0~13\ : std_logic;
SIGNAL \inst9|Add0~14_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst9|Add0~15\ : std_logic;
SIGNAL \inst9|Add0~16_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst9|Add0~17\ : std_logic;
SIGNAL \inst9|Add0~18_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst9|Add0~19\ : std_logic;
SIGNAL \inst9|Add0~20_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst9|Add0~21\ : std_logic;
SIGNAL \inst9|Add0~22_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst9|Add0~23\ : std_logic;
SIGNAL \inst9|Add0~24_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst9|Add0~25\ : std_logic;
SIGNAL \inst9|Add0~26_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst9|Add0~27\ : std_logic;
SIGNAL \inst9|Add0~28_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst9|Add0~29\ : std_logic;
SIGNAL \inst9|Add0~30_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \inst9|Add0~31\ : std_logic;
SIGNAL \inst9|Add0~32_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst9|Add0~33\ : std_logic;
SIGNAL \inst9|Add0~34_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst9|Add0~35\ : std_logic;
SIGNAL \inst9|Add0~36_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[22]~2_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[22]~3_combout\ : std_logic;
SIGNAL \inst9|Add0~37\ : std_logic;
SIGNAL \inst9|Add0~38_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \inst9|Add0~39\ : std_logic;
SIGNAL \inst9|Add0~40_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst9|Add0~41\ : std_logic;
SIGNAL \inst9|Add0~42_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst9|Add0~43\ : std_logic;
SIGNAL \inst9|Add0~44_combout\ : std_logic;
SIGNAL \inst9|LessThan0~0_combout\ : std_logic;
SIGNAL \inst9|LessThan0~4_combout\ : std_logic;
SIGNAL \inst9|LessThan0~5_combout\ : std_logic;
SIGNAL \inst9|LessThan0~6_combout\ : std_logic;
SIGNAL \inst9|LessThan0~1_combout\ : std_logic;
SIGNAL \inst9|LessThan0~2_combout\ : std_logic;
SIGNAL \inst9|LessThan0~3_combout\ : std_logic;
SIGNAL \inst9|LessThan0~7_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[22]~0_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst9|Add0~1\ : std_logic;
SIGNAL \inst9|Add0~2_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~q\ : std_logic;
SIGNAL \inst6|Selector4~1_combout\ : std_logic;
SIGNAL \inst6|Selector5~0_combout\ : std_logic;
SIGNAL \inst6|Selector5~1_combout\ : std_logic;
SIGNAL \inst6|s_currentState.fourBar~q\ : std_logic;
SIGNAL \inst6|Selector4~0_combout\ : std_logic;
SIGNAL \inst6|Selector4~2_combout\ : std_logic;
SIGNAL \inst6|s_currentState.threeBar~q\ : std_logic;
SIGNAL \inst6|Selector3~0_combout\ : std_logic;
SIGNAL \inst6|Selector3~1_combout\ : std_logic;
SIGNAL \inst6|s_currentState.twoBar~q\ : std_logic;
SIGNAL \inst6|Selector2~0_combout\ : std_logic;
SIGNAL \inst6|Selector2~1_combout\ : std_logic;
SIGNAL \inst6|Selector2~2_combout\ : std_logic;
SIGNAL \inst6|s_currentState.oneBar~q\ : std_logic;
SIGNAL \inst6|s_currentState~9_combout\ : std_logic;
SIGNAL \inst6|s_currentState~10_combout\ : std_logic;
SIGNAL \inst6|s_currentState.zeroBar~q\ : std_logic;
SIGNAL \inst6|WideOr3~0_combout\ : std_logic;
SIGNAL \inst6|WideOr3~combout\ : std_logic;
SIGNAL \inst7|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst6|selBar\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst5|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst2|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_selBar\ : std_logic_vector(8 DOWNTO 8);
SIGNAL \inst6|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_OutHex1~6_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_OutHex1~5_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_OutHex1~3_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_OutHex1~2_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_s_currentState.fourBar~q\ : std_logic;
SIGNAL \inst8|ALT_INV_OutHex2~7_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_OutHex2~6_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
ww_KEY <= KEY;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst2|ALT_INV_WideOr1~0_combout\ <= NOT \inst2|WideOr1~0_combout\;
\inst6|ALT_INV_selBar\(8) <= NOT \inst6|selBar\(8);
\inst6|ALT_INV_WideOr3~0_combout\ <= NOT \inst6|WideOr3~0_combout\;
\inst8|ALT_INV_OutHex1~6_combout\ <= NOT \inst8|OutHex1~6_combout\;
\inst8|ALT_INV_OutHex1~5_combout\ <= NOT \inst8|OutHex1~5_combout\;
\inst8|ALT_INV_OutHex1~3_combout\ <= NOT \inst8|OutHex1~3_combout\;
\inst8|ALT_INV_OutHex1~2_combout\ <= NOT \inst8|OutHex1~2_combout\;
\inst8|ALT_INV_Equal3~0_combout\ <= NOT \inst8|Equal3~0_combout\;
\inst6|ALT_INV_s_currentState.fourBar~q\ <= NOT \inst6|s_currentState.fourBar~q\;
\inst8|ALT_INV_OutHex2~7_combout\ <= NOT \inst8|OutHex2~7_combout\;
\inst8|ALT_INV_OutHex2~6_combout\ <= NOT \inst8|OutHex2~6_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|OutHex0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex2~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_Equal3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|OutHex0~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|OutHex1~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|OutHex1~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|OutHex1~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex2~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex2~7_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex2~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_Equal3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_Equal3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_OutHex1~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|WideOr3~combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|WideOr3~combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_selBar\(8),
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_selBar\(8),
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_s_currentState.fourBar~q\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_s_currentState.fourBar~q\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|WideOr12~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X109_Y26_N9
\inst10|s_acucar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_acucar~q\);

-- Location: FF_X109_Y26_N27
\inst10|selModAc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst10|s_acucar~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|selModAc~q\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X109_Y26_N17
\inst10|s_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_reset~q\);

-- Location: FF_X109_Y26_N31
\inst10|reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst10|s_reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|reset~q\);

-- Location: LCCOMB_X109_Y26_N0
\inst2|s_currentState.Start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState.Start~0_combout\ = !\inst10|reset~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|reset~q\,
	combout => \inst2|s_currentState.Start~0_combout\);

-- Location: FF_X108_Y26_N1
\inst2|s_currentState.Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_currentState.Start~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.Start~q\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X114_Y26_N1
\inst10|s_cha\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_cha~q\);

-- Location: FF_X113_Y26_N9
\inst10|cha\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst10|s_cha~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cha~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X114_Y26_N31
\inst10|s_cafe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_cafe~q\);

-- Location: FF_X113_Y26_N1
\inst10|cafe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst10|s_cafe~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|cafe~q\);

-- Location: LCCOMB_X107_Y26_N8
\inst2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (!\inst10|cafe~q\ & \inst2|s_currentState.choose~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|cafe~q\,
	datad => \inst2|s_currentState.choose~q\,
	combout => \inst2|Selector6~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X114_Y26_N24
\inst10|s_choc~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_choc~feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \inst10|s_choc~feeder_combout\);

-- Location: FF_X114_Y26_N25
\inst10|s_choc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|s_choc~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_choc~q\);

-- Location: LCCOMB_X113_Y26_N10
\inst10|choc~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|choc~feeder_combout\ = \inst10|s_choc~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|s_choc~q\,
	combout => \inst10|choc~feeder_combout\);

-- Location: FF_X113_Y26_N11
\inst10|choc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst10|choc~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|choc~q\);

-- Location: LCCOMB_X107_Y26_N18
\inst2|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector6~1_combout\ = (\inst2|s_currentState.Tchoc~q\ & ((\inst10|selModAc~q\) # ((!\inst7|s_cntZero~q\ & \inst10|choc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_cntZero~q\,
	datab => \inst2|s_currentState.Tchoc~q\,
	datac => \inst10|choc~q\,
	datad => \inst10|selModAc~q\,
	combout => \inst2|Selector6~1_combout\);

-- Location: LCCOMB_X107_Y26_N24
\inst2|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector6~2_combout\ = (\inst2|Selector6~1_combout\) # ((!\inst10|cha~q\ & (\inst2|Selector6~0_combout\ & \inst10|choc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cha~q\,
	datab => \inst2|Selector6~0_combout\,
	datac => \inst10|choc~q\,
	datad => \inst2|Selector6~1_combout\,
	combout => \inst2|Selector6~2_combout\);

-- Location: FF_X107_Y26_N25
\inst2|s_currentState.Tchoc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector6~2_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.Tchoc~q\);

-- Location: LCCOMB_X107_Y26_N2
\inst2|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~2_combout\ = (\inst2|s_currentState.Tcha~q\ & ((\inst10|selModAc~q\) # ((\inst10|cha~q\ & !\inst7|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cha~q\,
	datab => \inst7|s_cntZero~q\,
	datac => \inst2|s_currentState.Tcha~q\,
	datad => \inst10|selModAc~q\,
	combout => \inst2|Selector5~2_combout\);

-- Location: LCCOMB_X107_Y26_N4
\inst2|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~3_combout\ = (\inst2|Selector5~2_combout\) # ((\inst10|cha~q\ & (\inst2|s_currentState.choose~q\ & !\inst10|cafe~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cha~q\,
	datab => \inst2|s_currentState.choose~q\,
	datac => \inst10|cafe~q\,
	datad => \inst2|Selector5~2_combout\,
	combout => \inst2|Selector5~3_combout\);

-- Location: FF_X107_Y26_N5
\inst2|s_currentState.Tcha\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector5~3_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.Tcha~q\);

-- Location: LCCOMB_X109_Y26_N8
\inst2|WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr12~0_combout\ = (\inst2|s_currentState.Tchoc~q\) # ((\inst2|s_currentState.Tcha~q\) # (\inst2|s_currentState.Tcafe~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Tchoc~q\,
	datab => \inst2|s_currentState.Tcha~q\,
	datad => \inst2|s_currentState.Tcafe~q\,
	combout => \inst2|WideOr12~0_combout\);

-- Location: LCCOMB_X109_Y26_N20
\inst2|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr0~combout\ = (\inst2|s_currentState.choose~q\) # ((\inst2|s_currentState.Helo~q\) # (!\inst2|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.choose~q\,
	datac => \inst2|s_currentState.Start~q\,
	datad => \inst2|s_currentState.Helo~q\,
	combout => \inst2|WideOr0~combout\);

-- Location: LCCOMB_X109_Y26_N16
\inst2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (\inst2|WideOr0~combout\) # ((!\inst10|selModAc~q\ & \inst2|WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|selModAc~q\,
	datab => \inst2|WideOr12~0_combout\,
	datad => \inst2|WideOr0~combout\,
	combout => \inst2|Selector0~0_combout\);

-- Location: LCCOMB_X113_Y26_N20
\inst2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (!\inst10|cafe~q\ & (!\inst10|cha~q\ & !\inst10|choc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cafe~q\,
	datac => \inst10|cha~q\,
	datad => \inst10|choc~q\,
	combout => \inst2|Selector3~0_combout\);

-- Location: LCCOMB_X110_Y26_N2
\inst2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = ((\inst2|s_currentState.choose~q\ & !\inst2|Selector3~0_combout\)) # (!\inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.choose~q\,
	datac => \inst2|s_currentState.Start~q\,
	datad => \inst2|Selector3~0_combout\,
	combout => \inst2|Selector1~0_combout\);

-- Location: LCCOMB_X108_Y26_N0
\inst7|Mult0|mult_core|romout[0][27]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][27]~0_combout\ = (\inst2|s_currentState.choose~q\) # (!\inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_currentState.Start~q\,
	datad => \inst2|s_currentState.choose~q\,
	combout => \inst7|Mult0|mult_core|romout[0][27]~0_combout\);

-- Location: LCCOMB_X108_Y26_N4
\inst7|Mult0|mult_core|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|_~2_combout\ = (\inst2|s_currentState.Start~q\) # (\inst2|s_currentState.choose~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Start~q\,
	datad => \inst2|s_currentState.choose~q\,
	combout => \inst7|Mult0|mult_core|_~2_combout\);

-- Location: LCCOMB_X108_Y26_N2
\inst7|Mult0|mult_core|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|_~1_combout\ = (\inst2|s_currentState.Start~q\ & \inst2|s_currentState.choose~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Start~q\,
	datad => \inst2|s_currentState.choose~q\,
	combout => \inst7|Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X108_Y26_N6
\inst7|Mult0|mult_core|romout[0][22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][22]~1_combout\ = \inst2|s_currentState.Start~q\ $ (\inst2|s_currentState.choose~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Start~q\,
	datad => \inst2|s_currentState.choose~q\,
	combout => \inst7|Mult0|mult_core|romout[0][22]~1_combout\);

-- Location: LCCOMB_X108_Y25_N24
\inst7|Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|_~0_combout\ = (\inst2|s_currentState.choose~q\ & !\inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_currentState.choose~q\,
	datad => \inst2|s_currentState.Start~q\,
	combout => \inst7|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X108_Y26_N8
\inst7|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~1_cout\ = CARRY(!\inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Start~q\,
	datad => VCC,
	cout => \inst7|Add0~1_cout\);

-- Location: LCCOMB_X108_Y26_N10
\inst7|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst2|s_currentState.choose~q\ & (\inst7|Add0~1_cout\ & VCC)) # (!\inst2|s_currentState.choose~q\ & (!\inst7|Add0~1_cout\))
-- \inst7|Add0~3\ = CARRY((!\inst2|s_currentState.choose~q\ & !\inst7|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.choose~q\,
	datad => VCC,
	cin => \inst7|Add0~1_cout\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: LCCOMB_X108_Y26_N12
\inst7|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~5_combout\ = (\inst2|s_currentState.Start~q\ & (\inst7|Add0~3\ $ (GND))) # (!\inst2|s_currentState.Start~q\ & ((GND) # (!\inst7|Add0~3\)))
-- \inst7|Add0~6\ = CARRY((!\inst7|Add0~3\) # (!\inst2|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Start~q\,
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~5_combout\,
	cout => \inst7|Add0~6\);

-- Location: LCCOMB_X108_Y26_N14
\inst7|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = (\inst2|s_currentState.choose~q\ & (\inst7|Add0~6\ & VCC)) # (!\inst2|s_currentState.choose~q\ & (!\inst7|Add0~6\))
-- \inst7|Add0~9\ = CARRY((!\inst2|s_currentState.choose~q\ & !\inst7|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.choose~q\,
	datad => VCC,
	cin => \inst7|Add0~6\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: LCCOMB_X108_Y26_N16
\inst7|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~11_combout\ = \inst7|Add0~9\ $ (GND)
-- \inst7|Add0~12\ = CARRY(!\inst7|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~11_combout\,
	cout => \inst7|Add0~12\);

-- Location: LCCOMB_X108_Y26_N18
\inst7|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = (\inst2|s_currentState.Start~q\ & (!\inst7|Add0~12\)) # (!\inst2|s_currentState.Start~q\ & (\inst7|Add0~12\ & VCC))
-- \inst7|Add0~15\ = CARRY((\inst2|s_currentState.Start~q\ & !\inst7|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Start~q\,
	datad => VCC,
	cin => \inst7|Add0~12\,
	combout => \inst7|Add0~14_combout\,
	cout => \inst7|Add0~15\);

-- Location: LCCOMB_X108_Y26_N20
\inst7|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~17_combout\ = (\inst7|Mult0|mult_core|romout[0][22]~1_combout\ & (\inst7|Add0~15\ $ (GND))) # (!\inst7|Mult0|mult_core|romout[0][22]~1_combout\ & ((GND) # (!\inst7|Add0~15\)))
-- \inst7|Add0~18\ = CARRY((!\inst7|Add0~15\) # (!\inst7|Mult0|mult_core|romout[0][22]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|romout[0][22]~1_combout\,
	datad => VCC,
	cin => \inst7|Add0~15\,
	combout => \inst7|Add0~17_combout\,
	cout => \inst7|Add0~18\);

-- Location: LCCOMB_X108_Y26_N22
\inst7|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~19_combout\ = (\inst7|Mult0|mult_core|_~1_combout\ & (\inst7|Add0~18\ & VCC)) # (!\inst7|Mult0|mult_core|_~1_combout\ & (!\inst7|Add0~18\))
-- \inst7|Add0~20\ = CARRY((!\inst7|Mult0|mult_core|_~1_combout\ & !\inst7|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \inst7|Add0~18\,
	combout => \inst7|Add0~19_combout\,
	cout => \inst7|Add0~20\);

-- Location: LCCOMB_X108_Y26_N24
\inst7|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~21_combout\ = (\inst7|Mult0|mult_core|_~2_combout\ & (\inst7|Add0~20\ $ (GND))) # (!\inst7|Mult0|mult_core|_~2_combout\ & ((GND) # (!\inst7|Add0~20\)))
-- \inst7|Add0~22\ = CARRY((!\inst7|Add0~20\) # (!\inst7|Mult0|mult_core|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|_~2_combout\,
	datad => VCC,
	cin => \inst7|Add0~20\,
	combout => \inst7|Add0~21_combout\,
	cout => \inst7|Add0~22\);

-- Location: LCCOMB_X108_Y26_N26
\inst7|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~23_combout\ = (\inst7|Mult0|mult_core|_~1_combout\ & (\inst7|Add0~22\ & VCC)) # (!\inst7|Mult0|mult_core|_~1_combout\ & (!\inst7|Add0~22\))
-- \inst7|Add0~24\ = CARRY((!\inst7|Mult0|mult_core|_~1_combout\ & !\inst7|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \inst7|Add0~22\,
	combout => \inst7|Add0~23_combout\,
	cout => \inst7|Add0~24\);

-- Location: LCCOMB_X108_Y26_N28
\inst7|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~25_combout\ = (\inst7|Mult0|mult_core|_~2_combout\ & (\inst7|Add0~24\ $ (GND))) # (!\inst7|Mult0|mult_core|_~2_combout\ & ((GND) # (!\inst7|Add0~24\)))
-- \inst7|Add0~26\ = CARRY((!\inst7|Add0~24\) # (!\inst7|Mult0|mult_core|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|_~2_combout\,
	datad => VCC,
	cin => \inst7|Add0~24\,
	combout => \inst7|Add0~25_combout\,
	cout => \inst7|Add0~26\);

-- Location: LCCOMB_X108_Y26_N30
\inst7|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~27_combout\ = (\inst7|Mult0|mult_core|romout[0][27]~0_combout\ & (\inst7|Add0~26\ & VCC)) # (!\inst7|Mult0|mult_core|romout[0][27]~0_combout\ & (!\inst7|Add0~26\))
-- \inst7|Add0~28\ = CARRY((!\inst7|Mult0|mult_core|romout[0][27]~0_combout\ & !\inst7|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|romout[0][27]~0_combout\,
	datad => VCC,
	cin => \inst7|Add0~26\,
	combout => \inst7|Add0~27_combout\,
	cout => \inst7|Add0~28\);

-- Location: LCCOMB_X108_Y25_N0
\inst7|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~29_combout\ = (\inst7|Mult0|mult_core|_~1_combout\ & ((GND) # (!\inst7|Add0~28\))) # (!\inst7|Mult0|mult_core|_~1_combout\ & (\inst7|Add0~28\ $ (GND)))
-- \inst7|Add0~30\ = CARRY((\inst7|Mult0|mult_core|_~1_combout\) # (!\inst7|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \inst7|Add0~28\,
	combout => \inst7|Add0~29_combout\,
	cout => \inst7|Add0~30\);

-- Location: LCCOMB_X108_Y25_N2
\inst7|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~31_combout\ = (\inst7|Mult0|mult_core|_~0_combout\ & (\inst7|Add0~30\ & VCC)) # (!\inst7|Mult0|mult_core|_~0_combout\ & (!\inst7|Add0~30\))
-- \inst7|Add0~32\ = CARRY((!\inst7|Mult0|mult_core|_~0_combout\ & !\inst7|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \inst7|Add0~30\,
	combout => \inst7|Add0~31_combout\,
	cout => \inst7|Add0~32\);

-- Location: LCCOMB_X108_Y25_N4
\inst7|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~33_combout\ = (\inst2|s_currentState.Start~q\ & (\inst7|Add0~32\ $ (GND))) # (!\inst2|s_currentState.Start~q\ & ((GND) # (!\inst7|Add0~32\)))
-- \inst7|Add0~34\ = CARRY((!\inst7|Add0~32\) # (!\inst2|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Start~q\,
	datad => VCC,
	cin => \inst7|Add0~32\,
	combout => \inst7|Add0~33_combout\,
	cout => \inst7|Add0~34\);

-- Location: LCCOMB_X108_Y25_N6
\inst7|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~35_combout\ = (\inst7|Mult0|mult_core|romout[0][22]~1_combout\ & (!\inst7|Add0~34\)) # (!\inst7|Mult0|mult_core|romout[0][22]~1_combout\ & (\inst7|Add0~34\ & VCC))
-- \inst7|Add0~36\ = CARRY((\inst7|Mult0|mult_core|romout[0][22]~1_combout\ & !\inst7|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|romout[0][22]~1_combout\,
	datad => VCC,
	cin => \inst7|Add0~34\,
	combout => \inst7|Add0~35_combout\,
	cout => \inst7|Add0~36\);

-- Location: LCCOMB_X108_Y25_N8
\inst7|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~37_combout\ = (\inst7|Mult0|mult_core|romout[0][27]~0_combout\ & ((GND) # (!\inst7|Add0~36\))) # (!\inst7|Mult0|mult_core|romout[0][27]~0_combout\ & (\inst7|Add0~36\ $ (GND)))
-- \inst7|Add0~38\ = CARRY((\inst7|Mult0|mult_core|romout[0][27]~0_combout\) # (!\inst7|Add0~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|romout[0][27]~0_combout\,
	datad => VCC,
	cin => \inst7|Add0~36\,
	combout => \inst7|Add0~37_combout\,
	cout => \inst7|Add0~38\);

-- Location: LCCOMB_X108_Y25_N10
\inst7|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~39_combout\ = (\inst7|Mult0|mult_core|_~1_combout\ & (\inst7|Add0~38\ & VCC)) # (!\inst7|Mult0|mult_core|_~1_combout\ & (!\inst7|Add0~38\))
-- \inst7|Add0~40\ = CARRY((!\inst7|Mult0|mult_core|_~1_combout\ & !\inst7|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \inst7|Add0~38\,
	combout => \inst7|Add0~39_combout\,
	cout => \inst7|Add0~40\);

-- Location: LCCOMB_X108_Y25_N12
\inst7|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~41_combout\ = (\inst7|Mult0|mult_core|_~2_combout\ & (\inst7|Add0~40\ $ (GND))) # (!\inst7|Mult0|mult_core|_~2_combout\ & ((GND) # (!\inst7|Add0~40\)))
-- \inst7|Add0~42\ = CARRY((!\inst7|Add0~40\) # (!\inst7|Mult0|mult_core|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|_~2_combout\,
	datad => VCC,
	cin => \inst7|Add0~40\,
	combout => \inst7|Add0~41_combout\,
	cout => \inst7|Add0~42\);

-- Location: LCCOMB_X108_Y25_N14
\inst7|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~43_combout\ = (\inst7|Mult0|mult_core|romout[0][27]~0_combout\ & (\inst7|Add0~42\ & VCC)) # (!\inst7|Mult0|mult_core|romout[0][27]~0_combout\ & (!\inst7|Add0~42\))
-- \inst7|Add0~44\ = CARRY((!\inst7|Mult0|mult_core|romout[0][27]~0_combout\ & !\inst7|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|romout[0][27]~0_combout\,
	datad => VCC,
	cin => \inst7|Add0~42\,
	combout => \inst7|Add0~43_combout\,
	cout => \inst7|Add0~44\);

-- Location: LCCOMB_X111_Y26_N2
\inst7|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~0_combout\ = \inst7|s_counter\(0) $ (VCC)
-- \inst7|Add1~1\ = CARRY(\inst7|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(0),
	datad => VCC,
	combout => \inst7|Add1~0_combout\,
	cout => \inst7|Add1~1\);

-- Location: LCCOMB_X112_Y26_N30
\inst7|s_counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter~17_combout\ = (!\inst10|reset~q\ & ((\inst7|Add1~0_combout\) # (\inst2|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~0_combout\,
	datac => \inst10|reset~q\,
	datad => \inst2|Selector1~0_combout\,
	combout => \inst7|s_counter~17_combout\);

-- Location: LCCOMB_X109_Y26_N30
\inst7|s_counter[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[4]~18_combout\ = (\inst10|reset~q\) # ((\inst2|Selector0~0_combout\ & !\inst7|s_cntZero~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Selector0~0_combout\,
	datac => \inst10|reset~q\,
	datad => \inst7|s_cntZero~10_combout\,
	combout => \inst7|s_counter[4]~18_combout\);

-- Location: FF_X111_Y26_N31
\inst7|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst7|s_counter~17_combout\,
	sload => VCC,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(0));

-- Location: LCCOMB_X111_Y26_N4
\inst7|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~2_combout\ = (\inst7|s_counter\(1) & (\inst7|Add1~1\ & VCC)) # (!\inst7|s_counter\(1) & (!\inst7|Add1~1\))
-- \inst7|Add1~3\ = CARRY((!\inst7|s_counter\(1) & !\inst7|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(1),
	datad => VCC,
	cin => \inst7|Add1~1\,
	combout => \inst7|Add1~2_combout\,
	cout => \inst7|Add1~3\);

-- Location: LCCOMB_X112_Y26_N0
\inst7|s_counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter~19_combout\ = (!\inst10|reset~q\ & ((\inst7|Add1~2_combout\) # (\inst2|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|reset~q\,
	datac => \inst7|Add1~2_combout\,
	datad => \inst2|Selector1~0_combout\,
	combout => \inst7|s_counter~19_combout\);

-- Location: FF_X111_Y26_N1
\inst7|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst7|s_counter~19_combout\,
	sload => VCC,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(1));

-- Location: LCCOMB_X111_Y26_N6
\inst7|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~4_combout\ = (\inst7|s_counter\(2) & ((GND) # (!\inst7|Add1~3\))) # (!\inst7|s_counter\(2) & (\inst7|Add1~3\ $ (GND)))
-- \inst7|Add1~5\ = CARRY((\inst7|s_counter\(2)) # (!\inst7|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(2),
	datad => VCC,
	cin => \inst7|Add1~3\,
	combout => \inst7|Add1~4_combout\,
	cout => \inst7|Add1~5\);

-- Location: LCCOMB_X112_Y26_N14
\inst7|s_counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter~20_combout\ = (!\inst10|reset~q\ & ((\inst7|Add1~4_combout\) # (\inst2|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|reset~q\,
	datac => \inst7|Add1~4_combout\,
	datad => \inst2|Selector1~0_combout\,
	combout => \inst7|s_counter~20_combout\);

-- Location: FF_X111_Y26_N13
\inst7|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst7|s_counter~20_combout\,
	sload => VCC,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(2));

-- Location: LCCOMB_X111_Y26_N8
\inst7|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~6_combout\ = (\inst7|s_counter\(3) & (\inst7|Add1~5\ & VCC)) # (!\inst7|s_counter\(3) & (!\inst7|Add1~5\))
-- \inst7|Add1~7\ = CARRY((!\inst7|s_counter\(3) & !\inst7|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(3),
	datad => VCC,
	cin => \inst7|Add1~5\,
	combout => \inst7|Add1~6_combout\,
	cout => \inst7|Add1~7\);

-- Location: LCCOMB_X112_Y26_N20
\inst7|s_counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter~21_combout\ = (!\inst10|reset~q\ & ((\inst2|Selector1~0_combout\) # (\inst7|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datac => \inst10|reset~q\,
	datad => \inst7|Add1~6_combout\,
	combout => \inst7|s_counter~21_combout\);

-- Location: FF_X111_Y26_N21
\inst7|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst7|s_counter~21_combout\,
	sload => VCC,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(3));

-- Location: LCCOMB_X111_Y26_N10
\inst7|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~8_combout\ = (\inst7|s_counter\(4) & ((GND) # (!\inst7|Add1~7\))) # (!\inst7|s_counter\(4) & (\inst7|Add1~7\ $ (GND)))
-- \inst7|Add1~9\ = CARRY((\inst7|s_counter\(4)) # (!\inst7|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(4),
	datad => VCC,
	cin => \inst7|Add1~7\,
	combout => \inst7|Add1~8_combout\,
	cout => \inst7|Add1~9\);

-- Location: LCCOMB_X110_Y26_N0
\inst7|s_counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter~22_combout\ = (!\inst10|reset~q\ & ((\inst2|Selector1~0_combout\) # (\inst7|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|reset~q\,
	datac => \inst2|Selector1~0_combout\,
	datad => \inst7|Add1~8_combout\,
	combout => \inst7|s_counter~22_combout\);

-- Location: FF_X110_Y26_N1
\inst7|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter~22_combout\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(4));

-- Location: LCCOMB_X111_Y26_N12
\inst7|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~10_combout\ = (\inst7|s_counter\(5) & (\inst7|Add1~9\ & VCC)) # (!\inst7|s_counter\(5) & (!\inst7|Add1~9\))
-- \inst7|Add1~11\ = CARRY((!\inst7|s_counter\(5) & !\inst7|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(5),
	datad => VCC,
	cin => \inst7|Add1~9\,
	combout => \inst7|Add1~10_combout\,
	cout => \inst7|Add1~11\);

-- Location: LCCOMB_X110_Y26_N6
\inst7|s_counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter~23_combout\ = (!\inst10|reset~q\ & ((\inst2|Selector1~0_combout\) # (\inst7|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|reset~q\,
	datac => \inst2|Selector1~0_combout\,
	datad => \inst7|Add1~10_combout\,
	combout => \inst7|s_counter~23_combout\);

-- Location: FF_X110_Y26_N7
\inst7|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter~23_combout\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(5));

-- Location: LCCOMB_X111_Y26_N14
\inst7|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~12_combout\ = (\inst7|s_counter\(6) & ((GND) # (!\inst7|Add1~11\))) # (!\inst7|s_counter\(6) & (\inst7|Add1~11\ $ (GND)))
-- \inst7|Add1~13\ = CARRY((\inst7|s_counter\(6)) # (!\inst7|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(6),
	datad => VCC,
	cin => \inst7|Add1~11\,
	combout => \inst7|Add1~12_combout\,
	cout => \inst7|Add1~13\);

-- Location: LCCOMB_X112_Y26_N10
\inst7|s_counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter~24_combout\ = (!\inst10|reset~q\ & ((\inst2|Selector1~0_combout\) # (\inst7|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datac => \inst10|reset~q\,
	datad => \inst7|Add1~12_combout\,
	combout => \inst7|s_counter~24_combout\);

-- Location: FF_X111_Y26_N3
\inst7|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst7|s_counter~24_combout\,
	sload => VCC,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(6));

-- Location: LCCOMB_X111_Y26_N16
\inst7|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~14_combout\ = (\inst7|s_counter\(7) & (\inst7|Add1~13\ & VCC)) # (!\inst7|s_counter\(7) & (!\inst7|Add1~13\))
-- \inst7|Add1~15\ = CARRY((!\inst7|s_counter\(7) & !\inst7|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(7),
	datad => VCC,
	cin => \inst7|Add1~13\,
	combout => \inst7|Add1~14_combout\,
	cout => \inst7|Add1~15\);

-- Location: LCCOMB_X109_Y26_N14
\inst7|s_counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter~25_combout\ = (\inst2|s_currentState.Start~q\ & ((\inst7|Add1~14_combout\) # ((\inst2|s_currentState.choose~q\ & !\inst2|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.choose~q\,
	datab => \inst2|Selector3~0_combout\,
	datac => \inst2|s_currentState.Start~q\,
	datad => \inst7|Add1~14_combout\,
	combout => \inst7|s_counter~25_combout\);

-- Location: LCCOMB_X110_Y26_N4
\inst7|s_counter[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[7]~feeder_combout\ = \inst7|s_counter~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|s_counter~25_combout\,
	combout => \inst7|s_counter[7]~feeder_combout\);

-- Location: LCCOMB_X109_Y26_N26
\inst2|s_currentState.Start~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState.Start~_wirecell_combout\ = !\inst2|s_currentState.Start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Start~q\,
	combout => \inst2|s_currentState.Start~_wirecell_combout\);

-- Location: FF_X110_Y26_N5
\inst7|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[7]~feeder_combout\,
	asdata => \inst2|s_currentState.Start~_wirecell_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(7));

-- Location: LCCOMB_X111_Y26_N18
\inst7|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~16_combout\ = (\inst7|s_counter\(8) & ((GND) # (!\inst7|Add1~15\))) # (!\inst7|s_counter\(8) & (\inst7|Add1~15\ $ (GND)))
-- \inst7|Add1~17\ = CARRY((\inst7|s_counter\(8)) # (!\inst7|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(8),
	datad => VCC,
	cin => \inst7|Add1~15\,
	combout => \inst7|Add1~16_combout\,
	cout => \inst7|Add1~17\);

-- Location: LCCOMB_X110_Y26_N14
\inst7|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = (\inst2|Selector1~0_combout\ & (\inst7|Add0~2_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst7|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add0~2_combout\,
	datad => \inst7|Add1~16_combout\,
	combout => \inst7|Add0~4_combout\);

-- Location: FF_X110_Y26_N15
\inst7|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~4_combout\,
	asdata => \inst2|s_currentState.choose~q\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(8));

-- Location: LCCOMB_X111_Y26_N20
\inst7|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~18_combout\ = (\inst7|s_counter\(9) & (\inst7|Add1~17\ & VCC)) # (!\inst7|s_counter\(9) & (!\inst7|Add1~17\))
-- \inst7|Add1~19\ = CARRY((!\inst7|s_counter\(9) & !\inst7|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(9),
	datad => VCC,
	cin => \inst7|Add1~17\,
	combout => \inst7|Add1~18_combout\,
	cout => \inst7|Add1~19\);

-- Location: LCCOMB_X110_Y26_N24
\inst7|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~7_combout\ = (\inst2|Selector1~0_combout\ & ((\inst7|Add0~5_combout\))) # (!\inst2|Selector1~0_combout\ & (\inst7|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~18_combout\,
	datab => \inst2|Selector1~0_combout\,
	datad => \inst7|Add0~5_combout\,
	combout => \inst7|Add0~7_combout\);

-- Location: FF_X110_Y26_N25
\inst7|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~7_combout\,
	asdata => \inst2|s_currentState.Start~_wirecell_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(9));

-- Location: LCCOMB_X111_Y26_N22
\inst7|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~20_combout\ = (\inst7|s_counter\(10) & ((GND) # (!\inst7|Add1~19\))) # (!\inst7|s_counter\(10) & (\inst7|Add1~19\ $ (GND)))
-- \inst7|Add1~21\ = CARRY((\inst7|s_counter\(10)) # (!\inst7|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(10),
	datad => VCC,
	cin => \inst7|Add1~19\,
	combout => \inst7|Add1~20_combout\,
	cout => \inst7|Add1~21\);

-- Location: LCCOMB_X110_Y26_N26
\inst7|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = (\inst2|Selector1~0_combout\ & ((\inst7|Add0~8_combout\))) # (!\inst2|Selector1~0_combout\ & (\inst7|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add1~20_combout\,
	datad => \inst7|Add0~8_combout\,
	combout => \inst7|Add0~10_combout\);

-- Location: FF_X110_Y26_N27
\inst7|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~10_combout\,
	asdata => \inst2|s_currentState.choose~q\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(10));

-- Location: LCCOMB_X111_Y26_N24
\inst7|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~22_combout\ = (\inst7|s_counter\(11) & (\inst7|Add1~21\ & VCC)) # (!\inst7|s_counter\(11) & (!\inst7|Add1~21\))
-- \inst7|Add1~23\ = CARRY((!\inst7|s_counter\(11) & !\inst7|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(11),
	datad => VCC,
	cin => \inst7|Add1~21\,
	combout => \inst7|Add1~22_combout\,
	cout => \inst7|Add1~23\);

-- Location: LCCOMB_X112_Y26_N2
\inst7|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~13_combout\ = (\inst2|Selector1~0_combout\ & (\inst7|Add0~11_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst7|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add0~11_combout\,
	datad => \inst7|Add1~22_combout\,
	combout => \inst7|Add0~13_combout\);

-- Location: FF_X112_Y26_N3
\inst7|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~13_combout\,
	sclr => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(11));

-- Location: LCCOMB_X111_Y26_N26
\inst7|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~24_combout\ = (\inst7|s_counter\(12) & ((GND) # (!\inst7|Add1~23\))) # (!\inst7|s_counter\(12) & (\inst7|Add1~23\ $ (GND)))
-- \inst7|Add1~25\ = CARRY((\inst7|s_counter\(12)) # (!\inst7|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(12),
	datad => VCC,
	cin => \inst7|Add1~23\,
	combout => \inst7|Add1~24_combout\,
	cout => \inst7|Add1~25\);

-- Location: LCCOMB_X110_Y26_N16
\inst7|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~16_combout\ = (\inst2|Selector1~0_combout\ & (\inst7|Add0~14_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst7|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add0~14_combout\,
	datad => \inst7|Add1~24_combout\,
	combout => \inst7|Add0~16_combout\);

-- Location: FF_X110_Y26_N17
\inst7|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~16_combout\,
	asdata => \inst2|s_currentState.Start~_wirecell_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(12));

-- Location: LCCOMB_X111_Y26_N28
\inst7|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~26_combout\ = (\inst7|s_counter\(13) & (\inst7|Add1~25\ & VCC)) # (!\inst7|s_counter\(13) & (!\inst7|Add1~25\))
-- \inst7|Add1~27\ = CARRY((!\inst7|s_counter\(13) & !\inst7|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(13),
	datad => VCC,
	cin => \inst7|Add1~25\,
	combout => \inst7|Add1~26_combout\,
	cout => \inst7|Add1~27\);

-- Location: LCCOMB_X110_Y25_N12
\inst7|s_counter[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[13]~0_combout\ = (\inst2|Selector1~0_combout\ & ((\inst7|Add0~17_combout\))) # (!\inst2|Selector1~0_combout\ & (\inst7|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add1~26_combout\,
	datad => \inst7|Add0~17_combout\,
	combout => \inst7|s_counter[13]~0_combout\);

-- Location: LCCOMB_X109_Y25_N16
\inst7|Mult0|mult_core|romout[0][22]~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][22]~1_wirecell_combout\ = !\inst7|Mult0|mult_core|romout[0][22]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Mult0|mult_core|romout[0][22]~1_combout\,
	combout => \inst7|Mult0|mult_core|romout[0][22]~1_wirecell_combout\);

-- Location: FF_X110_Y25_N13
\inst7|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[13]~0_combout\,
	asdata => \inst7|Mult0|mult_core|romout[0][22]~1_wirecell_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(13));

-- Location: LCCOMB_X111_Y26_N30
\inst7|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~28_combout\ = (\inst7|s_counter\(14) & ((GND) # (!\inst7|Add1~27\))) # (!\inst7|s_counter\(14) & (\inst7|Add1~27\ $ (GND)))
-- \inst7|Add1~29\ = CARRY((\inst7|s_counter\(14)) # (!\inst7|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(14),
	datad => VCC,
	cin => \inst7|Add1~27\,
	combout => \inst7|Add1~28_combout\,
	cout => \inst7|Add1~29\);

-- Location: LCCOMB_X110_Y25_N22
\inst7|s_counter[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[14]~1_combout\ = (\inst2|Selector1~0_combout\ & (\inst7|Add0~19_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst7|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add0~19_combout\,
	datad => \inst7|Add1~28_combout\,
	combout => \inst7|s_counter[14]~1_combout\);

-- Location: FF_X110_Y25_N23
\inst7|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[14]~1_combout\,
	asdata => \inst7|Mult0|mult_core|_~1_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(14));

-- Location: LCCOMB_X111_Y25_N0
\inst7|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~30_combout\ = (\inst7|s_counter\(15) & (\inst7|Add1~29\ & VCC)) # (!\inst7|s_counter\(15) & (!\inst7|Add1~29\))
-- \inst7|Add1~31\ = CARRY((!\inst7|s_counter\(15) & !\inst7|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(15),
	datad => VCC,
	cin => \inst7|Add1~29\,
	combout => \inst7|Add1~30_combout\,
	cout => \inst7|Add1~31\);

-- Location: LCCOMB_X109_Y25_N4
\inst7|s_counter[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[15]~2_combout\ = (\inst2|Selector1~0_combout\ & ((\inst7|Add0~21_combout\))) # (!\inst2|Selector1~0_combout\ & (\inst7|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add1~30_combout\,
	datad => \inst7|Add0~21_combout\,
	combout => \inst7|s_counter[15]~2_combout\);

-- Location: LCCOMB_X109_Y25_N26
\inst7|Mult0|mult_core|_~2_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|_~2_wirecell_combout\ = !\inst7|Mult0|mult_core|_~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Mult0|mult_core|_~2_combout\,
	combout => \inst7|Mult0|mult_core|_~2_wirecell_combout\);

-- Location: FF_X109_Y25_N5
\inst7|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[15]~2_combout\,
	asdata => \inst7|Mult0|mult_core|_~2_wirecell_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(15));

-- Location: LCCOMB_X111_Y25_N2
\inst7|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~32_combout\ = (\inst7|s_counter\(16) & ((GND) # (!\inst7|Add1~31\))) # (!\inst7|s_counter\(16) & (\inst7|Add1~31\ $ (GND)))
-- \inst7|Add1~33\ = CARRY((\inst7|s_counter\(16)) # (!\inst7|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(16),
	datad => VCC,
	cin => \inst7|Add1~31\,
	combout => \inst7|Add1~32_combout\,
	cout => \inst7|Add1~33\);

-- Location: LCCOMB_X109_Y25_N10
\inst7|s_counter[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[16]~3_combout\ = (\inst2|Selector1~0_combout\ & ((\inst7|Add0~23_combout\))) # (!\inst2|Selector1~0_combout\ & (\inst7|Add1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add1~32_combout\,
	datad => \inst7|Add0~23_combout\,
	combout => \inst7|s_counter[16]~3_combout\);

-- Location: FF_X109_Y25_N11
\inst7|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[16]~3_combout\,
	asdata => \inst7|Mult0|mult_core|_~1_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(16));

-- Location: LCCOMB_X111_Y25_N4
\inst7|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~34_combout\ = (\inst7|s_counter\(17) & (\inst7|Add1~33\ & VCC)) # (!\inst7|s_counter\(17) & (!\inst7|Add1~33\))
-- \inst7|Add1~35\ = CARRY((!\inst7|s_counter\(17) & !\inst7|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(17),
	datad => VCC,
	cin => \inst7|Add1~33\,
	combout => \inst7|Add1~34_combout\,
	cout => \inst7|Add1~35\);

-- Location: LCCOMB_X109_Y25_N12
\inst7|s_counter[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[17]~4_combout\ = (\inst2|Selector1~0_combout\ & (\inst7|Add0~25_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst7|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add0~25_combout\,
	datad => \inst7|Add1~34_combout\,
	combout => \inst7|s_counter[17]~4_combout\);

-- Location: FF_X109_Y25_N13
\inst7|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[17]~4_combout\,
	asdata => \inst7|Mult0|mult_core|_~2_wirecell_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(17));

-- Location: LCCOMB_X111_Y25_N6
\inst7|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~36_combout\ = (\inst7|s_counter\(18) & ((GND) # (!\inst7|Add1~35\))) # (!\inst7|s_counter\(18) & (\inst7|Add1~35\ $ (GND)))
-- \inst7|Add1~37\ = CARRY((\inst7|s_counter\(18)) # (!\inst7|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(18),
	datad => VCC,
	cin => \inst7|Add1~35\,
	combout => \inst7|Add1~36_combout\,
	cout => \inst7|Add1~37\);

-- Location: LCCOMB_X109_Y25_N30
\inst7|s_counter[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[18]~5_combout\ = (\inst2|Selector1~0_combout\ & (\inst7|Add0~27_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst7|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add0~27_combout\,
	datad => \inst7|Add1~36_combout\,
	combout => \inst7|s_counter[18]~5_combout\);

-- Location: FF_X109_Y25_N31
\inst7|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[18]~5_combout\,
	asdata => \inst7|Mult0|mult_core|romout[0][27]~0_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(18));

-- Location: LCCOMB_X111_Y25_N8
\inst7|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~38_combout\ = (\inst7|s_counter\(19) & (\inst7|Add1~37\ & VCC)) # (!\inst7|s_counter\(19) & (!\inst7|Add1~37\))
-- \inst7|Add1~39\ = CARRY((!\inst7|s_counter\(19) & !\inst7|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(19),
	datad => VCC,
	cin => \inst7|Add1~37\,
	combout => \inst7|Add1~38_combout\,
	cout => \inst7|Add1~39\);

-- Location: LCCOMB_X110_Y25_N16
\inst7|s_counter[19]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[19]~6_combout\ = (\inst2|Selector1~0_combout\ & ((\inst7|Add0~29_combout\))) # (!\inst2|Selector1~0_combout\ & (\inst7|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add1~38_combout\,
	datad => \inst7|Add0~29_combout\,
	combout => \inst7|s_counter[19]~6_combout\);

-- Location: FF_X110_Y25_N17
\inst7|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[19]~6_combout\,
	asdata => \inst7|Mult0|mult_core|_~1_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(19));

-- Location: LCCOMB_X111_Y25_N10
\inst7|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~40_combout\ = (\inst7|s_counter\(20) & ((GND) # (!\inst7|Add1~39\))) # (!\inst7|s_counter\(20) & (\inst7|Add1~39\ $ (GND)))
-- \inst7|Add1~41\ = CARRY((\inst7|s_counter\(20)) # (!\inst7|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(20),
	datad => VCC,
	cin => \inst7|Add1~39\,
	combout => \inst7|Add1~40_combout\,
	cout => \inst7|Add1~41\);

-- Location: LCCOMB_X108_Y25_N28
\inst7|s_counter[20]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[20]~7_combout\ = (\inst2|Selector1~0_combout\ & (\inst7|Add0~31_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst7|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add0~31_combout\,
	datad => \inst7|Add1~40_combout\,
	combout => \inst7|s_counter[20]~7_combout\);

-- Location: FF_X108_Y25_N29
\inst7|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[20]~7_combout\,
	asdata => \inst7|Mult0|mult_core|_~0_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(20));

-- Location: LCCOMB_X111_Y25_N12
\inst7|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~42_combout\ = (\inst7|s_counter\(21) & (\inst7|Add1~41\ & VCC)) # (!\inst7|s_counter\(21) & (!\inst7|Add1~41\))
-- \inst7|Add1~43\ = CARRY((!\inst7|s_counter\(21) & !\inst7|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(21),
	datad => VCC,
	cin => \inst7|Add1~41\,
	combout => \inst7|Add1~42_combout\,
	cout => \inst7|Add1~43\);

-- Location: LCCOMB_X110_Y26_N30
\inst7|s_counter[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[21]~8_combout\ = (\inst2|Selector1~0_combout\ & (\inst7|Add0~33_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst7|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add0~33_combout\,
	datad => \inst7|Add1~42_combout\,
	combout => \inst7|s_counter[21]~8_combout\);

-- Location: FF_X110_Y26_N31
\inst7|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[21]~8_combout\,
	asdata => \inst2|s_currentState.Start~_wirecell_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(21));

-- Location: LCCOMB_X111_Y25_N14
\inst7|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~44_combout\ = (\inst7|s_counter\(22) & ((GND) # (!\inst7|Add1~43\))) # (!\inst7|s_counter\(22) & (\inst7|Add1~43\ $ (GND)))
-- \inst7|Add1~45\ = CARRY((\inst7|s_counter\(22)) # (!\inst7|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(22),
	datad => VCC,
	cin => \inst7|Add1~43\,
	combout => \inst7|Add1~44_combout\,
	cout => \inst7|Add1~45\);

-- Location: LCCOMB_X110_Y25_N14
\inst7|s_counter[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[22]~9_combout\ = (\inst2|Selector1~0_combout\ & ((\inst7|Add0~35_combout\))) # (!\inst2|Selector1~0_combout\ & (\inst7|Add1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add1~44_combout\,
	datad => \inst7|Add0~35_combout\,
	combout => \inst7|s_counter[22]~9_combout\);

-- Location: FF_X110_Y25_N15
\inst7|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[22]~9_combout\,
	asdata => \inst7|Mult0|mult_core|romout[0][22]~1_wirecell_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(22));

-- Location: LCCOMB_X111_Y25_N16
\inst7|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~46_combout\ = (\inst7|s_counter\(23) & (\inst7|Add1~45\ & VCC)) # (!\inst7|s_counter\(23) & (!\inst7|Add1~45\))
-- \inst7|Add1~47\ = CARRY((!\inst7|s_counter\(23) & !\inst7|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(23),
	datad => VCC,
	cin => \inst7|Add1~45\,
	combout => \inst7|Add1~46_combout\,
	cout => \inst7|Add1~47\);

-- Location: LCCOMB_X110_Y25_N28
\inst7|s_counter[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[23]~10_combout\ = (\inst2|Selector1~0_combout\ & ((\inst7|Add0~37_combout\))) # (!\inst2|Selector1~0_combout\ & (\inst7|Add1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add1~46_combout\,
	datad => \inst7|Add0~37_combout\,
	combout => \inst7|s_counter[23]~10_combout\);

-- Location: FF_X110_Y25_N29
\inst7|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[23]~10_combout\,
	asdata => \inst7|Mult0|mult_core|romout[0][27]~0_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(23));

-- Location: LCCOMB_X111_Y25_N18
\inst7|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~48_combout\ = (\inst7|s_counter\(24) & ((GND) # (!\inst7|Add1~47\))) # (!\inst7|s_counter\(24) & (\inst7|Add1~47\ $ (GND)))
-- \inst7|Add1~49\ = CARRY((\inst7|s_counter\(24)) # (!\inst7|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(24),
	datad => VCC,
	cin => \inst7|Add1~47\,
	combout => \inst7|Add1~48_combout\,
	cout => \inst7|Add1~49\);

-- Location: LCCOMB_X110_Y25_N30
\inst7|s_counter[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[24]~11_combout\ = (\inst2|Selector1~0_combout\ & (\inst7|Add0~39_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst7|Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add0~39_combout\,
	datad => \inst7|Add1~48_combout\,
	combout => \inst7|s_counter[24]~11_combout\);

-- Location: FF_X110_Y25_N31
\inst7|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[24]~11_combout\,
	asdata => \inst7|Mult0|mult_core|_~1_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(24));

-- Location: LCCOMB_X111_Y25_N20
\inst7|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~50_combout\ = (\inst7|s_counter\(25) & (\inst7|Add1~49\ & VCC)) # (!\inst7|s_counter\(25) & (!\inst7|Add1~49\))
-- \inst7|Add1~51\ = CARRY((!\inst7|s_counter\(25) & !\inst7|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(25),
	datad => VCC,
	cin => \inst7|Add1~49\,
	combout => \inst7|Add1~50_combout\,
	cout => \inst7|Add1~51\);

-- Location: LCCOMB_X110_Y25_N20
\inst7|s_counter[25]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[25]~12_combout\ = (\inst2|Selector1~0_combout\ & ((\inst7|Add0~41_combout\))) # (!\inst2|Selector1~0_combout\ & (\inst7|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~50_combout\,
	datab => \inst2|Selector1~0_combout\,
	datad => \inst7|Add0~41_combout\,
	combout => \inst7|s_counter[25]~12_combout\);

-- Location: FF_X110_Y25_N21
\inst7|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[25]~12_combout\,
	asdata => \inst7|Mult0|mult_core|_~2_wirecell_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(25));

-- Location: LCCOMB_X111_Y25_N22
\inst7|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~52_combout\ = (\inst7|s_counter\(26) & ((GND) # (!\inst7|Add1~51\))) # (!\inst7|s_counter\(26) & (\inst7|Add1~51\ $ (GND)))
-- \inst7|Add1~53\ = CARRY((\inst7|s_counter\(26)) # (!\inst7|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(26),
	datad => VCC,
	cin => \inst7|Add1~51\,
	combout => \inst7|Add1~52_combout\,
	cout => \inst7|Add1~53\);

-- Location: LCCOMB_X110_Y25_N26
\inst7|s_counter[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[26]~13_combout\ = (\inst2|Selector1~0_combout\ & (\inst7|Add0~43_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst7|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add0~43_combout\,
	datad => \inst7|Add1~52_combout\,
	combout => \inst7|s_counter[26]~13_combout\);

-- Location: FF_X110_Y25_N27
\inst7|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[26]~13_combout\,
	asdata => \inst7|Mult0|mult_core|romout[0][27]~0_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(26));

-- Location: LCCOMB_X110_Y25_N0
\inst7|s_cntZero~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_cntZero~8_combout\ = (!\inst7|s_counter\(26) & (!\inst7|s_counter\(25) & (!\inst7|s_counter\(24) & !\inst7|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(26),
	datab => \inst7|s_counter\(25),
	datac => \inst7|s_counter\(24),
	datad => \inst7|s_counter\(23),
	combout => \inst7|s_cntZero~8_combout\);

-- Location: LCCOMB_X111_Y25_N24
\inst7|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~54_combout\ = (\inst7|s_counter\(27) & (\inst7|Add1~53\ & VCC)) # (!\inst7|s_counter\(27) & (!\inst7|Add1~53\))
-- \inst7|Add1~55\ = CARRY((!\inst7|s_counter\(27) & !\inst7|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(27),
	datad => VCC,
	cin => \inst7|Add1~53\,
	combout => \inst7|Add1~54_combout\,
	cout => \inst7|Add1~55\);

-- Location: LCCOMB_X108_Y25_N16
\inst7|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~45_combout\ = (\inst7|Mult0|mult_core|romout[0][27]~0_combout\ & ((GND) # (!\inst7|Add0~44\))) # (!\inst7|Mult0|mult_core|romout[0][27]~0_combout\ & (\inst7|Add0~44\ $ (GND)))
-- \inst7|Add0~46\ = CARRY((\inst7|Mult0|mult_core|romout[0][27]~0_combout\) # (!\inst7|Add0~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|romout[0][27]~0_combout\,
	datad => VCC,
	cin => \inst7|Add0~44\,
	combout => \inst7|Add0~45_combout\,
	cout => \inst7|Add0~46\);

-- Location: LCCOMB_X110_Y25_N24
\inst7|s_counter[27]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[27]~14_combout\ = (\inst2|Selector1~0_combout\ & ((\inst7|Add0~45_combout\))) # (!\inst2|Selector1~0_combout\ & (\inst7|Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~54_combout\,
	datab => \inst2|Selector1~0_combout\,
	datad => \inst7|Add0~45_combout\,
	combout => \inst7|s_counter[27]~14_combout\);

-- Location: FF_X110_Y25_N25
\inst7|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[27]~14_combout\,
	asdata => \inst7|Mult0|mult_core|romout[0][27]~0_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(27));

-- Location: LCCOMB_X108_Y25_N18
\inst7|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~47_combout\ = (\inst7|Mult0|mult_core|_~1_combout\ & (\inst7|Add0~46\ & VCC)) # (!\inst7|Mult0|mult_core|_~1_combout\ & (!\inst7|Add0~46\))
-- \inst7|Add0~48\ = CARRY((!\inst7|Mult0|mult_core|_~1_combout\ & !\inst7|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \inst7|Add0~46\,
	combout => \inst7|Add0~47_combout\,
	cout => \inst7|Add0~48\);

-- Location: LCCOMB_X108_Y25_N20
\inst7|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~49_combout\ = (\inst7|Mult0|mult_core|_~0_combout\ & ((GND) # (!\inst7|Add0~48\))) # (!\inst7|Mult0|mult_core|_~0_combout\ & (\inst7|Add0~48\ $ (GND)))
-- \inst7|Add0~50\ = CARRY((\inst7|Mult0|mult_core|_~0_combout\) # (!\inst7|Add0~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \inst7|Add0~48\,
	combout => \inst7|Add0~49_combout\,
	cout => \inst7|Add0~50\);

-- Location: LCCOMB_X111_Y25_N26
\inst7|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~56_combout\ = (\inst7|s_counter\(28) & ((GND) # (!\inst7|Add1~55\))) # (!\inst7|s_counter\(28) & (\inst7|Add1~55\ $ (GND)))
-- \inst7|Add1~57\ = CARRY((\inst7|s_counter\(28)) # (!\inst7|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(28),
	datad => VCC,
	cin => \inst7|Add1~55\,
	combout => \inst7|Add1~56_combout\,
	cout => \inst7|Add1~57\);

-- Location: LCCOMB_X110_Y25_N18
\inst7|s_counter[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[28]~15_combout\ = (\inst2|Selector1~0_combout\ & ((\inst7|Add0~47_combout\))) # (!\inst2|Selector1~0_combout\ & (\inst7|Add1~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add1~56_combout\,
	datad => \inst7|Add0~47_combout\,
	combout => \inst7|s_counter[28]~15_combout\);

-- Location: FF_X110_Y25_N19
\inst7|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[28]~15_combout\,
	asdata => \inst7|Mult0|mult_core|_~1_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(28));

-- Location: LCCOMB_X111_Y25_N28
\inst7|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~58_combout\ = (\inst7|s_counter\(29) & (\inst7|Add1~57\ & VCC)) # (!\inst7|s_counter\(29) & (!\inst7|Add1~57\))
-- \inst7|Add1~59\ = CARRY((!\inst7|s_counter\(29) & !\inst7|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(29),
	datad => VCC,
	cin => \inst7|Add1~57\,
	combout => \inst7|Add1~58_combout\,
	cout => \inst7|Add1~59\);

-- Location: LCCOMB_X108_Y25_N30
\inst7|s_counter[29]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_counter[29]~16_combout\ = (\inst2|Selector1~0_combout\ & (\inst7|Add0~49_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst7|Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add0~49_combout\,
	datad => \inst7|Add1~58_combout\,
	combout => \inst7|s_counter[29]~16_combout\);

-- Location: FF_X108_Y25_N31
\inst7|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_counter[29]~16_combout\,
	asdata => \inst7|Mult0|mult_core|_~0_combout\,
	sload => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(29));

-- Location: LCCOMB_X110_Y25_N10
\inst7|s_cntZero~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_cntZero~9_combout\ = (!\inst7|s_counter\(27) & (!\inst7|s_counter\(29) & !\inst7|s_counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(27),
	datac => \inst7|s_counter\(29),
	datad => \inst7|s_counter\(28),
	combout => \inst7|s_cntZero~9_combout\);

-- Location: LCCOMB_X110_Y26_N28
\inst7|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_cntZero~1_combout\ = (!\inst7|s_counter\(5) & (!\inst7|s_counter\(4) & (!\inst7|s_counter\(7) & !\inst7|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(5),
	datab => \inst7|s_counter\(4),
	datac => \inst7|s_counter\(7),
	datad => \inst7|s_counter\(6),
	combout => \inst7|s_cntZero~1_combout\);

-- Location: LCCOMB_X111_Y26_N0
\inst7|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_cntZero~0_combout\ = (!\inst7|s_counter\(0) & (!\inst7|s_counter\(3) & (!\inst7|s_counter\(1) & !\inst7|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(0),
	datab => \inst7|s_counter\(3),
	datac => \inst7|s_counter\(1),
	datad => \inst7|s_counter\(2),
	combout => \inst7|s_cntZero~0_combout\);

-- Location: LCCOMB_X110_Y26_N8
\inst7|s_cntZero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_cntZero~2_combout\ = (\inst7|s_cntZero~1_combout\ & (\inst7|s_cntZero~0_combout\ & !\inst2|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_cntZero~1_combout\,
	datac => \inst7|s_cntZero~0_combout\,
	datad => \inst2|Selector1~0_combout\,
	combout => \inst7|s_cntZero~2_combout\);

-- Location: LCCOMB_X110_Y26_N10
\inst7|s_cntZero~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_cntZero~6_combout\ = (!\inst7|s_counter\(21) & (!\inst7|s_counter\(22) & (!\inst7|s_counter\(20) & !\inst7|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(21),
	datab => \inst7|s_counter\(22),
	datac => \inst7|s_counter\(20),
	datad => \inst7|s_counter\(19),
	combout => \inst7|s_cntZero~6_combout\);

-- Location: LCCOMB_X110_Y26_N18
\inst7|s_cntZero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_cntZero~3_combout\ = (!\inst7|s_counter\(10) & (!\inst7|s_counter\(9) & (!\inst7|s_counter\(8) & !\inst7|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(10),
	datab => \inst7|s_counter\(9),
	datac => \inst7|s_counter\(8),
	datad => \inst7|s_counter\(11),
	combout => \inst7|s_cntZero~3_combout\);

-- Location: LCCOMB_X109_Y25_N24
\inst7|s_cntZero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_cntZero~5_combout\ = (!\inst7|s_counter\(17) & (!\inst7|s_counter\(15) & (!\inst7|s_counter\(18) & !\inst7|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(17),
	datab => \inst7|s_counter\(15),
	datac => \inst7|s_counter\(18),
	datad => \inst7|s_counter\(16),
	combout => \inst7|s_cntZero~5_combout\);

-- Location: LCCOMB_X108_Y25_N22
\inst7|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~51_combout\ = !\inst7|Add0~50\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Add0~50\,
	combout => \inst7|Add0~51_combout\);

-- Location: LCCOMB_X111_Y25_N30
\inst7|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~60_combout\ = \inst7|s_counter\(30) $ (\inst7|Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_counter\(30),
	cin => \inst7|Add1~59\,
	combout => \inst7|Add1~60_combout\);

-- Location: LCCOMB_X107_Y25_N0
\inst7|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~53_combout\ = (\inst2|Selector1~0_combout\ & (\inst7|Add0~51_combout\)) # (!\inst2|Selector1~0_combout\ & ((\inst7|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector1~0_combout\,
	datab => \inst7|Add0~51_combout\,
	datad => \inst7|Add1~60_combout\,
	combout => \inst7|Add0~53_combout\);

-- Location: FF_X107_Y25_N1
\inst7|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~53_combout\,
	sclr => \inst10|reset~q\,
	ena => \inst7|s_counter[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_counter\(30));

-- Location: LCCOMB_X110_Y26_N12
\inst7|s_cntZero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_cntZero~4_combout\ = (!\inst7|s_counter\(30) & (!\inst7|s_counter\(12) & (!\inst7|s_counter\(14) & !\inst7|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_counter\(30),
	datab => \inst7|s_counter\(12),
	datac => \inst7|s_counter\(14),
	datad => \inst7|s_counter\(13),
	combout => \inst7|s_cntZero~4_combout\);

-- Location: LCCOMB_X110_Y26_N20
\inst7|s_cntZero~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_cntZero~7_combout\ = (\inst7|s_cntZero~6_combout\ & (\inst7|s_cntZero~3_combout\ & (\inst7|s_cntZero~5_combout\ & \inst7|s_cntZero~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_cntZero~6_combout\,
	datab => \inst7|s_cntZero~3_combout\,
	datac => \inst7|s_cntZero~5_combout\,
	datad => \inst7|s_cntZero~4_combout\,
	combout => \inst7|s_cntZero~7_combout\);

-- Location: LCCOMB_X110_Y26_N22
\inst7|s_cntZero~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_cntZero~10_combout\ = (\inst7|s_cntZero~8_combout\ & (\inst7|s_cntZero~9_combout\ & (\inst7|s_cntZero~2_combout\ & \inst7|s_cntZero~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_cntZero~8_combout\,
	datab => \inst7|s_cntZero~9_combout\,
	datac => \inst7|s_cntZero~2_combout\,
	datad => \inst7|s_cntZero~7_combout\,
	combout => \inst7|s_cntZero~10_combout\);

-- Location: LCCOMB_X107_Y26_N14
\inst7|s_cntZero~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_cntZero~11_combout\ = (\inst2|Selector0~0_combout\ & ((\inst7|s_cntZero~10_combout\))) # (!\inst2|Selector0~0_combout\ & (\inst7|s_cntZero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector0~0_combout\,
	datac => \inst7|s_cntZero~q\,
	datad => \inst7|s_cntZero~10_combout\,
	combout => \inst7|s_cntZero~11_combout\);

-- Location: FF_X107_Y26_N15
\inst7|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_cntZero~11_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_cntZero~q\);

-- Location: LCCOMB_X112_Y26_N12
\inst2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = ((\inst2|s_currentState.Helo~q\ & !\inst7|s_cntZero~q\)) # (!\inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Start~q\,
	datac => \inst2|s_currentState.Helo~q\,
	datad => \inst7|s_cntZero~q\,
	combout => \inst2|Selector2~0_combout\);

-- Location: FF_X112_Y26_N13
\inst2|s_currentState.Helo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector2~0_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.Helo~q\);

-- Location: LCCOMB_X107_Y26_N10
\inst2|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~1_combout\ = (\inst2|s_currentState.Tcafe~q\ & (((\inst2|s_currentState.Tcha~q\ & !\inst10|cha~q\)) # (!\inst10|cafe~q\))) # (!\inst2|s_currentState.Tcafe~q\ & (\inst2|s_currentState.Tcha~q\ & ((!\inst10|cha~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Tcafe~q\,
	datab => \inst2|s_currentState.Tcha~q\,
	datac => \inst10|cafe~q\,
	datad => \inst10|cha~q\,
	combout => \inst2|Selector3~1_combout\);

-- Location: LCCOMB_X107_Y26_N28
\inst2|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~2_combout\ = (\inst2|Selector3~1_combout\) # ((\inst2|s_currentState.Tchoc~q\ & !\inst10|choc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Tchoc~q\,
	datac => \inst10|choc~q\,
	datad => \inst2|Selector3~1_combout\,
	combout => \inst2|Selector3~2_combout\);

-- Location: LCCOMB_X107_Y26_N30
\inst2|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~3_combout\ = (\inst7|s_cntZero~q\ & (\inst2|s_currentState.Helo~q\)) # (!\inst7|s_cntZero~q\ & (((!\inst10|selModAc~q\ & \inst2|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Helo~q\,
	datab => \inst10|selModAc~q\,
	datac => \inst7|s_cntZero~q\,
	datad => \inst2|Selector3~2_combout\,
	combout => \inst2|Selector3~3_combout\);

-- Location: LCCOMB_X113_Y26_N28
\inst2|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector7~0_combout\ = (!\inst10|selModAc~q\ & \inst7|s_cntZero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|selModAc~q\,
	datac => \inst7|s_cntZero~q\,
	combout => \inst2|Selector7~0_combout\);

-- Location: LCCOMB_X107_Y26_N22
\inst2|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector9~0_combout\ = (\inst2|Selector7~0_combout\ & ((\inst2|s_currentState.Tchoc~q\) # ((!\inst2|Selector3~0_combout\ & \inst2|s_currentState.Ready_Choc~q\)))) # (!\inst2|Selector7~0_combout\ & (!\inst2|Selector3~0_combout\ & 
-- (\inst2|s_currentState.Ready_Choc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector7~0_combout\,
	datab => \inst2|Selector3~0_combout\,
	datac => \inst2|s_currentState.Ready_Choc~q\,
	datad => \inst2|s_currentState.Tchoc~q\,
	combout => \inst2|Selector9~0_combout\);

-- Location: FF_X107_Y26_N23
\inst2|s_currentState.Ready_Choc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector9~0_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.Ready_Choc~q\);

-- Location: LCCOMB_X107_Y26_N6
\inst2|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector8~0_combout\ = (\inst2|s_currentState.Tcha~q\ & ((\inst2|Selector7~0_combout\) # ((!\inst2|Selector3~0_combout\ & \inst2|s_currentState.Ready_Cha~q\)))) # (!\inst2|s_currentState.Tcha~q\ & (!\inst2|Selector3~0_combout\ & 
-- (\inst2|s_currentState.Ready_Cha~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Tcha~q\,
	datab => \inst2|Selector3~0_combout\,
	datac => \inst2|s_currentState.Ready_Cha~q\,
	datad => \inst2|Selector7~0_combout\,
	combout => \inst2|Selector8~0_combout\);

-- Location: FF_X107_Y26_N7
\inst2|s_currentState.Ready_Cha\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector8~0_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.Ready_Cha~q\);

-- Location: LCCOMB_X107_Y26_N16
\inst2|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr1~0_combout\ = (!\inst2|s_currentState.Ready_Cafe~q\ & (!\inst2|s_currentState.Ready_Choc~q\ & !\inst2|s_currentState.Ready_Cha~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Ready_Cafe~q\,
	datac => \inst2|s_currentState.Ready_Choc~q\,
	datad => \inst2|s_currentState.Ready_Cha~q\,
	combout => \inst2|WideOr1~0_combout\);

-- Location: LCCOMB_X107_Y26_N20
\inst2|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~4_combout\ = (\inst2|Selector3~3_combout\) # ((\inst2|Selector3~0_combout\ & ((\inst2|s_currentState.choose~q\) # (!\inst2|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector3~3_combout\,
	datab => \inst2|Selector3~0_combout\,
	datac => \inst2|s_currentState.choose~q\,
	datad => \inst2|WideOr1~0_combout\,
	combout => \inst2|Selector3~4_combout\);

-- Location: FF_X107_Y26_N21
\inst2|s_currentState.choose\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector3~4_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.choose~q\);

-- Location: LCCOMB_X107_Y26_N12
\inst2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst10|cafe~q\ & ((\inst2|s_currentState.choose~q\) # ((\inst2|s_currentState.Tcafe~q\ & !\inst7|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Tcafe~q\,
	datab => \inst2|s_currentState.choose~q\,
	datac => \inst10|cafe~q\,
	datad => \inst7|s_cntZero~q\,
	combout => \inst2|Selector4~0_combout\);

-- Location: LCCOMB_X107_Y26_N26
\inst2|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector4~1_combout\ = (\inst2|Selector4~0_combout\) # ((\inst10|selModAc~q\ & \inst2|s_currentState.Tcafe~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|selModAc~q\,
	datac => \inst2|s_currentState.Tcafe~q\,
	datad => \inst2|Selector4~0_combout\,
	combout => \inst2|Selector4~1_combout\);

-- Location: FF_X107_Y26_N27
\inst2|s_currentState.Tcafe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector4~1_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.Tcafe~q\);

-- Location: LCCOMB_X107_Y26_N0
\inst2|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector7~1_combout\ = (\inst2|s_currentState.Tcafe~q\ & ((\inst2|Selector7~0_combout\) # ((!\inst2|Selector3~0_combout\ & \inst2|s_currentState.Ready_Cafe~q\)))) # (!\inst2|s_currentState.Tcafe~q\ & (!\inst2|Selector3~0_combout\ & 
-- (\inst2|s_currentState.Ready_Cafe~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Tcafe~q\,
	datab => \inst2|Selector3~0_combout\,
	datac => \inst2|s_currentState.Ready_Cafe~q\,
	datad => \inst2|Selector7~0_combout\,
	combout => \inst2|Selector7~1_combout\);

-- Location: FF_X107_Y26_N1
\inst2|s_currentState.Ready_Cafe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector7~1_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.Ready_Cafe~q\);

-- Location: LCCOMB_X113_Y26_N26
\inst2|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~0_combout\ = (\inst2|s_currentState.Ready_Cafe~q\) # (((\inst2|s_currentState.Tcafe~q\) # (\inst2|s_currentState.Helo~q\)) # (!\inst2|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Ready_Cafe~q\,
	datab => \inst2|s_currentState.Start~q\,
	datac => \inst2|s_currentState.Tcafe~q\,
	datad => \inst2|s_currentState.Helo~q\,
	combout => \inst2|WideOr4~0_combout\);

-- Location: LCCOMB_X113_Y26_N0
\inst2|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr3~0_combout\ = ((\inst2|s_currentState.Ready_Cha~q\) # (\inst2|s_currentState.Tcha~q\)) # (!\inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Start~q\,
	datab => \inst2|s_currentState.Ready_Cha~q\,
	datad => \inst2|s_currentState.Tcha~q\,
	combout => \inst2|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y26_N12
\inst8|OutHex0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|OutHex0~0_combout\ = (\inst2|WideOr3~0_combout\) # (\inst2|WideOr4~0_combout\ $ (!\inst2|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr4~0_combout\,
	datac => \inst2|WideOr0~combout\,
	datad => \inst2|WideOr3~0_combout\,
	combout => \inst8|OutHex0~0_combout\);

-- Location: LCCOMB_X113_Y26_N30
\inst8|OutHex2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|OutHex2~6_combout\ = (!\inst2|WideOr3~0_combout\ & ((\inst2|s_currentState.choose~q\) # ((\inst2|s_currentState.Helo~q\) # (!\inst2|s_currentState.Start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.choose~q\,
	datab => \inst2|s_currentState.Start~q\,
	datac => \inst2|WideOr3~0_combout\,
	datad => \inst2|s_currentState.Helo~q\,
	combout => \inst8|OutHex2~6_combout\);

-- Location: LCCOMB_X113_Y26_N4
\inst8|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal3~0_combout\ = (\inst2|WideOr0~combout\ & (!\inst2|WideOr3~0_combout\ & \inst2|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|WideOr0~combout\,
	datac => \inst2|WideOr3~0_combout\,
	datad => \inst2|WideOr4~0_combout\,
	combout => \inst8|Equal3~0_combout\);

-- Location: LCCOMB_X113_Y26_N22
\inst8|OutHex0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|OutHex0~1_combout\ = (\inst2|WideOr3~0_combout\) # ((\inst2|WideOr0~combout\ & !\inst2|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|WideOr0~combout\,
	datac => \inst2|WideOr3~0_combout\,
	datad => \inst2|WideOr4~0_combout\,
	combout => \inst8|OutHex0~1_combout\);

-- Location: LCCOMB_X114_Y26_N2
\inst8|OutHex1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|OutHex1~2_combout\ = \inst2|WideOr4~0_combout\ $ (((\inst2|WideOr0~combout\) # (\inst2|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr4~0_combout\,
	datac => \inst2|WideOr0~combout\,
	datad => \inst2|WideOr3~0_combout\,
	combout => \inst8|OutHex1~2_combout\);

-- Location: LCCOMB_X113_Y26_N8
\inst8|OutHex1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|OutHex1~3_combout\ = ((!\inst2|WideOr0~combout\ & !\inst2|WideOr4~0_combout\)) # (!\inst2|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr3~0_combout\,
	datab => \inst2|WideOr0~combout\,
	datad => \inst2|WideOr4~0_combout\,
	combout => \inst8|OutHex1~3_combout\);

-- Location: LCCOMB_X114_Y26_N28
\inst8|OutHex1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|OutHex1~4_combout\ = (\inst2|WideOr3~0_combout\) # ((\inst2|WideOr4~0_combout\ & !\inst2|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr4~0_combout\,
	datac => \inst2|WideOr0~combout\,
	datad => \inst2|WideOr3~0_combout\,
	combout => \inst8|OutHex1~4_combout\);

-- Location: LCCOMB_X113_Y26_N24
\inst8|OutHex1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|OutHex1~7_combout\ = (\inst2|s_currentState.Helo~q\) # (((\inst2|s_currentState.choose~q\) # (\inst2|WideOr4~0_combout\)) # (!\inst2|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Helo~q\,
	datab => \inst2|s_currentState.Start~q\,
	datac => \inst2|s_currentState.choose~q\,
	datad => \inst2|WideOr4~0_combout\,
	combout => \inst8|OutHex1~7_combout\);

-- Location: LCCOMB_X113_Y26_N18
\inst8|OutHex1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|OutHex1~5_combout\ = (\inst2|WideOr0~combout\ & (!\inst2|WideOr3~0_combout\ & !\inst2|WideOr4~0_combout\)) # (!\inst2|WideOr0~combout\ & ((!\inst2|WideOr4~0_combout\) # (!\inst2|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|WideOr0~combout\,
	datac => \inst2|WideOr3~0_combout\,
	datad => \inst2|WideOr4~0_combout\,
	combout => \inst8|OutHex1~5_combout\);

-- Location: LCCOMB_X114_Y26_N22
\inst8|OutHex1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|OutHex1~6_combout\ = (!\inst2|WideOr0~combout\ & ((!\inst2|WideOr3~0_combout\) # (!\inst2|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr4~0_combout\,
	datac => \inst2|WideOr0~combout\,
	datad => \inst2|WideOr3~0_combout\,
	combout => \inst8|OutHex1~6_combout\);

-- Location: LCCOMB_X113_Y26_N14
\inst8|OutHex2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|OutHex2~7_combout\ = (!\inst2|s_currentState.Tcha~q\ & (!\inst2|s_currentState.Ready_Cha~q\ & (\inst2|s_currentState.Start~q\ & \inst2|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Tcha~q\,
	datab => \inst2|s_currentState.Ready_Cha~q\,
	datac => \inst2|s_currentState.Start~q\,
	datad => \inst2|WideOr4~0_combout\,
	combout => \inst8|OutHex2~7_combout\);

-- Location: LCCOMB_X109_Y26_N22
\inst2|selModAc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|selModAc~0_combout\ = (\inst10|selModAc~q\ & ((\inst2|s_currentState.Tchoc~q\) # ((\inst2|s_currentState.Tcafe~q\) # (\inst2|s_currentState.Tcha~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Tchoc~q\,
	datab => \inst2|s_currentState.Tcafe~q\,
	datac => \inst2|s_currentState.Tcha~q\,
	datad => \inst10|selModAc~q\,
	combout => \inst2|selModAc~0_combout\);

-- Location: LCCOMB_X105_Y32_N10
\inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|s_debounceCnt\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X107_Y32_N19
\inst5|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_dirtyIn~q\);

-- Location: LCCOMB_X107_Y32_N0
\inst5|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_previousIn~feeder_combout\ = \inst5|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s_dirtyIn~q\,
	combout => \inst5|s_previousIn~feeder_combout\);

-- Location: FF_X107_Y32_N1
\inst5|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_previousIn~q\);

-- Location: LCCOMB_X107_Y32_N14
\inst5|s_debounceCnt[22]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[22]~4_combout\ = (\inst5|s_previousIn~q\ & \inst5|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_previousIn~q\,
	datad => \inst5|s_dirtyIn~q\,
	combout => \inst5|s_debounceCnt[22]~4_combout\);

-- Location: LCCOMB_X105_Y32_N16
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|s_debounceCnt\(3) & (\inst5|Add0~5\ & VCC)) # (!\inst5|s_debounceCnt\(3) & (!\inst5|Add0~5\))
-- \inst5|Add0~7\ = CARRY((!\inst5|s_debounceCnt\(3) & !\inst5|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X105_Y32_N18
\inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|s_debounceCnt\(4) & ((GND) # (!\inst5|Add0~7\))) # (!\inst5|s_debounceCnt\(4) & (\inst5|Add0~7\ $ (GND)))
-- \inst5|Add0~9\ = CARRY((\inst5|s_debounceCnt\(4)) # (!\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X105_Y32_N4
\inst5|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~25_combout\ = (\inst5|Add0~8_combout\ & \inst5|s_debounceCnt[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~8_combout\,
	datad => \inst5|s_debounceCnt[22]~6_combout\,
	combout => \inst5|s_debounceCnt~25_combout\);

-- Location: FF_X105_Y32_N5
\inst5|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~25_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(4));

-- Location: LCCOMB_X105_Y32_N20
\inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|s_debounceCnt\(5) & (\inst5|Add0~9\ & VCC)) # (!\inst5|s_debounceCnt\(5) & (!\inst5|Add0~9\))
-- \inst5|Add0~11\ = CARRY((!\inst5|s_debounceCnt\(5) & !\inst5|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X106_Y32_N12
\inst5|s_debounceCnt~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~29_combout\ = (\inst5|Add0~10_combout\ & \inst5|s_debounceCnt[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~10_combout\,
	datad => \inst5|s_debounceCnt[22]~6_combout\,
	combout => \inst5|s_debounceCnt~29_combout\);

-- Location: FF_X106_Y32_N13
\inst5|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~29_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(5));

-- Location: LCCOMB_X106_Y32_N26
\inst5|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~2_combout\ = (\inst5|s_debounceCnt\(5)) # ((\inst5|s_debounceCnt\(0)) # (!\inst5|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(5),
	datac => \inst5|s_debounceCnt\(0),
	datad => \inst5|s_pulsedOut~5_combout\,
	combout => \inst5|LessThan0~2_combout\);

-- Location: LCCOMB_X105_Y32_N22
\inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|s_debounceCnt\(6) & ((GND) # (!\inst5|Add0~11\))) # (!\inst5|s_debounceCnt\(6) & (\inst5|Add0~11\ $ (GND)))
-- \inst5|Add0~13\ = CARRY((\inst5|s_debounceCnt\(6)) # (!\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X106_Y31_N24
\inst5|s_debounceCnt[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[22]~2_combout\ = (\inst5|s_dirtyIn~q\ & ((!\inst5|LessThan0~7_combout\) # (!\inst5|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(22),
	datac => \inst5|s_dirtyIn~q\,
	datad => \inst5|LessThan0~7_combout\,
	combout => \inst5|s_debounceCnt[22]~2_combout\);

-- Location: LCCOMB_X105_Y32_N0
\inst5|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~3_combout\ = (\inst5|s_debounceCnt[22]~2_combout\ & ((\inst5|Add0~12_combout\) # (!\inst5|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_previousIn~q\,
	datac => \inst5|Add0~12_combout\,
	datad => \inst5|s_debounceCnt[22]~2_combout\,
	combout => \inst5|s_debounceCnt~3_combout\);

-- Location: FF_X105_Y32_N1
\inst5|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~3_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(6));

-- Location: LCCOMB_X105_Y32_N24
\inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|s_debounceCnt\(7) & (\inst5|Add0~13\ & VCC)) # (!\inst5|s_debounceCnt\(7) & (!\inst5|Add0~13\))
-- \inst5|Add0~15\ = CARRY((!\inst5|s_debounceCnt\(7) & !\inst5|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: LCCOMB_X105_Y32_N6
\inst5|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~14_combout\ = (\inst5|Add0~14_combout\ & \inst5|s_debounceCnt[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~14_combout\,
	datad => \inst5|s_debounceCnt[22]~6_combout\,
	combout => \inst5|s_debounceCnt~14_combout\);

-- Location: FF_X105_Y32_N7
\inst5|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~14_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(7));

-- Location: LCCOMB_X105_Y32_N26
\inst5|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|s_debounceCnt\(8) & ((GND) # (!\inst5|Add0~15\))) # (!\inst5|s_debounceCnt\(8) & (\inst5|Add0~15\ $ (GND)))
-- \inst5|Add0~17\ = CARRY((\inst5|s_debounceCnt\(8)) # (!\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: LCCOMB_X106_Y32_N0
\inst5|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~15_combout\ = (\inst5|s_debounceCnt[22]~2_combout\ & ((\inst5|Add0~16_combout\) # (!\inst5|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_previousIn~q\,
	datac => \inst5|Add0~16_combout\,
	datad => \inst5|s_debounceCnt[22]~2_combout\,
	combout => \inst5|s_debounceCnt~15_combout\);

-- Location: FF_X106_Y32_N1
\inst5|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~15_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(8));

-- Location: LCCOMB_X105_Y32_N28
\inst5|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|s_debounceCnt\(9) & (\inst5|Add0~17\ & VCC)) # (!\inst5|s_debounceCnt\(9) & (!\inst5|Add0~17\))
-- \inst5|Add0~19\ = CARRY((!\inst5|s_debounceCnt\(9) & !\inst5|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: LCCOMB_X106_Y32_N14
\inst5|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~16_combout\ = (\inst5|s_debounceCnt[22]~2_combout\ & ((\inst5|Add0~18_combout\) # (!\inst5|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~18_combout\,
	datac => \inst5|s_previousIn~q\,
	datad => \inst5|s_debounceCnt[22]~2_combout\,
	combout => \inst5|s_debounceCnt~16_combout\);

-- Location: FF_X106_Y32_N15
\inst5|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~16_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(9));

-- Location: LCCOMB_X105_Y32_N30
\inst5|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|s_debounceCnt\(10) & ((GND) # (!\inst5|Add0~19\))) # (!\inst5|s_debounceCnt\(10) & (\inst5|Add0~19\ $ (GND)))
-- \inst5|Add0~21\ = CARRY((\inst5|s_debounceCnt\(10)) # (!\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: LCCOMB_X106_Y31_N30
\inst5|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~17_combout\ = (\inst5|Add0~20_combout\ & \inst5|s_debounceCnt[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~20_combout\,
	datad => \inst5|s_debounceCnt[22]~6_combout\,
	combout => \inst5|s_debounceCnt~17_combout\);

-- Location: FF_X106_Y31_N31
\inst5|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~17_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(10));

-- Location: LCCOMB_X105_Y31_N0
\inst5|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|s_debounceCnt\(11) & (\inst5|Add0~21\ & VCC)) # (!\inst5|s_debounceCnt\(11) & (!\inst5|Add0~21\))
-- \inst5|Add0~23\ = CARRY((!\inst5|s_debounceCnt\(11) & !\inst5|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: LCCOMB_X106_Y31_N12
\inst5|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~18_combout\ = (\inst5|s_debounceCnt[22]~2_combout\ & ((\inst5|Add0~22_combout\) # (!\inst5|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_previousIn~q\,
	datac => \inst5|Add0~22_combout\,
	datad => \inst5|s_debounceCnt[22]~2_combout\,
	combout => \inst5|s_debounceCnt~18_combout\);

-- Location: FF_X106_Y31_N13
\inst5|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~18_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(11));

-- Location: LCCOMB_X105_Y31_N2
\inst5|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|s_debounceCnt\(12) & ((GND) # (!\inst5|Add0~23\))) # (!\inst5|s_debounceCnt\(12) & (\inst5|Add0~23\ $ (GND)))
-- \inst5|Add0~25\ = CARRY((\inst5|s_debounceCnt\(12)) # (!\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: LCCOMB_X106_Y31_N26
\inst5|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~10_combout\ = (\inst5|Add0~24_combout\ & \inst5|s_debounceCnt[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~24_combout\,
	datad => \inst5|s_debounceCnt[22]~6_combout\,
	combout => \inst5|s_debounceCnt~10_combout\);

-- Location: FF_X106_Y31_N27
\inst5|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~10_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(12));

-- Location: LCCOMB_X105_Y31_N4
\inst5|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|s_debounceCnt\(13) & (\inst5|Add0~25\ & VCC)) # (!\inst5|s_debounceCnt\(13) & (!\inst5|Add0~25\))
-- \inst5|Add0~27\ = CARRY((!\inst5|s_debounceCnt\(13) & !\inst5|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: LCCOMB_X106_Y31_N28
\inst5|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~11_combout\ = (\inst5|Add0~26_combout\ & \inst5|s_debounceCnt[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~26_combout\,
	datad => \inst5|s_debounceCnt[22]~6_combout\,
	combout => \inst5|s_debounceCnt~11_combout\);

-- Location: FF_X106_Y31_N29
\inst5|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~11_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(13));

-- Location: LCCOMB_X105_Y31_N18
\inst5|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~40_combout\ = (\inst5|s_debounceCnt\(20) & ((GND) # (!\inst5|Add0~39\))) # (!\inst5|s_debounceCnt\(20) & (\inst5|Add0~39\ $ (GND)))
-- \inst5|Add0~41\ = CARRY((\inst5|s_debounceCnt\(20)) # (!\inst5|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst5|Add0~39\,
	combout => \inst5|Add0~40_combout\,
	cout => \inst5|Add0~41\);

-- Location: LCCOMB_X105_Y31_N20
\inst5|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~42_combout\ = (\inst5|s_debounceCnt\(21) & (\inst5|Add0~41\ & VCC)) # (!\inst5|s_debounceCnt\(21) & (!\inst5|Add0~41\))
-- \inst5|Add0~43\ = CARRY((!\inst5|s_debounceCnt\(21) & !\inst5|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst5|Add0~41\,
	combout => \inst5|Add0~42_combout\,
	cout => \inst5|Add0~43\);

-- Location: LCCOMB_X105_Y31_N30
\inst5|s_debounceCnt[21]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[21]~13_combout\ = (\inst5|Add0~42_combout\ & (\inst5|s_debounceCnt[22]~5_combout\ & \inst5|s_debounceCnt[22]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~42_combout\,
	datac => \inst5|s_debounceCnt[22]~5_combout\,
	datad => \inst5|s_debounceCnt[22]~6_combout\,
	combout => \inst5|s_debounceCnt[21]~13_combout\);

-- Location: FF_X105_Y31_N31
\inst5|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt[21]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(21));

-- Location: LCCOMB_X105_Y31_N24
\inst5|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~1_combout\ = (!\inst5|s_debounceCnt\(20) & (!\inst5|s_debounceCnt\(13) & (!\inst5|s_debounceCnt\(21) & !\inst5|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(20),
	datab => \inst5|s_debounceCnt\(13),
	datac => \inst5|s_debounceCnt\(21),
	datad => \inst5|s_debounceCnt\(12),
	combout => \inst5|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X106_Y32_N4
\inst5|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~2_combout\ = (!\inst5|s_debounceCnt\(10) & (!\inst5|s_debounceCnt\(9) & (!\inst5|s_debounceCnt\(7) & !\inst5|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(10),
	datab => \inst5|s_debounceCnt\(9),
	datac => \inst5|s_debounceCnt\(7),
	datad => \inst5|s_debounceCnt\(8),
	combout => \inst5|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X105_Y31_N6
\inst5|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|s_debounceCnt\(14) & ((GND) # (!\inst5|Add0~27\))) # (!\inst5|s_debounceCnt\(14) & (\inst5|Add0~27\ $ (GND)))
-- \inst5|Add0~29\ = CARRY((\inst5|s_debounceCnt\(14)) # (!\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: LCCOMB_X106_Y31_N2
\inst5|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~19_combout\ = (\inst5|s_debounceCnt[22]~2_combout\ & ((\inst5|Add0~28_combout\) # (!\inst5|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_previousIn~q\,
	datac => \inst5|Add0~28_combout\,
	datad => \inst5|s_debounceCnt[22]~2_combout\,
	combout => \inst5|s_debounceCnt~19_combout\);

-- Location: FF_X106_Y31_N3
\inst5|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~19_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(14));

-- Location: LCCOMB_X105_Y31_N8
\inst5|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = (\inst5|s_debounceCnt\(15) & (\inst5|Add0~29\ & VCC)) # (!\inst5|s_debounceCnt\(15) & (!\inst5|Add0~29\))
-- \inst5|Add0~31\ = CARRY((!\inst5|s_debounceCnt\(15) & !\inst5|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: LCCOMB_X106_Y31_N8
\inst5|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~7_combout\ = (\inst5|s_debounceCnt[22]~6_combout\ & \inst5|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt[22]~6_combout\,
	datad => \inst5|Add0~30_combout\,
	combout => \inst5|s_debounceCnt~7_combout\);

-- Location: FF_X106_Y31_N9
\inst5|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~7_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(15));

-- Location: LCCOMB_X105_Y31_N10
\inst5|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = (\inst5|s_debounceCnt\(16) & ((GND) # (!\inst5|Add0~31\))) # (!\inst5|s_debounceCnt\(16) & (\inst5|Add0~31\ $ (GND)))
-- \inst5|Add0~33\ = CARRY((\inst5|s_debounceCnt\(16)) # (!\inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\,
	cout => \inst5|Add0~33\);

-- Location: LCCOMB_X106_Y31_N14
\inst5|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~8_combout\ = (\inst5|s_debounceCnt[22]~6_combout\ & \inst5|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt[22]~6_combout\,
	datad => \inst5|Add0~32_combout\,
	combout => \inst5|s_debounceCnt~8_combout\);

-- Location: FF_X106_Y31_N15
\inst5|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~8_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(16));

-- Location: LCCOMB_X105_Y31_N12
\inst5|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~34_combout\ = (\inst5|s_debounceCnt\(17) & (\inst5|Add0~33\ & VCC)) # (!\inst5|s_debounceCnt\(17) & (!\inst5|Add0~33\))
-- \inst5|Add0~35\ = CARRY((!\inst5|s_debounceCnt\(17) & !\inst5|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst5|Add0~33\,
	combout => \inst5|Add0~34_combout\,
	cout => \inst5|Add0~35\);

-- Location: LCCOMB_X106_Y31_N16
\inst5|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~9_combout\ = (\inst5|s_debounceCnt[22]~6_combout\ & \inst5|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt[22]~6_combout\,
	datad => \inst5|Add0~34_combout\,
	combout => \inst5|s_debounceCnt~9_combout\);

-- Location: FF_X106_Y31_N17
\inst5|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~9_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(17));

-- Location: LCCOMB_X106_Y32_N22
\inst5|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~0_combout\ = (!\inst5|s_debounceCnt\(16) & (!\inst5|s_debounceCnt\(15) & (!\inst5|s_debounceCnt\(6) & !\inst5|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(16),
	datab => \inst5|s_debounceCnt\(15),
	datac => \inst5|s_debounceCnt\(6),
	datad => \inst5|s_debounceCnt\(17),
	combout => \inst5|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X105_Y31_N14
\inst5|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~36_combout\ = (\inst5|s_debounceCnt\(18) & ((GND) # (!\inst5|Add0~35\))) # (!\inst5|s_debounceCnt\(18) & (\inst5|Add0~35\ $ (GND)))
-- \inst5|Add0~37\ = CARRY((\inst5|s_debounceCnt\(18)) # (!\inst5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst5|Add0~35\,
	combout => \inst5|Add0~36_combout\,
	cout => \inst5|Add0~37\);

-- Location: LCCOMB_X106_Y32_N10
\inst5|s_debounceCnt[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[18]~20_combout\ = (\inst5|s_debounceCnt[22]~5_combout\ & (\inst5|s_debounceCnt[22]~2_combout\ & ((\inst5|Add0~36_combout\) # (!\inst5|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt[22]~5_combout\,
	datab => \inst5|s_previousIn~q\,
	datac => \inst5|Add0~36_combout\,
	datad => \inst5|s_debounceCnt[22]~2_combout\,
	combout => \inst5|s_debounceCnt[18]~20_combout\);

-- Location: FF_X106_Y32_N11
\inst5|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt[18]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(18));

-- Location: LCCOMB_X106_Y32_N2
\inst5|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~3_combout\ = (!\inst5|s_debounceCnt\(18) & (!\inst5|s_debounceCnt\(19) & (!\inst5|s_debounceCnt\(11) & !\inst5|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(18),
	datab => \inst5|s_debounceCnt\(19),
	datac => \inst5|s_debounceCnt\(11),
	datad => \inst5|s_debounceCnt\(14),
	combout => \inst5|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X106_Y32_N28
\inst5|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~4_combout\ = (\inst5|s_pulsedOut~1_combout\ & (\inst5|s_pulsedOut~2_combout\ & (\inst5|s_pulsedOut~0_combout\ & \inst5|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_pulsedOut~1_combout\,
	datab => \inst5|s_pulsedOut~2_combout\,
	datac => \inst5|s_pulsedOut~0_combout\,
	datad => \inst5|s_pulsedOut~3_combout\,
	combout => \inst5|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X106_Y32_N30
\inst5|s_debounceCnt[22]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[22]~5_combout\ = (\inst5|s_debounceCnt\(22)) # (((\inst5|LessThan0~2_combout\) # (!\inst5|s_pulsedOut~4_combout\)) # (!\inst5|s_debounceCnt[22]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(22),
	datab => \inst5|s_debounceCnt[22]~4_combout\,
	datac => \inst5|LessThan0~2_combout\,
	datad => \inst5|s_pulsedOut~4_combout\,
	combout => \inst5|s_debounceCnt[22]~5_combout\);

-- Location: LCCOMB_X105_Y31_N16
\inst5|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~38_combout\ = (\inst5|s_debounceCnt\(19) & (\inst5|Add0~37\ & VCC)) # (!\inst5|s_debounceCnt\(19) & (!\inst5|Add0~37\))
-- \inst5|Add0~39\ = CARRY((!\inst5|s_debounceCnt\(19) & !\inst5|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst5|Add0~37\,
	combout => \inst5|Add0~38_combout\,
	cout => \inst5|Add0~39\);

-- Location: LCCOMB_X106_Y32_N8
\inst5|s_debounceCnt[19]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[19]~21_combout\ = (\inst5|s_debounceCnt[22]~5_combout\ & (\inst5|s_debounceCnt[22]~2_combout\ & ((\inst5|Add0~38_combout\) # (!\inst5|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt[22]~5_combout\,
	datab => \inst5|s_previousIn~q\,
	datac => \inst5|s_debounceCnt[22]~2_combout\,
	datad => \inst5|Add0~38_combout\,
	combout => \inst5|s_debounceCnt[19]~21_combout\);

-- Location: FF_X106_Y32_N9
\inst5|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt[19]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(19));

-- Location: LCCOMB_X105_Y31_N28
\inst5|s_debounceCnt[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[20]~12_combout\ = (\inst5|Add0~40_combout\ & (\inst5|s_debounceCnt[22]~5_combout\ & \inst5|s_debounceCnt[22]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~40_combout\,
	datac => \inst5|s_debounceCnt[22]~5_combout\,
	datad => \inst5|s_debounceCnt[22]~6_combout\,
	combout => \inst5|s_debounceCnt[20]~12_combout\);

-- Location: FF_X105_Y31_N29
\inst5|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(20));

-- Location: LCCOMB_X106_Y31_N20
\inst5|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~4_combout\ = (\inst5|s_debounceCnt\(13)) # ((\inst5|s_debounceCnt\(12)) # ((\inst5|s_debounceCnt\(10) & \inst5|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(10),
	datab => \inst5|s_debounceCnt\(13),
	datac => \inst5|s_debounceCnt\(12),
	datad => \inst5|s_debounceCnt\(11),
	combout => \inst5|LessThan0~4_combout\);

-- Location: LCCOMB_X106_Y31_N18
\inst5|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~5_combout\ = (\inst5|s_debounceCnt\(16)) # ((\inst5|s_debounceCnt\(15)) # ((\inst5|s_debounceCnt\(14) & \inst5|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(16),
	datab => \inst5|s_debounceCnt\(14),
	datac => \inst5|s_debounceCnt\(15),
	datad => \inst5|LessThan0~4_combout\,
	combout => \inst5|LessThan0~5_combout\);

-- Location: LCCOMB_X106_Y31_N4
\inst5|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~6_combout\ = (\inst5|s_debounceCnt\(18) & (\inst5|s_debounceCnt\(19) & ((\inst5|s_debounceCnt\(17)) # (\inst5|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(18),
	datab => \inst5|s_debounceCnt\(17),
	datac => \inst5|s_debounceCnt\(19),
	datad => \inst5|LessThan0~5_combout\,
	combout => \inst5|LessThan0~6_combout\);

-- Location: LCCOMB_X106_Y32_N18
\inst5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = (\inst5|s_debounceCnt\(18) & (\inst5|s_debounceCnt\(8) & (\inst5|s_debounceCnt\(19) & \inst5|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(18),
	datab => \inst5|s_debounceCnt\(8),
	datac => \inst5|s_debounceCnt\(19),
	datad => \inst5|s_debounceCnt\(14),
	combout => \inst5|LessThan0~0_combout\);

-- Location: LCCOMB_X106_Y32_N24
\inst5|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~1_combout\ = (\inst5|s_debounceCnt\(9) & (\inst5|s_debounceCnt\(11) & \inst5|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(9),
	datac => \inst5|s_debounceCnt\(11),
	datad => \inst5|LessThan0~0_combout\,
	combout => \inst5|LessThan0~1_combout\);

-- Location: LCCOMB_X106_Y32_N16
\inst5|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~3_combout\ = (\inst5|LessThan0~1_combout\ & ((\inst5|s_debounceCnt\(7)) # ((\inst5|s_debounceCnt\(6) & \inst5|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(6),
	datab => \inst5|s_debounceCnt\(7),
	datac => \inst5|LessThan0~2_combout\,
	datad => \inst5|LessThan0~1_combout\,
	combout => \inst5|LessThan0~3_combout\);

-- Location: LCCOMB_X106_Y31_N10
\inst5|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~7_combout\ = (\inst5|s_debounceCnt\(20)) # ((\inst5|s_debounceCnt\(21)) # ((\inst5|LessThan0~6_combout\) # (\inst5|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(20),
	datab => \inst5|s_debounceCnt\(21),
	datac => \inst5|LessThan0~6_combout\,
	datad => \inst5|LessThan0~3_combout\,
	combout => \inst5|LessThan0~7_combout\);

-- Location: LCCOMB_X107_Y31_N8
\inst5|s_debounceCnt[22]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[22]~30_combout\ = (!\inst5|s_previousIn~q\ & (\inst5|s_dirtyIn~q\ & ((!\inst5|LessThan0~7_combout\) # (!\inst5|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_previousIn~q\,
	datab => \inst5|s_debounceCnt\(22),
	datac => \inst5|s_dirtyIn~q\,
	datad => \inst5|LessThan0~7_combout\,
	combout => \inst5|s_debounceCnt[22]~30_combout\);

-- Location: LCCOMB_X107_Y31_N30
\inst5|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[22]~27_combout\ = (\inst5|s_debounceCnt\(22) & (((!\inst5|LessThan0~7_combout\)))) # (!\inst5|s_debounceCnt\(22) & ((\inst5|LessThan0~2_combout\) # ((!\inst5|s_pulsedOut~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~2_combout\,
	datab => \inst5|s_debounceCnt\(22),
	datac => \inst5|s_pulsedOut~4_combout\,
	datad => \inst5|LessThan0~7_combout\,
	combout => \inst5|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X105_Y31_N22
\inst5|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~44_combout\ = \inst5|Add0~43\ $ (\inst5|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s_debounceCnt\(22),
	cin => \inst5|Add0~43\,
	combout => \inst5|Add0~44_combout\);

-- Location: LCCOMB_X107_Y31_N16
\inst5|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[22]~28_combout\ = (\inst5|s_debounceCnt[22]~30_combout\) # ((\inst5|s_debounceCnt[22]~4_combout\ & (\inst5|s_debounceCnt[22]~27_combout\ & \inst5|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt[22]~4_combout\,
	datab => \inst5|s_debounceCnt[22]~30_combout\,
	datac => \inst5|s_debounceCnt[22]~27_combout\,
	datad => \inst5|Add0~44_combout\,
	combout => \inst5|s_debounceCnt[22]~28_combout\);

-- Location: FF_X107_Y31_N17
\inst5|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(22));

-- Location: LCCOMB_X106_Y31_N6
\inst5|s_debounceCnt[22]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[22]~6_combout\ = (\inst5|s_previousIn~q\ & (\inst5|s_dirtyIn~q\ & ((!\inst5|LessThan0~7_combout\) # (!\inst5|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(22),
	datab => \inst5|s_previousIn~q\,
	datac => \inst5|s_dirtyIn~q\,
	datad => \inst5|LessThan0~7_combout\,
	combout => \inst5|s_debounceCnt[22]~6_combout\);

-- Location: LCCOMB_X106_Y31_N22
\inst5|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~26_combout\ = (\inst5|Add0~0_combout\ & \inst5|s_debounceCnt[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~0_combout\,
	datad => \inst5|s_debounceCnt[22]~6_combout\,
	combout => \inst5|s_debounceCnt~26_combout\);

-- Location: FF_X106_Y31_N23
\inst5|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~26_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(0));

-- Location: LCCOMB_X105_Y32_N12
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|s_debounceCnt\(1) & (\inst5|Add0~1\ & VCC)) # (!\inst5|s_debounceCnt\(1) & (!\inst5|Add0~1\))
-- \inst5|Add0~3\ = CARRY((!\inst5|s_debounceCnt\(1) & !\inst5|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X105_Y32_N8
\inst5|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~22_combout\ = (\inst5|Add0~2_combout\ & \inst5|s_debounceCnt[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~2_combout\,
	datad => \inst5|s_debounceCnt[22]~6_combout\,
	combout => \inst5|s_debounceCnt~22_combout\);

-- Location: FF_X105_Y32_N9
\inst5|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~22_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(1));

-- Location: LCCOMB_X105_Y32_N14
\inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|s_debounceCnt\(2) & ((GND) # (!\inst5|Add0~3\))) # (!\inst5|s_debounceCnt\(2) & (\inst5|Add0~3\ $ (GND)))
-- \inst5|Add0~5\ = CARRY((\inst5|s_debounceCnt\(2)) # (!\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X106_Y31_N0
\inst5|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~23_combout\ = (\inst5|Add0~4_combout\ & \inst5|s_debounceCnt[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~4_combout\,
	datad => \inst5|s_debounceCnt[22]~6_combout\,
	combout => \inst5|s_debounceCnt~23_combout\);

-- Location: FF_X106_Y31_N1
\inst5|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~23_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(2));

-- Location: LCCOMB_X105_Y32_N2
\inst5|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~24_combout\ = (\inst5|Add0~6_combout\ & \inst5|s_debounceCnt[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~6_combout\,
	datad => \inst5|s_debounceCnt[22]~6_combout\,
	combout => \inst5|s_debounceCnt~24_combout\);

-- Location: FF_X105_Y32_N3
\inst5|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~24_combout\,
	ena => \inst5|s_debounceCnt[22]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(3));

-- Location: LCCOMB_X106_Y32_N6
\inst5|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~5_combout\ = (!\inst5|s_debounceCnt\(3) & (!\inst5|s_debounceCnt\(2) & (!\inst5|s_debounceCnt\(4) & !\inst5|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(3),
	datab => \inst5|s_debounceCnt\(2),
	datac => \inst5|s_debounceCnt\(4),
	datad => \inst5|s_debounceCnt\(1),
	combout => \inst5|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X107_Y32_N20
\inst5|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~6_combout\ = (!\inst5|s_debounceCnt\(22) & (\inst5|s_previousIn~q\ & (\inst5|s_debounceCnt\(0) & \inst5|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(22),
	datab => \inst5|s_previousIn~q\,
	datac => \inst5|s_debounceCnt\(0),
	datad => \inst5|s_dirtyIn~q\,
	combout => \inst5|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X106_Y32_N20
\inst5|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~7_combout\ = (\inst5|s_pulsedOut~5_combout\ & (\inst5|s_pulsedOut~4_combout\ & (\inst5|s_pulsedOut~6_combout\ & !\inst5|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_pulsedOut~5_combout\,
	datab => \inst5|s_pulsedOut~4_combout\,
	datac => \inst5|s_pulsedOut~6_combout\,
	datad => \inst5|s_debounceCnt\(5),
	combout => \inst5|s_pulsedOut~7_combout\);

-- Location: FF_X106_Y32_N21
\inst5|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_pulsedOut~q\);

-- Location: LCCOMB_X109_Y26_N6
\inst6|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_currentState~8_combout\ = (!\inst10|reset~q\ & (\inst2|WideOr12~0_combout\ & \inst10|selModAc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|reset~q\,
	datab => \inst2|WideOr12~0_combout\,
	datac => \inst10|selModAc~q\,
	combout => \inst6|s_currentState~8_combout\);

-- Location: FF_X109_Y26_N7
\inst6|s_currentState.Inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_currentState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_currentState.Inicio~q\);

-- Location: LCCOMB_X109_Y26_N24
\inst6|comb_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|comb_proc~0_combout\ = (\inst2|WideOr12~0_combout\ & (\inst5|s_pulsedOut~q\ & \inst10|selModAc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|WideOr12~0_combout\,
	datac => \inst5|s_pulsedOut~q\,
	datad => \inst10|selModAc~q\,
	combout => \inst6|comb_proc~0_combout\);

-- Location: LCCOMB_X112_Y31_N10
\inst9|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~0_combout\ = \inst9|s_debounceCnt\(0) $ (VCC)
-- \inst9|Add0~1\ = CARRY(\inst9|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst9|Add0~0_combout\,
	cout => \inst9|Add0~1\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X114_Y31_N24
\inst9|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_dirtyIn~feeder_combout\ = \KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \inst9|s_dirtyIn~feeder_combout\);

-- Location: FF_X114_Y31_N25
\inst9|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_dirtyIn~q\);

-- Location: LCCOMB_X114_Y31_N30
\inst9|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_previousIn~feeder_combout\ = \inst9|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|s_dirtyIn~q\,
	combout => \inst9|s_previousIn~feeder_combout\);

-- Location: FF_X114_Y31_N31
\inst9|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_previousIn~q\);

-- Location: LCCOMB_X112_Y31_N12
\inst9|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~2_combout\ = (\inst9|s_debounceCnt\(1) & (\inst9|Add0~1\ & VCC)) # (!\inst9|s_debounceCnt\(1) & (!\inst9|Add0~1\))
-- \inst9|Add0~3\ = CARRY((!\inst9|s_debounceCnt\(1) & !\inst9|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst9|Add0~1\,
	combout => \inst9|Add0~2_combout\,
	cout => \inst9|Add0~3\);

-- Location: LCCOMB_X112_Y31_N14
\inst9|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~4_combout\ = (\inst9|s_debounceCnt\(2) & ((GND) # (!\inst9|Add0~3\))) # (!\inst9|s_debounceCnt\(2) & (\inst9|Add0~3\ $ (GND)))
-- \inst9|Add0~5\ = CARRY((\inst9|s_debounceCnt\(2)) # (!\inst9|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst9|Add0~3\,
	combout => \inst9|Add0~4_combout\,
	cout => \inst9|Add0~5\);

-- Location: LCCOMB_X113_Y31_N18
\inst9|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~20_combout\ = (\inst9|Add0~4_combout\ & (\inst9|s_previousIn~q\ & \inst9|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~4_combout\,
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt~20_combout\);

-- Location: FF_X113_Y31_N19
\inst9|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~20_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(2));

-- Location: LCCOMB_X112_Y31_N16
\inst9|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~6_combout\ = (\inst9|s_debounceCnt\(3) & (\inst9|Add0~5\ & VCC)) # (!\inst9|s_debounceCnt\(3) & (!\inst9|Add0~5\))
-- \inst9|Add0~7\ = CARRY((!\inst9|s_debounceCnt\(3) & !\inst9|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst9|Add0~5\,
	combout => \inst9|Add0~6_combout\,
	cout => \inst9|Add0~7\);

-- Location: LCCOMB_X112_Y31_N0
\inst9|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~21_combout\ = (\inst9|Add0~6_combout\ & (\inst9|s_previousIn~q\ & \inst9|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~6_combout\,
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt~21_combout\);

-- Location: FF_X112_Y31_N1
\inst9|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~21_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(3));

-- Location: LCCOMB_X112_Y31_N18
\inst9|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~8_combout\ = (\inst9|s_debounceCnt\(4) & ((GND) # (!\inst9|Add0~7\))) # (!\inst9|s_debounceCnt\(4) & (\inst9|Add0~7\ $ (GND)))
-- \inst9|Add0~9\ = CARRY((\inst9|s_debounceCnt\(4)) # (!\inst9|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst9|Add0~7\,
	combout => \inst9|Add0~8_combout\,
	cout => \inst9|Add0~9\);

-- Location: LCCOMB_X113_Y31_N20
\inst9|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~22_combout\ = (\inst9|Add0~8_combout\ & (\inst9|s_previousIn~q\ & \inst9|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~8_combout\,
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt~22_combout\);

-- Location: FF_X113_Y31_N21
\inst9|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~22_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(4));

-- Location: LCCOMB_X112_Y31_N20
\inst9|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~10_combout\ = (\inst9|s_debounceCnt\(5) & (\inst9|Add0~9\ & VCC)) # (!\inst9|s_debounceCnt\(5) & (!\inst9|Add0~9\))
-- \inst9|Add0~11\ = CARRY((!\inst9|s_debounceCnt\(5) & !\inst9|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst9|Add0~9\,
	combout => \inst9|Add0~10_combout\,
	cout => \inst9|Add0~11\);

-- Location: LCCOMB_X112_Y31_N8
\inst9|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~27_combout\ = (\inst9|Add0~10_combout\ & (\inst9|s_previousIn~q\ & \inst9|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~10_combout\,
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt~27_combout\);

-- Location: FF_X112_Y31_N9
\inst9|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~27_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(5));

-- Location: LCCOMB_X112_Y31_N22
\inst9|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~12_combout\ = (\inst9|s_debounceCnt\(6) & ((GND) # (!\inst9|Add0~11\))) # (!\inst9|s_debounceCnt\(6) & (\inst9|Add0~11\ $ (GND)))
-- \inst9|Add0~13\ = CARRY((\inst9|s_debounceCnt\(6)) # (!\inst9|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst9|Add0~11\,
	combout => \inst9|Add0~12_combout\,
	cout => \inst9|Add0~13\);

-- Location: LCCOMB_X113_Y31_N24
\inst9|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~1_combout\ = (\inst9|s_debounceCnt[22]~0_combout\ & ((\inst9|Add0~12_combout\) # (!\inst9|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~12_combout\,
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt~1_combout\);

-- Location: FF_X113_Y31_N25
\inst9|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~1_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(6));

-- Location: LCCOMB_X112_Y31_N24
\inst9|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~14_combout\ = (\inst9|s_debounceCnt\(7) & (\inst9|Add0~13\ & VCC)) # (!\inst9|s_debounceCnt\(7) & (!\inst9|Add0~13\))
-- \inst9|Add0~15\ = CARRY((!\inst9|s_debounceCnt\(7) & !\inst9|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst9|Add0~13\,
	combout => \inst9|Add0~14_combout\,
	cout => \inst9|Add0~15\);

-- Location: LCCOMB_X113_Y31_N10
\inst9|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~11_combout\ = (\inst9|Add0~14_combout\ & (\inst9|s_previousIn~q\ & \inst9|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~14_combout\,
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt~11_combout\);

-- Location: FF_X113_Y31_N11
\inst9|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~11_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(7));

-- Location: LCCOMB_X112_Y31_N26
\inst9|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~16_combout\ = (\inst9|s_debounceCnt\(8) & ((GND) # (!\inst9|Add0~15\))) # (!\inst9|s_debounceCnt\(8) & (\inst9|Add0~15\ $ (GND)))
-- \inst9|Add0~17\ = CARRY((\inst9|s_debounceCnt\(8)) # (!\inst9|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst9|Add0~15\,
	combout => \inst9|Add0~16_combout\,
	cout => \inst9|Add0~17\);

-- Location: LCCOMB_X112_Y31_N4
\inst9|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~12_combout\ = (\inst9|s_debounceCnt[22]~0_combout\ & ((\inst9|Add0~16_combout\) # (!\inst9|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datac => \inst9|Add0~16_combout\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt~12_combout\);

-- Location: FF_X112_Y31_N5
\inst9|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~12_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(8));

-- Location: LCCOMB_X112_Y31_N28
\inst9|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~18_combout\ = (\inst9|s_debounceCnt\(9) & (\inst9|Add0~17\ & VCC)) # (!\inst9|s_debounceCnt\(9) & (!\inst9|Add0~17\))
-- \inst9|Add0~19\ = CARRY((!\inst9|s_debounceCnt\(9) & !\inst9|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst9|Add0~17\,
	combout => \inst9|Add0~18_combout\,
	cout => \inst9|Add0~19\);

-- Location: LCCOMB_X113_Y31_N4
\inst9|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~13_combout\ = (\inst9|s_debounceCnt[22]~0_combout\ & ((\inst9|Add0~18_combout\) # (!\inst9|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~18_combout\,
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt~13_combout\);

-- Location: FF_X113_Y31_N5
\inst9|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~13_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(9));

-- Location: LCCOMB_X112_Y31_N30
\inst9|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~20_combout\ = (\inst9|s_debounceCnt\(10) & ((GND) # (!\inst9|Add0~19\))) # (!\inst9|s_debounceCnt\(10) & (\inst9|Add0~19\ $ (GND)))
-- \inst9|Add0~21\ = CARRY((\inst9|s_debounceCnt\(10)) # (!\inst9|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst9|Add0~19\,
	combout => \inst9|Add0~20_combout\,
	cout => \inst9|Add0~21\);

-- Location: LCCOMB_X113_Y30_N6
\inst9|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~14_combout\ = (\inst9|s_previousIn~q\ & (\inst9|s_debounceCnt[22]~0_combout\ & \inst9|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_previousIn~q\,
	datac => \inst9|s_debounceCnt[22]~0_combout\,
	datad => \inst9|Add0~20_combout\,
	combout => \inst9|s_debounceCnt~14_combout\);

-- Location: FF_X113_Y30_N7
\inst9|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~14_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(10));

-- Location: LCCOMB_X113_Y31_N22
\inst9|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~2_combout\ = (!\inst9|s_debounceCnt\(7) & (!\inst9|s_debounceCnt\(8) & (!\inst9|s_debounceCnt\(9) & !\inst9|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(7),
	datab => \inst9|s_debounceCnt\(8),
	datac => \inst9|s_debounceCnt\(9),
	datad => \inst9|s_debounceCnt\(10),
	combout => \inst9|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X112_Y30_N0
\inst9|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~22_combout\ = (\inst9|s_debounceCnt\(11) & (\inst9|Add0~21\ & VCC)) # (!\inst9|s_debounceCnt\(11) & (!\inst9|Add0~21\))
-- \inst9|Add0~23\ = CARRY((!\inst9|s_debounceCnt\(11) & !\inst9|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst9|Add0~21\,
	combout => \inst9|Add0~22_combout\,
	cout => \inst9|Add0~23\);

-- Location: LCCOMB_X113_Y30_N20
\inst9|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~15_combout\ = (\inst9|s_debounceCnt[22]~0_combout\ & ((\inst9|Add0~22_combout\) # (!\inst9|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_previousIn~q\,
	datac => \inst9|s_debounceCnt[22]~0_combout\,
	datad => \inst9|Add0~22_combout\,
	combout => \inst9|s_debounceCnt~15_combout\);

-- Location: FF_X113_Y30_N21
\inst9|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~15_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(11));

-- Location: LCCOMB_X112_Y30_N2
\inst9|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~24_combout\ = (\inst9|s_debounceCnt\(12) & ((GND) # (!\inst9|Add0~23\))) # (!\inst9|s_debounceCnt\(12) & (\inst9|Add0~23\ $ (GND)))
-- \inst9|Add0~25\ = CARRY((\inst9|s_debounceCnt\(12)) # (!\inst9|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst9|Add0~23\,
	combout => \inst9|Add0~24_combout\,
	cout => \inst9|Add0~25\);

-- Location: LCCOMB_X113_Y30_N14
\inst9|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~7_combout\ = (\inst9|s_previousIn~q\ & (\inst9|s_debounceCnt[22]~0_combout\ & \inst9|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_previousIn~q\,
	datac => \inst9|s_debounceCnt[22]~0_combout\,
	datad => \inst9|Add0~24_combout\,
	combout => \inst9|s_debounceCnt~7_combout\);

-- Location: FF_X113_Y30_N15
\inst9|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~7_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(12));

-- Location: LCCOMB_X112_Y30_N4
\inst9|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~26_combout\ = (\inst9|s_debounceCnt\(13) & (\inst9|Add0~25\ & VCC)) # (!\inst9|s_debounceCnt\(13) & (!\inst9|Add0~25\))
-- \inst9|Add0~27\ = CARRY((!\inst9|s_debounceCnt\(13) & !\inst9|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst9|Add0~25\,
	combout => \inst9|Add0~26_combout\,
	cout => \inst9|Add0~27\);

-- Location: LCCOMB_X113_Y30_N28
\inst9|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~8_combout\ = (\inst9|s_previousIn~q\ & (\inst9|s_debounceCnt[22]~0_combout\ & \inst9|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_previousIn~q\,
	datac => \inst9|s_debounceCnt[22]~0_combout\,
	datad => \inst9|Add0~26_combout\,
	combout => \inst9|s_debounceCnt~8_combout\);

-- Location: FF_X113_Y30_N29
\inst9|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~8_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(13));

-- Location: LCCOMB_X112_Y30_N6
\inst9|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~28_combout\ = (\inst9|s_debounceCnt\(14) & ((GND) # (!\inst9|Add0~27\))) # (!\inst9|s_debounceCnt\(14) & (\inst9|Add0~27\ $ (GND)))
-- \inst9|Add0~29\ = CARRY((\inst9|s_debounceCnt\(14)) # (!\inst9|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst9|Add0~27\,
	combout => \inst9|Add0~28_combout\,
	cout => \inst9|Add0~29\);

-- Location: LCCOMB_X113_Y30_N30
\inst9|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~16_combout\ = (\inst9|s_debounceCnt[22]~0_combout\ & ((\inst9|Add0~28_combout\) # (!\inst9|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_previousIn~q\,
	datac => \inst9|s_debounceCnt[22]~0_combout\,
	datad => \inst9|Add0~28_combout\,
	combout => \inst9|s_debounceCnt~16_combout\);

-- Location: FF_X113_Y30_N31
\inst9|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~16_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(14));

-- Location: LCCOMB_X112_Y30_N8
\inst9|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~30_combout\ = (\inst9|s_debounceCnt\(15) & (\inst9|Add0~29\ & VCC)) # (!\inst9|s_debounceCnt\(15) & (!\inst9|Add0~29\))
-- \inst9|Add0~31\ = CARRY((!\inst9|s_debounceCnt\(15) & !\inst9|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst9|Add0~29\,
	combout => \inst9|Add0~30_combout\,
	cout => \inst9|Add0~31\);

-- Location: LCCOMB_X113_Y30_N12
\inst9|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~4_combout\ = (\inst9|s_previousIn~q\ & (\inst9|s_debounceCnt[22]~0_combout\ & \inst9|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_previousIn~q\,
	datac => \inst9|s_debounceCnt[22]~0_combout\,
	datad => \inst9|Add0~30_combout\,
	combout => \inst9|s_debounceCnt~4_combout\);

-- Location: FF_X113_Y30_N13
\inst9|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~4_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(15));

-- Location: LCCOMB_X112_Y30_N10
\inst9|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~32_combout\ = (\inst9|s_debounceCnt\(16) & ((GND) # (!\inst9|Add0~31\))) # (!\inst9|s_debounceCnt\(16) & (\inst9|Add0~31\ $ (GND)))
-- \inst9|Add0~33\ = CARRY((\inst9|s_debounceCnt\(16)) # (!\inst9|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst9|Add0~31\,
	combout => \inst9|Add0~32_combout\,
	cout => \inst9|Add0~33\);

-- Location: LCCOMB_X112_Y30_N28
\inst9|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~5_combout\ = (\inst9|Add0~32_combout\ & (\inst9|s_previousIn~q\ & \inst9|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~32_combout\,
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt~5_combout\);

-- Location: FF_X112_Y30_N29
\inst9|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~5_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(16));

-- Location: LCCOMB_X112_Y30_N12
\inst9|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~34_combout\ = (\inst9|s_debounceCnt\(17) & (\inst9|Add0~33\ & VCC)) # (!\inst9|s_debounceCnt\(17) & (!\inst9|Add0~33\))
-- \inst9|Add0~35\ = CARRY((!\inst9|s_debounceCnt\(17) & !\inst9|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst9|Add0~33\,
	combout => \inst9|Add0~34_combout\,
	cout => \inst9|Add0~35\);

-- Location: LCCOMB_X113_Y31_N14
\inst9|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~6_combout\ = (\inst9|s_debounceCnt[22]~0_combout\ & (\inst9|s_previousIn~q\ & \inst9|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt[22]~0_combout\,
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|Add0~34_combout\,
	combout => \inst9|s_debounceCnt~6_combout\);

-- Location: FF_X113_Y31_N15
\inst9|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~6_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(17));

-- Location: LCCOMB_X113_Y31_N28
\inst9|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~0_combout\ = (!\inst9|s_debounceCnt\(6) & (!\inst9|s_debounceCnt\(17) & (!\inst9|s_debounceCnt\(15) & !\inst9|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(6),
	datab => \inst9|s_debounceCnt\(17),
	datac => \inst9|s_debounceCnt\(15),
	datad => \inst9|s_debounceCnt\(16),
	combout => \inst9|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X112_Y30_N14
\inst9|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~36_combout\ = (\inst9|s_debounceCnt\(18) & ((GND) # (!\inst9|Add0~35\))) # (!\inst9|s_debounceCnt\(18) & (\inst9|Add0~35\ $ (GND)))
-- \inst9|Add0~37\ = CARRY((\inst9|s_debounceCnt\(18)) # (!\inst9|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst9|Add0~35\,
	combout => \inst9|Add0~36_combout\,
	cout => \inst9|Add0~37\);

-- Location: LCCOMB_X113_Y30_N24
\inst9|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[18]~17_combout\ = (\inst9|s_debounceCnt[22]~3_combout\ & (\inst9|s_debounceCnt[22]~0_combout\ & ((\inst9|Add0~36_combout\) # (!\inst9|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt[22]~3_combout\,
	datab => \inst9|s_previousIn~q\,
	datac => \inst9|s_debounceCnt[22]~0_combout\,
	datad => \inst9|Add0~36_combout\,
	combout => \inst9|s_debounceCnt[18]~17_combout\);

-- Location: FF_X113_Y30_N25
\inst9|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(18));

-- Location: LCCOMB_X113_Y30_N4
\inst9|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~3_combout\ = (!\inst9|s_debounceCnt\(19) & (!\inst9|s_debounceCnt\(11) & (!\inst9|s_debounceCnt\(14) & !\inst9|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(19),
	datab => \inst9|s_debounceCnt\(11),
	datac => \inst9|s_debounceCnt\(14),
	datad => \inst9|s_debounceCnt\(18),
	combout => \inst9|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X112_Y30_N26
\inst9|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~1_combout\ = (!\inst9|s_debounceCnt\(20) & (!\inst9|s_debounceCnt\(21) & (!\inst9|s_debounceCnt\(12) & !\inst9|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(20),
	datab => \inst9|s_debounceCnt\(21),
	datac => \inst9|s_debounceCnt\(12),
	datad => \inst9|s_debounceCnt\(13),
	combout => \inst9|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X113_Y31_N16
\inst9|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~4_combout\ = (\inst9|s_pulsedOut~2_combout\ & (\inst9|s_pulsedOut~0_combout\ & (\inst9|s_pulsedOut~3_combout\ & \inst9|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_pulsedOut~2_combout\,
	datab => \inst9|s_pulsedOut~0_combout\,
	datac => \inst9|s_pulsedOut~3_combout\,
	datad => \inst9|s_pulsedOut~1_combout\,
	combout => \inst9|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X113_Y31_N12
\inst9|s_debounceCnt[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[22]~2_combout\ = (\inst9|s_debounceCnt\(5)) # (((\inst9|s_debounceCnt\(0)) # (!\inst9|s_pulsedOut~4_combout\)) # (!\inst9|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(5),
	datab => \inst9|s_pulsedOut~5_combout\,
	datac => \inst9|s_debounceCnt\(0),
	datad => \inst9|s_pulsedOut~4_combout\,
	combout => \inst9|s_debounceCnt[22]~2_combout\);

-- Location: LCCOMB_X113_Y31_N30
\inst9|s_debounceCnt[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[22]~3_combout\ = (((\inst9|s_debounceCnt\(22)) # (\inst9|s_debounceCnt[22]~2_combout\)) # (!\inst9|s_dirtyIn~q\)) # (!\inst9|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datab => \inst9|s_dirtyIn~q\,
	datac => \inst9|s_debounceCnt\(22),
	datad => \inst9|s_debounceCnt[22]~2_combout\,
	combout => \inst9|s_debounceCnt[22]~3_combout\);

-- Location: LCCOMB_X112_Y30_N16
\inst9|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~38_combout\ = (\inst9|s_debounceCnt\(19) & (\inst9|Add0~37\ & VCC)) # (!\inst9|s_debounceCnt\(19) & (!\inst9|Add0~37\))
-- \inst9|Add0~39\ = CARRY((!\inst9|s_debounceCnt\(19) & !\inst9|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst9|Add0~37\,
	combout => \inst9|Add0~38_combout\,
	cout => \inst9|Add0~39\);

-- Location: LCCOMB_X113_Y30_N22
\inst9|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[19]~18_combout\ = (\inst9|s_debounceCnt[22]~3_combout\ & (\inst9|s_debounceCnt[22]~0_combout\ & ((\inst9|Add0~38_combout\) # (!\inst9|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt[22]~3_combout\,
	datab => \inst9|s_previousIn~q\,
	datac => \inst9|s_debounceCnt[22]~0_combout\,
	datad => \inst9|Add0~38_combout\,
	combout => \inst9|s_debounceCnt[19]~18_combout\);

-- Location: FF_X113_Y30_N23
\inst9|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(19));

-- Location: LCCOMB_X112_Y30_N18
\inst9|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~40_combout\ = (\inst9|s_debounceCnt\(20) & ((GND) # (!\inst9|Add0~39\))) # (!\inst9|s_debounceCnt\(20) & (\inst9|Add0~39\ $ (GND)))
-- \inst9|Add0~41\ = CARRY((\inst9|s_debounceCnt\(20)) # (!\inst9|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst9|Add0~39\,
	combout => \inst9|Add0~40_combout\,
	cout => \inst9|Add0~41\);

-- Location: LCCOMB_X112_Y30_N30
\inst9|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[20]~9_combout\ = (\inst9|s_previousIn~q\ & (\inst9|Add0~40_combout\ & (\inst9|s_debounceCnt[22]~3_combout\ & \inst9|s_debounceCnt[22]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datab => \inst9|Add0~40_combout\,
	datac => \inst9|s_debounceCnt[22]~3_combout\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt[20]~9_combout\);

-- Location: FF_X112_Y30_N31
\inst9|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(20));

-- Location: LCCOMB_X112_Y30_N20
\inst9|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~42_combout\ = (\inst9|s_debounceCnt\(21) & (\inst9|Add0~41\ & VCC)) # (!\inst9|s_debounceCnt\(21) & (!\inst9|Add0~41\))
-- \inst9|Add0~43\ = CARRY((!\inst9|s_debounceCnt\(21) & !\inst9|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst9|Add0~41\,
	combout => \inst9|Add0~42_combout\,
	cout => \inst9|Add0~43\);

-- Location: LCCOMB_X112_Y30_N24
\inst9|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[21]~10_combout\ = (\inst9|s_previousIn~q\ & (\inst9|Add0~42_combout\ & (\inst9|s_debounceCnt[22]~3_combout\ & \inst9|s_debounceCnt[22]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datab => \inst9|Add0~42_combout\,
	datac => \inst9|s_debounceCnt[22]~3_combout\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt[21]~10_combout\);

-- Location: FF_X112_Y30_N25
\inst9|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(21));

-- Location: LCCOMB_X112_Y30_N22
\inst9|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~44_combout\ = \inst9|Add0~43\ $ (\inst9|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst9|s_debounceCnt\(22),
	cin => \inst9|Add0~43\,
	combout => \inst9|Add0~44_combout\);

-- Location: LCCOMB_X113_Y30_N26
\inst9|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~0_combout\ = (!\inst9|s_debounceCnt\(21) & !\inst9|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(21),
	datac => \inst9|s_debounceCnt\(20),
	combout => \inst9|LessThan0~0_combout\);

-- Location: LCCOMB_X113_Y30_N10
\inst9|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~4_combout\ = (\inst9|s_debounceCnt\(19) & (\inst9|s_debounceCnt\(18) & (\inst9|s_debounceCnt\(14) & \inst9|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(19),
	datab => \inst9|s_debounceCnt\(18),
	datac => \inst9|s_debounceCnt\(14),
	datad => \inst9|s_debounceCnt\(8),
	combout => \inst9|LessThan0~4_combout\);

-- Location: LCCOMB_X113_Y30_N0
\inst9|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~5_combout\ = (\inst9|s_debounceCnt\(11) & (\inst9|s_debounceCnt\(9) & \inst9|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(11),
	datac => \inst9|s_debounceCnt\(9),
	datad => \inst9|LessThan0~4_combout\,
	combout => \inst9|LessThan0~5_combout\);

-- Location: LCCOMB_X113_Y31_N26
\inst9|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~6_combout\ = (\inst9|s_debounceCnt\(6) & ((\inst9|s_debounceCnt\(5)) # ((\inst9|s_debounceCnt\(0)) # (!\inst9|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(5),
	datab => \inst9|s_debounceCnt\(6),
	datac => \inst9|s_debounceCnt\(0),
	datad => \inst9|s_pulsedOut~5_combout\,
	combout => \inst9|LessThan0~6_combout\);

-- Location: LCCOMB_X113_Y30_N8
\inst9|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~1_combout\ = (\inst9|s_debounceCnt\(13)) # ((\inst9|s_debounceCnt\(12)) # ((\inst9|s_debounceCnt\(10) & \inst9|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(10),
	datab => \inst9|s_debounceCnt\(13),
	datac => \inst9|s_debounceCnt\(12),
	datad => \inst9|s_debounceCnt\(11),
	combout => \inst9|LessThan0~1_combout\);

-- Location: LCCOMB_X113_Y30_N18
\inst9|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~2_combout\ = (\inst9|s_debounceCnt\(15)) # ((\inst9|s_debounceCnt\(16)) # ((\inst9|s_debounceCnt\(14) & \inst9|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(14),
	datab => \inst9|s_debounceCnt\(15),
	datac => \inst9|LessThan0~1_combout\,
	datad => \inst9|s_debounceCnt\(16),
	combout => \inst9|LessThan0~2_combout\);

-- Location: LCCOMB_X113_Y30_N16
\inst9|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~3_combout\ = (\inst9|s_debounceCnt\(19) & (\inst9|s_debounceCnt\(18) & ((\inst9|s_debounceCnt\(17)) # (\inst9|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(19),
	datab => \inst9|s_debounceCnt\(18),
	datac => \inst9|s_debounceCnt\(17),
	datad => \inst9|LessThan0~2_combout\,
	combout => \inst9|LessThan0~3_combout\);

-- Location: LCCOMB_X113_Y31_N0
\inst9|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~7_combout\ = (\inst9|LessThan0~3_combout\) # ((\inst9|LessThan0~5_combout\ & ((\inst9|s_debounceCnt\(7)) # (\inst9|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(7),
	datab => \inst9|LessThan0~5_combout\,
	datac => \inst9|LessThan0~6_combout\,
	datad => \inst9|LessThan0~3_combout\,
	combout => \inst9|LessThan0~7_combout\);

-- Location: LCCOMB_X114_Y31_N28
\inst9|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[22]~24_combout\ = (\inst9|s_debounceCnt\(22) & (\inst9|LessThan0~0_combout\ & (!\inst9|LessThan0~7_combout\))) # (!\inst9|s_debounceCnt\(22) & (((\inst9|s_debounceCnt[22]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(22),
	datab => \inst9|LessThan0~0_combout\,
	datac => \inst9|LessThan0~7_combout\,
	datad => \inst9|s_debounceCnt[22]~2_combout\,
	combout => \inst9|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X114_Y31_N2
\inst9|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[22]~25_combout\ = (\inst9|s_dirtyIn~q\ & \inst9|s_debounceCnt[22]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_dirtyIn~q\,
	datad => \inst9|s_debounceCnt[22]~24_combout\,
	combout => \inst9|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X113_Y31_N8
\inst9|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[22]~26_combout\ = (\inst9|s_previousIn~q\ & (((\inst9|Add0~44_combout\ & \inst9|s_debounceCnt[22]~25_combout\)))) # (!\inst9|s_previousIn~q\ & (\inst9|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datab => \inst9|s_debounceCnt[22]~0_combout\,
	datac => \inst9|Add0~44_combout\,
	datad => \inst9|s_debounceCnt[22]~25_combout\,
	combout => \inst9|s_debounceCnt[22]~26_combout\);

-- Location: FF_X113_Y31_N9
\inst9|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(22));

-- Location: LCCOMB_X113_Y31_N6
\inst9|s_debounceCnt[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[22]~0_combout\ = (\inst9|s_dirtyIn~q\ & (((\inst9|LessThan0~0_combout\ & !\inst9|LessThan0~7_combout\)) # (!\inst9|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(22),
	datab => \inst9|s_dirtyIn~q\,
	datac => \inst9|LessThan0~0_combout\,
	datad => \inst9|LessThan0~7_combout\,
	combout => \inst9|s_debounceCnt[22]~0_combout\);

-- Location: LCCOMB_X112_Y31_N6
\inst9|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~23_combout\ = (\inst9|Add0~0_combout\ & (\inst9|s_previousIn~q\ & \inst9|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~0_combout\,
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt~23_combout\);

-- Location: FF_X112_Y31_N7
\inst9|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~23_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(0));

-- Location: LCCOMB_X112_Y31_N2
\inst9|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~19_combout\ = (\inst9|Add0~2_combout\ & (\inst9|s_previousIn~q\ & \inst9|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~2_combout\,
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|s_debounceCnt[22]~0_combout\,
	combout => \inst9|s_debounceCnt~19_combout\);

-- Location: FF_X112_Y31_N3
\inst9|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~19_combout\,
	ena => \inst9|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(1));

-- Location: LCCOMB_X113_Y31_N2
\inst9|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~5_combout\ = (!\inst9|s_debounceCnt\(1) & (!\inst9|s_debounceCnt\(4) & (!\inst9|s_debounceCnt\(3) & !\inst9|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(1),
	datab => \inst9|s_debounceCnt\(4),
	datac => \inst9|s_debounceCnt\(3),
	datad => \inst9|s_debounceCnt\(2),
	combout => \inst9|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X114_Y31_N18
\inst9|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~6_combout\ = (!\inst9|s_debounceCnt\(22) & (\inst9|s_debounceCnt\(0) & (\inst9|s_previousIn~q\ & \inst9|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(22),
	datab => \inst9|s_debounceCnt\(0),
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|s_dirtyIn~q\,
	combout => \inst9|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X114_Y31_N20
\inst9|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~7_combout\ = (\inst9|s_pulsedOut~5_combout\ & (!\inst9|s_debounceCnt\(5) & (\inst9|s_pulsedOut~4_combout\ & \inst9|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_pulsedOut~5_combout\,
	datab => \inst9|s_debounceCnt\(5),
	datac => \inst9|s_pulsedOut~4_combout\,
	datad => \inst9|s_pulsedOut~6_combout\,
	combout => \inst9|s_pulsedOut~7_combout\);

-- Location: FF_X114_Y31_N21
\inst9|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_pulsedOut~q\);

-- Location: LCCOMB_X112_Y26_N8
\inst6|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector4~1_combout\ = (\inst10|selModAc~q\ & (\inst6|s_currentState.threeBar~q\ & (!\inst9|s_pulsedOut~q\ & \inst2|WideOr12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|selModAc~q\,
	datab => \inst6|s_currentState.threeBar~q\,
	datac => \inst9|s_pulsedOut~q\,
	datad => \inst2|WideOr12~0_combout\,
	combout => \inst6|Selector4~1_combout\);

-- Location: LCCOMB_X112_Y26_N22
\inst6|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector5~0_combout\ = (\inst6|s_currentState.fourBar~q\ & (\inst2|WideOr12~0_combout\ & (!\inst9|s_pulsedOut~q\ & \inst10|selModAc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_currentState.fourBar~q\,
	datab => \inst2|WideOr12~0_combout\,
	datac => \inst9|s_pulsedOut~q\,
	datad => \inst10|selModAc~q\,
	combout => \inst6|Selector5~0_combout\);

-- Location: LCCOMB_X112_Y26_N6
\inst6|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector5~1_combout\ = (\inst6|Selector5~0_combout\) # ((\inst6|s_currentState.threeBar~q\ & \inst6|comb_proc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_currentState.threeBar~q\,
	datac => \inst6|Selector5~0_combout\,
	datad => \inst6|comb_proc~0_combout\,
	combout => \inst6|Selector5~1_combout\);

-- Location: FF_X112_Y26_N7
\inst6|s_currentState.fourBar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|Selector5~1_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_currentState.fourBar~q\);

-- Location: LCCOMB_X112_Y26_N18
\inst6|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector4~0_combout\ = (\inst6|s_currentState.fourBar~q\ & (\inst2|WideOr12~0_combout\ & (\inst9|s_pulsedOut~q\ & \inst10|selModAc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_currentState.fourBar~q\,
	datab => \inst2|WideOr12~0_combout\,
	datac => \inst9|s_pulsedOut~q\,
	datad => \inst10|selModAc~q\,
	combout => \inst6|Selector4~0_combout\);

-- Location: LCCOMB_X112_Y26_N28
\inst6|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector4~2_combout\ = (\inst6|Selector4~0_combout\) # ((\inst6|comb_proc~0_combout\ & (\inst6|s_currentState.twoBar~q\)) # (!\inst6|comb_proc~0_combout\ & ((\inst6|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|comb_proc~0_combout\,
	datab => \inst6|s_currentState.twoBar~q\,
	datac => \inst6|Selector4~1_combout\,
	datad => \inst6|Selector4~0_combout\,
	combout => \inst6|Selector4~2_combout\);

-- Location: FF_X112_Y26_N29
\inst6|s_currentState.threeBar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|Selector4~2_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_currentState.threeBar~q\);

-- Location: LCCOMB_X112_Y26_N4
\inst6|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector3~0_combout\ = (\inst2|selModAc~0_combout\ & ((\inst9|s_pulsedOut~q\ & (\inst6|s_currentState.threeBar~q\)) # (!\inst9|s_pulsedOut~q\ & ((\inst6|s_currentState.twoBar~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|selModAc~0_combout\,
	datab => \inst6|s_currentState.threeBar~q\,
	datac => \inst9|s_pulsedOut~q\,
	datad => \inst6|s_currentState.twoBar~q\,
	combout => \inst6|Selector3~0_combout\);

-- Location: LCCOMB_X112_Y26_N24
\inst6|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector3~1_combout\ = (\inst6|comb_proc~0_combout\ & (\inst6|s_currentState.oneBar~q\)) # (!\inst6|comb_proc~0_combout\ & ((\inst6|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_currentState.oneBar~q\,
	datac => \inst6|Selector3~0_combout\,
	datad => \inst6|comb_proc~0_combout\,
	combout => \inst6|Selector3~1_combout\);

-- Location: FF_X112_Y26_N25
\inst6|s_currentState.twoBar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|Selector3~1_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_currentState.twoBar~q\);

-- Location: LCCOMB_X109_Y26_N18
\inst6|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector2~0_combout\ = (\inst9|s_pulsedOut~q\ & ((\inst6|s_currentState.twoBar~q\) # ((\inst6|s_currentState.oneBar~q\ & !\inst2|selModAc~0_combout\)))) # (!\inst9|s_pulsedOut~q\ & (((\inst6|s_currentState.oneBar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_currentState.twoBar~q\,
	datab => \inst6|s_currentState.oneBar~q\,
	datac => \inst2|selModAc~0_combout\,
	datad => \inst9|s_pulsedOut~q\,
	combout => \inst6|Selector2~0_combout\);

-- Location: LCCOMB_X109_Y26_N2
\inst6|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector2~1_combout\ = (\inst2|selModAc~0_combout\ & (((!\inst5|s_pulsedOut~q\ & \inst6|Selector2~0_combout\)) # (!\inst6|s_currentState.Inicio~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_currentState.Inicio~q\,
	datab => \inst2|selModAc~0_combout\,
	datac => \inst5|s_pulsedOut~q\,
	datad => \inst6|Selector2~0_combout\,
	combout => \inst6|Selector2~1_combout\);

-- Location: LCCOMB_X112_Y26_N26
\inst6|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector2~2_combout\ = (\inst6|Selector2~1_combout\) # ((\inst6|s_currentState.zeroBar~q\ & \inst6|comb_proc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_currentState.zeroBar~q\,
	datac => \inst6|Selector2~1_combout\,
	datad => \inst6|comb_proc~0_combout\,
	combout => \inst6|Selector2~2_combout\);

-- Location: FF_X112_Y26_N27
\inst6|s_currentState.oneBar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|Selector2~2_combout\,
	sclr => \inst10|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_currentState.oneBar~q\);

-- Location: LCCOMB_X109_Y26_N28
\inst6|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_currentState~9_combout\ = (!\inst5|s_pulsedOut~q\ & ((\inst6|s_currentState.zeroBar~q\) # ((\inst6|s_currentState.oneBar~q\ & \inst9|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_pulsedOut~q\,
	datab => \inst6|s_currentState.oneBar~q\,
	datac => \inst6|s_currentState.zeroBar~q\,
	datad => \inst9|s_pulsedOut~q\,
	combout => \inst6|s_currentState~9_combout\);

-- Location: LCCOMB_X109_Y26_N12
\inst6|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_currentState~10_combout\ = (!\inst10|reset~q\ & (\inst2|selModAc~0_combout\ & \inst6|s_currentState~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|reset~q\,
	datac => \inst2|selModAc~0_combout\,
	datad => \inst6|s_currentState~9_combout\,
	combout => \inst6|s_currentState~10_combout\);

-- Location: FF_X109_Y26_N13
\inst6|s_currentState.zeroBar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_currentState.zeroBar~q\);

-- Location: LCCOMB_X109_Y26_N4
\inst6|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|WideOr3~0_combout\ = (!\inst6|s_currentState.zeroBar~q\ & \inst6|s_currentState.Inicio~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|s_currentState.zeroBar~q\,
	datad => \inst6|s_currentState.Inicio~q\,
	combout => \inst6|WideOr3~0_combout\);

-- Location: LCCOMB_X109_Y26_N10
\inst6|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|WideOr3~combout\ = (\inst6|s_currentState.oneBar~q\) # ((\inst6|s_currentState.zeroBar~q\) # (!\inst6|s_currentState.Inicio~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_currentState.oneBar~q\,
	datac => \inst6|s_currentState.zeroBar~q\,
	datad => \inst6|s_currentState.Inicio~q\,
	combout => \inst6|WideOr3~combout\);

-- Location: LCCOMB_X112_Y26_N16
\inst6|selBar[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|selBar\(8) = (\inst6|s_currentState.threeBar~q\) # (\inst6|s_currentState.fourBar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_currentState.threeBar~q\,
	datad => \inst6|s_currentState.fourBar~q\,
	combout => \inst6|selBar\(8));

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

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


