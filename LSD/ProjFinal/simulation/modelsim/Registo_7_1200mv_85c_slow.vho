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

-- DATE "06/15/2021 23:59:11"

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

ENTITY 	MaqVenda IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(4 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(0 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END MaqVenda;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MaqVenda IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \conect_reg|dataOut[0]~feeder_combout\ : std_logic;
SIGNAL \reg_to_eref|PS.Thihi~0_combout\ : std_logic;
SIGNAL \reg_to_eref|PS.Thihi~q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \conect_reg|dataOut[4]~feeder_combout\ : std_logic;
SIGNAL \Disp3|Mux6~0_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector0~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \conect_reg|dataOut[3]~feeder_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \conect_reg|dataOut[1]~feeder_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector1~0_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector1~1_combout\ : std_logic;
SIGNAL \time_to_eref|Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~13_cout\ : std_logic;
SIGNAL \time_to_eref|Add0~15_cout\ : std_logic;
SIGNAL \time_to_eref|Add0~17\ : std_logic;
SIGNAL \time_to_eref|Add0~19\ : std_logic;
SIGNAL \time_to_eref|Add0~21\ : std_logic;
SIGNAL \time_to_eref|Add0~23\ : std_logic;
SIGNAL \time_to_eref|Add0~25\ : std_logic;
SIGNAL \time_to_eref|Add0~27\ : std_logic;
SIGNAL \time_to_eref|Add0~29\ : std_logic;
SIGNAL \time_to_eref|Add0~31\ : std_logic;
SIGNAL \time_to_eref|Add0~32_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~30_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~28_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~20_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~18_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~16_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~0_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter~15_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[6]~16_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~1\ : std_logic;
SIGNAL \time_to_eref|Add1~2_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter~17_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~3\ : std_logic;
SIGNAL \time_to_eref|Add1~4_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter~18_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~5\ : std_logic;
SIGNAL \time_to_eref|Add1~6_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter~19_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~7\ : std_logic;
SIGNAL \time_to_eref|Add1~8_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter~20_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~9\ : std_logic;
SIGNAL \time_to_eref|Add1~10_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter~21_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~11\ : std_logic;
SIGNAL \time_to_eref|Add1~12_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter~22_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~13\ : std_logic;
SIGNAL \time_to_eref|Add1~14_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter~23_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~15\ : std_logic;
SIGNAL \time_to_eref|Add1~16_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter~24_combout\ : std_logic;
SIGNAL \reg_to_eref|PS.Thihi~_wirecell_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~17\ : std_logic;
SIGNAL \time_to_eref|Add1~18_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter~25_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter~26_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~19\ : std_logic;
SIGNAL \time_to_eref|Add1~20_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~58_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[10]~feeder_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~21\ : std_logic;
SIGNAL \time_to_eref|Add1~22_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~59_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~23\ : std_logic;
SIGNAL \time_to_eref|Add1~24_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~60_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~25\ : std_logic;
SIGNAL \time_to_eref|Add1~26_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~22_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~61_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[13]~feeder_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~27\ : std_logic;
SIGNAL \time_to_eref|Add1~28_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~24_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~62_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~29\ : std_logic;
SIGNAL \time_to_eref|Add1~30_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~26_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[15]~0_combout\ : std_logic;
SIGNAL \time_to_eref|Mult0|mult_core|romout[0][28]~0_wirecell_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~31\ : std_logic;
SIGNAL \time_to_eref|Add1~32_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[16]~1_combout\ : std_logic;
SIGNAL \Disp3|Mux6~0_wirecell_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~33\ : std_logic;
SIGNAL \time_to_eref|Add1~34_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[17]~2_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~35\ : std_logic;
SIGNAL \time_to_eref|Add1~36_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[18]~3_combout\ : std_logic;
SIGNAL \time_to_eref|Equal0~5_combout\ : std_logic;
SIGNAL \time_to_eref|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~33\ : std_logic;
SIGNAL \time_to_eref|Add0~34_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~37\ : std_logic;
SIGNAL \time_to_eref|Add1~38_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[19]~4_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~35\ : std_logic;
SIGNAL \time_to_eref|Add0~37\ : std_logic;
SIGNAL \time_to_eref|Add0~38_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~36_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~39\ : std_logic;
SIGNAL \time_to_eref|Add1~40_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[20]~5_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~41\ : std_logic;
SIGNAL \time_to_eref|Add1~42_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[21]~6_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~39\ : std_logic;
SIGNAL \time_to_eref|Add0~40_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~43\ : std_logic;
SIGNAL \time_to_eref|Add1~44_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[22]~7_combout\ : std_logic;
SIGNAL \time_to_eref|Equal0~6_combout\ : std_logic;
SIGNAL \time_to_eref|Equal0~1_combout\ : std_logic;
SIGNAL \time_to_eref|Equal0~0_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~41\ : std_logic;
SIGNAL \time_to_eref|Add0~43\ : std_logic;
SIGNAL \time_to_eref|Add0~45\ : std_logic;
SIGNAL \time_to_eref|Add0~47\ : std_logic;
SIGNAL \time_to_eref|Add0~49\ : std_logic;
SIGNAL \time_to_eref|Add0~51\ : std_logic;
SIGNAL \time_to_eref|Add0~53\ : std_logic;
SIGNAL \time_to_eref|Add0~55\ : std_logic;
SIGNAL \time_to_eref|Add0~56_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~54_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~50_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~48_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~46_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~44_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~45\ : std_logic;
SIGNAL \time_to_eref|Add1~46_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~42_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[23]~8_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~47\ : std_logic;
SIGNAL \time_to_eref|Add1~48_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[24]~9_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~49\ : std_logic;
SIGNAL \time_to_eref|Add1~50_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[25]~10_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~51\ : std_logic;
SIGNAL \time_to_eref|Add1~52_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[26]~11_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~53\ : std_logic;
SIGNAL \time_to_eref|Add1~54_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[27]~12_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~55\ : std_logic;
SIGNAL \time_to_eref|Add1~56_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~52_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[28]~13_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~57\ : std_logic;
SIGNAL \time_to_eref|Add1~58_combout\ : std_logic;
SIGNAL \time_to_eref|s_counter[29]~14_combout\ : std_logic;
SIGNAL \time_to_eref|Add1~59\ : std_logic;
SIGNAL \time_to_eref|Add1~60_combout\ : std_logic;
SIGNAL \time_to_eref|Add0~63_combout\ : std_logic;
SIGNAL \time_to_eref|Equal0~3_combout\ : std_logic;
SIGNAL \time_to_eref|Equal0~2_combout\ : std_logic;
SIGNAL \time_to_eref|Equal0~4_combout\ : std_logic;
SIGNAL \time_to_eref|Equal0~7_combout\ : std_logic;
SIGNAL \time_to_eref|Equal0~8_combout\ : std_logic;
SIGNAL \time_to_eref|Equal0~9_combout\ : std_logic;
SIGNAL \time_to_eref|s_cntZero~0_combout\ : std_logic;
SIGNAL \time_to_eref|s_cntZero~q\ : std_logic;
SIGNAL \reg_to_eref|Selector2~0_combout\ : std_logic;
SIGNAL \reg_to_eref|PS.ThihiEspera~q\ : std_logic;
SIGNAL \reg_to_eref|Selector6~1_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector6~0_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector6~2_combout\ : std_logic;
SIGNAL \reg_to_eref|PS.TSpes~q\ : std_logic;
SIGNAL \reg_to_eref|Selector7~0_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector9~0_combout\ : std_logic;
SIGNAL \reg_to_eref|PS.TDoneTSpes~q\ : std_logic;
SIGNAL \reg_to_eref|Selector3~4_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector8~0_combout\ : std_logic;
SIGNAL \reg_to_eref|PS.TDoneTSoli~q\ : std_logic;
SIGNAL \reg_to_eref|Selector4~0_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector4~1_combout\ : std_logic;
SIGNAL \reg_to_eref|PS.TFan~q\ : std_logic;
SIGNAL \reg_to_eref|Selector7~1_combout\ : std_logic;
SIGNAL \reg_to_eref|PS.TDoneTFan~q\ : std_logic;
SIGNAL \reg_to_eref|Selector3~0_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector3~1_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector3~2_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector3~3_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector3~5_combout\ : std_logic;
SIGNAL \reg_to_eref|PS.TEref~q\ : std_logic;
SIGNAL \reg_to_eref|Selector5~0_combout\ : std_logic;
SIGNAL \reg_to_eref|Selector5~1_combout\ : std_logic;
SIGNAL \reg_to_eref|PS.TSoli~q\ : std_logic;
SIGNAL \reg_to_eref|WideOr20~0_combout\ : std_logic;
SIGNAL \reg_to_eref|WideOr11~0_combout\ : std_logic;
SIGNAL \clock6_entrada|Equal0~5_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~0_combout\ : std_logic;
SIGNAL \clock6_entrada|s_divCounter~10_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~1\ : std_logic;
SIGNAL \clock6_entrada|Add0~2_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~3\ : std_logic;
SIGNAL \clock6_entrada|Add0~4_combout\ : std_logic;
SIGNAL \clock6_entrada|s_divCounter~9_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~5\ : std_logic;
SIGNAL \clock6_entrada|Add0~6_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~7\ : std_logic;
SIGNAL \clock6_entrada|Add0~8_combout\ : std_logic;
SIGNAL \clock6_entrada|s_divCounter~8_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~9\ : std_logic;
SIGNAL \clock6_entrada|Add0~10_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~11\ : std_logic;
SIGNAL \clock6_entrada|Add0~12_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~13\ : std_logic;
SIGNAL \clock6_entrada|Add0~14_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~15\ : std_logic;
SIGNAL \clock6_entrada|Add0~16_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~17\ : std_logic;
SIGNAL \clock6_entrada|Add0~18_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~19\ : std_logic;
SIGNAL \clock6_entrada|Add0~20_combout\ : std_logic;
SIGNAL \clock6_entrada|Equal0~8_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~21\ : std_logic;
SIGNAL \clock6_entrada|Add0~22_combout\ : std_logic;
SIGNAL \clock6_entrada|s_divCounter~7_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~23\ : std_logic;
SIGNAL \clock6_entrada|Add0~24_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~25\ : std_logic;
SIGNAL \clock6_entrada|Add0~26_combout\ : std_logic;
SIGNAL \clock6_entrada|s_divCounter~6_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~27\ : std_logic;
SIGNAL \clock6_entrada|Add0~28_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~29\ : std_logic;
SIGNAL \clock6_entrada|Add0~30_combout\ : std_logic;
SIGNAL \clock6_entrada|Equal0~7_combout\ : std_logic;
SIGNAL \clock6_entrada|Equal0~9_combout\ : std_logic;
SIGNAL \clock6_entrada|Equal0~2_combout\ : std_logic;
SIGNAL \clock6_entrada|Equal0~3_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~31\ : std_logic;
SIGNAL \clock6_entrada|Add0~32_combout\ : std_logic;
SIGNAL \clock6_entrada|s_divCounter~5_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~33\ : std_logic;
SIGNAL \clock6_entrada|Add0~34_combout\ : std_logic;
SIGNAL \clock6_entrada|s_divCounter~4_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~35\ : std_logic;
SIGNAL \clock6_entrada|Add0~36_combout\ : std_logic;
SIGNAL \clock6_entrada|s_divCounter~3_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~37\ : std_logic;
SIGNAL \clock6_entrada|Add0~38_combout\ : std_logic;
SIGNAL \clock6_entrada|s_divCounter~2_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~39\ : std_logic;
SIGNAL \clock6_entrada|Add0~40_combout\ : std_logic;
SIGNAL \clock6_entrada|s_divCounter~1_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~41\ : std_logic;
SIGNAL \clock6_entrada|Add0~42_combout\ : std_logic;
SIGNAL \clock6_entrada|s_divCounter~0_combout\ : std_logic;
SIGNAL \clock6_entrada|Equal0~0_combout\ : std_logic;
SIGNAL \clock6_entrada|Equal0~1_combout\ : std_logic;
SIGNAL \clock6_entrada|Equal0~4_combout\ : std_logic;
SIGNAL \clock6_entrada|Equal0~10_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~43\ : std_logic;
SIGNAL \clock6_entrada|Add0~44_combout\ : std_logic;
SIGNAL \clock6_entrada|s_divCounter~11_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~45\ : std_logic;
SIGNAL \clock6_entrada|Add0~46_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~47\ : std_logic;
SIGNAL \clock6_entrada|Add0~48_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~49\ : std_logic;
SIGNAL \clock6_entrada|Add0~50_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~51\ : std_logic;
SIGNAL \clock6_entrada|Add0~52_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~53\ : std_logic;
SIGNAL \clock6_entrada|Add0~54_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~55\ : std_logic;
SIGNAL \clock6_entrada|Add0~56_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~57\ : std_logic;
SIGNAL \clock6_entrada|Add0~58_combout\ : std_logic;
SIGNAL \clock6_entrada|Add0~59\ : std_logic;
SIGNAL \clock6_entrada|Add0~60_combout\ : std_logic;
SIGNAL \clock6_entrada|Equal0~6_combout\ : std_logic;
SIGNAL \clock6_entrada|clkOut~1_combout\ : std_logic;
SIGNAL \clock6_entrada|clkOut~0_combout\ : std_logic;
SIGNAL \clock6_entrada|clkOut~2_combout\ : std_logic;
SIGNAL \clock6_entrada|clkOut~3_combout\ : std_logic;
SIGNAL \clock6_entrada|clkOut~q\ : std_logic;
SIGNAL \s_enable~combout\ : std_logic;
SIGNAL \reg_to_eref|WideOr0~combout\ : std_logic;
SIGNAL \reg_to_eref|WideOr2~0_combout\ : std_logic;
SIGNAL \reg_to_eref|WideOr1~0_combout\ : std_logic;
SIGNAL \Disp0|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \reg_to_eref|WideOr0~0_combout\ : std_logic;
SIGNAL \Disp0|decOut_n[1]~7_combout\ : std_logic;
SIGNAL \Disp0|decOut_n[2]~11_combout\ : std_logic;
SIGNAL \Disp0|decOut_n[3]~8_combout\ : std_logic;
SIGNAL \Disp0|decOut_n[4]~9_combout\ : std_logic;
SIGNAL \Disp0|decOut_n[6]~10_combout\ : std_logic;
SIGNAL \reg_to_eref|WideOr3~combout\ : std_logic;
SIGNAL \reg_to_eref|WideOr4~combout\ : std_logic;
SIGNAL \Disp1|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \Disp1|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \Disp1|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \Disp1|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \Disp1|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \Disp1|decOut_n[5]~5_combout\ : std_logic;
SIGNAL \Disp1|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \Disp2|decOut_n[3]~0_combout\ : std_logic;
SIGNAL \Disp2|decOut_n[0]~1_combout\ : std_logic;
SIGNAL \Disp2|decOut_n[1]~2_combout\ : std_logic;
SIGNAL \Disp2|decOut_n[2]~3_combout\ : std_logic;
SIGNAL \Disp2|decOut_n[3]~4_combout\ : std_logic;
SIGNAL \Disp2|decOut_n[4]~5_combout\ : std_logic;
SIGNAL \reg_to_eref|WideOr6~combout\ : std_logic;
SIGNAL \Disp2|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \Disp3|decOut_n[0]~10_combout\ : std_logic;
SIGNAL \Disp3|decOut_n[1]~11_combout\ : std_logic;
SIGNAL \Disp3|decOut_n[2]~14_combout\ : std_logic;
SIGNAL \Disp3|decOut_n[3]~15_combout\ : std_logic;
SIGNAL \Disp3|decOut_n[4]~12_combout\ : std_logic;
SIGNAL \Disp3|decOut_n[0]~16_combout\ : std_logic;
SIGNAL \Disp3|decOut_n[6]~13_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|PS~11_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|PS.Inicio~q\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Aumentar_Gelo|s_AumDim~q\ : std_logic;
SIGNAL \Aumentar_Gelo|s_previousIn~q\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~9\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~10_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~11\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~12_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~13\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~14_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~15\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~16_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~17\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~18_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~19\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~20_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~21\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~22_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~23\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~24_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~25\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~26_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~27\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~28_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~29\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~30_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~31\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~32_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~33\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~34_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~35\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~36_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~37\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~38_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~39\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~40_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt[13]~2_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt[13]~3_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~41\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~42_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|LessThan0~4_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|LessThan0~5_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|LessThan0~6_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|LessThan0~1_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|LessThan0~0_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|LessThan0~2_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|LessThan0~3_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|LessThan0~7_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt[13]~0_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~43\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~44_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt[13]~4_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~1\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~2_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~3\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~4_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~5\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~6_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~7\ : std_logic;
SIGNAL \Aumentar_Gelo|Add0~8_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \Aumentar_Gelo|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Diminuir_Gelo|s_AumDim~q\ : std_logic;
SIGNAL \Diminuir_Gelo|s_previousIn~q\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~0_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~5\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~6_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~7\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~8_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~9\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~10_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~11\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~12_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~13\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~14_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|LessThan0~6_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~15\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~16_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~17\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~18_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~19\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~20_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~21\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~22_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~23\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~24_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~25\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~26_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~27\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~28_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~29\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~30_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~31\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~32_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~33\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~34_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~35\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~36_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~37\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~38_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|LessThan0~4_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|LessThan0~5_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|LessThan0~1_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|LessThan0~2_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|LessThan0~3_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|LessThan0~7_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~39\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~40_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt[20]~2_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~41\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~43\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~44_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt[20]~3_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~42_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|LessThan0~0_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt[20]~0_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~1\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~2_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~3\ : std_logic;
SIGNAL \Diminuir_Gelo|Add0~4_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \Diminuir_Gelo|s_pulsedOut~q\ : std_logic;
SIGNAL \deb_to_SelBlocos|Selector5~2_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|Selector5~3_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|PS.T4cubos~q\ : std_logic;
SIGNAL \deb_to_SelBlocos|Selector4~2_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|Selector4~3_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|PS.T3cubos~q\ : std_logic;
SIGNAL \deb_to_SelBlocos|Selector2~0_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|Selector2~1_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|Selector2~2_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|PS.T2cubos~q\ : std_logic;
SIGNAL \deb_to_SelBlocos|Selector3~2_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|Selector3~3_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|PS.T1cubo~q\ : std_logic;
SIGNAL \deb_to_SelBlocos|PS~9_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|PS~10_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|PS.T0cubos~q\ : std_logic;
SIGNAL \deb_to_SelBlocos|WideOr9~combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|WideOr8~0_combout\ : std_logic;
SIGNAL \display_cubo2|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \display_cubo2|decOut_n[0]~1_combout\ : std_logic;
SIGNAL \display_cubo3|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \conect_reg|dataOut\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \time_to_eref|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \clock6_entrada|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \Diminuir_Gelo|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \Aumentar_Gelo|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \Disp3|ALT_INV_decOut_n[0]~16_combout\ : std_logic;
SIGNAL \Disp3|ALT_INV_decOut_n[2]~14_combout\ : std_logic;
SIGNAL \Disp0|ALT_INV_decOut_n[2]~11_combout\ : std_logic;
SIGNAL \display_cubo2|ALT_INV_decOut_n[0]~0_combout\ : std_logic;
SIGNAL \Disp2|ALT_INV_decOut_n[2]~3_combout\ : std_logic;
SIGNAL \deb_to_SelBlocos|ALT_INV_PS.T4cubos~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\Disp3|ALT_INV_decOut_n[0]~16_combout\ <= NOT \Disp3|decOut_n[0]~16_combout\;
\Disp3|ALT_INV_decOut_n[2]~14_combout\ <= NOT \Disp3|decOut_n[2]~14_combout\;
\Disp0|ALT_INV_decOut_n[2]~11_combout\ <= NOT \Disp0|decOut_n[2]~11_combout\;
\display_cubo2|ALT_INV_decOut_n[0]~0_combout\ <= NOT \display_cubo2|decOut_n[0]~0_combout\;
\Disp2|ALT_INV_decOut_n[2]~3_combout\ <= NOT \Disp2|decOut_n[2]~3_combout\;
\deb_to_SelBlocos|ALT_INV_PS.T4cubos~q\ <= NOT \deb_to_SelBlocos|PS.T4cubos~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_to_eref|WideOr20~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_to_eref|WideOr11~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp0|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp0|decOut_n[1]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp0|ALT_INV_decOut_n[2]~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp0|decOut_n[3]~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp0|decOut_n[4]~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp0|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp0|decOut_n[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp1|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp1|decOut_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp1|decOut_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp1|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp1|decOut_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp1|decOut_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp1|decOut_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp2|decOut_n[0]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp2|decOut_n[1]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp2|ALT_INV_decOut_n[2]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp2|decOut_n[3]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp2|decOut_n[4]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp2|decOut_n[0]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp2|decOut_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp3|decOut_n[0]~10_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp3|decOut_n[1]~11_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp3|ALT_INV_decOut_n[2]~14_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp3|decOut_n[3]~15_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp3|decOut_n[4]~12_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp3|ALT_INV_decOut_n[0]~16_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp3|decOut_n[6]~13_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|WideOr9~combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|WideOr9~combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|WideOr9~combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|WideOr9~combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|WideOr9~combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|WideOr9~combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

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

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_cubo2|decOut_n[0]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_cubo2|ALT_INV_decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_cubo2|ALT_INV_decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_cubo2|decOut_n[0]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_cubo2|decOut_n[0]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_cubo2|decOut_n[0]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

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

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_cubo3|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_cubo3|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_cubo3|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_cubo3|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

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

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|ALT_INV_PS.T4cubos~q\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|ALT_INV_PS.T4cubos~q\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|ALT_INV_PS.T4cubos~q\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|ALT_INV_PS.T4cubos~q\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|ALT_INV_PS.T4cubos~q\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deb_to_SelBlocos|ALT_INV_PS.T4cubos~q\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

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

-- Location: LCCOMB_X108_Y18_N18
\conect_reg|dataOut[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \conect_reg|dataOut[0]~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \conect_reg|dataOut[0]~feeder_combout\);

-- Location: FF_X108_Y18_N19
\conect_reg|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \conect_reg|dataOut[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_reg|dataOut\(0));

-- Location: LCCOMB_X109_Y18_N2
\reg_to_eref|PS.Thihi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|PS.Thihi~0_combout\ = !\conect_reg|dataOut\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conect_reg|dataOut\(0),
	combout => \reg_to_eref|PS.Thihi~0_combout\);

-- Location: FF_X109_Y18_N3
\reg_to_eref|PS.Thihi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg_to_eref|PS.Thihi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_to_eref|PS.Thihi~q\);

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

-- Location: LCCOMB_X108_Y18_N20
\conect_reg|dataOut[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \conect_reg|dataOut[4]~feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \conect_reg|dataOut[4]~feeder_combout\);

-- Location: FF_X108_Y18_N21
\conect_reg|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \conect_reg|dataOut[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_reg|dataOut\(4));

-- Location: LCCOMB_X109_Y18_N0
\Disp3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp3|Mux6~0_combout\ = (!\reg_to_eref|PS.TEref~q\ & \reg_to_eref|PS.Thihi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_to_eref|PS.TEref~q\,
	datad => \reg_to_eref|PS.Thihi~q\,
	combout => \Disp3|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y18_N28
\reg_to_eref|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector0~0_combout\ = (\reg_to_eref|PS.ThihiEspera~q\) # (((!\conect_reg|dataOut\(4) & \reg_to_eref|WideOr20~0_combout\)) # (!\Disp3|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.ThihiEspera~q\,
	datab => \conect_reg|dataOut\(4),
	datac => \Disp3|Mux6~0_combout\,
	datad => \reg_to_eref|WideOr20~0_combout\,
	combout => \reg_to_eref|Selector0~0_combout\);

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

-- Location: LCCOMB_X108_Y16_N6
\conect_reg|dataOut[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \conect_reg|dataOut[3]~feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \conect_reg|dataOut[3]~feeder_combout\);

-- Location: FF_X108_Y16_N7
\conect_reg|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \conect_reg|dataOut[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_reg|dataOut\(3));

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

-- Location: FF_X108_Y16_N29
\conect_reg|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_reg|dataOut\(2));

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

-- Location: LCCOMB_X108_Y16_N8
\conect_reg|dataOut[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \conect_reg|dataOut[1]~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \conect_reg|dataOut[1]~feeder_combout\);

-- Location: FF_X108_Y16_N9
\conect_reg|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \conect_reg|dataOut[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_reg|dataOut\(1));

-- Location: LCCOMB_X108_Y16_N0
\reg_to_eref|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector1~0_combout\ = (\reg_to_eref|PS.TEref~q\ & ((\conect_reg|dataOut\(3)) # ((\conect_reg|dataOut\(2)) # (\conect_reg|dataOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conect_reg|dataOut\(3),
	datab => \conect_reg|dataOut\(2),
	datac => \conect_reg|dataOut\(1),
	datad => \reg_to_eref|PS.TEref~q\,
	combout => \reg_to_eref|Selector1~0_combout\);

-- Location: LCCOMB_X108_Y18_N22
\reg_to_eref|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector1~1_combout\ = (\reg_to_eref|Selector1~0_combout\) # (!\reg_to_eref|PS.Thihi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_to_eref|PS.Thihi~q\,
	datad => \reg_to_eref|Selector1~0_combout\,
	combout => \reg_to_eref|Selector1~1_combout\);

-- Location: LCCOMB_X109_Y18_N4
\time_to_eref|Mult0|mult_core|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Mult0|mult_core|_~1_combout\ = (\reg_to_eref|PS.TEref~q\ & \reg_to_eref|PS.Thihi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_to_eref|PS.TEref~q\,
	datad => \reg_to_eref|PS.Thihi~q\,
	combout => \time_to_eref|Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X109_Y18_N6
\time_to_eref|Mult0|mult_core|romout[0][28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\ = \reg_to_eref|PS.TEref~q\ $ (\reg_to_eref|PS.Thihi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_to_eref|PS.TEref~q\,
	datad => \reg_to_eref|PS.Thihi~q\,
	combout => \time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\);

-- Location: LCCOMB_X109_Y18_N10
\time_to_eref|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~13_cout\ = CARRY(!\reg_to_eref|PS.Thihi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_to_eref|PS.Thihi~q\,
	datad => VCC,
	cout => \time_to_eref|Add0~13_cout\);

-- Location: LCCOMB_X109_Y18_N12
\time_to_eref|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~15_cout\ = CARRY((\reg_to_eref|PS.Thihi~q\ & !\time_to_eref|Add0~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg_to_eref|PS.Thihi~q\,
	datad => VCC,
	cin => \time_to_eref|Add0~13_cout\,
	cout => \time_to_eref|Add0~15_cout\);

-- Location: LCCOMB_X109_Y18_N14
\time_to_eref|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~16_combout\ = (\reg_to_eref|PS.TEref~q\ & ((GND) # (!\time_to_eref|Add0~15_cout\))) # (!\reg_to_eref|PS.TEref~q\ & (\time_to_eref|Add0~15_cout\ $ (GND)))
-- \time_to_eref|Add0~17\ = CARRY((\reg_to_eref|PS.TEref~q\) # (!\time_to_eref|Add0~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg_to_eref|PS.TEref~q\,
	datad => VCC,
	cin => \time_to_eref|Add0~15_cout\,
	combout => \time_to_eref|Add0~16_combout\,
	cout => \time_to_eref|Add0~17\);

-- Location: LCCOMB_X109_Y18_N16
\time_to_eref|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~18_combout\ = !\time_to_eref|Add0~17\
-- \time_to_eref|Add0~19\ = CARRY(!\time_to_eref|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \time_to_eref|Add0~17\,
	combout => \time_to_eref|Add0~18_combout\,
	cout => \time_to_eref|Add0~19\);

-- Location: LCCOMB_X109_Y18_N18
\time_to_eref|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~20_combout\ = \time_to_eref|Add0~19\ $ (GND)
-- \time_to_eref|Add0~21\ = CARRY(!\time_to_eref|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \time_to_eref|Add0~19\,
	combout => \time_to_eref|Add0~20_combout\,
	cout => \time_to_eref|Add0~21\);

-- Location: LCCOMB_X109_Y18_N20
\time_to_eref|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~22_combout\ = (\reg_to_eref|PS.Thihi~q\ & (!\time_to_eref|Add0~21\)) # (!\reg_to_eref|PS.Thihi~q\ & (\time_to_eref|Add0~21\ & VCC))
-- \time_to_eref|Add0~23\ = CARRY((\reg_to_eref|PS.Thihi~q\ & !\time_to_eref|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg_to_eref|PS.Thihi~q\,
	datad => VCC,
	cin => \time_to_eref|Add0~21\,
	combout => \time_to_eref|Add0~22_combout\,
	cout => \time_to_eref|Add0~23\);

-- Location: LCCOMB_X109_Y18_N22
\time_to_eref|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~24_combout\ = \time_to_eref|Add0~23\ $ (GND)
-- \time_to_eref|Add0~25\ = CARRY(!\time_to_eref|Add0~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \time_to_eref|Add0~23\,
	combout => \time_to_eref|Add0~24_combout\,
	cout => \time_to_eref|Add0~25\);

-- Location: LCCOMB_X109_Y18_N24
\time_to_eref|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~26_combout\ = (\time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\ & (!\time_to_eref|Add0~25\)) # (!\time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\ & (\time_to_eref|Add0~25\ & VCC))
-- \time_to_eref|Add0~27\ = CARRY((\time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\ & !\time_to_eref|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~25\,
	combout => \time_to_eref|Add0~26_combout\,
	cout => \time_to_eref|Add0~27\);

-- Location: LCCOMB_X109_Y18_N26
\time_to_eref|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~28_combout\ = (\Disp3|Mux6~0_combout\ & (\time_to_eref|Add0~27\ $ (GND))) # (!\Disp3|Mux6~0_combout\ & ((GND) # (!\time_to_eref|Add0~27\)))
-- \time_to_eref|Add0~29\ = CARRY((!\time_to_eref|Add0~27\) # (!\Disp3|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Disp3|Mux6~0_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~27\,
	combout => \time_to_eref|Add0~28_combout\,
	cout => \time_to_eref|Add0~29\);

-- Location: LCCOMB_X109_Y18_N28
\time_to_eref|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~30_combout\ = (\time_to_eref|Mult0|mult_core|_~1_combout\ & (\time_to_eref|Add0~29\ & VCC)) # (!\time_to_eref|Mult0|mult_core|_~1_combout\ & (!\time_to_eref|Add0~29\))
-- \time_to_eref|Add0~31\ = CARRY((!\time_to_eref|Mult0|mult_core|_~1_combout\ & !\time_to_eref|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_to_eref|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~29\,
	combout => \time_to_eref|Add0~30_combout\,
	cout => \time_to_eref|Add0~31\);

-- Location: LCCOMB_X109_Y18_N30
\time_to_eref|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~32_combout\ = (\time_to_eref|Mult0|mult_core|_~1_combout\ & ((GND) # (!\time_to_eref|Add0~31\))) # (!\time_to_eref|Mult0|mult_core|_~1_combout\ & (\time_to_eref|Add0~31\ $ (GND)))
-- \time_to_eref|Add0~33\ = CARRY((\time_to_eref|Mult0|mult_core|_~1_combout\) # (!\time_to_eref|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_to_eref|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~31\,
	combout => \time_to_eref|Add0~32_combout\,
	cout => \time_to_eref|Add0~33\);

-- Location: LCCOMB_X106_Y18_N2
\time_to_eref|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~0_combout\ = \time_to_eref|s_counter\(0) $ (VCC)
-- \time_to_eref|Add1~1\ = CARRY(\time_to_eref|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \time_to_eref|s_counter\(0),
	datad => VCC,
	combout => \time_to_eref|Add1~0_combout\,
	cout => \time_to_eref|Add1~1\);

-- Location: LCCOMB_X105_Y18_N6
\time_to_eref|s_counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter~15_combout\ = (!\conect_reg|dataOut\(0) & ((\time_to_eref|Add1~0_combout\) # ((\reg_to_eref|Selector1~0_combout\) # (!\reg_to_eref|PS.Thihi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Add1~0_combout\,
	datab => \reg_to_eref|PS.Thihi~q\,
	datac => \reg_to_eref|Selector1~0_combout\,
	datad => \conect_reg|dataOut\(0),
	combout => \time_to_eref|s_counter~15_combout\);

-- Location: LCCOMB_X108_Y18_N8
\time_to_eref|s_counter[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[6]~16_combout\ = (\conect_reg|dataOut\(0)) # ((\reg_to_eref|Selector0~0_combout\ & ((\reg_to_eref|Selector1~1_combout\) # (!\time_to_eref|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conect_reg|dataOut\(0),
	datab => \reg_to_eref|Selector0~0_combout\,
	datac => \reg_to_eref|Selector1~1_combout\,
	datad => \time_to_eref|Equal0~9_combout\,
	combout => \time_to_eref|s_counter[6]~16_combout\);

-- Location: FF_X105_Y18_N7
\time_to_eref|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter~15_combout\,
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(0));

-- Location: LCCOMB_X106_Y18_N4
\time_to_eref|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~2_combout\ = (\time_to_eref|s_counter\(1) & (\time_to_eref|Add1~1\ & VCC)) # (!\time_to_eref|s_counter\(1) & (!\time_to_eref|Add1~1\))
-- \time_to_eref|Add1~3\ = CARRY((!\time_to_eref|s_counter\(1) & !\time_to_eref|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_to_eref|s_counter\(1),
	datad => VCC,
	cin => \time_to_eref|Add1~1\,
	combout => \time_to_eref|Add1~2_combout\,
	cout => \time_to_eref|Add1~3\);

-- Location: LCCOMB_X106_Y18_N0
\time_to_eref|s_counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter~17_combout\ = (!\conect_reg|dataOut\(0) & ((\reg_to_eref|Selector1~0_combout\) # ((\time_to_eref|Add1~2_combout\) # (!\reg_to_eref|PS.Thihi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~0_combout\,
	datab => \reg_to_eref|PS.Thihi~q\,
	datac => \time_to_eref|Add1~2_combout\,
	datad => \conect_reg|dataOut\(0),
	combout => \time_to_eref|s_counter~17_combout\);

-- Location: FF_X106_Y18_N1
\time_to_eref|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter~17_combout\,
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(1));

-- Location: LCCOMB_X106_Y18_N6
\time_to_eref|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~4_combout\ = (\time_to_eref|s_counter\(2) & ((GND) # (!\time_to_eref|Add1~3\))) # (!\time_to_eref|s_counter\(2) & (\time_to_eref|Add1~3\ $ (GND)))
-- \time_to_eref|Add1~5\ = CARRY((\time_to_eref|s_counter\(2)) # (!\time_to_eref|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(2),
	datad => VCC,
	cin => \time_to_eref|Add1~3\,
	combout => \time_to_eref|Add1~4_combout\,
	cout => \time_to_eref|Add1~5\);

-- Location: LCCOMB_X105_Y18_N0
\time_to_eref|s_counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter~18_combout\ = (!\conect_reg|dataOut\(0) & ((\time_to_eref|Add1~4_combout\) # ((\reg_to_eref|Selector1~0_combout\) # (!\reg_to_eref|PS.Thihi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Add1~4_combout\,
	datab => \reg_to_eref|PS.Thihi~q\,
	datac => \reg_to_eref|Selector1~0_combout\,
	datad => \conect_reg|dataOut\(0),
	combout => \time_to_eref|s_counter~18_combout\);

-- Location: FF_X105_Y18_N1
\time_to_eref|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter~18_combout\,
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(2));

-- Location: LCCOMB_X106_Y18_N8
\time_to_eref|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~6_combout\ = (\time_to_eref|s_counter\(3) & (\time_to_eref|Add1~5\ & VCC)) # (!\time_to_eref|s_counter\(3) & (!\time_to_eref|Add1~5\))
-- \time_to_eref|Add1~7\ = CARRY((!\time_to_eref|s_counter\(3) & !\time_to_eref|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(3),
	datad => VCC,
	cin => \time_to_eref|Add1~5\,
	combout => \time_to_eref|Add1~6_combout\,
	cout => \time_to_eref|Add1~7\);

-- Location: LCCOMB_X105_Y18_N14
\time_to_eref|s_counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter~19_combout\ = (!\conect_reg|dataOut\(0) & ((\reg_to_eref|Selector1~0_combout\) # ((\time_to_eref|Add1~6_combout\) # (!\reg_to_eref|PS.Thihi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~0_combout\,
	datab => \time_to_eref|Add1~6_combout\,
	datac => \reg_to_eref|PS.Thihi~q\,
	datad => \conect_reg|dataOut\(0),
	combout => \time_to_eref|s_counter~19_combout\);

-- Location: FF_X105_Y18_N15
\time_to_eref|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter~19_combout\,
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(3));

-- Location: LCCOMB_X106_Y18_N10
\time_to_eref|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~8_combout\ = (\time_to_eref|s_counter\(4) & ((GND) # (!\time_to_eref|Add1~7\))) # (!\time_to_eref|s_counter\(4) & (\time_to_eref|Add1~7\ $ (GND)))
-- \time_to_eref|Add1~9\ = CARRY((\time_to_eref|s_counter\(4)) # (!\time_to_eref|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(4),
	datad => VCC,
	cin => \time_to_eref|Add1~7\,
	combout => \time_to_eref|Add1~8_combout\,
	cout => \time_to_eref|Add1~9\);

-- Location: LCCOMB_X105_Y18_N2
\time_to_eref|s_counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter~20_combout\ = (!\conect_reg|dataOut\(0) & ((\reg_to_eref|Selector1~0_combout\) # ((\time_to_eref|Add1~8_combout\) # (!\reg_to_eref|PS.Thihi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~0_combout\,
	datab => \time_to_eref|Add1~8_combout\,
	datac => \reg_to_eref|PS.Thihi~q\,
	datad => \conect_reg|dataOut\(0),
	combout => \time_to_eref|s_counter~20_combout\);

-- Location: FF_X105_Y18_N3
\time_to_eref|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter~20_combout\,
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(4));

-- Location: LCCOMB_X106_Y18_N12
\time_to_eref|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~10_combout\ = (\time_to_eref|s_counter\(5) & (\time_to_eref|Add1~9\ & VCC)) # (!\time_to_eref|s_counter\(5) & (!\time_to_eref|Add1~9\))
-- \time_to_eref|Add1~11\ = CARRY((!\time_to_eref|s_counter\(5) & !\time_to_eref|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(5),
	datad => VCC,
	cin => \time_to_eref|Add1~9\,
	combout => \time_to_eref|Add1~10_combout\,
	cout => \time_to_eref|Add1~11\);

-- Location: LCCOMB_X107_Y18_N30
\time_to_eref|s_counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter~21_combout\ = (!\conect_reg|dataOut\(0) & ((\time_to_eref|Add1~10_combout\) # ((\reg_to_eref|Selector1~0_combout\) # (!\reg_to_eref|PS.Thihi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Add1~10_combout\,
	datab => \conect_reg|dataOut\(0),
	datac => \reg_to_eref|Selector1~0_combout\,
	datad => \reg_to_eref|PS.Thihi~q\,
	combout => \time_to_eref|s_counter~21_combout\);

-- Location: FF_X107_Y18_N31
\time_to_eref|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter~21_combout\,
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(5));

-- Location: LCCOMB_X106_Y18_N14
\time_to_eref|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~12_combout\ = (\time_to_eref|s_counter\(6) & ((GND) # (!\time_to_eref|Add1~11\))) # (!\time_to_eref|s_counter\(6) & (\time_to_eref|Add1~11\ $ (GND)))
-- \time_to_eref|Add1~13\ = CARRY((\time_to_eref|s_counter\(6)) # (!\time_to_eref|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(6),
	datad => VCC,
	cin => \time_to_eref|Add1~11\,
	combout => \time_to_eref|Add1~12_combout\,
	cout => \time_to_eref|Add1~13\);

-- Location: LCCOMB_X105_Y18_N12
\time_to_eref|s_counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter~22_combout\ = (!\conect_reg|dataOut\(0) & ((\reg_to_eref|Selector1~0_combout\) # ((\time_to_eref|Add1~12_combout\) # (!\reg_to_eref|PS.Thihi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~0_combout\,
	datab => \time_to_eref|Add1~12_combout\,
	datac => \reg_to_eref|PS.Thihi~q\,
	datad => \conect_reg|dataOut\(0),
	combout => \time_to_eref|s_counter~22_combout\);

-- Location: FF_X105_Y18_N13
\time_to_eref|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter~22_combout\,
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(6));

-- Location: LCCOMB_X106_Y18_N16
\time_to_eref|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~14_combout\ = (\time_to_eref|s_counter\(7) & (\time_to_eref|Add1~13\ & VCC)) # (!\time_to_eref|s_counter\(7) & (!\time_to_eref|Add1~13\))
-- \time_to_eref|Add1~15\ = CARRY((!\time_to_eref|s_counter\(7) & !\time_to_eref|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(7),
	datad => VCC,
	cin => \time_to_eref|Add1~13\,
	combout => \time_to_eref|Add1~14_combout\,
	cout => \time_to_eref|Add1~15\);

-- Location: LCCOMB_X107_Y18_N20
\time_to_eref|s_counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter~23_combout\ = (!\conect_reg|dataOut\(0) & (((\time_to_eref|Add1~14_combout\) # (\reg_to_eref|Selector1~0_combout\)) # (!\reg_to_eref|PS.Thihi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.Thihi~q\,
	datab => \conect_reg|dataOut\(0),
	datac => \time_to_eref|Add1~14_combout\,
	datad => \reg_to_eref|Selector1~0_combout\,
	combout => \time_to_eref|s_counter~23_combout\);

-- Location: FF_X107_Y18_N21
\time_to_eref|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter~23_combout\,
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(7));

-- Location: LCCOMB_X106_Y18_N18
\time_to_eref|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~16_combout\ = (\time_to_eref|s_counter\(8) & ((GND) # (!\time_to_eref|Add1~15\))) # (!\time_to_eref|s_counter\(8) & (\time_to_eref|Add1~15\ $ (GND)))
-- \time_to_eref|Add1~17\ = CARRY((\time_to_eref|s_counter\(8)) # (!\time_to_eref|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_to_eref|s_counter\(8),
	datad => VCC,
	cin => \time_to_eref|Add1~15\,
	combout => \time_to_eref|Add1~16_combout\,
	cout => \time_to_eref|Add1~17\);

-- Location: LCCOMB_X107_Y18_N24
\time_to_eref|s_counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter~24_combout\ = (\reg_to_eref|PS.Thihi~q\ & ((\reg_to_eref|Selector1~0_combout\) # (\time_to_eref|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.Thihi~q\,
	datab => \reg_to_eref|Selector1~0_combout\,
	datad => \time_to_eref|Add1~16_combout\,
	combout => \time_to_eref|s_counter~24_combout\);

-- Location: LCCOMB_X107_Y18_N14
\reg_to_eref|PS.Thihi~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|PS.Thihi~_wirecell_combout\ = !\reg_to_eref|PS.Thihi~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_to_eref|PS.Thihi~q\,
	combout => \reg_to_eref|PS.Thihi~_wirecell_combout\);

-- Location: FF_X107_Y18_N25
\time_to_eref|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter~24_combout\,
	asdata => \reg_to_eref|PS.Thihi~_wirecell_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(8));

-- Location: LCCOMB_X106_Y18_N20
\time_to_eref|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~18_combout\ = (\time_to_eref|s_counter\(9) & (\time_to_eref|Add1~17\ & VCC)) # (!\time_to_eref|s_counter\(9) & (!\time_to_eref|Add1~17\))
-- \time_to_eref|Add1~19\ = CARRY((!\time_to_eref|s_counter\(9) & !\time_to_eref|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(9),
	datad => VCC,
	cin => \time_to_eref|Add1~17\,
	combout => \time_to_eref|Add1~18_combout\,
	cout => \time_to_eref|Add1~19\);

-- Location: LCCOMB_X107_Y17_N28
\time_to_eref|s_counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter~25_combout\ = (\reg_to_eref|Selector0~0_combout\ & ((\reg_to_eref|Selector1~1_combout\) # ((\time_to_eref|Add1~18_combout\ & !\time_to_eref|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~1_combout\,
	datab => \reg_to_eref|Selector0~0_combout\,
	datac => \time_to_eref|Add1~18_combout\,
	datad => \time_to_eref|Equal0~9_combout\,
	combout => \time_to_eref|s_counter~25_combout\);

-- Location: LCCOMB_X107_Y17_N0
\time_to_eref|s_counter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter~26_combout\ = (\time_to_eref|s_counter~25_combout\) # ((!\reg_to_eref|Selector0~0_combout\ & \time_to_eref|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_to_eref|Selector0~0_combout\,
	datac => \time_to_eref|s_counter\(9),
	datad => \time_to_eref|s_counter~25_combout\,
	combout => \time_to_eref|s_counter~26_combout\);

-- Location: FF_X107_Y17_N1
\time_to_eref|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter~26_combout\,
	asdata => \reg_to_eref|PS.Thihi~_wirecell_combout\,
	sload => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(9));

-- Location: LCCOMB_X106_Y18_N22
\time_to_eref|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~20_combout\ = (\time_to_eref|s_counter\(10) & ((GND) # (!\time_to_eref|Add1~19\))) # (!\time_to_eref|s_counter\(10) & (\time_to_eref|Add1~19\ $ (GND)))
-- \time_to_eref|Add1~21\ = CARRY((\time_to_eref|s_counter\(10)) # (!\time_to_eref|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_to_eref|s_counter\(10),
	datad => VCC,
	cin => \time_to_eref|Add1~19\,
	combout => \time_to_eref|Add1~20_combout\,
	cout => \time_to_eref|Add1~21\);

-- Location: LCCOMB_X107_Y18_N18
\time_to_eref|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~58_combout\ = (\reg_to_eref|PS.Thihi~q\ & ((\reg_to_eref|Selector1~0_combout\ & (\time_to_eref|Add0~16_combout\)) # (!\reg_to_eref|Selector1~0_combout\ & ((\time_to_eref|Add1~20_combout\))))) # (!\reg_to_eref|PS.Thihi~q\ & 
-- (\time_to_eref|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.Thihi~q\,
	datab => \time_to_eref|Add0~16_combout\,
	datac => \reg_to_eref|Selector1~0_combout\,
	datad => \time_to_eref|Add1~20_combout\,
	combout => \time_to_eref|Add0~58_combout\);

-- Location: LCCOMB_X107_Y18_N10
\time_to_eref|s_counter[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[10]~feeder_combout\ = \time_to_eref|Add0~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \time_to_eref|Add0~58_combout\,
	combout => \time_to_eref|s_counter[10]~feeder_combout\);

-- Location: FF_X107_Y18_N11
\time_to_eref|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[10]~feeder_combout\,
	asdata => \reg_to_eref|PS.TEref~q\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(10));

-- Location: LCCOMB_X106_Y18_N24
\time_to_eref|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~22_combout\ = (\time_to_eref|s_counter\(11) & (\time_to_eref|Add1~21\ & VCC)) # (!\time_to_eref|s_counter\(11) & (!\time_to_eref|Add1~21\))
-- \time_to_eref|Add1~23\ = CARRY((!\time_to_eref|s_counter\(11) & !\time_to_eref|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(11),
	datad => VCC,
	cin => \time_to_eref|Add1~21\,
	combout => \time_to_eref|Add1~22_combout\,
	cout => \time_to_eref|Add1~23\);

-- Location: LCCOMB_X110_Y18_N22
\time_to_eref|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~59_combout\ = (\reg_to_eref|PS.Thihi~q\ & ((\reg_to_eref|Selector1~0_combout\ & (\time_to_eref|Add0~18_combout\)) # (!\reg_to_eref|Selector1~0_combout\ & ((\time_to_eref|Add1~22_combout\))))) # (!\reg_to_eref|PS.Thihi~q\ & 
-- (((\time_to_eref|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.Thihi~q\,
	datab => \reg_to_eref|Selector1~0_combout\,
	datac => \time_to_eref|Add0~18_combout\,
	datad => \time_to_eref|Add1~22_combout\,
	combout => \time_to_eref|Add0~59_combout\);

-- Location: FF_X110_Y18_N23
\time_to_eref|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|Add0~59_combout\,
	sclr => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(11));

-- Location: LCCOMB_X106_Y18_N26
\time_to_eref|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~24_combout\ = (\time_to_eref|s_counter\(12) & ((GND) # (!\time_to_eref|Add1~23\))) # (!\time_to_eref|s_counter\(12) & (\time_to_eref|Add1~23\ $ (GND)))
-- \time_to_eref|Add1~25\ = CARRY((\time_to_eref|s_counter\(12)) # (!\time_to_eref|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(12),
	datad => VCC,
	cin => \time_to_eref|Add1~23\,
	combout => \time_to_eref|Add1~24_combout\,
	cout => \time_to_eref|Add1~25\);

-- Location: LCCOMB_X105_Y18_N16
\time_to_eref|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~60_combout\ = (\reg_to_eref|PS.Thihi~q\ & ((\reg_to_eref|Selector1~0_combout\ & (\time_to_eref|Add0~20_combout\)) # (!\reg_to_eref|Selector1~0_combout\ & ((\time_to_eref|Add1~24_combout\))))) # (!\reg_to_eref|PS.Thihi~q\ & 
-- (\time_to_eref|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.Thihi~q\,
	datab => \time_to_eref|Add0~20_combout\,
	datac => \reg_to_eref|Selector1~0_combout\,
	datad => \time_to_eref|Add1~24_combout\,
	combout => \time_to_eref|Add0~60_combout\);

-- Location: FF_X105_Y18_N17
\time_to_eref|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|Add0~60_combout\,
	sclr => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(12));

-- Location: LCCOMB_X106_Y18_N28
\time_to_eref|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~26_combout\ = (\time_to_eref|s_counter\(13) & (\time_to_eref|Add1~25\ & VCC)) # (!\time_to_eref|s_counter\(13) & (!\time_to_eref|Add1~25\))
-- \time_to_eref|Add1~27\ = CARRY((!\time_to_eref|s_counter\(13) & !\time_to_eref|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_to_eref|s_counter\(13),
	datad => VCC,
	cin => \time_to_eref|Add1~25\,
	combout => \time_to_eref|Add1~26_combout\,
	cout => \time_to_eref|Add1~27\);

-- Location: LCCOMB_X107_Y18_N12
\time_to_eref|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~61_combout\ = (\reg_to_eref|Selector1~0_combout\ & (((\time_to_eref|Add0~22_combout\)))) # (!\reg_to_eref|Selector1~0_combout\ & ((\reg_to_eref|PS.Thihi~q\ & (\time_to_eref|Add1~26_combout\)) # (!\reg_to_eref|PS.Thihi~q\ & 
-- ((\time_to_eref|Add0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Add1~26_combout\,
	datab => \time_to_eref|Add0~22_combout\,
	datac => \reg_to_eref|Selector1~0_combout\,
	datad => \reg_to_eref|PS.Thihi~q\,
	combout => \time_to_eref|Add0~61_combout\);

-- Location: LCCOMB_X107_Y18_N8
\time_to_eref|s_counter[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[13]~feeder_combout\ = \time_to_eref|Add0~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \time_to_eref|Add0~61_combout\,
	combout => \time_to_eref|s_counter[13]~feeder_combout\);

-- Location: FF_X107_Y18_N9
\time_to_eref|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[13]~feeder_combout\,
	asdata => \reg_to_eref|PS.Thihi~_wirecell_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(13));

-- Location: LCCOMB_X106_Y18_N30
\time_to_eref|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~28_combout\ = (\time_to_eref|s_counter\(14) & ((GND) # (!\time_to_eref|Add1~27\))) # (!\time_to_eref|s_counter\(14) & (\time_to_eref|Add1~27\ $ (GND)))
-- \time_to_eref|Add1~29\ = CARRY((\time_to_eref|s_counter\(14)) # (!\time_to_eref|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(14),
	datad => VCC,
	cin => \time_to_eref|Add1~27\,
	combout => \time_to_eref|Add1~28_combout\,
	cout => \time_to_eref|Add1~29\);

-- Location: LCCOMB_X105_Y18_N10
\time_to_eref|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~62_combout\ = (\reg_to_eref|Selector1~0_combout\ & (((\time_to_eref|Add0~24_combout\)))) # (!\reg_to_eref|Selector1~0_combout\ & ((\reg_to_eref|PS.Thihi~q\ & (\time_to_eref|Add1~28_combout\)) # (!\reg_to_eref|PS.Thihi~q\ & 
-- ((\time_to_eref|Add0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~0_combout\,
	datab => \reg_to_eref|PS.Thihi~q\,
	datac => \time_to_eref|Add1~28_combout\,
	datad => \time_to_eref|Add0~24_combout\,
	combout => \time_to_eref|Add0~62_combout\);

-- Location: FF_X105_Y18_N11
\time_to_eref|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|Add0~62_combout\,
	sclr => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(14));

-- Location: LCCOMB_X106_Y17_N0
\time_to_eref|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~30_combout\ = (\time_to_eref|s_counter\(15) & (\time_to_eref|Add1~29\ & VCC)) # (!\time_to_eref|s_counter\(15) & (!\time_to_eref|Add1~29\))
-- \time_to_eref|Add1~31\ = CARRY((!\time_to_eref|s_counter\(15) & !\time_to_eref|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(15),
	datad => VCC,
	cin => \time_to_eref|Add1~29\,
	combout => \time_to_eref|Add1~30_combout\,
	cout => \time_to_eref|Add1~31\);

-- Location: LCCOMB_X107_Y17_N30
\time_to_eref|s_counter[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[15]~0_combout\ = (\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add0~26_combout\))) # (!\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Add1~30_combout\,
	datab => \time_to_eref|Add0~26_combout\,
	datad => \reg_to_eref|Selector1~1_combout\,
	combout => \time_to_eref|s_counter[15]~0_combout\);

-- Location: LCCOMB_X108_Y17_N20
\time_to_eref|Mult0|mult_core|romout[0][28]~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Mult0|mult_core|romout[0][28]~0_wirecell_combout\ = !\time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\,
	combout => \time_to_eref|Mult0|mult_core|romout[0][28]~0_wirecell_combout\);

-- Location: FF_X107_Y17_N31
\time_to_eref|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[15]~0_combout\,
	asdata => \time_to_eref|Mult0|mult_core|romout[0][28]~0_wirecell_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(15));

-- Location: LCCOMB_X106_Y17_N2
\time_to_eref|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~32_combout\ = (\time_to_eref|s_counter\(16) & ((GND) # (!\time_to_eref|Add1~31\))) # (!\time_to_eref|s_counter\(16) & (\time_to_eref|Add1~31\ $ (GND)))
-- \time_to_eref|Add1~33\ = CARRY((\time_to_eref|s_counter\(16)) # (!\time_to_eref|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_to_eref|s_counter\(16),
	datad => VCC,
	cin => \time_to_eref|Add1~31\,
	combout => \time_to_eref|Add1~32_combout\,
	cout => \time_to_eref|Add1~33\);

-- Location: LCCOMB_X107_Y17_N16
\time_to_eref|s_counter[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[16]~1_combout\ = (\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add0~28_combout\)) # (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~1_combout\,
	datab => \time_to_eref|Add0~28_combout\,
	datad => \time_to_eref|Add1~32_combout\,
	combout => \time_to_eref|s_counter[16]~1_combout\);

-- Location: LCCOMB_X108_Y17_N30
\Disp3|Mux6~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp3|Mux6~0_wirecell_combout\ = !\Disp3|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Disp3|Mux6~0_combout\,
	combout => \Disp3|Mux6~0_wirecell_combout\);

-- Location: FF_X107_Y17_N17
\time_to_eref|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[16]~1_combout\,
	asdata => \Disp3|Mux6~0_wirecell_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(16));

-- Location: LCCOMB_X106_Y17_N4
\time_to_eref|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~34_combout\ = (\time_to_eref|s_counter\(17) & (\time_to_eref|Add1~33\ & VCC)) # (!\time_to_eref|s_counter\(17) & (!\time_to_eref|Add1~33\))
-- \time_to_eref|Add1~35\ = CARRY((!\time_to_eref|s_counter\(17) & !\time_to_eref|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(17),
	datad => VCC,
	cin => \time_to_eref|Add1~33\,
	combout => \time_to_eref|Add1~34_combout\,
	cout => \time_to_eref|Add1~35\);

-- Location: LCCOMB_X107_Y17_N2
\time_to_eref|s_counter[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[17]~2_combout\ = (\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add0~30_combout\)) # (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~1_combout\,
	datab => \time_to_eref|Add0~30_combout\,
	datad => \time_to_eref|Add1~34_combout\,
	combout => \time_to_eref|s_counter[17]~2_combout\);

-- Location: FF_X107_Y17_N3
\time_to_eref|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[17]~2_combout\,
	asdata => \time_to_eref|Mult0|mult_core|_~1_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(17));

-- Location: LCCOMB_X106_Y17_N6
\time_to_eref|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~36_combout\ = (\time_to_eref|s_counter\(18) & ((GND) # (!\time_to_eref|Add1~35\))) # (!\time_to_eref|s_counter\(18) & (\time_to_eref|Add1~35\ $ (GND)))
-- \time_to_eref|Add1~37\ = CARRY((\time_to_eref|s_counter\(18)) # (!\time_to_eref|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_to_eref|s_counter\(18),
	datad => VCC,
	cin => \time_to_eref|Add1~35\,
	combout => \time_to_eref|Add1~36_combout\,
	cout => \time_to_eref|Add1~37\);

-- Location: LCCOMB_X107_Y17_N12
\time_to_eref|s_counter[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[18]~3_combout\ = (\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add0~32_combout\)) # (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Add0~32_combout\,
	datab => \time_to_eref|Add1~36_combout\,
	datad => \reg_to_eref|Selector1~1_combout\,
	combout => \time_to_eref|s_counter[18]~3_combout\);

-- Location: FF_X107_Y17_N13
\time_to_eref|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[18]~3_combout\,
	asdata => \time_to_eref|Mult0|mult_core|_~1_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(18));

-- Location: LCCOMB_X107_Y17_N24
\time_to_eref|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Equal0~5_combout\ = (!\time_to_eref|s_counter\(18) & (!\time_to_eref|s_counter\(17) & (!\time_to_eref|s_counter\(15) & !\time_to_eref|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(18),
	datab => \time_to_eref|s_counter\(17),
	datac => \time_to_eref|s_counter\(15),
	datad => \time_to_eref|s_counter\(16),
	combout => \time_to_eref|Equal0~5_combout\);

-- Location: LCCOMB_X109_Y17_N26
\time_to_eref|Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Mult0|mult_core|_~0_combout\ = (\reg_to_eref|PS.TEref~q\ & !\reg_to_eref|PS.Thihi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_to_eref|PS.TEref~q\,
	datad => \reg_to_eref|PS.Thihi~q\,
	combout => \time_to_eref|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X109_Y17_N0
\time_to_eref|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~34_combout\ = (\time_to_eref|Mult0|mult_core|_~0_combout\ & (\time_to_eref|Add0~33\ & VCC)) # (!\time_to_eref|Mult0|mult_core|_~0_combout\ & (!\time_to_eref|Add0~33\))
-- \time_to_eref|Add0~35\ = CARRY((!\time_to_eref|Mult0|mult_core|_~0_combout\ & !\time_to_eref|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~33\,
	combout => \time_to_eref|Add0~34_combout\,
	cout => \time_to_eref|Add0~35\);

-- Location: LCCOMB_X106_Y17_N8
\time_to_eref|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~38_combout\ = (\time_to_eref|s_counter\(19) & (\time_to_eref|Add1~37\ & VCC)) # (!\time_to_eref|s_counter\(19) & (!\time_to_eref|Add1~37\))
-- \time_to_eref|Add1~39\ = CARRY((!\time_to_eref|s_counter\(19) & !\time_to_eref|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(19),
	datad => VCC,
	cin => \time_to_eref|Add1~37\,
	combout => \time_to_eref|Add1~38_combout\,
	cout => \time_to_eref|Add1~39\);

-- Location: LCCOMB_X109_Y17_N24
\time_to_eref|s_counter[19]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[19]~4_combout\ = (\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add0~34_combout\)) # (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~1_combout\,
	datab => \time_to_eref|Add0~34_combout\,
	datad => \time_to_eref|Add1~38_combout\,
	combout => \time_to_eref|s_counter[19]~4_combout\);

-- Location: FF_X109_Y17_N25
\time_to_eref|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[19]~4_combout\,
	asdata => \time_to_eref|Mult0|mult_core|_~0_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(19));

-- Location: LCCOMB_X109_Y17_N2
\time_to_eref|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~36_combout\ = (\reg_to_eref|PS.TEref~q\ & ((GND) # (!\time_to_eref|Add0~35\))) # (!\reg_to_eref|PS.TEref~q\ & (\time_to_eref|Add0~35\ $ (GND)))
-- \time_to_eref|Add0~37\ = CARRY((\reg_to_eref|PS.TEref~q\) # (!\time_to_eref|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TEref~q\,
	datad => VCC,
	cin => \time_to_eref|Add0~35\,
	combout => \time_to_eref|Add0~36_combout\,
	cout => \time_to_eref|Add0~37\);

-- Location: LCCOMB_X109_Y17_N4
\time_to_eref|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~38_combout\ = (\reg_to_eref|PS.Thihi~q\ & (!\time_to_eref|Add0~37\)) # (!\reg_to_eref|PS.Thihi~q\ & (\time_to_eref|Add0~37\ & VCC))
-- \time_to_eref|Add0~39\ = CARRY((\reg_to_eref|PS.Thihi~q\ & !\time_to_eref|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg_to_eref|PS.Thihi~q\,
	datad => VCC,
	cin => \time_to_eref|Add0~37\,
	combout => \time_to_eref|Add0~38_combout\,
	cout => \time_to_eref|Add0~39\);

-- Location: LCCOMB_X106_Y17_N10
\time_to_eref|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~40_combout\ = (\time_to_eref|s_counter\(20) & ((GND) # (!\time_to_eref|Add1~39\))) # (!\time_to_eref|s_counter\(20) & (\time_to_eref|Add1~39\ $ (GND)))
-- \time_to_eref|Add1~41\ = CARRY((\time_to_eref|s_counter\(20)) # (!\time_to_eref|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_to_eref|s_counter\(20),
	datad => VCC,
	cin => \time_to_eref|Add1~39\,
	combout => \time_to_eref|Add1~40_combout\,
	cout => \time_to_eref|Add1~41\);

-- Location: LCCOMB_X107_Y17_N22
\time_to_eref|s_counter[20]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[20]~5_combout\ = (\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add0~36_combout\)) # (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~1_combout\,
	datab => \time_to_eref|Add0~36_combout\,
	datad => \time_to_eref|Add1~40_combout\,
	combout => \time_to_eref|s_counter[20]~5_combout\);

-- Location: FF_X107_Y17_N23
\time_to_eref|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[20]~5_combout\,
	asdata => \reg_to_eref|PS.TEref~q\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(20));

-- Location: LCCOMB_X106_Y17_N12
\time_to_eref|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~42_combout\ = (\time_to_eref|s_counter\(21) & (\time_to_eref|Add1~41\ & VCC)) # (!\time_to_eref|s_counter\(21) & (!\time_to_eref|Add1~41\))
-- \time_to_eref|Add1~43\ = CARRY((!\time_to_eref|s_counter\(21) & !\time_to_eref|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_to_eref|s_counter\(21),
	datad => VCC,
	cin => \time_to_eref|Add1~41\,
	combout => \time_to_eref|Add1~42_combout\,
	cout => \time_to_eref|Add1~43\);

-- Location: LCCOMB_X107_Y18_N26
\time_to_eref|s_counter[21]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[21]~6_combout\ = (\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add0~38_combout\)) # (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Add0~38_combout\,
	datab => \time_to_eref|Add1~42_combout\,
	datad => \reg_to_eref|Selector1~1_combout\,
	combout => \time_to_eref|s_counter[21]~6_combout\);

-- Location: FF_X107_Y18_N27
\time_to_eref|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[21]~6_combout\,
	asdata => \reg_to_eref|PS.Thihi~_wirecell_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(21));

-- Location: LCCOMB_X109_Y17_N6
\time_to_eref|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~40_combout\ = (\time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\ & (\time_to_eref|Add0~39\ $ (GND))) # (!\time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\ & ((GND) # (!\time_to_eref|Add0~39\)))
-- \time_to_eref|Add0~41\ = CARRY((!\time_to_eref|Add0~39\) # (!\time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~39\,
	combout => \time_to_eref|Add0~40_combout\,
	cout => \time_to_eref|Add0~41\);

-- Location: LCCOMB_X106_Y17_N14
\time_to_eref|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~44_combout\ = (\time_to_eref|s_counter\(22) & ((GND) # (!\time_to_eref|Add1~43\))) # (!\time_to_eref|s_counter\(22) & (\time_to_eref|Add1~43\ $ (GND)))
-- \time_to_eref|Add1~45\ = CARRY((\time_to_eref|s_counter\(22)) # (!\time_to_eref|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(22),
	datad => VCC,
	cin => \time_to_eref|Add1~43\,
	combout => \time_to_eref|Add1~44_combout\,
	cout => \time_to_eref|Add1~45\);

-- Location: LCCOMB_X107_Y17_N20
\time_to_eref|s_counter[22]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[22]~7_combout\ = (\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add0~40_combout\)) # (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~1_combout\,
	datab => \time_to_eref|Add0~40_combout\,
	datad => \time_to_eref|Add1~44_combout\,
	combout => \time_to_eref|s_counter[22]~7_combout\);

-- Location: FF_X107_Y17_N21
\time_to_eref|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[22]~7_combout\,
	asdata => \time_to_eref|Mult0|mult_core|romout[0][28]~0_wirecell_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(22));

-- Location: LCCOMB_X105_Y18_N18
\time_to_eref|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Equal0~6_combout\ = (!\time_to_eref|s_counter\(19) & (!\time_to_eref|s_counter\(21) & (!\time_to_eref|s_counter\(20) & !\time_to_eref|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(19),
	datab => \time_to_eref|s_counter\(21),
	datac => \time_to_eref|s_counter\(20),
	datad => \time_to_eref|s_counter\(22),
	combout => \time_to_eref|Equal0~6_combout\);

-- Location: LCCOMB_X105_Y18_N22
\time_to_eref|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Equal0~1_combout\ = (!\time_to_eref|s_counter\(6) & (!\time_to_eref|s_counter\(4) & (!\time_to_eref|s_counter\(5) & !\time_to_eref|s_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(6),
	datab => \time_to_eref|s_counter\(4),
	datac => \time_to_eref|s_counter\(5),
	datad => \time_to_eref|s_counter\(7),
	combout => \time_to_eref|Equal0~1_combout\);

-- Location: LCCOMB_X105_Y18_N8
\time_to_eref|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Equal0~0_combout\ = (!\time_to_eref|s_counter\(0) & (!\time_to_eref|s_counter\(3) & (!\time_to_eref|s_counter\(1) & !\time_to_eref|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(0),
	datab => \time_to_eref|s_counter\(3),
	datac => \time_to_eref|s_counter\(1),
	datad => \time_to_eref|s_counter\(2),
	combout => \time_to_eref|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y17_N8
\time_to_eref|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~42_combout\ = (\Disp3|Mux6~0_combout\ & (!\time_to_eref|Add0~41\)) # (!\Disp3|Mux6~0_combout\ & (\time_to_eref|Add0~41\ & VCC))
-- \time_to_eref|Add0~43\ = CARRY((\Disp3|Mux6~0_combout\ & !\time_to_eref|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Disp3|Mux6~0_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~41\,
	combout => \time_to_eref|Add0~42_combout\,
	cout => \time_to_eref|Add0~43\);

-- Location: LCCOMB_X109_Y17_N10
\time_to_eref|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~44_combout\ = (\Disp3|Mux6~0_combout\ & (\time_to_eref|Add0~43\ $ (GND))) # (!\Disp3|Mux6~0_combout\ & ((GND) # (!\time_to_eref|Add0~43\)))
-- \time_to_eref|Add0~45\ = CARRY((!\time_to_eref|Add0~43\) # (!\Disp3|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Disp3|Mux6~0_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~43\,
	combout => \time_to_eref|Add0~44_combout\,
	cout => \time_to_eref|Add0~45\);

-- Location: LCCOMB_X109_Y17_N12
\time_to_eref|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~46_combout\ = (\time_to_eref|Mult0|mult_core|_~1_combout\ & (\time_to_eref|Add0~45\ & VCC)) # (!\time_to_eref|Mult0|mult_core|_~1_combout\ & (!\time_to_eref|Add0~45\))
-- \time_to_eref|Add0~47\ = CARRY((!\time_to_eref|Mult0|mult_core|_~1_combout\ & !\time_to_eref|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~45\,
	combout => \time_to_eref|Add0~46_combout\,
	cout => \time_to_eref|Add0~47\);

-- Location: LCCOMB_X109_Y17_N14
\time_to_eref|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~48_combout\ = (\time_to_eref|Mult0|mult_core|_~1_combout\ & ((GND) # (!\time_to_eref|Add0~47\))) # (!\time_to_eref|Mult0|mult_core|_~1_combout\ & (\time_to_eref|Add0~47\ $ (GND)))
-- \time_to_eref|Add0~49\ = CARRY((\time_to_eref|Mult0|mult_core|_~1_combout\) # (!\time_to_eref|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~47\,
	combout => \time_to_eref|Add0~48_combout\,
	cout => \time_to_eref|Add0~49\);

-- Location: LCCOMB_X109_Y17_N16
\time_to_eref|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~50_combout\ = (\time_to_eref|Mult0|mult_core|_~0_combout\ & (\time_to_eref|Add0~49\ & VCC)) # (!\time_to_eref|Mult0|mult_core|_~0_combout\ & (!\time_to_eref|Add0~49\))
-- \time_to_eref|Add0~51\ = CARRY((!\time_to_eref|Mult0|mult_core|_~0_combout\ & !\time_to_eref|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~49\,
	combout => \time_to_eref|Add0~50_combout\,
	cout => \time_to_eref|Add0~51\);

-- Location: LCCOMB_X109_Y17_N18
\time_to_eref|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~52_combout\ = (\time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\ & (\time_to_eref|Add0~51\ $ (GND))) # (!\time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\ & ((GND) # (!\time_to_eref|Add0~51\)))
-- \time_to_eref|Add0~53\ = CARRY((!\time_to_eref|Add0~51\) # (!\time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Mult0|mult_core|romout[0][28]~0_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~51\,
	combout => \time_to_eref|Add0~52_combout\,
	cout => \time_to_eref|Add0~53\);

-- Location: LCCOMB_X109_Y17_N20
\time_to_eref|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~54_combout\ = (\time_to_eref|Mult0|mult_core|_~0_combout\ & (\time_to_eref|Add0~53\ & VCC)) # (!\time_to_eref|Mult0|mult_core|_~0_combout\ & (!\time_to_eref|Add0~53\))
-- \time_to_eref|Add0~55\ = CARRY((!\time_to_eref|Mult0|mult_core|_~0_combout\ & !\time_to_eref|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \time_to_eref|Add0~53\,
	combout => \time_to_eref|Add0~54_combout\,
	cout => \time_to_eref|Add0~55\);

-- Location: LCCOMB_X109_Y17_N22
\time_to_eref|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~56_combout\ = \time_to_eref|Add0~55\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \time_to_eref|Add0~55\,
	combout => \time_to_eref|Add0~56_combout\);

-- Location: LCCOMB_X106_Y17_N16
\time_to_eref|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~46_combout\ = (\time_to_eref|s_counter\(23) & (\time_to_eref|Add1~45\ & VCC)) # (!\time_to_eref|s_counter\(23) & (!\time_to_eref|Add1~45\))
-- \time_to_eref|Add1~47\ = CARRY((!\time_to_eref|s_counter\(23) & !\time_to_eref|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(23),
	datad => VCC,
	cin => \time_to_eref|Add1~45\,
	combout => \time_to_eref|Add1~46_combout\,
	cout => \time_to_eref|Add1~47\);

-- Location: LCCOMB_X107_Y17_N10
\time_to_eref|s_counter[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[23]~8_combout\ = (\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add0~42_combout\))) # (!\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Add1~46_combout\,
	datab => \time_to_eref|Add0~42_combout\,
	datad => \reg_to_eref|Selector1~1_combout\,
	combout => \time_to_eref|s_counter[23]~8_combout\);

-- Location: FF_X107_Y17_N11
\time_to_eref|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[23]~8_combout\,
	asdata => \Disp3|Mux6~0_wirecell_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(23));

-- Location: LCCOMB_X106_Y17_N18
\time_to_eref|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~48_combout\ = (\time_to_eref|s_counter\(24) & ((GND) # (!\time_to_eref|Add1~47\))) # (!\time_to_eref|s_counter\(24) & (\time_to_eref|Add1~47\ $ (GND)))
-- \time_to_eref|Add1~49\ = CARRY((\time_to_eref|s_counter\(24)) # (!\time_to_eref|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(24),
	datad => VCC,
	cin => \time_to_eref|Add1~47\,
	combout => \time_to_eref|Add1~48_combout\,
	cout => \time_to_eref|Add1~49\);

-- Location: LCCOMB_X107_Y17_N8
\time_to_eref|s_counter[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[24]~9_combout\ = (\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add0~44_combout\)) # (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~1_combout\,
	datab => \time_to_eref|Add0~44_combout\,
	datad => \time_to_eref|Add1~48_combout\,
	combout => \time_to_eref|s_counter[24]~9_combout\);

-- Location: FF_X107_Y17_N9
\time_to_eref|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[24]~9_combout\,
	asdata => \Disp3|Mux6~0_wirecell_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(24));

-- Location: LCCOMB_X106_Y17_N20
\time_to_eref|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~50_combout\ = (\time_to_eref|s_counter\(25) & (\time_to_eref|Add1~49\ & VCC)) # (!\time_to_eref|s_counter\(25) & (!\time_to_eref|Add1~49\))
-- \time_to_eref|Add1~51\ = CARRY((!\time_to_eref|s_counter\(25) & !\time_to_eref|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(25),
	datad => VCC,
	cin => \time_to_eref|Add1~49\,
	combout => \time_to_eref|Add1~50_combout\,
	cout => \time_to_eref|Add1~51\);

-- Location: LCCOMB_X107_Y17_N18
\time_to_eref|s_counter[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[25]~10_combout\ = (\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add0~46_combout\)) # (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~1_combout\,
	datab => \time_to_eref|Add0~46_combout\,
	datad => \time_to_eref|Add1~50_combout\,
	combout => \time_to_eref|s_counter[25]~10_combout\);

-- Location: FF_X107_Y17_N19
\time_to_eref|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[25]~10_combout\,
	asdata => \time_to_eref|Mult0|mult_core|_~1_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(25));

-- Location: LCCOMB_X106_Y17_N22
\time_to_eref|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~52_combout\ = (\time_to_eref|s_counter\(26) & ((GND) # (!\time_to_eref|Add1~51\))) # (!\time_to_eref|s_counter\(26) & (\time_to_eref|Add1~51\ $ (GND)))
-- \time_to_eref|Add1~53\ = CARRY((\time_to_eref|s_counter\(26)) # (!\time_to_eref|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(26),
	datad => VCC,
	cin => \time_to_eref|Add1~51\,
	combout => \time_to_eref|Add1~52_combout\,
	cout => \time_to_eref|Add1~53\);

-- Location: LCCOMB_X107_Y17_N4
\time_to_eref|s_counter[26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[26]~11_combout\ = (\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add0~48_combout\)) # (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~1_combout\,
	datab => \time_to_eref|Add0~48_combout\,
	datad => \time_to_eref|Add1~52_combout\,
	combout => \time_to_eref|s_counter[26]~11_combout\);

-- Location: FF_X107_Y17_N5
\time_to_eref|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[26]~11_combout\,
	asdata => \time_to_eref|Mult0|mult_core|_~1_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(26));

-- Location: LCCOMB_X106_Y17_N24
\time_to_eref|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~54_combout\ = (\time_to_eref|s_counter\(27) & (\time_to_eref|Add1~53\ & VCC)) # (!\time_to_eref|s_counter\(27) & (!\time_to_eref|Add1~53\))
-- \time_to_eref|Add1~55\ = CARRY((!\time_to_eref|s_counter\(27) & !\time_to_eref|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(27),
	datad => VCC,
	cin => \time_to_eref|Add1~53\,
	combout => \time_to_eref|Add1~54_combout\,
	cout => \time_to_eref|Add1~55\);

-- Location: LCCOMB_X109_Y17_N30
\time_to_eref|s_counter[27]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[27]~12_combout\ = (\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add0~50_combout\)) # (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~1_combout\,
	datab => \time_to_eref|Add0~50_combout\,
	datad => \time_to_eref|Add1~54_combout\,
	combout => \time_to_eref|s_counter[27]~12_combout\);

-- Location: FF_X109_Y17_N31
\time_to_eref|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[27]~12_combout\,
	asdata => \time_to_eref|Mult0|mult_core|_~0_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(27));

-- Location: LCCOMB_X106_Y17_N26
\time_to_eref|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~56_combout\ = (\time_to_eref|s_counter\(28) & ((GND) # (!\time_to_eref|Add1~55\))) # (!\time_to_eref|s_counter\(28) & (\time_to_eref|Add1~55\ $ (GND)))
-- \time_to_eref|Add1~57\ = CARRY((\time_to_eref|s_counter\(28)) # (!\time_to_eref|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_to_eref|s_counter\(28),
	datad => VCC,
	cin => \time_to_eref|Add1~55\,
	combout => \time_to_eref|Add1~56_combout\,
	cout => \time_to_eref|Add1~57\);

-- Location: LCCOMB_X107_Y17_N26
\time_to_eref|s_counter[28]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[28]~13_combout\ = (\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add0~52_combout\))) # (!\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add1~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Add1~56_combout\,
	datab => \time_to_eref|Add0~52_combout\,
	datad => \reg_to_eref|Selector1~1_combout\,
	combout => \time_to_eref|s_counter[28]~13_combout\);

-- Location: FF_X107_Y17_N27
\time_to_eref|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[28]~13_combout\,
	asdata => \time_to_eref|Mult0|mult_core|romout[0][28]~0_wirecell_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(28));

-- Location: LCCOMB_X106_Y17_N28
\time_to_eref|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~58_combout\ = (\time_to_eref|s_counter\(29) & (\time_to_eref|Add1~57\ & VCC)) # (!\time_to_eref|s_counter\(29) & (!\time_to_eref|Add1~57\))
-- \time_to_eref|Add1~59\ = CARRY((!\time_to_eref|s_counter\(29) & !\time_to_eref|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(29),
	datad => VCC,
	cin => \time_to_eref|Add1~57\,
	combout => \time_to_eref|Add1~58_combout\,
	cout => \time_to_eref|Add1~59\);

-- Location: LCCOMB_X109_Y17_N28
\time_to_eref|s_counter[29]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_counter[29]~14_combout\ = (\reg_to_eref|Selector1~1_combout\ & (\time_to_eref|Add0~54_combout\)) # (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~1_combout\,
	datab => \time_to_eref|Add0~54_combout\,
	datad => \time_to_eref|Add1~58_combout\,
	combout => \time_to_eref|s_counter[29]~14_combout\);

-- Location: FF_X109_Y17_N29
\time_to_eref|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_counter[29]~14_combout\,
	asdata => \time_to_eref|Mult0|mult_core|_~0_combout\,
	sload => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(29));

-- Location: LCCOMB_X106_Y17_N30
\time_to_eref|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add1~60_combout\ = \time_to_eref|s_counter\(30) $ (\time_to_eref|Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(30),
	cin => \time_to_eref|Add1~59\,
	combout => \time_to_eref|Add1~60_combout\);

-- Location: LCCOMB_X105_Y18_N24
\time_to_eref|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Add0~63_combout\ = (\reg_to_eref|Selector1~0_combout\ & (((\time_to_eref|Add0~56_combout\)))) # (!\reg_to_eref|Selector1~0_combout\ & ((\reg_to_eref|PS.Thihi~q\ & ((\time_to_eref|Add1~60_combout\))) # (!\reg_to_eref|PS.Thihi~q\ & 
-- (\time_to_eref|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector1~0_combout\,
	datab => \reg_to_eref|PS.Thihi~q\,
	datac => \time_to_eref|Add0~56_combout\,
	datad => \time_to_eref|Add1~60_combout\,
	combout => \time_to_eref|Add0~63_combout\);

-- Location: FF_X105_Y18_N25
\time_to_eref|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|Add0~63_combout\,
	sclr => \conect_reg|dataOut\(0),
	ena => \time_to_eref|s_counter[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_counter\(30));

-- Location: LCCOMB_X105_Y18_N26
\time_to_eref|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Equal0~3_combout\ = (!\time_to_eref|s_counter\(14) & (!\time_to_eref|s_counter\(30) & (!\time_to_eref|s_counter\(13) & !\time_to_eref|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(14),
	datab => \time_to_eref|s_counter\(30),
	datac => \time_to_eref|s_counter\(13),
	datad => \time_to_eref|s_counter\(12),
	combout => \time_to_eref|Equal0~3_combout\);

-- Location: LCCOMB_X105_Y18_N20
\time_to_eref|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Equal0~2_combout\ = (!\time_to_eref|s_counter\(10) & (!\time_to_eref|s_counter\(11) & (!\time_to_eref|s_counter\(8) & !\time_to_eref|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(10),
	datab => \time_to_eref|s_counter\(11),
	datac => \time_to_eref|s_counter\(8),
	datad => \time_to_eref|s_counter\(9),
	combout => \time_to_eref|Equal0~2_combout\);

-- Location: LCCOMB_X105_Y18_N4
\time_to_eref|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Equal0~4_combout\ = (\time_to_eref|Equal0~1_combout\ & (\time_to_eref|Equal0~0_combout\ & (\time_to_eref|Equal0~3_combout\ & \time_to_eref|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Equal0~1_combout\,
	datab => \time_to_eref|Equal0~0_combout\,
	datac => \time_to_eref|Equal0~3_combout\,
	datad => \time_to_eref|Equal0~2_combout\,
	combout => \time_to_eref|Equal0~4_combout\);

-- Location: LCCOMB_X107_Y17_N14
\time_to_eref|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Equal0~7_combout\ = (!\time_to_eref|s_counter\(23) & (!\time_to_eref|s_counter\(26) & (!\time_to_eref|s_counter\(24) & !\time_to_eref|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(23),
	datab => \time_to_eref|s_counter\(26),
	datac => \time_to_eref|s_counter\(24),
	datad => \time_to_eref|s_counter\(25),
	combout => \time_to_eref|Equal0~7_combout\);

-- Location: LCCOMB_X105_Y18_N28
\time_to_eref|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Equal0~8_combout\ = (!\time_to_eref|s_counter\(29) & (!\time_to_eref|s_counter\(28) & (!\time_to_eref|s_counter\(27) & \time_to_eref|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_counter\(29),
	datab => \time_to_eref|s_counter\(28),
	datac => \time_to_eref|s_counter\(27),
	datad => \time_to_eref|Equal0~7_combout\,
	combout => \time_to_eref|Equal0~8_combout\);

-- Location: LCCOMB_X105_Y18_N30
\time_to_eref|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|Equal0~9_combout\ = (\time_to_eref|Equal0~5_combout\ & (\time_to_eref|Equal0~6_combout\ & (\time_to_eref|Equal0~4_combout\ & \time_to_eref|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|Equal0~5_combout\,
	datab => \time_to_eref|Equal0~6_combout\,
	datac => \time_to_eref|Equal0~4_combout\,
	datad => \time_to_eref|Equal0~8_combout\,
	combout => \time_to_eref|Equal0~9_combout\);

-- Location: LCCOMB_X108_Y17_N4
\time_to_eref|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_to_eref|s_cntZero~0_combout\ = (\reg_to_eref|Selector0~0_combout\ & (!\reg_to_eref|Selector1~1_combout\ & ((\time_to_eref|Equal0~9_combout\)))) # (!\reg_to_eref|Selector0~0_combout\ & (((\time_to_eref|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector0~0_combout\,
	datab => \reg_to_eref|Selector1~1_combout\,
	datac => \time_to_eref|s_cntZero~q\,
	datad => \time_to_eref|Equal0~9_combout\,
	combout => \time_to_eref|s_cntZero~0_combout\);

-- Location: FF_X108_Y17_N5
\time_to_eref|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_to_eref|s_cntZero~0_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_to_eref|s_cntZero~q\);

-- Location: LCCOMB_X110_Y18_N4
\reg_to_eref|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector2~0_combout\ = ((\reg_to_eref|PS.ThihiEspera~q\ & !\time_to_eref|s_cntZero~q\)) # (!\reg_to_eref|PS.Thihi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.Thihi~q\,
	datac => \reg_to_eref|PS.ThihiEspera~q\,
	datad => \time_to_eref|s_cntZero~q\,
	combout => \reg_to_eref|Selector2~0_combout\);

-- Location: FF_X110_Y18_N5
\reg_to_eref|PS.ThihiEspera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg_to_eref|Selector2~0_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_to_eref|PS.ThihiEspera~q\);

-- Location: LCCOMB_X109_Y16_N18
\reg_to_eref|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector6~1_combout\ = (!\conect_reg|dataOut\(1) & (\reg_to_eref|PS.TEref~q\ & !\conect_reg|dataOut\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conect_reg|dataOut\(1),
	datac => \reg_to_eref|PS.TEref~q\,
	datad => \conect_reg|dataOut\(2),
	combout => \reg_to_eref|Selector6~1_combout\);

-- Location: LCCOMB_X109_Y16_N20
\reg_to_eref|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector6~0_combout\ = (\reg_to_eref|PS.TSpes~q\ & ((\conect_reg|dataOut\(4)) # ((!\time_to_eref|s_cntZero~q\ & \conect_reg|dataOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_cntZero~q\,
	datab => \conect_reg|dataOut\(3),
	datac => \conect_reg|dataOut\(4),
	datad => \reg_to_eref|PS.TSpes~q\,
	combout => \reg_to_eref|Selector6~0_combout\);

-- Location: LCCOMB_X109_Y16_N0
\reg_to_eref|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector6~2_combout\ = (\reg_to_eref|Selector6~0_combout\) # ((\conect_reg|dataOut\(3) & \reg_to_eref|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_to_eref|Selector6~0_combout\,
	datac => \conect_reg|dataOut\(3),
	datad => \reg_to_eref|Selector6~1_combout\,
	combout => \reg_to_eref|Selector6~2_combout\);

-- Location: FF_X109_Y16_N1
\reg_to_eref|PS.TSpes\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg_to_eref|Selector6~2_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_to_eref|PS.TSpes~q\);

-- Location: LCCOMB_X109_Y16_N28
\reg_to_eref|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector7~0_combout\ = (\time_to_eref|s_cntZero~q\ & !\conect_reg|dataOut\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_cntZero~q\,
	datac => \conect_reg|dataOut\(4),
	combout => \reg_to_eref|Selector7~0_combout\);

-- Location: LCCOMB_X109_Y16_N10
\reg_to_eref|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector9~0_combout\ = (\reg_to_eref|PS.TSpes~q\ & ((\reg_to_eref|Selector7~0_combout\) # ((\conect_reg|dataOut\(3) & \reg_to_eref|PS.TDoneTSpes~q\)))) # (!\reg_to_eref|PS.TSpes~q\ & (\conect_reg|dataOut\(3) & 
-- (\reg_to_eref|PS.TDoneTSpes~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TSpes~q\,
	datab => \conect_reg|dataOut\(3),
	datac => \reg_to_eref|PS.TDoneTSpes~q\,
	datad => \reg_to_eref|Selector7~0_combout\,
	combout => \reg_to_eref|Selector9~0_combout\);

-- Location: FF_X109_Y16_N11
\reg_to_eref|PS.TDoneTSpes\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg_to_eref|Selector9~0_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_to_eref|PS.TDoneTSpes~q\);

-- Location: LCCOMB_X109_Y16_N26
\reg_to_eref|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector3~4_combout\ = (!\conect_reg|dataOut\(3) & ((\reg_to_eref|Selector6~1_combout\) # (\reg_to_eref|PS.TDoneTSpes~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_to_eref|Selector6~1_combout\,
	datac => \conect_reg|dataOut\(3),
	datad => \reg_to_eref|PS.TDoneTSpes~q\,
	combout => \reg_to_eref|Selector3~4_combout\);

-- Location: LCCOMB_X109_Y16_N16
\reg_to_eref|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector8~0_combout\ = (\reg_to_eref|PS.TSoli~q\ & ((\reg_to_eref|Selector7~0_combout\) # ((\conect_reg|dataOut\(2) & \reg_to_eref|PS.TDoneTSoli~q\)))) # (!\reg_to_eref|PS.TSoli~q\ & (\conect_reg|dataOut\(2) & 
-- (\reg_to_eref|PS.TDoneTSoli~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TSoli~q\,
	datab => \conect_reg|dataOut\(2),
	datac => \reg_to_eref|PS.TDoneTSoli~q\,
	datad => \reg_to_eref|Selector7~0_combout\,
	combout => \reg_to_eref|Selector8~0_combout\);

-- Location: FF_X109_Y16_N17
\reg_to_eref|PS.TDoneTSoli\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg_to_eref|Selector8~0_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_to_eref|PS.TDoneTSoli~q\);

-- Location: LCCOMB_X108_Y16_N2
\reg_to_eref|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector4~0_combout\ = (\conect_reg|dataOut\(1) & ((\reg_to_eref|PS.TEref~q\) # ((!\time_to_eref|s_cntZero~q\ & \reg_to_eref|PS.TFan~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_cntZero~q\,
	datab => \conect_reg|dataOut\(1),
	datac => \reg_to_eref|PS.TFan~q\,
	datad => \reg_to_eref|PS.TEref~q\,
	combout => \reg_to_eref|Selector4~0_combout\);

-- Location: LCCOMB_X109_Y16_N12
\reg_to_eref|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector4~1_combout\ = (\reg_to_eref|Selector4~0_combout\) # ((\conect_reg|dataOut\(4) & \reg_to_eref|PS.TFan~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conect_reg|dataOut\(4),
	datac => \reg_to_eref|PS.TFan~q\,
	datad => \reg_to_eref|Selector4~0_combout\,
	combout => \reg_to_eref|Selector4~1_combout\);

-- Location: FF_X109_Y16_N13
\reg_to_eref|PS.TFan\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg_to_eref|Selector4~1_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_to_eref|PS.TFan~q\);

-- Location: LCCOMB_X109_Y16_N2
\reg_to_eref|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector7~1_combout\ = (\conect_reg|dataOut\(1) & ((\reg_to_eref|PS.TDoneTFan~q\) # ((\reg_to_eref|Selector7~0_combout\ & \reg_to_eref|PS.TFan~q\)))) # (!\conect_reg|dataOut\(1) & (\reg_to_eref|Selector7~0_combout\ & 
-- ((\reg_to_eref|PS.TFan~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conect_reg|dataOut\(1),
	datab => \reg_to_eref|Selector7~0_combout\,
	datac => \reg_to_eref|PS.TDoneTFan~q\,
	datad => \reg_to_eref|PS.TFan~q\,
	combout => \reg_to_eref|Selector7~1_combout\);

-- Location: FF_X109_Y16_N3
\reg_to_eref|PS.TDoneTFan\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg_to_eref|Selector7~1_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_to_eref|PS.TDoneTFan~q\);

-- Location: LCCOMB_X109_Y16_N22
\reg_to_eref|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector3~0_combout\ = (\conect_reg|dataOut\(1) & (\reg_to_eref|PS.TDoneTSoli~q\ & ((!\conect_reg|dataOut\(2))))) # (!\conect_reg|dataOut\(1) & ((\reg_to_eref|PS.TDoneTFan~q\) # ((\reg_to_eref|PS.TDoneTSoli~q\ & !\conect_reg|dataOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conect_reg|dataOut\(1),
	datab => \reg_to_eref|PS.TDoneTSoli~q\,
	datac => \reg_to_eref|PS.TDoneTFan~q\,
	datad => \conect_reg|dataOut\(2),
	combout => \reg_to_eref|Selector3~0_combout\);

-- Location: LCCOMB_X108_Y16_N16
\reg_to_eref|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector3~1_combout\ = (\reg_to_eref|PS.TSoli~q\ & (((!\conect_reg|dataOut\(1) & \reg_to_eref|PS.TFan~q\)) # (!\conect_reg|dataOut\(2)))) # (!\reg_to_eref|PS.TSoli~q\ & (!\conect_reg|dataOut\(1) & (\reg_to_eref|PS.TFan~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TSoli~q\,
	datab => \conect_reg|dataOut\(1),
	datac => \reg_to_eref|PS.TFan~q\,
	datad => \conect_reg|dataOut\(2),
	combout => \reg_to_eref|Selector3~1_combout\);

-- Location: LCCOMB_X108_Y16_N14
\reg_to_eref|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector3~2_combout\ = (\reg_to_eref|Selector3~1_combout\) # ((!\conect_reg|dataOut\(3) & \reg_to_eref|PS.TSpes~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conect_reg|dataOut\(3),
	datac => \reg_to_eref|PS.TSpes~q\,
	datad => \reg_to_eref|Selector3~1_combout\,
	combout => \reg_to_eref|Selector3~2_combout\);

-- Location: LCCOMB_X109_Y16_N8
\reg_to_eref|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector3~3_combout\ = (\reg_to_eref|Selector3~0_combout\) # ((!\conect_reg|dataOut\(4) & (!\time_to_eref|s_cntZero~q\ & \reg_to_eref|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|Selector3~0_combout\,
	datab => \conect_reg|dataOut\(4),
	datac => \time_to_eref|s_cntZero~q\,
	datad => \reg_to_eref|Selector3~2_combout\,
	combout => \reg_to_eref|Selector3~3_combout\);

-- Location: LCCOMB_X109_Y18_N8
\reg_to_eref|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector3~5_combout\ = (\reg_to_eref|Selector3~4_combout\) # ((\reg_to_eref|Selector3~3_combout\) # ((\reg_to_eref|PS.ThihiEspera~q\ & \time_to_eref|s_cntZero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.ThihiEspera~q\,
	datab => \reg_to_eref|Selector3~4_combout\,
	datac => \time_to_eref|s_cntZero~q\,
	datad => \reg_to_eref|Selector3~3_combout\,
	combout => \reg_to_eref|Selector3~5_combout\);

-- Location: FF_X109_Y18_N9
\reg_to_eref|PS.TEref\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg_to_eref|Selector3~5_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_to_eref|PS.TEref~q\);

-- Location: LCCOMB_X109_Y16_N14
\reg_to_eref|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector5~0_combout\ = (\reg_to_eref|PS.TSoli~q\ & ((\conect_reg|dataOut\(4)) # ((!\time_to_eref|s_cntZero~q\ & \conect_reg|dataOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_to_eref|s_cntZero~q\,
	datab => \conect_reg|dataOut\(2),
	datac => \conect_reg|dataOut\(4),
	datad => \reg_to_eref|PS.TSoli~q\,
	combout => \reg_to_eref|Selector5~0_combout\);

-- Location: LCCOMB_X109_Y16_N6
\reg_to_eref|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|Selector5~1_combout\ = (\reg_to_eref|Selector5~0_combout\) # ((\reg_to_eref|PS.TEref~q\ & (\conect_reg|dataOut\(2) & !\conect_reg|dataOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TEref~q\,
	datab => \conect_reg|dataOut\(2),
	datac => \reg_to_eref|Selector5~0_combout\,
	datad => \conect_reg|dataOut\(1),
	combout => \reg_to_eref|Selector5~1_combout\);

-- Location: FF_X109_Y16_N7
\reg_to_eref|PS.TSoli\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg_to_eref|Selector5~1_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_to_eref|PS.TSoli~q\);

-- Location: LCCOMB_X109_Y16_N4
\reg_to_eref|WideOr20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|WideOr20~0_combout\ = (\reg_to_eref|PS.TSoli~q\) # ((\reg_to_eref|PS.TSpes~q\) # (\reg_to_eref|PS.TFan~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TSoli~q\,
	datab => \reg_to_eref|PS.TSpes~q\,
	datad => \reg_to_eref|PS.TFan~q\,
	combout => \reg_to_eref|WideOr20~0_combout\);

-- Location: LCCOMB_X109_Y16_N30
\reg_to_eref|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|WideOr11~0_combout\ = (\reg_to_eref|PS.TDoneTSpes~q\) # ((\reg_to_eref|PS.TDoneTFan~q\) # (\reg_to_eref|PS.TDoneTSoli~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TDoneTSpes~q\,
	datab => \reg_to_eref|PS.TDoneTFan~q\,
	datad => \reg_to_eref|PS.TDoneTSoli~q\,
	combout => \reg_to_eref|WideOr11~0_combout\);

-- Location: LCCOMB_X92_Y6_N2
\clock6_entrada|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Equal0~5_combout\ = (!\clock6_entrada|s_divCounter\(28) & (!\clock6_entrada|s_divCounter\(27) & (!\clock6_entrada|s_divCounter\(29) & !\clock6_entrada|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(28),
	datab => \clock6_entrada|s_divCounter\(27),
	datac => \clock6_entrada|s_divCounter\(29),
	datad => \clock6_entrada|s_divCounter\(26),
	combout => \clock6_entrada|Equal0~5_combout\);

-- Location: LCCOMB_X91_Y7_N2
\clock6_entrada|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~0_combout\ = \clock6_entrada|s_divCounter\(0) $ (VCC)
-- \clock6_entrada|Add0~1\ = CARRY(\clock6_entrada|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(0),
	datad => VCC,
	combout => \clock6_entrada|Add0~0_combout\,
	cout => \clock6_entrada|Add0~1\);

-- Location: LCCOMB_X92_Y7_N14
\clock6_entrada|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|s_divCounter~10_combout\ = (\clock6_entrada|Add0~0_combout\ & !\clock6_entrada|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock6_entrada|Add0~0_combout\,
	datad => \clock6_entrada|Equal0~10_combout\,
	combout => \clock6_entrada|s_divCounter~10_combout\);

-- Location: FF_X91_Y7_N11
\clock6_entrada|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clock6_entrada|s_divCounter~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(0));

-- Location: LCCOMB_X91_Y7_N4
\clock6_entrada|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~2_combout\ = (\clock6_entrada|s_divCounter\(1) & (!\clock6_entrada|Add0~1\)) # (!\clock6_entrada|s_divCounter\(1) & ((\clock6_entrada|Add0~1\) # (GND)))
-- \clock6_entrada|Add0~3\ = CARRY((!\clock6_entrada|Add0~1\) # (!\clock6_entrada|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(1),
	datad => VCC,
	cin => \clock6_entrada|Add0~1\,
	combout => \clock6_entrada|Add0~2_combout\,
	cout => \clock6_entrada|Add0~3\);

-- Location: FF_X91_Y7_N5
\clock6_entrada|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(1));

-- Location: LCCOMB_X91_Y7_N6
\clock6_entrada|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~4_combout\ = (\clock6_entrada|s_divCounter\(2) & (\clock6_entrada|Add0~3\ $ (GND))) # (!\clock6_entrada|s_divCounter\(2) & (!\clock6_entrada|Add0~3\ & VCC))
-- \clock6_entrada|Add0~5\ = CARRY((\clock6_entrada|s_divCounter\(2) & !\clock6_entrada|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(2),
	datad => VCC,
	cin => \clock6_entrada|Add0~3\,
	combout => \clock6_entrada|Add0~4_combout\,
	cout => \clock6_entrada|Add0~5\);

-- Location: LCCOMB_X91_Y7_N0
\clock6_entrada|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|s_divCounter~9_combout\ = (!\clock6_entrada|Equal0~10_combout\ & \clock6_entrada|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock6_entrada|Equal0~10_combout\,
	datad => \clock6_entrada|Add0~4_combout\,
	combout => \clock6_entrada|s_divCounter~9_combout\);

-- Location: FF_X91_Y7_N1
\clock6_entrada|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(2));

-- Location: LCCOMB_X91_Y7_N8
\clock6_entrada|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~6_combout\ = (\clock6_entrada|s_divCounter\(3) & (!\clock6_entrada|Add0~5\)) # (!\clock6_entrada|s_divCounter\(3) & ((\clock6_entrada|Add0~5\) # (GND)))
-- \clock6_entrada|Add0~7\ = CARRY((!\clock6_entrada|Add0~5\) # (!\clock6_entrada|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(3),
	datad => VCC,
	cin => \clock6_entrada|Add0~5\,
	combout => \clock6_entrada|Add0~6_combout\,
	cout => \clock6_entrada|Add0~7\);

-- Location: FF_X91_Y7_N9
\clock6_entrada|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(3));

-- Location: LCCOMB_X91_Y7_N10
\clock6_entrada|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~8_combout\ = (\clock6_entrada|s_divCounter\(4) & (\clock6_entrada|Add0~7\ $ (GND))) # (!\clock6_entrada|s_divCounter\(4) & (!\clock6_entrada|Add0~7\ & VCC))
-- \clock6_entrada|Add0~9\ = CARRY((\clock6_entrada|s_divCounter\(4) & !\clock6_entrada|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(4),
	datad => VCC,
	cin => \clock6_entrada|Add0~7\,
	combout => \clock6_entrada|Add0~8_combout\,
	cout => \clock6_entrada|Add0~9\);

-- Location: LCCOMB_X92_Y7_N6
\clock6_entrada|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|s_divCounter~8_combout\ = (!\clock6_entrada|Equal0~10_combout\ & \clock6_entrada|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock6_entrada|Equal0~10_combout\,
	datad => \clock6_entrada|Add0~8_combout\,
	combout => \clock6_entrada|s_divCounter~8_combout\);

-- Location: FF_X92_Y7_N7
\clock6_entrada|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(4));

-- Location: LCCOMB_X91_Y7_N12
\clock6_entrada|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~10_combout\ = (\clock6_entrada|s_divCounter\(5) & (!\clock6_entrada|Add0~9\)) # (!\clock6_entrada|s_divCounter\(5) & ((\clock6_entrada|Add0~9\) # (GND)))
-- \clock6_entrada|Add0~11\ = CARRY((!\clock6_entrada|Add0~9\) # (!\clock6_entrada|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(5),
	datad => VCC,
	cin => \clock6_entrada|Add0~9\,
	combout => \clock6_entrada|Add0~10_combout\,
	cout => \clock6_entrada|Add0~11\);

-- Location: FF_X91_Y7_N13
\clock6_entrada|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(5));

-- Location: LCCOMB_X91_Y7_N14
\clock6_entrada|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~12_combout\ = (\clock6_entrada|s_divCounter\(6) & (\clock6_entrada|Add0~11\ $ (GND))) # (!\clock6_entrada|s_divCounter\(6) & (!\clock6_entrada|Add0~11\ & VCC))
-- \clock6_entrada|Add0~13\ = CARRY((\clock6_entrada|s_divCounter\(6) & !\clock6_entrada|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(6),
	datad => VCC,
	cin => \clock6_entrada|Add0~11\,
	combout => \clock6_entrada|Add0~12_combout\,
	cout => \clock6_entrada|Add0~13\);

-- Location: FF_X91_Y7_N15
\clock6_entrada|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(6));

-- Location: LCCOMB_X91_Y7_N16
\clock6_entrada|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~14_combout\ = (\clock6_entrada|s_divCounter\(7) & (!\clock6_entrada|Add0~13\)) # (!\clock6_entrada|s_divCounter\(7) & ((\clock6_entrada|Add0~13\) # (GND)))
-- \clock6_entrada|Add0~15\ = CARRY((!\clock6_entrada|Add0~13\) # (!\clock6_entrada|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(7),
	datad => VCC,
	cin => \clock6_entrada|Add0~13\,
	combout => \clock6_entrada|Add0~14_combout\,
	cout => \clock6_entrada|Add0~15\);

-- Location: FF_X91_Y7_N17
\clock6_entrada|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(7));

-- Location: LCCOMB_X91_Y7_N18
\clock6_entrada|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~16_combout\ = (\clock6_entrada|s_divCounter\(8) & (\clock6_entrada|Add0~15\ $ (GND))) # (!\clock6_entrada|s_divCounter\(8) & (!\clock6_entrada|Add0~15\ & VCC))
-- \clock6_entrada|Add0~17\ = CARRY((\clock6_entrada|s_divCounter\(8) & !\clock6_entrada|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(8),
	datad => VCC,
	cin => \clock6_entrada|Add0~15\,
	combout => \clock6_entrada|Add0~16_combout\,
	cout => \clock6_entrada|Add0~17\);

-- Location: FF_X91_Y7_N19
\clock6_entrada|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(8));

-- Location: LCCOMB_X91_Y7_N20
\clock6_entrada|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~18_combout\ = (\clock6_entrada|s_divCounter\(9) & (!\clock6_entrada|Add0~17\)) # (!\clock6_entrada|s_divCounter\(9) & ((\clock6_entrada|Add0~17\) # (GND)))
-- \clock6_entrada|Add0~19\ = CARRY((!\clock6_entrada|Add0~17\) # (!\clock6_entrada|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(9),
	datad => VCC,
	cin => \clock6_entrada|Add0~17\,
	combout => \clock6_entrada|Add0~18_combout\,
	cout => \clock6_entrada|Add0~19\);

-- Location: FF_X91_Y7_N21
\clock6_entrada|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(9));

-- Location: LCCOMB_X91_Y7_N22
\clock6_entrada|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~20_combout\ = (\clock6_entrada|s_divCounter\(10) & (\clock6_entrada|Add0~19\ $ (GND))) # (!\clock6_entrada|s_divCounter\(10) & (!\clock6_entrada|Add0~19\ & VCC))
-- \clock6_entrada|Add0~21\ = CARRY((\clock6_entrada|s_divCounter\(10) & !\clock6_entrada|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(10),
	datad => VCC,
	cin => \clock6_entrada|Add0~19\,
	combout => \clock6_entrada|Add0~20_combout\,
	cout => \clock6_entrada|Add0~21\);

-- Location: FF_X91_Y7_N23
\clock6_entrada|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(10));

-- Location: LCCOMB_X92_Y7_N8
\clock6_entrada|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Equal0~8_combout\ = (!\clock6_entrada|s_divCounter\(3) & (\clock6_entrada|s_divCounter\(4) & (\clock6_entrada|s_divCounter\(2) & !\clock6_entrada|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(3),
	datab => \clock6_entrada|s_divCounter\(4),
	datac => \clock6_entrada|s_divCounter\(2),
	datad => \clock6_entrada|s_divCounter\(10),
	combout => \clock6_entrada|Equal0~8_combout\);

-- Location: LCCOMB_X91_Y7_N24
\clock6_entrada|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~22_combout\ = (\clock6_entrada|s_divCounter\(11) & (!\clock6_entrada|Add0~21\)) # (!\clock6_entrada|s_divCounter\(11) & ((\clock6_entrada|Add0~21\) # (GND)))
-- \clock6_entrada|Add0~23\ = CARRY((!\clock6_entrada|Add0~21\) # (!\clock6_entrada|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(11),
	datad => VCC,
	cin => \clock6_entrada|Add0~21\,
	combout => \clock6_entrada|Add0~22_combout\,
	cout => \clock6_entrada|Add0~23\);

-- Location: LCCOMB_X92_Y7_N26
\clock6_entrada|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|s_divCounter~7_combout\ = (!\clock6_entrada|Equal0~10_combout\ & \clock6_entrada|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock6_entrada|Equal0~10_combout\,
	datad => \clock6_entrada|Add0~22_combout\,
	combout => \clock6_entrada|s_divCounter~7_combout\);

-- Location: FF_X92_Y7_N27
\clock6_entrada|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(11));

-- Location: LCCOMB_X91_Y7_N26
\clock6_entrada|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~24_combout\ = (\clock6_entrada|s_divCounter\(12) & (\clock6_entrada|Add0~23\ $ (GND))) # (!\clock6_entrada|s_divCounter\(12) & (!\clock6_entrada|Add0~23\ & VCC))
-- \clock6_entrada|Add0~25\ = CARRY((\clock6_entrada|s_divCounter\(12) & !\clock6_entrada|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(12),
	datad => VCC,
	cin => \clock6_entrada|Add0~23\,
	combout => \clock6_entrada|Add0~24_combout\,
	cout => \clock6_entrada|Add0~25\);

-- Location: FF_X91_Y7_N27
\clock6_entrada|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(12));

-- Location: LCCOMB_X91_Y7_N28
\clock6_entrada|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~26_combout\ = (\clock6_entrada|s_divCounter\(13) & (!\clock6_entrada|Add0~25\)) # (!\clock6_entrada|s_divCounter\(13) & ((\clock6_entrada|Add0~25\) # (GND)))
-- \clock6_entrada|Add0~27\ = CARRY((!\clock6_entrada|Add0~25\) # (!\clock6_entrada|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(13),
	datad => VCC,
	cin => \clock6_entrada|Add0~25\,
	combout => \clock6_entrada|Add0~26_combout\,
	cout => \clock6_entrada|Add0~27\);

-- Location: LCCOMB_X92_Y7_N4
\clock6_entrada|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|s_divCounter~6_combout\ = (!\clock6_entrada|Equal0~10_combout\ & \clock6_entrada|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock6_entrada|Equal0~10_combout\,
	datad => \clock6_entrada|Add0~26_combout\,
	combout => \clock6_entrada|s_divCounter~6_combout\);

-- Location: FF_X92_Y7_N5
\clock6_entrada|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(13));

-- Location: LCCOMB_X91_Y7_N30
\clock6_entrada|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~28_combout\ = (\clock6_entrada|s_divCounter\(14) & (\clock6_entrada|Add0~27\ $ (GND))) # (!\clock6_entrada|s_divCounter\(14) & (!\clock6_entrada|Add0~27\ & VCC))
-- \clock6_entrada|Add0~29\ = CARRY((\clock6_entrada|s_divCounter\(14) & !\clock6_entrada|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(14),
	datad => VCC,
	cin => \clock6_entrada|Add0~27\,
	combout => \clock6_entrada|Add0~28_combout\,
	cout => \clock6_entrada|Add0~29\);

-- Location: FF_X91_Y7_N31
\clock6_entrada|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(14));

-- Location: LCCOMB_X91_Y6_N0
\clock6_entrada|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~30_combout\ = (\clock6_entrada|s_divCounter\(15) & (!\clock6_entrada|Add0~29\)) # (!\clock6_entrada|s_divCounter\(15) & ((\clock6_entrada|Add0~29\) # (GND)))
-- \clock6_entrada|Add0~31\ = CARRY((!\clock6_entrada|Add0~29\) # (!\clock6_entrada|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(15),
	datad => VCC,
	cin => \clock6_entrada|Add0~29\,
	combout => \clock6_entrada|Add0~30_combout\,
	cout => \clock6_entrada|Add0~31\);

-- Location: FF_X91_Y6_N1
\clock6_entrada|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(15));

-- Location: LCCOMB_X92_Y7_N18
\clock6_entrada|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Equal0~7_combout\ = (\clock6_entrada|s_divCounter\(11) & (\clock6_entrada|s_divCounter\(13) & (!\clock6_entrada|s_divCounter\(12) & !\clock6_entrada|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(11),
	datab => \clock6_entrada|s_divCounter\(13),
	datac => \clock6_entrada|s_divCounter\(12),
	datad => \clock6_entrada|s_divCounter\(15),
	combout => \clock6_entrada|Equal0~7_combout\);

-- Location: LCCOMB_X92_Y7_N22
\clock6_entrada|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Equal0~9_combout\ = (\clock6_entrada|s_divCounter\(22) & (\clock6_entrada|Equal0~8_combout\ & (!\clock6_entrada|s_divCounter\(0) & \clock6_entrada|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(22),
	datab => \clock6_entrada|Equal0~8_combout\,
	datac => \clock6_entrada|s_divCounter\(0),
	datad => \clock6_entrada|Equal0~7_combout\,
	combout => \clock6_entrada|Equal0~9_combout\);

-- Location: LCCOMB_X92_Y7_N2
\clock6_entrada|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Equal0~2_combout\ = (!\clock6_entrada|s_divCounter\(6) & (!\clock6_entrada|s_divCounter\(8) & (!\clock6_entrada|s_divCounter\(7) & !\clock6_entrada|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(6),
	datab => \clock6_entrada|s_divCounter\(8),
	datac => \clock6_entrada|s_divCounter\(7),
	datad => \clock6_entrada|s_divCounter\(5),
	combout => \clock6_entrada|Equal0~2_combout\);

-- Location: LCCOMB_X92_Y6_N0
\clock6_entrada|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Equal0~3_combout\ = (!\clock6_entrada|s_divCounter\(23) & (!\clock6_entrada|s_divCounter\(24) & (!\clock6_entrada|s_divCounter\(1) & !\clock6_entrada|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(23),
	datab => \clock6_entrada|s_divCounter\(24),
	datac => \clock6_entrada|s_divCounter\(1),
	datad => \clock6_entrada|s_divCounter\(25),
	combout => \clock6_entrada|Equal0~3_combout\);

-- Location: LCCOMB_X91_Y6_N2
\clock6_entrada|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~32_combout\ = (\clock6_entrada|s_divCounter\(16) & (\clock6_entrada|Add0~31\ $ (GND))) # (!\clock6_entrada|s_divCounter\(16) & (!\clock6_entrada|Add0~31\ & VCC))
-- \clock6_entrada|Add0~33\ = CARRY((\clock6_entrada|s_divCounter\(16) & !\clock6_entrada|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(16),
	datad => VCC,
	cin => \clock6_entrada|Add0~31\,
	combout => \clock6_entrada|Add0~32_combout\,
	cout => \clock6_entrada|Add0~33\);

-- Location: LCCOMB_X92_Y6_N4
\clock6_entrada|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|s_divCounter~5_combout\ = (\clock6_entrada|Add0~32_combout\ & !\clock6_entrada|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock6_entrada|Add0~32_combout\,
	datad => \clock6_entrada|Equal0~10_combout\,
	combout => \clock6_entrada|s_divCounter~5_combout\);

-- Location: FF_X92_Y6_N5
\clock6_entrada|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(16));

-- Location: LCCOMB_X91_Y6_N4
\clock6_entrada|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~34_combout\ = (\clock6_entrada|s_divCounter\(17) & (!\clock6_entrada|Add0~33\)) # (!\clock6_entrada|s_divCounter\(17) & ((\clock6_entrada|Add0~33\) # (GND)))
-- \clock6_entrada|Add0~35\ = CARRY((!\clock6_entrada|Add0~33\) # (!\clock6_entrada|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(17),
	datad => VCC,
	cin => \clock6_entrada|Add0~33\,
	combout => \clock6_entrada|Add0~34_combout\,
	cout => \clock6_entrada|Add0~35\);

-- Location: LCCOMB_X92_Y6_N10
\clock6_entrada|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|s_divCounter~4_combout\ = (\clock6_entrada|Add0~34_combout\ & !\clock6_entrada|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock6_entrada|Add0~34_combout\,
	datad => \clock6_entrada|Equal0~10_combout\,
	combout => \clock6_entrada|s_divCounter~4_combout\);

-- Location: FF_X92_Y6_N11
\clock6_entrada|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(17));

-- Location: LCCOMB_X91_Y6_N6
\clock6_entrada|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~36_combout\ = (\clock6_entrada|s_divCounter\(18) & (\clock6_entrada|Add0~35\ $ (GND))) # (!\clock6_entrada|s_divCounter\(18) & (!\clock6_entrada|Add0~35\ & VCC))
-- \clock6_entrada|Add0~37\ = CARRY((\clock6_entrada|s_divCounter\(18) & !\clock6_entrada|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(18),
	datad => VCC,
	cin => \clock6_entrada|Add0~35\,
	combout => \clock6_entrada|Add0~36_combout\,
	cout => \clock6_entrada|Add0~37\);

-- Location: LCCOMB_X92_Y6_N22
\clock6_entrada|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|s_divCounter~3_combout\ = (\clock6_entrada|Add0~36_combout\ & !\clock6_entrada|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock6_entrada|Add0~36_combout\,
	datad => \clock6_entrada|Equal0~10_combout\,
	combout => \clock6_entrada|s_divCounter~3_combout\);

-- Location: FF_X92_Y6_N23
\clock6_entrada|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(18));

-- Location: LCCOMB_X91_Y6_N8
\clock6_entrada|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~38_combout\ = (\clock6_entrada|s_divCounter\(19) & (!\clock6_entrada|Add0~37\)) # (!\clock6_entrada|s_divCounter\(19) & ((\clock6_entrada|Add0~37\) # (GND)))
-- \clock6_entrada|Add0~39\ = CARRY((!\clock6_entrada|Add0~37\) # (!\clock6_entrada|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(19),
	datad => VCC,
	cin => \clock6_entrada|Add0~37\,
	combout => \clock6_entrada|Add0~38_combout\,
	cout => \clock6_entrada|Add0~39\);

-- Location: LCCOMB_X92_Y6_N12
\clock6_entrada|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|s_divCounter~2_combout\ = (\clock6_entrada|Add0~38_combout\ & !\clock6_entrada|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|Add0~38_combout\,
	datad => \clock6_entrada|Equal0~10_combout\,
	combout => \clock6_entrada|s_divCounter~2_combout\);

-- Location: FF_X92_Y6_N13
\clock6_entrada|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(19));

-- Location: LCCOMB_X91_Y6_N10
\clock6_entrada|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~40_combout\ = (\clock6_entrada|s_divCounter\(20) & (\clock6_entrada|Add0~39\ $ (GND))) # (!\clock6_entrada|s_divCounter\(20) & (!\clock6_entrada|Add0~39\ & VCC))
-- \clock6_entrada|Add0~41\ = CARRY((\clock6_entrada|s_divCounter\(20) & !\clock6_entrada|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(20),
	datad => VCC,
	cin => \clock6_entrada|Add0~39\,
	combout => \clock6_entrada|Add0~40_combout\,
	cout => \clock6_entrada|Add0~41\);

-- Location: LCCOMB_X92_Y6_N26
\clock6_entrada|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|s_divCounter~1_combout\ = (\clock6_entrada|Add0~40_combout\ & !\clock6_entrada|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|Add0~40_combout\,
	datad => \clock6_entrada|Equal0~10_combout\,
	combout => \clock6_entrada|s_divCounter~1_combout\);

-- Location: FF_X92_Y6_N27
\clock6_entrada|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(20));

-- Location: LCCOMB_X91_Y6_N12
\clock6_entrada|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~42_combout\ = (\clock6_entrada|s_divCounter\(21) & (!\clock6_entrada|Add0~41\)) # (!\clock6_entrada|s_divCounter\(21) & ((\clock6_entrada|Add0~41\) # (GND)))
-- \clock6_entrada|Add0~43\ = CARRY((!\clock6_entrada|Add0~41\) # (!\clock6_entrada|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(21),
	datad => VCC,
	cin => \clock6_entrada|Add0~41\,
	combout => \clock6_entrada|Add0~42_combout\,
	cout => \clock6_entrada|Add0~43\);

-- Location: LCCOMB_X92_Y6_N20
\clock6_entrada|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|s_divCounter~0_combout\ = (\clock6_entrada|Add0~42_combout\ & !\clock6_entrada|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|Add0~42_combout\,
	datad => \clock6_entrada|Equal0~10_combout\,
	combout => \clock6_entrada|s_divCounter~0_combout\);

-- Location: FF_X92_Y6_N21
\clock6_entrada|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(21));

-- Location: LCCOMB_X92_Y6_N24
\clock6_entrada|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Equal0~0_combout\ = (\clock6_entrada|s_divCounter\(18) & (\clock6_entrada|s_divCounter\(21) & (\clock6_entrada|s_divCounter\(20) & \clock6_entrada|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(18),
	datab => \clock6_entrada|s_divCounter\(21),
	datac => \clock6_entrada|s_divCounter\(20),
	datad => \clock6_entrada|s_divCounter\(19),
	combout => \clock6_entrada|Equal0~0_combout\);

-- Location: LCCOMB_X92_Y6_N18
\clock6_entrada|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Equal0~1_combout\ = (\clock6_entrada|s_divCounter\(17) & (\clock6_entrada|s_divCounter\(16) & (!\clock6_entrada|s_divCounter\(9) & !\clock6_entrada|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(17),
	datab => \clock6_entrada|s_divCounter\(16),
	datac => \clock6_entrada|s_divCounter\(9),
	datad => \clock6_entrada|s_divCounter\(14),
	combout => \clock6_entrada|Equal0~1_combout\);

-- Location: LCCOMB_X92_Y7_N28
\clock6_entrada|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Equal0~4_combout\ = (\clock6_entrada|Equal0~2_combout\ & (\clock6_entrada|Equal0~3_combout\ & (\clock6_entrada|Equal0~0_combout\ & \clock6_entrada|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|Equal0~2_combout\,
	datab => \clock6_entrada|Equal0~3_combout\,
	datac => \clock6_entrada|Equal0~0_combout\,
	datad => \clock6_entrada|Equal0~1_combout\,
	combout => \clock6_entrada|Equal0~4_combout\);

-- Location: LCCOMB_X92_Y7_N20
\clock6_entrada|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Equal0~10_combout\ = (!\clock6_entrada|s_divCounter\(30) & (\clock6_entrada|Equal0~5_combout\ & (\clock6_entrada|Equal0~9_combout\ & \clock6_entrada|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(30),
	datab => \clock6_entrada|Equal0~5_combout\,
	datac => \clock6_entrada|Equal0~9_combout\,
	datad => \clock6_entrada|Equal0~4_combout\,
	combout => \clock6_entrada|Equal0~10_combout\);

-- Location: LCCOMB_X91_Y6_N14
\clock6_entrada|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~44_combout\ = (\clock6_entrada|s_divCounter\(22) & (\clock6_entrada|Add0~43\ $ (GND))) # (!\clock6_entrada|s_divCounter\(22) & (!\clock6_entrada|Add0~43\ & VCC))
-- \clock6_entrada|Add0~45\ = CARRY((\clock6_entrada|s_divCounter\(22) & !\clock6_entrada|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(22),
	datad => VCC,
	cin => \clock6_entrada|Add0~43\,
	combout => \clock6_entrada|Add0~44_combout\,
	cout => \clock6_entrada|Add0~45\);

-- Location: LCCOMB_X92_Y7_N30
\clock6_entrada|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|s_divCounter~11_combout\ = (!\clock6_entrada|Equal0~10_combout\ & \clock6_entrada|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock6_entrada|Equal0~10_combout\,
	datad => \clock6_entrada|Add0~44_combout\,
	combout => \clock6_entrada|s_divCounter~11_combout\);

-- Location: FF_X92_Y7_N31
\clock6_entrada|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(22));

-- Location: LCCOMB_X91_Y6_N16
\clock6_entrada|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~46_combout\ = (\clock6_entrada|s_divCounter\(23) & (!\clock6_entrada|Add0~45\)) # (!\clock6_entrada|s_divCounter\(23) & ((\clock6_entrada|Add0~45\) # (GND)))
-- \clock6_entrada|Add0~47\ = CARRY((!\clock6_entrada|Add0~45\) # (!\clock6_entrada|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(23),
	datad => VCC,
	cin => \clock6_entrada|Add0~45\,
	combout => \clock6_entrada|Add0~46_combout\,
	cout => \clock6_entrada|Add0~47\);

-- Location: FF_X91_Y6_N17
\clock6_entrada|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(23));

-- Location: LCCOMB_X91_Y6_N18
\clock6_entrada|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~48_combout\ = (\clock6_entrada|s_divCounter\(24) & (\clock6_entrada|Add0~47\ $ (GND))) # (!\clock6_entrada|s_divCounter\(24) & (!\clock6_entrada|Add0~47\ & VCC))
-- \clock6_entrada|Add0~49\ = CARRY((\clock6_entrada|s_divCounter\(24) & !\clock6_entrada|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(24),
	datad => VCC,
	cin => \clock6_entrada|Add0~47\,
	combout => \clock6_entrada|Add0~48_combout\,
	cout => \clock6_entrada|Add0~49\);

-- Location: FF_X91_Y6_N19
\clock6_entrada|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(24));

-- Location: LCCOMB_X91_Y6_N20
\clock6_entrada|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~50_combout\ = (\clock6_entrada|s_divCounter\(25) & (!\clock6_entrada|Add0~49\)) # (!\clock6_entrada|s_divCounter\(25) & ((\clock6_entrada|Add0~49\) # (GND)))
-- \clock6_entrada|Add0~51\ = CARRY((!\clock6_entrada|Add0~49\) # (!\clock6_entrada|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(25),
	datad => VCC,
	cin => \clock6_entrada|Add0~49\,
	combout => \clock6_entrada|Add0~50_combout\,
	cout => \clock6_entrada|Add0~51\);

-- Location: FF_X91_Y6_N21
\clock6_entrada|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(25));

-- Location: LCCOMB_X91_Y6_N22
\clock6_entrada|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~52_combout\ = (\clock6_entrada|s_divCounter\(26) & (\clock6_entrada|Add0~51\ $ (GND))) # (!\clock6_entrada|s_divCounter\(26) & (!\clock6_entrada|Add0~51\ & VCC))
-- \clock6_entrada|Add0~53\ = CARRY((\clock6_entrada|s_divCounter\(26) & !\clock6_entrada|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(26),
	datad => VCC,
	cin => \clock6_entrada|Add0~51\,
	combout => \clock6_entrada|Add0~52_combout\,
	cout => \clock6_entrada|Add0~53\);

-- Location: FF_X91_Y6_N23
\clock6_entrada|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(26));

-- Location: LCCOMB_X91_Y6_N24
\clock6_entrada|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~54_combout\ = (\clock6_entrada|s_divCounter\(27) & (!\clock6_entrada|Add0~53\)) # (!\clock6_entrada|s_divCounter\(27) & ((\clock6_entrada|Add0~53\) # (GND)))
-- \clock6_entrada|Add0~55\ = CARRY((!\clock6_entrada|Add0~53\) # (!\clock6_entrada|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(27),
	datad => VCC,
	cin => \clock6_entrada|Add0~53\,
	combout => \clock6_entrada|Add0~54_combout\,
	cout => \clock6_entrada|Add0~55\);

-- Location: FF_X91_Y6_N25
\clock6_entrada|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(27));

-- Location: LCCOMB_X91_Y6_N26
\clock6_entrada|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~56_combout\ = (\clock6_entrada|s_divCounter\(28) & (\clock6_entrada|Add0~55\ $ (GND))) # (!\clock6_entrada|s_divCounter\(28) & (!\clock6_entrada|Add0~55\ & VCC))
-- \clock6_entrada|Add0~57\ = CARRY((\clock6_entrada|s_divCounter\(28) & !\clock6_entrada|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(28),
	datad => VCC,
	cin => \clock6_entrada|Add0~55\,
	combout => \clock6_entrada|Add0~56_combout\,
	cout => \clock6_entrada|Add0~57\);

-- Location: FF_X91_Y6_N27
\clock6_entrada|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(28));

-- Location: LCCOMB_X91_Y6_N28
\clock6_entrada|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~58_combout\ = (\clock6_entrada|s_divCounter\(29) & (!\clock6_entrada|Add0~57\)) # (!\clock6_entrada|s_divCounter\(29) & ((\clock6_entrada|Add0~57\) # (GND)))
-- \clock6_entrada|Add0~59\ = CARRY((!\clock6_entrada|Add0~57\) # (!\clock6_entrada|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(29),
	datad => VCC,
	cin => \clock6_entrada|Add0~57\,
	combout => \clock6_entrada|Add0~58_combout\,
	cout => \clock6_entrada|Add0~59\);

-- Location: FF_X91_Y6_N29
\clock6_entrada|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(29));

-- Location: LCCOMB_X91_Y6_N30
\clock6_entrada|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Add0~60_combout\ = \clock6_entrada|s_divCounter\(30) $ (!\clock6_entrada|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(30),
	cin => \clock6_entrada|Add0~59\,
	combout => \clock6_entrada|Add0~60_combout\);

-- Location: FF_X91_Y6_N31
\clock6_entrada|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|s_divCounter\(30));

-- Location: LCCOMB_X92_Y7_N10
\clock6_entrada|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|Equal0~6_combout\ = (!\clock6_entrada|s_divCounter\(30) & (\clock6_entrada|Equal0~4_combout\ & \clock6_entrada|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|s_divCounter\(30),
	datac => \clock6_entrada|Equal0~4_combout\,
	datad => \clock6_entrada|Equal0~5_combout\,
	combout => \clock6_entrada|Equal0~6_combout\);

-- Location: LCCOMB_X92_Y7_N12
\clock6_entrada|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|clkOut~1_combout\ = (\clock6_entrada|s_divCounter\(3) & (\clock6_entrada|s_divCounter\(10) & (!\clock6_entrada|s_divCounter\(2) & !\clock6_entrada|s_divCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(3),
	datab => \clock6_entrada|s_divCounter\(10),
	datac => \clock6_entrada|s_divCounter\(2),
	datad => \clock6_entrada|s_divCounter\(4),
	combout => \clock6_entrada|clkOut~1_combout\);

-- Location: LCCOMB_X92_Y7_N0
\clock6_entrada|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|clkOut~0_combout\ = (\clock6_entrada|s_divCounter\(12) & (!\clock6_entrada|s_divCounter\(13) & (!\clock6_entrada|s_divCounter\(11) & \clock6_entrada|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|s_divCounter\(12),
	datab => \clock6_entrada|s_divCounter\(13),
	datac => \clock6_entrada|s_divCounter\(11),
	datad => \clock6_entrada|s_divCounter\(15),
	combout => \clock6_entrada|clkOut~0_combout\);

-- Location: LCCOMB_X92_Y7_N16
\clock6_entrada|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|clkOut~2_combout\ = (\clock6_entrada|clkOut~1_combout\ & (\clock6_entrada|s_divCounter\(0) & (!\clock6_entrada|s_divCounter\(22) & \clock6_entrada|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|clkOut~1_combout\,
	datab => \clock6_entrada|s_divCounter\(0),
	datac => \clock6_entrada|s_divCounter\(22),
	datad => \clock6_entrada|clkOut~0_combout\,
	combout => \clock6_entrada|clkOut~2_combout\);

-- Location: LCCOMB_X92_Y7_N24
\clock6_entrada|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock6_entrada|clkOut~3_combout\ = (!\clock6_entrada|Equal0~10_combout\ & ((\clock6_entrada|clkOut~q\) # ((\clock6_entrada|Equal0~6_combout\ & \clock6_entrada|clkOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock6_entrada|Equal0~6_combout\,
	datab => \clock6_entrada|clkOut~2_combout\,
	datac => \clock6_entrada|clkOut~q\,
	datad => \clock6_entrada|Equal0~10_combout\,
	combout => \clock6_entrada|clkOut~3_combout\);

-- Location: FF_X92_Y7_N25
\clock6_entrada|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock6_entrada|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock6_entrada|clkOut~q\);

-- Location: LCCOMB_X110_Y18_N28
s_enable : cycloneive_lcell_comb
-- Equation(s):
-- \s_enable~combout\ = (\clock6_entrada|clkOut~q\) # (!\reg_to_eref|PS.ThihiEspera~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_to_eref|PS.ThihiEspera~q\,
	datad => \clock6_entrada|clkOut~q\,
	combout => \s_enable~combout\);

-- Location: LCCOMB_X107_Y18_N28
\reg_to_eref|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|WideOr0~combout\ = ((\reg_to_eref|PS.TDoneTFan~q\) # (\reg_to_eref|PS.TFan~q\)) # (!\reg_to_eref|PS.Thihi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.Thihi~q\,
	datac => \reg_to_eref|PS.TDoneTFan~q\,
	datad => \reg_to_eref|PS.TFan~q\,
	combout => \reg_to_eref|WideOr0~combout\);

-- Location: LCCOMB_X107_Y18_N22
\reg_to_eref|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|WideOr2~0_combout\ = (\reg_to_eref|PS.Thihi~q\ & (!\reg_to_eref|PS.TEref~q\ & (!\reg_to_eref|PS.TDoneTFan~q\ & !\reg_to_eref|PS.TFan~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.Thihi~q\,
	datab => \reg_to_eref|PS.TEref~q\,
	datac => \reg_to_eref|PS.TDoneTFan~q\,
	datad => \reg_to_eref|PS.TFan~q\,
	combout => \reg_to_eref|WideOr2~0_combout\);

-- Location: LCCOMB_X110_Y20_N20
\reg_to_eref|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|WideOr1~0_combout\ = (\reg_to_eref|PS.TDoneTSoli~q\) # ((\reg_to_eref|PS.TSoli~q\) # ((\reg_to_eref|PS.TEref~q\) # (\reg_to_eref|PS.ThihiEspera~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TDoneTSoli~q\,
	datab => \reg_to_eref|PS.TSoli~q\,
	datac => \reg_to_eref|PS.TEref~q\,
	datad => \reg_to_eref|PS.ThihiEspera~q\,
	combout => \reg_to_eref|WideOr1~0_combout\);

-- Location: LCCOMB_X110_Y20_N22
\Disp0|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp0|decOut_n[0]~6_combout\ = ((\reg_to_eref|WideOr0~combout\) # ((\reg_to_eref|WideOr2~0_combout\ & \reg_to_eref|WideOr1~0_combout\))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_enable~combout\,
	datab => \reg_to_eref|WideOr0~combout\,
	datac => \reg_to_eref|WideOr2~0_combout\,
	datad => \reg_to_eref|WideOr1~0_combout\,
	combout => \Disp0|decOut_n[0]~6_combout\);

-- Location: LCCOMB_X109_Y16_N24
\reg_to_eref|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|WideOr0~0_combout\ = (!\reg_to_eref|PS.TDoneTFan~q\ & !\reg_to_eref|PS.TFan~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_to_eref|PS.TDoneTFan~q\,
	datad => \reg_to_eref|PS.TFan~q\,
	combout => \reg_to_eref|WideOr0~0_combout\);

-- Location: LCCOMB_X110_Y20_N8
\Disp0|decOut_n[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp0|decOut_n[1]~7_combout\ = \s_enable~combout\ $ (((\reg_to_eref|WideOr0~0_combout\ & (\reg_to_eref|WideOr1~0_combout\ & \Disp3|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|WideOr0~0_combout\,
	datab => \reg_to_eref|WideOr1~0_combout\,
	datac => \Disp3|Mux6~0_combout\,
	datad => \s_enable~combout\,
	combout => \Disp0|decOut_n[1]~7_combout\);

-- Location: LCCOMB_X110_Y20_N30
\Disp0|decOut_n[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp0|decOut_n[2]~11_combout\ = \s_enable~combout\ $ ((((\reg_to_eref|PS.TEref~q\) # (!\reg_to_eref|PS.Thihi~q\)) # (!\reg_to_eref|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|WideOr0~0_combout\,
	datab => \reg_to_eref|PS.TEref~q\,
	datac => \reg_to_eref|PS.Thihi~q\,
	datad => \s_enable~combout\,
	combout => \Disp0|decOut_n[2]~11_combout\);

-- Location: LCCOMB_X110_Y20_N6
\Disp0|decOut_n[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp0|decOut_n[3]~8_combout\ = ((\reg_to_eref|WideOr1~0_combout\) # ((!\s_enable~combout\) # (!\Disp3|Mux6~0_combout\))) # (!\reg_to_eref|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|WideOr0~0_combout\,
	datab => \reg_to_eref|WideOr1~0_combout\,
	datac => \Disp3|Mux6~0_combout\,
	datad => \s_enable~combout\,
	combout => \Disp0|decOut_n[3]~8_combout\);

-- Location: LCCOMB_X110_Y18_N14
\Disp0|decOut_n[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp0|decOut_n[4]~9_combout\ = ((\reg_to_eref|PS.ThihiEspera~q\ & !\clock6_entrada|clkOut~q\)) # (!\reg_to_eref|PS.TEref~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TEref~q\,
	datab => \reg_to_eref|PS.ThihiEspera~q\,
	datad => \clock6_entrada|clkOut~q\,
	combout => \Disp0|decOut_n[4]~9_combout\);

-- Location: LCCOMB_X110_Y20_N24
\Disp0|decOut_n[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp0|decOut_n[6]~10_combout\ = (\reg_to_eref|WideOr1~0_combout\ $ (((!\Disp3|Mux6~0_combout\) # (!\reg_to_eref|WideOr0~0_combout\)))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|WideOr0~0_combout\,
	datab => \reg_to_eref|WideOr1~0_combout\,
	datac => \Disp3|Mux6~0_combout\,
	datad => \s_enable~combout\,
	combout => \Disp0|decOut_n[6]~10_combout\);

-- Location: LCCOMB_X110_Y18_N0
\reg_to_eref|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|WideOr3~combout\ = (\reg_to_eref|PS.TEref~q\) # ((\reg_to_eref|PS.TSpes~q\) # ((\reg_to_eref|PS.TDoneTSpes~q\) # (!\reg_to_eref|PS.Thihi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TEref~q\,
	datab => \reg_to_eref|PS.TSpes~q\,
	datac => \reg_to_eref|PS.TDoneTSpes~q\,
	datad => \reg_to_eref|PS.Thihi~q\,
	combout => \reg_to_eref|WideOr3~combout\);

-- Location: LCCOMB_X110_Y20_N2
\reg_to_eref|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|WideOr4~combout\ = (\reg_to_eref|PS.TDoneTSoli~q\) # ((\reg_to_eref|PS.TSoli~q\) # (!\reg_to_eref|PS.Thihi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TDoneTSoli~q\,
	datab => \reg_to_eref|PS.TSoli~q\,
	datac => \reg_to_eref|PS.Thihi~q\,
	combout => \reg_to_eref|WideOr4~combout\);

-- Location: LCCOMB_X110_Y20_N0
\Disp1|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp1|decOut_n[0]~0_combout\ = ((\reg_to_eref|WideOr3~combout\ & ((\reg_to_eref|WideOr4~combout\))) # (!\reg_to_eref|WideOr3~combout\ & ((\reg_to_eref|WideOr0~0_combout\) # (!\reg_to_eref|WideOr4~combout\)))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_enable~combout\,
	datab => \reg_to_eref|WideOr3~combout\,
	datac => \reg_to_eref|WideOr0~0_combout\,
	datad => \reg_to_eref|WideOr4~combout\,
	combout => \Disp1|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X110_Y20_N26
\Disp1|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp1|decOut_n[1]~1_combout\ = ((\reg_to_eref|WideOr3~combout\ & ((\reg_to_eref|WideOr0~0_combout\) # (\reg_to_eref|WideOr4~combout\))) # (!\reg_to_eref|WideOr3~combout\ & (\reg_to_eref|WideOr0~0_combout\ $ (!\reg_to_eref|WideOr4~combout\)))) # 
-- (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_enable~combout\,
	datab => \reg_to_eref|WideOr3~combout\,
	datac => \reg_to_eref|WideOr0~0_combout\,
	datad => \reg_to_eref|WideOr4~combout\,
	combout => \Disp1|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X110_Y20_N16
\Disp1|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp1|decOut_n[2]~2_combout\ = ((\reg_to_eref|WideOr3~combout\) # ((\reg_to_eref|WideOr0~0_combout\ & \reg_to_eref|WideOr4~combout\))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_enable~combout\,
	datab => \reg_to_eref|WideOr3~combout\,
	datac => \reg_to_eref|WideOr0~0_combout\,
	datad => \reg_to_eref|WideOr4~combout\,
	combout => \Disp1|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X110_Y20_N14
\Disp1|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp1|decOut_n[3]~3_combout\ = ((\reg_to_eref|WideOr3~combout\ & ((\reg_to_eref|WideOr4~combout\) # (!\reg_to_eref|WideOr0~0_combout\))) # (!\reg_to_eref|WideOr3~combout\ & ((!\reg_to_eref|WideOr4~combout\)))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_enable~combout\,
	datab => \reg_to_eref|WideOr3~combout\,
	datac => \reg_to_eref|WideOr0~0_combout\,
	datad => \reg_to_eref|WideOr4~combout\,
	combout => \Disp1|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X110_Y20_N28
\Disp1|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp1|decOut_n[4]~4_combout\ = ((\reg_to_eref|WideOr3~combout\ & (\reg_to_eref|WideOr0~0_combout\ & \reg_to_eref|WideOr4~combout\))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_enable~combout\,
	datab => \reg_to_eref|WideOr3~combout\,
	datac => \reg_to_eref|WideOr0~0_combout\,
	datad => \reg_to_eref|WideOr4~combout\,
	combout => \Disp1|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X110_Y20_N10
\Disp1|decOut_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp1|decOut_n[5]~5_combout\ = ((\reg_to_eref|WideOr3~combout\ & ((\reg_to_eref|WideOr4~combout\))) # (!\reg_to_eref|WideOr3~combout\ & (!\reg_to_eref|WideOr0~0_combout\ & !\reg_to_eref|WideOr4~combout\))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_enable~combout\,
	datab => \reg_to_eref|WideOr3~combout\,
	datac => \reg_to_eref|WideOr0~0_combout\,
	datad => \reg_to_eref|WideOr4~combout\,
	combout => \Disp1|decOut_n[5]~5_combout\);

-- Location: LCCOMB_X110_Y20_N4
\Disp1|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp1|decOut_n[6]~6_combout\ = ((\reg_to_eref|WideOr4~combout\ & ((\reg_to_eref|WideOr0~0_combout\) # (!\reg_to_eref|WideOr3~combout\)))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_enable~combout\,
	datab => \reg_to_eref|WideOr3~combout\,
	datac => \reg_to_eref|WideOr0~0_combout\,
	datad => \reg_to_eref|WideOr4~combout\,
	combout => \Disp1|decOut_n[6]~6_combout\);

-- Location: LCCOMB_X110_Y18_N10
\Disp2|decOut_n[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp2|decOut_n[3]~0_combout\ = (!\reg_to_eref|PS.TDoneTSpes~q\ & (!\reg_to_eref|PS.TSpes~q\ & !\reg_to_eref|PS.ThihiEspera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TDoneTSpes~q\,
	datab => \reg_to_eref|PS.TSpes~q\,
	datac => \reg_to_eref|PS.ThihiEspera~q\,
	combout => \Disp2|decOut_n[3]~0_combout\);

-- Location: LCCOMB_X110_Y18_N8
\Disp2|decOut_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp2|decOut_n[0]~1_combout\ = (\reg_to_eref|WideOr3~combout\ $ (((!\Disp2|decOut_n[3]~0_combout\ & !\reg_to_eref|WideOr0~combout\)))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Disp2|decOut_n[3]~0_combout\,
	datab => \s_enable~combout\,
	datac => \reg_to_eref|WideOr0~combout\,
	datad => \reg_to_eref|WideOr3~combout\,
	combout => \Disp2|decOut_n[0]~1_combout\);

-- Location: LCCOMB_X110_Y18_N26
\Disp2|decOut_n[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp2|decOut_n[1]~2_combout\ = ((\reg_to_eref|WideOr3~combout\ & ((\Disp2|decOut_n[3]~0_combout\) # (\reg_to_eref|WideOr0~combout\)))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Disp2|decOut_n[3]~0_combout\,
	datab => \s_enable~combout\,
	datac => \reg_to_eref|WideOr0~combout\,
	datad => \reg_to_eref|WideOr3~combout\,
	combout => \Disp2|decOut_n[1]~2_combout\);

-- Location: LCCOMB_X110_Y19_N0
\Disp2|decOut_n[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp2|decOut_n[2]~3_combout\ = (!\reg_to_eref|PS.TDoneTSpes~q\ & (\Disp3|Mux6~0_combout\ & (!\reg_to_eref|PS.TSpes~q\ & \s_enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TDoneTSpes~q\,
	datab => \Disp3|Mux6~0_combout\,
	datac => \reg_to_eref|PS.TSpes~q\,
	datad => \s_enable~combout\,
	combout => \Disp2|decOut_n[2]~3_combout\);

-- Location: LCCOMB_X110_Y18_N20
\Disp2|decOut_n[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp2|decOut_n[3]~4_combout\ = ((\reg_to_eref|WideOr0~combout\) # (\reg_to_eref|WideOr3~combout\)) # (!\Disp2|decOut_n[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Disp2|decOut_n[3]~0_combout\,
	datac => \reg_to_eref|WideOr0~combout\,
	datad => \reg_to_eref|WideOr3~combout\,
	combout => \Disp2|decOut_n[3]~4_combout\);

-- Location: LCCOMB_X110_Y18_N6
\Disp2|decOut_n[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp2|decOut_n[4]~5_combout\ = ((\reg_to_eref|WideOr0~combout\ & ((\reg_to_eref|WideOr3~combout\))) # (!\reg_to_eref|WideOr0~combout\ & (!\Disp2|decOut_n[3]~0_combout\ & !\reg_to_eref|WideOr3~combout\))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Disp2|decOut_n[3]~0_combout\,
	datab => \s_enable~combout\,
	datac => \reg_to_eref|WideOr0~combout\,
	datad => \reg_to_eref|WideOr3~combout\,
	combout => \Disp2|decOut_n[4]~5_combout\);

-- Location: LCCOMB_X107_Y18_N16
\reg_to_eref|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_to_eref|WideOr6~combout\ = (\reg_to_eref|PS.TFan~q\) # ((\reg_to_eref|PS.TDoneTFan~q\) # (\reg_to_eref|PS.ThihiEspera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|PS.TFan~q\,
	datac => \reg_to_eref|PS.TDoneTFan~q\,
	datad => \reg_to_eref|PS.ThihiEspera~q\,
	combout => \reg_to_eref|WideOr6~combout\);

-- Location: LCCOMB_X110_Y18_N16
\Disp2|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp2|decOut_n[6]~6_combout\ = ((\reg_to_eref|WideOr0~combout\ & (!\reg_to_eref|WideOr6~combout\ & \reg_to_eref|WideOr3~combout\)) # (!\reg_to_eref|WideOr0~combout\ & ((!\reg_to_eref|WideOr3~combout\)))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|WideOr6~combout\,
	datab => \s_enable~combout\,
	datac => \reg_to_eref|WideOr0~combout\,
	datad => \reg_to_eref|WideOr3~combout\,
	combout => \Disp2|decOut_n[6]~6_combout\);

-- Location: LCCOMB_X110_Y18_N2
\Disp3|decOut_n[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp3|decOut_n[0]~10_combout\ = ((\Disp3|Mux6~0_combout\ & (\reg_to_eref|WideOr6~combout\ & !\reg_to_eref|WideOr0~combout\)) # (!\Disp3|Mux6~0_combout\ & ((\reg_to_eref|WideOr0~combout\)))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|WideOr6~combout\,
	datab => \Disp3|Mux6~0_combout\,
	datac => \reg_to_eref|WideOr0~combout\,
	datad => \s_enable~combout\,
	combout => \Disp3|decOut_n[0]~10_combout\);

-- Location: LCCOMB_X110_Y18_N24
\Disp3|decOut_n[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp3|decOut_n[1]~11_combout\ = (!\clock6_entrada|clkOut~q\) # (!\reg_to_eref|PS.ThihiEspera~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_to_eref|PS.ThihiEspera~q\,
	datad => \clock6_entrada|clkOut~q\,
	combout => \Disp3|decOut_n[1]~11_combout\);

-- Location: LCCOMB_X110_Y20_N12
\Disp3|decOut_n[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp3|decOut_n[2]~14_combout\ = (\reg_to_eref|WideOr0~0_combout\ & (!\reg_to_eref|PS.TEref~q\ & (\reg_to_eref|PS.Thihi~q\ & \s_enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|WideOr0~0_combout\,
	datab => \reg_to_eref|PS.TEref~q\,
	datac => \reg_to_eref|PS.Thihi~q\,
	datad => \s_enable~combout\,
	combout => \Disp3|decOut_n[2]~14_combout\);

-- Location: LCCOMB_X110_Y18_N30
\Disp3|decOut_n[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp3|decOut_n[3]~15_combout\ = (\reg_to_eref|WideOr0~combout\) # ((\reg_to_eref|WideOr6~combout\) # ((\reg_to_eref|PS.ThihiEspera~q\ & !\clock6_entrada|clkOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|WideOr0~combout\,
	datab => \reg_to_eref|WideOr6~combout\,
	datac => \reg_to_eref|PS.ThihiEspera~q\,
	datad => \clock6_entrada|clkOut~q\,
	combout => \Disp3|decOut_n[3]~15_combout\);

-- Location: LCCOMB_X110_Y18_N18
\Disp3|decOut_n[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp3|decOut_n[4]~12_combout\ = ((\Disp3|Mux6~0_combout\ & (!\reg_to_eref|WideOr6~combout\ & !\reg_to_eref|WideOr0~combout\)) # (!\Disp3|Mux6~0_combout\ & ((\reg_to_eref|WideOr0~combout\)))) # (!\s_enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|WideOr6~combout\,
	datab => \Disp3|Mux6~0_combout\,
	datac => \reg_to_eref|WideOr0~combout\,
	datad => \s_enable~combout\,
	combout => \Disp3|decOut_n[4]~12_combout\);

-- Location: LCCOMB_X110_Y20_N18
\Disp3|decOut_n[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp3|decOut_n[0]~16_combout\ = (\reg_to_eref|PS.Thihi~q\ & (\s_enable~combout\ & ((\reg_to_eref|WideOr0~0_combout\) # (!\reg_to_eref|PS.TEref~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_to_eref|WideOr0~0_combout\,
	datab => \reg_to_eref|PS.TEref~q\,
	datac => \reg_to_eref|PS.Thihi~q\,
	datad => \s_enable~combout\,
	combout => \Disp3|decOut_n[0]~16_combout\);

-- Location: LCCOMB_X110_Y18_N12
\Disp3|decOut_n[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp3|decOut_n[6]~13_combout\ = ((!\clock6_entrada|clkOut~q\ & \reg_to_eref|PS.ThihiEspera~q\)) # (!\reg_to_eref|PS.Thihi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock6_entrada|clkOut~q\,
	datac => \reg_to_eref|PS.ThihiEspera~q\,
	datad => \reg_to_eref|PS.Thihi~q\,
	combout => \Disp3|decOut_n[6]~13_combout\);

-- Location: LCCOMB_X91_Y2_N6
\deb_to_SelBlocos|PS~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|PS~11_combout\ = (!\conect_reg|dataOut\(0) & \conect_reg|dataOut\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conect_reg|dataOut\(0),
	datac => \conect_reg|dataOut\(4),
	combout => \deb_to_SelBlocos|PS~11_combout\);

-- Location: FF_X91_Y2_N7
\deb_to_SelBlocos|PS.Inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb_to_SelBlocos|PS~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_to_SelBlocos|PS.Inicio~q\);

-- Location: LCCOMB_X91_Y19_N10
\Aumentar_Gelo|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~0_combout\ = \Aumentar_Gelo|s_debounceCnt\(0) $ (VCC)
-- \Aumentar_Gelo|Add0~1\ = CARRY(\Aumentar_Gelo|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(0),
	datad => VCC,
	combout => \Aumentar_Gelo|Add0~0_combout\,
	cout => \Aumentar_Gelo|Add0~1\);

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

-- Location: FF_X91_Y18_N23
\Aumentar_Gelo|s_AumDim\ : dffeas
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
	q => \Aumentar_Gelo|s_AumDim~q\);

-- Location: FF_X90_Y18_N23
\Aumentar_Gelo|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Aumentar_Gelo|s_AumDim~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_previousIn~q\);

-- Location: LCCOMB_X91_Y19_N18
\Aumentar_Gelo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~8_combout\ = (\Aumentar_Gelo|s_debounceCnt\(4) & ((GND) # (!\Aumentar_Gelo|Add0~7\))) # (!\Aumentar_Gelo|s_debounceCnt\(4) & (\Aumentar_Gelo|Add0~7\ $ (GND)))
-- \Aumentar_Gelo|Add0~9\ = CARRY((\Aumentar_Gelo|s_debounceCnt\(4)) # (!\Aumentar_Gelo|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(4),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~7\,
	combout => \Aumentar_Gelo|Add0~8_combout\,
	cout => \Aumentar_Gelo|Add0~9\);

-- Location: LCCOMB_X91_Y19_N20
\Aumentar_Gelo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~10_combout\ = (\Aumentar_Gelo|s_debounceCnt\(5) & (\Aumentar_Gelo|Add0~9\ & VCC)) # (!\Aumentar_Gelo|s_debounceCnt\(5) & (!\Aumentar_Gelo|Add0~9\))
-- \Aumentar_Gelo|Add0~11\ = CARRY((!\Aumentar_Gelo|s_debounceCnt\(5) & !\Aumentar_Gelo|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(5),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~9\,
	combout => \Aumentar_Gelo|Add0~10_combout\,
	cout => \Aumentar_Gelo|Add0~11\);

-- Location: LCCOMB_X90_Y18_N0
\Aumentar_Gelo|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~27_combout\ = (\Aumentar_Gelo|Add0~10_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Aumentar_Gelo|Add0~10_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~27_combout\);

-- Location: FF_X90_Y18_N1
\Aumentar_Gelo|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~27_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(5));

-- Location: LCCOMB_X91_Y19_N22
\Aumentar_Gelo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~12_combout\ = (\Aumentar_Gelo|s_debounceCnt\(6) & ((GND) # (!\Aumentar_Gelo|Add0~11\))) # (!\Aumentar_Gelo|s_debounceCnt\(6) & (\Aumentar_Gelo|Add0~11\ $ (GND)))
-- \Aumentar_Gelo|Add0~13\ = CARRY((\Aumentar_Gelo|s_debounceCnt\(6)) # (!\Aumentar_Gelo|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(6),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~11\,
	combout => \Aumentar_Gelo|Add0~12_combout\,
	cout => \Aumentar_Gelo|Add0~13\);

-- Location: LCCOMB_X90_Y18_N10
\Aumentar_Gelo|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~1_combout\ = (\Aumentar_Gelo|s_debounceCnt[13]~0_combout\ & ((\Aumentar_Gelo|Add0~12_combout\) # (!\Aumentar_Gelo|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_previousIn~q\,
	datac => \Aumentar_Gelo|s_debounceCnt[13]~0_combout\,
	datad => \Aumentar_Gelo|Add0~12_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~1_combout\);

-- Location: FF_X90_Y18_N11
\Aumentar_Gelo|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~1_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(6));

-- Location: LCCOMB_X91_Y19_N24
\Aumentar_Gelo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~14_combout\ = (\Aumentar_Gelo|s_debounceCnt\(7) & (\Aumentar_Gelo|Add0~13\ & VCC)) # (!\Aumentar_Gelo|s_debounceCnt\(7) & (!\Aumentar_Gelo|Add0~13\))
-- \Aumentar_Gelo|Add0~15\ = CARRY((!\Aumentar_Gelo|s_debounceCnt\(7) & !\Aumentar_Gelo|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(7),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~13\,
	combout => \Aumentar_Gelo|Add0~14_combout\,
	cout => \Aumentar_Gelo|Add0~15\);

-- Location: LCCOMB_X92_Y18_N6
\Aumentar_Gelo|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~12_combout\ = (\Aumentar_Gelo|Add0~14_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Aumentar_Gelo|Add0~14_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~12_combout\);

-- Location: FF_X92_Y18_N7
\Aumentar_Gelo|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~12_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(7));

-- Location: LCCOMB_X91_Y19_N26
\Aumentar_Gelo|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~16_combout\ = (\Aumentar_Gelo|s_debounceCnt\(8) & ((GND) # (!\Aumentar_Gelo|Add0~15\))) # (!\Aumentar_Gelo|s_debounceCnt\(8) & (\Aumentar_Gelo|Add0~15\ $ (GND)))
-- \Aumentar_Gelo|Add0~17\ = CARRY((\Aumentar_Gelo|s_debounceCnt\(8)) # (!\Aumentar_Gelo|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(8),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~15\,
	combout => \Aumentar_Gelo|Add0~16_combout\,
	cout => \Aumentar_Gelo|Add0~17\);

-- Location: LCCOMB_X92_Y18_N12
\Aumentar_Gelo|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~13_combout\ = (\Aumentar_Gelo|s_debounceCnt[13]~0_combout\ & ((\Aumentar_Gelo|Add0~16_combout\) # (!\Aumentar_Gelo|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|Add0~16_combout\,
	datab => \Aumentar_Gelo|s_previousIn~q\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~0_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~13_combout\);

-- Location: FF_X92_Y18_N13
\Aumentar_Gelo|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~13_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(8));

-- Location: LCCOMB_X91_Y19_N28
\Aumentar_Gelo|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~18_combout\ = (\Aumentar_Gelo|s_debounceCnt\(9) & (\Aumentar_Gelo|Add0~17\ & VCC)) # (!\Aumentar_Gelo|s_debounceCnt\(9) & (!\Aumentar_Gelo|Add0~17\))
-- \Aumentar_Gelo|Add0~19\ = CARRY((!\Aumentar_Gelo|s_debounceCnt\(9) & !\Aumentar_Gelo|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(9),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~17\,
	combout => \Aumentar_Gelo|Add0~18_combout\,
	cout => \Aumentar_Gelo|Add0~19\);

-- Location: LCCOMB_X92_Y18_N14
\Aumentar_Gelo|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~14_combout\ = (\Aumentar_Gelo|s_debounceCnt[13]~0_combout\ & ((\Aumentar_Gelo|Add0~18_combout\) # (!\Aumentar_Gelo|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_previousIn~q\,
	datac => \Aumentar_Gelo|Add0~18_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~0_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~14_combout\);

-- Location: FF_X92_Y18_N15
\Aumentar_Gelo|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~14_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(9));

-- Location: LCCOMB_X91_Y19_N30
\Aumentar_Gelo|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~20_combout\ = (\Aumentar_Gelo|s_debounceCnt\(10) & ((GND) # (!\Aumentar_Gelo|Add0~19\))) # (!\Aumentar_Gelo|s_debounceCnt\(10) & (\Aumentar_Gelo|Add0~19\ $ (GND)))
-- \Aumentar_Gelo|Add0~21\ = CARRY((\Aumentar_Gelo|s_debounceCnt\(10)) # (!\Aumentar_Gelo|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(10),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~19\,
	combout => \Aumentar_Gelo|Add0~20_combout\,
	cout => \Aumentar_Gelo|Add0~21\);

-- Location: LCCOMB_X92_Y18_N16
\Aumentar_Gelo|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~15_combout\ = (\Aumentar_Gelo|Add0~20_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|Add0~20_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~15_combout\);

-- Location: FF_X92_Y18_N17
\Aumentar_Gelo|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~15_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(10));

-- Location: LCCOMB_X92_Y18_N26
\Aumentar_Gelo|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_pulsedOut~2_combout\ = (!\Aumentar_Gelo|s_debounceCnt\(7) & (!\Aumentar_Gelo|s_debounceCnt\(10) & (!\Aumentar_Gelo|s_debounceCnt\(9) & !\Aumentar_Gelo|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(7),
	datab => \Aumentar_Gelo|s_debounceCnt\(10),
	datac => \Aumentar_Gelo|s_debounceCnt\(9),
	datad => \Aumentar_Gelo|s_debounceCnt\(8),
	combout => \Aumentar_Gelo|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X91_Y18_N0
\Aumentar_Gelo|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~22_combout\ = (\Aumentar_Gelo|s_debounceCnt\(11) & (\Aumentar_Gelo|Add0~21\ & VCC)) # (!\Aumentar_Gelo|s_debounceCnt\(11) & (!\Aumentar_Gelo|Add0~21\))
-- \Aumentar_Gelo|Add0~23\ = CARRY((!\Aumentar_Gelo|s_debounceCnt\(11) & !\Aumentar_Gelo|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(11),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~21\,
	combout => \Aumentar_Gelo|Add0~22_combout\,
	cout => \Aumentar_Gelo|Add0~23\);

-- Location: LCCOMB_X90_Y18_N16
\Aumentar_Gelo|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~16_combout\ = (\Aumentar_Gelo|s_debounceCnt[13]~0_combout\ & ((\Aumentar_Gelo|Add0~22_combout\) # (!\Aumentar_Gelo|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_previousIn~q\,
	datab => \Aumentar_Gelo|Add0~22_combout\,
	datac => \Aumentar_Gelo|s_debounceCnt[13]~0_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~16_combout\);

-- Location: FF_X90_Y18_N17
\Aumentar_Gelo|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~16_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(11));

-- Location: LCCOMB_X91_Y18_N2
\Aumentar_Gelo|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~24_combout\ = (\Aumentar_Gelo|s_debounceCnt\(12) & ((GND) # (!\Aumentar_Gelo|Add0~23\))) # (!\Aumentar_Gelo|s_debounceCnt\(12) & (\Aumentar_Gelo|Add0~23\ $ (GND)))
-- \Aumentar_Gelo|Add0~25\ = CARRY((\Aumentar_Gelo|s_debounceCnt\(12)) # (!\Aumentar_Gelo|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(12),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~23\,
	combout => \Aumentar_Gelo|Add0~24_combout\,
	cout => \Aumentar_Gelo|Add0~25\);

-- Location: LCCOMB_X90_Y18_N4
\Aumentar_Gelo|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~8_combout\ = (\Aumentar_Gelo|Add0~24_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|Add0~24_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~8_combout\);

-- Location: FF_X90_Y18_N5
\Aumentar_Gelo|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~8_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(12));

-- Location: LCCOMB_X91_Y18_N4
\Aumentar_Gelo|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~26_combout\ = (\Aumentar_Gelo|s_debounceCnt\(13) & (\Aumentar_Gelo|Add0~25\ & VCC)) # (!\Aumentar_Gelo|s_debounceCnt\(13) & (!\Aumentar_Gelo|Add0~25\))
-- \Aumentar_Gelo|Add0~27\ = CARRY((!\Aumentar_Gelo|s_debounceCnt\(13) & !\Aumentar_Gelo|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(13),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~25\,
	combout => \Aumentar_Gelo|Add0~26_combout\,
	cout => \Aumentar_Gelo|Add0~27\);

-- Location: LCCOMB_X90_Y18_N30
\Aumentar_Gelo|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~9_combout\ = (\Aumentar_Gelo|Add0~26_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Aumentar_Gelo|Add0~26_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~9_combout\);

-- Location: FF_X90_Y18_N31
\Aumentar_Gelo|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~9_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(13));

-- Location: LCCOMB_X91_Y18_N6
\Aumentar_Gelo|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~28_combout\ = (\Aumentar_Gelo|s_debounceCnt\(14) & ((GND) # (!\Aumentar_Gelo|Add0~27\))) # (!\Aumentar_Gelo|s_debounceCnt\(14) & (\Aumentar_Gelo|Add0~27\ $ (GND)))
-- \Aumentar_Gelo|Add0~29\ = CARRY((\Aumentar_Gelo|s_debounceCnt\(14)) # (!\Aumentar_Gelo|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(14),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~27\,
	combout => \Aumentar_Gelo|Add0~28_combout\,
	cout => \Aumentar_Gelo|Add0~29\);

-- Location: LCCOMB_X90_Y18_N26
\Aumentar_Gelo|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~17_combout\ = (\Aumentar_Gelo|s_debounceCnt[13]~0_combout\ & ((\Aumentar_Gelo|Add0~28_combout\) # (!\Aumentar_Gelo|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_previousIn~q\,
	datac => \Aumentar_Gelo|s_debounceCnt[13]~0_combout\,
	datad => \Aumentar_Gelo|Add0~28_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~17_combout\);

-- Location: FF_X90_Y18_N27
\Aumentar_Gelo|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~17_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(14));

-- Location: LCCOMB_X91_Y18_N8
\Aumentar_Gelo|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~30_combout\ = (\Aumentar_Gelo|s_debounceCnt\(15) & (\Aumentar_Gelo|Add0~29\ & VCC)) # (!\Aumentar_Gelo|s_debounceCnt\(15) & (!\Aumentar_Gelo|Add0~29\))
-- \Aumentar_Gelo|Add0~31\ = CARRY((!\Aumentar_Gelo|s_debounceCnt\(15) & !\Aumentar_Gelo|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(15),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~29\,
	combout => \Aumentar_Gelo|Add0~30_combout\,
	cout => \Aumentar_Gelo|Add0~31\);

-- Location: LCCOMB_X91_Y18_N28
\Aumentar_Gelo|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~5_combout\ = (\Aumentar_Gelo|Add0~30_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Aumentar_Gelo|Add0~30_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~5_combout\);

-- Location: FF_X91_Y18_N29
\Aumentar_Gelo|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~5_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(15));

-- Location: LCCOMB_X91_Y18_N10
\Aumentar_Gelo|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~32_combout\ = (\Aumentar_Gelo|s_debounceCnt\(16) & ((GND) # (!\Aumentar_Gelo|Add0~31\))) # (!\Aumentar_Gelo|s_debounceCnt\(16) & (\Aumentar_Gelo|Add0~31\ $ (GND)))
-- \Aumentar_Gelo|Add0~33\ = CARRY((\Aumentar_Gelo|s_debounceCnt\(16)) # (!\Aumentar_Gelo|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(16),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~31\,
	combout => \Aumentar_Gelo|Add0~32_combout\,
	cout => \Aumentar_Gelo|Add0~33\);

-- Location: LCCOMB_X92_Y18_N20
\Aumentar_Gelo|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~6_combout\ = (\Aumentar_Gelo|Add0~32_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|Add0~32_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~6_combout\);

-- Location: FF_X92_Y18_N21
\Aumentar_Gelo|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~6_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(16));

-- Location: LCCOMB_X91_Y18_N12
\Aumentar_Gelo|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~34_combout\ = (\Aumentar_Gelo|s_debounceCnt\(17) & (\Aumentar_Gelo|Add0~33\ & VCC)) # (!\Aumentar_Gelo|s_debounceCnt\(17) & (!\Aumentar_Gelo|Add0~33\))
-- \Aumentar_Gelo|Add0~35\ = CARRY((!\Aumentar_Gelo|s_debounceCnt\(17) & !\Aumentar_Gelo|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(17),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~33\,
	combout => \Aumentar_Gelo|Add0~34_combout\,
	cout => \Aumentar_Gelo|Add0~35\);

-- Location: LCCOMB_X91_Y18_N30
\Aumentar_Gelo|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~7_combout\ = (\Aumentar_Gelo|Add0~34_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|Add0~34_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~7_combout\);

-- Location: FF_X91_Y18_N31
\Aumentar_Gelo|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~7_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(17));

-- Location: LCCOMB_X91_Y18_N14
\Aumentar_Gelo|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~36_combout\ = (\Aumentar_Gelo|s_debounceCnt\(18) & ((GND) # (!\Aumentar_Gelo|Add0~35\))) # (!\Aumentar_Gelo|s_debounceCnt\(18) & (\Aumentar_Gelo|Add0~35\ $ (GND)))
-- \Aumentar_Gelo|Add0~37\ = CARRY((\Aumentar_Gelo|s_debounceCnt\(18)) # (!\Aumentar_Gelo|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(18),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~35\,
	combout => \Aumentar_Gelo|Add0~36_combout\,
	cout => \Aumentar_Gelo|Add0~37\);

-- Location: LCCOMB_X92_Y18_N8
\Aumentar_Gelo|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt[18]~18_combout\ = (\Aumentar_Gelo|s_debounceCnt[13]~3_combout\ & (\Aumentar_Gelo|s_debounceCnt[13]~0_combout\ & ((\Aumentar_Gelo|Add0~36_combout\) # (!\Aumentar_Gelo|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|Add0~36_combout\,
	datab => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	datac => \Aumentar_Gelo|s_previousIn~q\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~0_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt[18]~18_combout\);

-- Location: FF_X92_Y18_N9
\Aumentar_Gelo|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(18));

-- Location: LCCOMB_X91_Y18_N16
\Aumentar_Gelo|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~38_combout\ = (\Aumentar_Gelo|s_debounceCnt\(19) & (\Aumentar_Gelo|Add0~37\ & VCC)) # (!\Aumentar_Gelo|s_debounceCnt\(19) & (!\Aumentar_Gelo|Add0~37\))
-- \Aumentar_Gelo|Add0~39\ = CARRY((!\Aumentar_Gelo|s_debounceCnt\(19) & !\Aumentar_Gelo|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(19),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~37\,
	combout => \Aumentar_Gelo|Add0~38_combout\,
	cout => \Aumentar_Gelo|Add0~39\);

-- Location: LCCOMB_X92_Y18_N18
\Aumentar_Gelo|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt[19]~19_combout\ = (\Aumentar_Gelo|s_debounceCnt[13]~3_combout\ & (\Aumentar_Gelo|s_debounceCnt[13]~0_combout\ & ((\Aumentar_Gelo|Add0~38_combout\) # (!\Aumentar_Gelo|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_previousIn~q\,
	datab => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	datac => \Aumentar_Gelo|Add0~38_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~0_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt[19]~19_combout\);

-- Location: FF_X92_Y18_N19
\Aumentar_Gelo|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(19));

-- Location: LCCOMB_X92_Y18_N24
\Aumentar_Gelo|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_pulsedOut~3_combout\ = (!\Aumentar_Gelo|s_debounceCnt\(14) & (!\Aumentar_Gelo|s_debounceCnt\(18) & (!\Aumentar_Gelo|s_debounceCnt\(11) & !\Aumentar_Gelo|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(14),
	datab => \Aumentar_Gelo|s_debounceCnt\(18),
	datac => \Aumentar_Gelo|s_debounceCnt\(11),
	datad => \Aumentar_Gelo|s_debounceCnt\(19),
	combout => \Aumentar_Gelo|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X91_Y18_N18
\Aumentar_Gelo|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~40_combout\ = (\Aumentar_Gelo|s_debounceCnt\(20) & ((GND) # (!\Aumentar_Gelo|Add0~39\))) # (!\Aumentar_Gelo|s_debounceCnt\(20) & (\Aumentar_Gelo|Add0~39\ $ (GND)))
-- \Aumentar_Gelo|Add0~41\ = CARRY((\Aumentar_Gelo|s_debounceCnt\(20)) # (!\Aumentar_Gelo|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(20),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~39\,
	combout => \Aumentar_Gelo|Add0~40_combout\,
	cout => \Aumentar_Gelo|Add0~41\);

-- Location: LCCOMB_X91_Y18_N24
\Aumentar_Gelo|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt[20]~10_combout\ = (\Aumentar_Gelo|s_debounceCnt[13]~3_combout\ & (\Aumentar_Gelo|Add0~40_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	datac => \Aumentar_Gelo|Add0~40_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt[20]~10_combout\);

-- Location: FF_X91_Y18_N25
\Aumentar_Gelo|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(20));

-- Location: LCCOMB_X92_Y18_N4
\Aumentar_Gelo|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_pulsedOut~1_combout\ = (!\Aumentar_Gelo|s_debounceCnt\(21) & (!\Aumentar_Gelo|s_debounceCnt\(20) & (!\Aumentar_Gelo|s_debounceCnt\(12) & !\Aumentar_Gelo|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(21),
	datab => \Aumentar_Gelo|s_debounceCnt\(20),
	datac => \Aumentar_Gelo|s_debounceCnt\(12),
	datad => \Aumentar_Gelo|s_debounceCnt\(13),
	combout => \Aumentar_Gelo|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X92_Y18_N2
\Aumentar_Gelo|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_pulsedOut~0_combout\ = (!\Aumentar_Gelo|s_debounceCnt\(16) & (!\Aumentar_Gelo|s_debounceCnt\(17) & (!\Aumentar_Gelo|s_debounceCnt\(15) & !\Aumentar_Gelo|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(16),
	datab => \Aumentar_Gelo|s_debounceCnt\(17),
	datac => \Aumentar_Gelo|s_debounceCnt\(15),
	datad => \Aumentar_Gelo|s_debounceCnt\(6),
	combout => \Aumentar_Gelo|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X92_Y18_N22
\Aumentar_Gelo|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_pulsedOut~4_combout\ = (\Aumentar_Gelo|s_pulsedOut~2_combout\ & (\Aumentar_Gelo|s_pulsedOut~3_combout\ & (\Aumentar_Gelo|s_pulsedOut~1_combout\ & \Aumentar_Gelo|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_pulsedOut~2_combout\,
	datab => \Aumentar_Gelo|s_pulsedOut~3_combout\,
	datac => \Aumentar_Gelo|s_pulsedOut~1_combout\,
	datad => \Aumentar_Gelo|s_pulsedOut~0_combout\,
	combout => \Aumentar_Gelo|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X90_Y18_N6
\Aumentar_Gelo|s_debounceCnt[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt[13]~2_combout\ = (\Aumentar_Gelo|s_debounceCnt\(0)) # (((\Aumentar_Gelo|s_debounceCnt\(5)) # (!\Aumentar_Gelo|s_pulsedOut~4_combout\)) # (!\Aumentar_Gelo|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(0),
	datab => \Aumentar_Gelo|s_pulsedOut~5_combout\,
	datac => \Aumentar_Gelo|s_debounceCnt\(5),
	datad => \Aumentar_Gelo|s_pulsedOut~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt[13]~2_combout\);

-- Location: LCCOMB_X90_Y18_N22
\Aumentar_Gelo|s_debounceCnt[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt[13]~3_combout\ = ((\Aumentar_Gelo|s_debounceCnt\(22)) # ((\Aumentar_Gelo|s_debounceCnt[13]~2_combout\) # (!\Aumentar_Gelo|s_previousIn~q\))) # (!\Aumentar_Gelo|s_AumDim~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_AumDim~q\,
	datab => \Aumentar_Gelo|s_debounceCnt\(22),
	datac => \Aumentar_Gelo|s_previousIn~q\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~2_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\);

-- Location: LCCOMB_X91_Y18_N20
\Aumentar_Gelo|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~42_combout\ = (\Aumentar_Gelo|s_debounceCnt\(21) & (\Aumentar_Gelo|Add0~41\ & VCC)) # (!\Aumentar_Gelo|s_debounceCnt\(21) & (!\Aumentar_Gelo|Add0~41\))
-- \Aumentar_Gelo|Add0~43\ = CARRY((!\Aumentar_Gelo|s_debounceCnt\(21) & !\Aumentar_Gelo|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(21),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~41\,
	combout => \Aumentar_Gelo|Add0~42_combout\,
	cout => \Aumentar_Gelo|Add0~43\);

-- Location: LCCOMB_X91_Y18_N26
\Aumentar_Gelo|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt[21]~11_combout\ = (\Aumentar_Gelo|s_debounceCnt[13]~3_combout\ & (\Aumentar_Gelo|Add0~42_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	datac => \Aumentar_Gelo|Add0~42_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt[21]~11_combout\);

-- Location: FF_X91_Y18_N27
\Aumentar_Gelo|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(21));

-- Location: LCCOMB_X92_Y18_N10
\Aumentar_Gelo|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|LessThan0~4_combout\ = (\Aumentar_Gelo|s_debounceCnt\(12)) # ((\Aumentar_Gelo|s_debounceCnt\(13)) # ((\Aumentar_Gelo|s_debounceCnt\(11) & \Aumentar_Gelo|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(11),
	datab => \Aumentar_Gelo|s_debounceCnt\(10),
	datac => \Aumentar_Gelo|s_debounceCnt\(12),
	datad => \Aumentar_Gelo|s_debounceCnt\(13),
	combout => \Aumentar_Gelo|LessThan0~4_combout\);

-- Location: LCCOMB_X92_Y18_N28
\Aumentar_Gelo|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|LessThan0~5_combout\ = (\Aumentar_Gelo|s_debounceCnt\(15)) # ((\Aumentar_Gelo|s_debounceCnt\(16)) # ((\Aumentar_Gelo|s_debounceCnt\(14) & \Aumentar_Gelo|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(15),
	datab => \Aumentar_Gelo|s_debounceCnt\(16),
	datac => \Aumentar_Gelo|s_debounceCnt\(14),
	datad => \Aumentar_Gelo|LessThan0~4_combout\,
	combout => \Aumentar_Gelo|LessThan0~5_combout\);

-- Location: LCCOMB_X92_Y18_N30
\Aumentar_Gelo|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|LessThan0~6_combout\ = (\Aumentar_Gelo|s_debounceCnt\(19) & (\Aumentar_Gelo|s_debounceCnt\(18) & ((\Aumentar_Gelo|s_debounceCnt\(17)) # (\Aumentar_Gelo|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(19),
	datab => \Aumentar_Gelo|s_debounceCnt\(17),
	datac => \Aumentar_Gelo|s_debounceCnt\(18),
	datad => \Aumentar_Gelo|LessThan0~5_combout\,
	combout => \Aumentar_Gelo|LessThan0~6_combout\);

-- Location: LCCOMB_X89_Y18_N28
\Aumentar_Gelo|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|LessThan0~1_combout\ = (\Aumentar_Gelo|s_debounceCnt\(11) & \Aumentar_Gelo|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(11),
	datac => \Aumentar_Gelo|s_debounceCnt\(9),
	combout => \Aumentar_Gelo|LessThan0~1_combout\);

-- Location: LCCOMB_X92_Y18_N0
\Aumentar_Gelo|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|LessThan0~0_combout\ = (\Aumentar_Gelo|s_debounceCnt\(8) & (\Aumentar_Gelo|s_debounceCnt\(18) & (\Aumentar_Gelo|s_debounceCnt\(14) & \Aumentar_Gelo|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(8),
	datab => \Aumentar_Gelo|s_debounceCnt\(18),
	datac => \Aumentar_Gelo|s_debounceCnt\(14),
	datad => \Aumentar_Gelo|s_debounceCnt\(19),
	combout => \Aumentar_Gelo|LessThan0~0_combout\);

-- Location: LCCOMB_X90_Y18_N18
\Aumentar_Gelo|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|LessThan0~2_combout\ = (\Aumentar_Gelo|s_debounceCnt\(6) & ((\Aumentar_Gelo|s_debounceCnt\(5)) # ((\Aumentar_Gelo|s_debounceCnt\(0)) # (!\Aumentar_Gelo|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(5),
	datab => \Aumentar_Gelo|s_debounceCnt\(6),
	datac => \Aumentar_Gelo|s_debounceCnt\(0),
	datad => \Aumentar_Gelo|s_pulsedOut~5_combout\,
	combout => \Aumentar_Gelo|LessThan0~2_combout\);

-- Location: LCCOMB_X89_Y18_N18
\Aumentar_Gelo|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|LessThan0~3_combout\ = (\Aumentar_Gelo|LessThan0~1_combout\ & (\Aumentar_Gelo|LessThan0~0_combout\ & ((\Aumentar_Gelo|s_debounceCnt\(7)) # (\Aumentar_Gelo|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(7),
	datab => \Aumentar_Gelo|LessThan0~1_combout\,
	datac => \Aumentar_Gelo|LessThan0~0_combout\,
	datad => \Aumentar_Gelo|LessThan0~2_combout\,
	combout => \Aumentar_Gelo|LessThan0~3_combout\);

-- Location: LCCOMB_X89_Y18_N24
\Aumentar_Gelo|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|LessThan0~7_combout\ = (\Aumentar_Gelo|s_debounceCnt\(21)) # ((\Aumentar_Gelo|s_debounceCnt\(20)) # ((\Aumentar_Gelo|LessThan0~6_combout\) # (\Aumentar_Gelo|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(21),
	datab => \Aumentar_Gelo|s_debounceCnt\(20),
	datac => \Aumentar_Gelo|LessThan0~6_combout\,
	datad => \Aumentar_Gelo|LessThan0~3_combout\,
	combout => \Aumentar_Gelo|LessThan0~7_combout\);

-- Location: LCCOMB_X90_Y18_N8
\Aumentar_Gelo|s_debounceCnt[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt[13]~0_combout\ = (\Aumentar_Gelo|s_AumDim~q\ & ((!\Aumentar_Gelo|LessThan0~7_combout\) # (!\Aumentar_Gelo|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(22),
	datac => \Aumentar_Gelo|s_AumDim~q\,
	datad => \Aumentar_Gelo|LessThan0~7_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt[13]~0_combout\);

-- Location: LCCOMB_X90_Y18_N14
\Aumentar_Gelo|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt[22]~25_combout\ = (\Aumentar_Gelo|s_AumDim~q\ & ((\Aumentar_Gelo|s_debounceCnt\(22) & ((!\Aumentar_Gelo|LessThan0~7_combout\))) # (!\Aumentar_Gelo|s_debounceCnt\(22) & (\Aumentar_Gelo|s_debounceCnt[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt[13]~2_combout\,
	datab => \Aumentar_Gelo|s_debounceCnt\(22),
	datac => \Aumentar_Gelo|s_AumDim~q\,
	datad => \Aumentar_Gelo|LessThan0~7_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X91_Y18_N22
\Aumentar_Gelo|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~44_combout\ = \Aumentar_Gelo|Add0~43\ $ (\Aumentar_Gelo|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Aumentar_Gelo|s_debounceCnt\(22),
	cin => \Aumentar_Gelo|Add0~43\,
	combout => \Aumentar_Gelo|Add0~44_combout\);

-- Location: LCCOMB_X90_Y18_N28
\Aumentar_Gelo|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt[22]~26_combout\ = (\Aumentar_Gelo|s_previousIn~q\ & (((\Aumentar_Gelo|s_debounceCnt[22]~25_combout\ & \Aumentar_Gelo|Add0~44_combout\)))) # (!\Aumentar_Gelo|s_previousIn~q\ & (\Aumentar_Gelo|s_debounceCnt[13]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_previousIn~q\,
	datab => \Aumentar_Gelo|s_debounceCnt[13]~0_combout\,
	datac => \Aumentar_Gelo|s_debounceCnt[22]~25_combout\,
	datad => \Aumentar_Gelo|Add0~44_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt[22]~26_combout\);

-- Location: FF_X90_Y18_N29
\Aumentar_Gelo|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(22));

-- Location: LCCOMB_X90_Y18_N20
\Aumentar_Gelo|s_debounceCnt[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt[13]~4_combout\ = (\Aumentar_Gelo|s_previousIn~q\ & (\Aumentar_Gelo|s_AumDim~q\ & ((!\Aumentar_Gelo|LessThan0~7_combout\) # (!\Aumentar_Gelo|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_previousIn~q\,
	datab => \Aumentar_Gelo|s_debounceCnt\(22),
	datac => \Aumentar_Gelo|s_AumDim~q\,
	datad => \Aumentar_Gelo|LessThan0~7_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\);

-- Location: LCCOMB_X90_Y18_N12
\Aumentar_Gelo|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~24_combout\ = (\Aumentar_Gelo|Add0~0_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Aumentar_Gelo|Add0~0_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~24_combout\);

-- Location: FF_X90_Y18_N13
\Aumentar_Gelo|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~24_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(0));

-- Location: LCCOMB_X91_Y19_N12
\Aumentar_Gelo|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~2_combout\ = (\Aumentar_Gelo|s_debounceCnt\(1) & (\Aumentar_Gelo|Add0~1\ & VCC)) # (!\Aumentar_Gelo|s_debounceCnt\(1) & (!\Aumentar_Gelo|Add0~1\))
-- \Aumentar_Gelo|Add0~3\ = CARRY((!\Aumentar_Gelo|s_debounceCnt\(1) & !\Aumentar_Gelo|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(1),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~1\,
	combout => \Aumentar_Gelo|Add0~2_combout\,
	cout => \Aumentar_Gelo|Add0~3\);

-- Location: LCCOMB_X91_Y19_N4
\Aumentar_Gelo|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~20_combout\ = (\Aumentar_Gelo|Add0~2_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|Add0~2_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~20_combout\);

-- Location: FF_X91_Y19_N5
\Aumentar_Gelo|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~20_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(1));

-- Location: LCCOMB_X91_Y19_N14
\Aumentar_Gelo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~4_combout\ = (\Aumentar_Gelo|s_debounceCnt\(2) & ((GND) # (!\Aumentar_Gelo|Add0~3\))) # (!\Aumentar_Gelo|s_debounceCnt\(2) & (\Aumentar_Gelo|Add0~3\ $ (GND)))
-- \Aumentar_Gelo|Add0~5\ = CARRY((\Aumentar_Gelo|s_debounceCnt\(2)) # (!\Aumentar_Gelo|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(2),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~3\,
	combout => \Aumentar_Gelo|Add0~4_combout\,
	cout => \Aumentar_Gelo|Add0~5\);

-- Location: LCCOMB_X91_Y19_N2
\Aumentar_Gelo|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~21_combout\ = (\Aumentar_Gelo|Add0~4_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Aumentar_Gelo|Add0~4_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~21_combout\);

-- Location: FF_X91_Y19_N3
\Aumentar_Gelo|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~21_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(2));

-- Location: LCCOMB_X91_Y19_N16
\Aumentar_Gelo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|Add0~6_combout\ = (\Aumentar_Gelo|s_debounceCnt\(3) & (\Aumentar_Gelo|Add0~5\ & VCC)) # (!\Aumentar_Gelo|s_debounceCnt\(3) & (!\Aumentar_Gelo|Add0~5\))
-- \Aumentar_Gelo|Add0~7\ = CARRY((!\Aumentar_Gelo|s_debounceCnt\(3) & !\Aumentar_Gelo|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|s_debounceCnt\(3),
	datad => VCC,
	cin => \Aumentar_Gelo|Add0~5\,
	combout => \Aumentar_Gelo|Add0~6_combout\,
	cout => \Aumentar_Gelo|Add0~7\);

-- Location: LCCOMB_X91_Y19_N0
\Aumentar_Gelo|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~22_combout\ = (\Aumentar_Gelo|Add0~6_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|Add0~6_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~22_combout\);

-- Location: FF_X91_Y19_N1
\Aumentar_Gelo|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~22_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(3));

-- Location: LCCOMB_X91_Y19_N6
\Aumentar_Gelo|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_debounceCnt~23_combout\ = (\Aumentar_Gelo|Add0~8_combout\ & \Aumentar_Gelo|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Aumentar_Gelo|Add0~8_combout\,
	datad => \Aumentar_Gelo|s_debounceCnt[13]~4_combout\,
	combout => \Aumentar_Gelo|s_debounceCnt~23_combout\);

-- Location: FF_X91_Y19_N7
\Aumentar_Gelo|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_debounceCnt~23_combout\,
	ena => \Aumentar_Gelo|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_debounceCnt\(4));

-- Location: LCCOMB_X91_Y19_N8
\Aumentar_Gelo|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_pulsedOut~5_combout\ = (!\Aumentar_Gelo|s_debounceCnt\(4) & (!\Aumentar_Gelo|s_debounceCnt\(2) & (!\Aumentar_Gelo|s_debounceCnt\(1) & !\Aumentar_Gelo|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_debounceCnt\(4),
	datab => \Aumentar_Gelo|s_debounceCnt\(2),
	datac => \Aumentar_Gelo|s_debounceCnt\(1),
	datad => \Aumentar_Gelo|s_debounceCnt\(3),
	combout => \Aumentar_Gelo|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X90_Y18_N2
\Aumentar_Gelo|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_pulsedOut~6_combout\ = (\Aumentar_Gelo|s_previousIn~q\ & (!\Aumentar_Gelo|s_debounceCnt\(22) & (\Aumentar_Gelo|s_AumDim~q\ & \Aumentar_Gelo|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_previousIn~q\,
	datab => \Aumentar_Gelo|s_debounceCnt\(22),
	datac => \Aumentar_Gelo|s_AumDim~q\,
	datad => \Aumentar_Gelo|s_debounceCnt\(0),
	combout => \Aumentar_Gelo|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X90_Y18_N24
\Aumentar_Gelo|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Aumentar_Gelo|s_pulsedOut~7_combout\ = (\Aumentar_Gelo|s_pulsedOut~5_combout\ & (\Aumentar_Gelo|s_pulsedOut~6_combout\ & (!\Aumentar_Gelo|s_debounceCnt\(5) & \Aumentar_Gelo|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_pulsedOut~5_combout\,
	datab => \Aumentar_Gelo|s_pulsedOut~6_combout\,
	datac => \Aumentar_Gelo|s_debounceCnt\(5),
	datad => \Aumentar_Gelo|s_pulsedOut~4_combout\,
	combout => \Aumentar_Gelo|s_pulsedOut~7_combout\);

-- Location: FF_X90_Y18_N25
\Aumentar_Gelo|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Aumentar_Gelo|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Aumentar_Gelo|s_pulsedOut~q\);

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

-- Location: FF_X98_Y16_N9
\Diminuir_Gelo|s_AumDim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_AumDim~q\);

-- Location: FF_X98_Y16_N27
\Diminuir_Gelo|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Diminuir_Gelo|s_AumDim~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_previousIn~q\);

-- Location: LCCOMB_X97_Y17_N10
\Diminuir_Gelo|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~0_combout\ = \Diminuir_Gelo|s_debounceCnt\(0) $ (VCC)
-- \Diminuir_Gelo|Add0~1\ = CARRY(\Diminuir_Gelo|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_debounceCnt\(0),
	datad => VCC,
	combout => \Diminuir_Gelo|Add0~0_combout\,
	cout => \Diminuir_Gelo|Add0~1\);

-- Location: LCCOMB_X97_Y17_N14
\Diminuir_Gelo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~4_combout\ = (\Diminuir_Gelo|s_debounceCnt\(2) & ((GND) # (!\Diminuir_Gelo|Add0~3\))) # (!\Diminuir_Gelo|s_debounceCnt\(2) & (\Diminuir_Gelo|Add0~3\ $ (GND)))
-- \Diminuir_Gelo|Add0~5\ = CARRY((\Diminuir_Gelo|s_debounceCnt\(2)) # (!\Diminuir_Gelo|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(2),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~3\,
	combout => \Diminuir_Gelo|Add0~4_combout\,
	cout => \Diminuir_Gelo|Add0~5\);

-- Location: LCCOMB_X97_Y17_N16
\Diminuir_Gelo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~6_combout\ = (\Diminuir_Gelo|s_debounceCnt\(3) & (\Diminuir_Gelo|Add0~5\ & VCC)) # (!\Diminuir_Gelo|s_debounceCnt\(3) & (!\Diminuir_Gelo|Add0~5\))
-- \Diminuir_Gelo|Add0~7\ = CARRY((!\Diminuir_Gelo|s_debounceCnt\(3) & !\Diminuir_Gelo|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_debounceCnt\(3),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~5\,
	combout => \Diminuir_Gelo|Add0~6_combout\,
	cout => \Diminuir_Gelo|Add0~7\);

-- Location: LCCOMB_X97_Y17_N4
\Diminuir_Gelo|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~21_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|Add0~6_combout\ & \Diminuir_Gelo|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|Add0~6_combout\,
	datad => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~21_combout\);

-- Location: FF_X97_Y17_N5
\Diminuir_Gelo|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~21_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(3));

-- Location: LCCOMB_X97_Y17_N18
\Diminuir_Gelo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~8_combout\ = (\Diminuir_Gelo|s_debounceCnt\(4) & ((GND) # (!\Diminuir_Gelo|Add0~7\))) # (!\Diminuir_Gelo|s_debounceCnt\(4) & (\Diminuir_Gelo|Add0~7\ $ (GND)))
-- \Diminuir_Gelo|Add0~9\ = CARRY((\Diminuir_Gelo|s_debounceCnt\(4)) # (!\Diminuir_Gelo|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_debounceCnt\(4),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~7\,
	combout => \Diminuir_Gelo|Add0~8_combout\,
	cout => \Diminuir_Gelo|Add0~9\);

-- Location: LCCOMB_X97_Y17_N2
\Diminuir_Gelo|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~22_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|Add0~8_combout\ & \Diminuir_Gelo|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|Add0~8_combout\,
	datad => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~22_combout\);

-- Location: FF_X97_Y17_N3
\Diminuir_Gelo|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~22_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(4));

-- Location: LCCOMB_X97_Y17_N20
\Diminuir_Gelo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~10_combout\ = (\Diminuir_Gelo|s_debounceCnt\(5) & (\Diminuir_Gelo|Add0~9\ & VCC)) # (!\Diminuir_Gelo|s_debounceCnt\(5) & (!\Diminuir_Gelo|Add0~9\))
-- \Diminuir_Gelo|Add0~11\ = CARRY((!\Diminuir_Gelo|s_debounceCnt\(5) & !\Diminuir_Gelo|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(5),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~9\,
	combout => \Diminuir_Gelo|Add0~10_combout\,
	cout => \Diminuir_Gelo|Add0~11\);

-- Location: LCCOMB_X96_Y16_N22
\Diminuir_Gelo|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~27_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & \Diminuir_Gelo|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datad => \Diminuir_Gelo|Add0~10_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~27_combout\);

-- Location: FF_X96_Y16_N23
\Diminuir_Gelo|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~27_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(5));

-- Location: LCCOMB_X97_Y17_N22
\Diminuir_Gelo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~12_combout\ = (\Diminuir_Gelo|s_debounceCnt\(6) & ((GND) # (!\Diminuir_Gelo|Add0~11\))) # (!\Diminuir_Gelo|s_debounceCnt\(6) & (\Diminuir_Gelo|Add0~11\ $ (GND)))
-- \Diminuir_Gelo|Add0~13\ = CARRY((\Diminuir_Gelo|s_debounceCnt\(6)) # (!\Diminuir_Gelo|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_debounceCnt\(6),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~11\,
	combout => \Diminuir_Gelo|Add0~12_combout\,
	cout => \Diminuir_Gelo|Add0~13\);

-- Location: LCCOMB_X98_Y16_N2
\Diminuir_Gelo|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~1_combout\ = (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & ((\Diminuir_Gelo|Add0~12_combout\) # (!\Diminuir_Gelo|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datad => \Diminuir_Gelo|Add0~12_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~1_combout\);

-- Location: FF_X98_Y16_N3
\Diminuir_Gelo|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~1_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(6));

-- Location: LCCOMB_X97_Y17_N24
\Diminuir_Gelo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~14_combout\ = (\Diminuir_Gelo|s_debounceCnt\(7) & (\Diminuir_Gelo|Add0~13\ & VCC)) # (!\Diminuir_Gelo|s_debounceCnt\(7) & (!\Diminuir_Gelo|Add0~13\))
-- \Diminuir_Gelo|Add0~15\ = CARRY((!\Diminuir_Gelo|s_debounceCnt\(7) & !\Diminuir_Gelo|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(7),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~13\,
	combout => \Diminuir_Gelo|Add0~14_combout\,
	cout => \Diminuir_Gelo|Add0~15\);

-- Location: LCCOMB_X96_Y16_N0
\Diminuir_Gelo|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~11_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & \Diminuir_Gelo|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datad => \Diminuir_Gelo|Add0~14_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~11_combout\);

-- Location: FF_X96_Y16_N1
\Diminuir_Gelo|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~11_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(7));

-- Location: LCCOMB_X98_Y16_N14
\Diminuir_Gelo|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|LessThan0~6_combout\ = (\Diminuir_Gelo|s_debounceCnt\(6) & ((\Diminuir_Gelo|s_debounceCnt\(5)) # ((\Diminuir_Gelo|s_debounceCnt\(0)) # (!\Diminuir_Gelo|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(5),
	datab => \Diminuir_Gelo|s_debounceCnt\(0),
	datac => \Diminuir_Gelo|s_pulsedOut~5_combout\,
	datad => \Diminuir_Gelo|s_debounceCnt\(6),
	combout => \Diminuir_Gelo|LessThan0~6_combout\);

-- Location: LCCOMB_X97_Y17_N26
\Diminuir_Gelo|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~16_combout\ = (\Diminuir_Gelo|s_debounceCnt\(8) & ((GND) # (!\Diminuir_Gelo|Add0~15\))) # (!\Diminuir_Gelo|s_debounceCnt\(8) & (\Diminuir_Gelo|Add0~15\ $ (GND)))
-- \Diminuir_Gelo|Add0~17\ = CARRY((\Diminuir_Gelo|s_debounceCnt\(8)) # (!\Diminuir_Gelo|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_debounceCnt\(8),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~15\,
	combout => \Diminuir_Gelo|Add0~16_combout\,
	cout => \Diminuir_Gelo|Add0~17\);

-- Location: LCCOMB_X98_Y16_N28
\Diminuir_Gelo|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~12_combout\ = (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & ((\Diminuir_Gelo|Add0~16_combout\) # (!\Diminuir_Gelo|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|Add0~16_combout\,
	datad => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~12_combout\);

-- Location: FF_X98_Y16_N29
\Diminuir_Gelo|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~12_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(8));

-- Location: LCCOMB_X97_Y17_N28
\Diminuir_Gelo|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~18_combout\ = (\Diminuir_Gelo|s_debounceCnt\(9) & (\Diminuir_Gelo|Add0~17\ & VCC)) # (!\Diminuir_Gelo|s_debounceCnt\(9) & (!\Diminuir_Gelo|Add0~17\))
-- \Diminuir_Gelo|Add0~19\ = CARRY((!\Diminuir_Gelo|s_debounceCnt\(9) & !\Diminuir_Gelo|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(9),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~17\,
	combout => \Diminuir_Gelo|Add0~18_combout\,
	cout => \Diminuir_Gelo|Add0~19\);

-- Location: LCCOMB_X96_Y16_N2
\Diminuir_Gelo|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~13_combout\ = (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & ((\Diminuir_Gelo|Add0~18_combout\) # (!\Diminuir_Gelo|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datad => \Diminuir_Gelo|Add0~18_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~13_combout\);

-- Location: FF_X96_Y16_N3
\Diminuir_Gelo|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~13_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(9));

-- Location: LCCOMB_X97_Y17_N30
\Diminuir_Gelo|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~20_combout\ = (\Diminuir_Gelo|s_debounceCnt\(10) & ((GND) # (!\Diminuir_Gelo|Add0~19\))) # (!\Diminuir_Gelo|s_debounceCnt\(10) & (\Diminuir_Gelo|Add0~19\ $ (GND)))
-- \Diminuir_Gelo|Add0~21\ = CARRY((\Diminuir_Gelo|s_debounceCnt\(10)) # (!\Diminuir_Gelo|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(10),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~19\,
	combout => \Diminuir_Gelo|Add0~20_combout\,
	cout => \Diminuir_Gelo|Add0~21\);

-- Location: LCCOMB_X96_Y16_N16
\Diminuir_Gelo|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~14_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & \Diminuir_Gelo|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datab => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datac => \Diminuir_Gelo|Add0~20_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~14_combout\);

-- Location: FF_X96_Y16_N17
\Diminuir_Gelo|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~14_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(10));

-- Location: LCCOMB_X97_Y16_N0
\Diminuir_Gelo|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~22_combout\ = (\Diminuir_Gelo|s_debounceCnt\(11) & (\Diminuir_Gelo|Add0~21\ & VCC)) # (!\Diminuir_Gelo|s_debounceCnt\(11) & (!\Diminuir_Gelo|Add0~21\))
-- \Diminuir_Gelo|Add0~23\ = CARRY((!\Diminuir_Gelo|s_debounceCnt\(11) & !\Diminuir_Gelo|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_debounceCnt\(11),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~21\,
	combout => \Diminuir_Gelo|Add0~22_combout\,
	cout => \Diminuir_Gelo|Add0~23\);

-- Location: LCCOMB_X96_Y16_N4
\Diminuir_Gelo|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~15_combout\ = (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & ((\Diminuir_Gelo|Add0~22_combout\) # (!\Diminuir_Gelo|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datab => \Diminuir_Gelo|Add0~22_combout\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~15_combout\);

-- Location: FF_X96_Y16_N5
\Diminuir_Gelo|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~15_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(11));

-- Location: LCCOMB_X97_Y16_N2
\Diminuir_Gelo|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~24_combout\ = (\Diminuir_Gelo|s_debounceCnt\(12) & ((GND) # (!\Diminuir_Gelo|Add0~23\))) # (!\Diminuir_Gelo|s_debounceCnt\(12) & (\Diminuir_Gelo|Add0~23\ $ (GND)))
-- \Diminuir_Gelo|Add0~25\ = CARRY((\Diminuir_Gelo|s_debounceCnt\(12)) # (!\Diminuir_Gelo|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(12),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~23\,
	combout => \Diminuir_Gelo|Add0~24_combout\,
	cout => \Diminuir_Gelo|Add0~25\);

-- Location: LCCOMB_X97_Y16_N30
\Diminuir_Gelo|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~7_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & \Diminuir_Gelo|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datad => \Diminuir_Gelo|Add0~24_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~7_combout\);

-- Location: FF_X97_Y16_N31
\Diminuir_Gelo|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~7_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(12));

-- Location: LCCOMB_X97_Y16_N4
\Diminuir_Gelo|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~26_combout\ = (\Diminuir_Gelo|s_debounceCnt\(13) & (\Diminuir_Gelo|Add0~25\ & VCC)) # (!\Diminuir_Gelo|s_debounceCnt\(13) & (!\Diminuir_Gelo|Add0~25\))
-- \Diminuir_Gelo|Add0~27\ = CARRY((!\Diminuir_Gelo|s_debounceCnt\(13) & !\Diminuir_Gelo|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(13),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~25\,
	combout => \Diminuir_Gelo|Add0~26_combout\,
	cout => \Diminuir_Gelo|Add0~27\);

-- Location: LCCOMB_X96_Y16_N10
\Diminuir_Gelo|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~8_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & \Diminuir_Gelo|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datad => \Diminuir_Gelo|Add0~26_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~8_combout\);

-- Location: FF_X96_Y16_N11
\Diminuir_Gelo|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~8_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(13));

-- Location: LCCOMB_X97_Y16_N6
\Diminuir_Gelo|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~28_combout\ = (\Diminuir_Gelo|s_debounceCnt\(14) & ((GND) # (!\Diminuir_Gelo|Add0~27\))) # (!\Diminuir_Gelo|s_debounceCnt\(14) & (\Diminuir_Gelo|Add0~27\ $ (GND)))
-- \Diminuir_Gelo|Add0~29\ = CARRY((\Diminuir_Gelo|s_debounceCnt\(14)) # (!\Diminuir_Gelo|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(14),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~27\,
	combout => \Diminuir_Gelo|Add0~28_combout\,
	cout => \Diminuir_Gelo|Add0~29\);

-- Location: LCCOMB_X97_Y16_N26
\Diminuir_Gelo|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~16_combout\ = (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & ((\Diminuir_Gelo|Add0~28_combout\) # (!\Diminuir_Gelo|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datad => \Diminuir_Gelo|Add0~28_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~16_combout\);

-- Location: FF_X97_Y16_N27
\Diminuir_Gelo|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~16_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(14));

-- Location: LCCOMB_X97_Y16_N8
\Diminuir_Gelo|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~30_combout\ = (\Diminuir_Gelo|s_debounceCnt\(15) & (\Diminuir_Gelo|Add0~29\ & VCC)) # (!\Diminuir_Gelo|s_debounceCnt\(15) & (!\Diminuir_Gelo|Add0~29\))
-- \Diminuir_Gelo|Add0~31\ = CARRY((!\Diminuir_Gelo|s_debounceCnt\(15) & !\Diminuir_Gelo|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_debounceCnt\(15),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~29\,
	combout => \Diminuir_Gelo|Add0~30_combout\,
	cout => \Diminuir_Gelo|Add0~31\);

-- Location: LCCOMB_X96_Y16_N20
\Diminuir_Gelo|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~4_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & \Diminuir_Gelo|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datab => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datac => \Diminuir_Gelo|Add0~30_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~4_combout\);

-- Location: FF_X96_Y16_N21
\Diminuir_Gelo|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~4_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(15));

-- Location: LCCOMB_X97_Y16_N10
\Diminuir_Gelo|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~32_combout\ = (\Diminuir_Gelo|s_debounceCnt\(16) & ((GND) # (!\Diminuir_Gelo|Add0~31\))) # (!\Diminuir_Gelo|s_debounceCnt\(16) & (\Diminuir_Gelo|Add0~31\ $ (GND)))
-- \Diminuir_Gelo|Add0~33\ = CARRY((\Diminuir_Gelo|s_debounceCnt\(16)) # (!\Diminuir_Gelo|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(16),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~31\,
	combout => \Diminuir_Gelo|Add0~32_combout\,
	cout => \Diminuir_Gelo|Add0~33\);

-- Location: LCCOMB_X96_Y16_N30
\Diminuir_Gelo|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~5_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & \Diminuir_Gelo|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datab => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datac => \Diminuir_Gelo|Add0~32_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~5_combout\);

-- Location: FF_X96_Y16_N31
\Diminuir_Gelo|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~5_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(16));

-- Location: LCCOMB_X97_Y16_N12
\Diminuir_Gelo|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~34_combout\ = (\Diminuir_Gelo|s_debounceCnt\(17) & (\Diminuir_Gelo|Add0~33\ & VCC)) # (!\Diminuir_Gelo|s_debounceCnt\(17) & (!\Diminuir_Gelo|Add0~33\))
-- \Diminuir_Gelo|Add0~35\ = CARRY((!\Diminuir_Gelo|s_debounceCnt\(17) & !\Diminuir_Gelo|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_debounceCnt\(17),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~33\,
	combout => \Diminuir_Gelo|Add0~34_combout\,
	cout => \Diminuir_Gelo|Add0~35\);

-- Location: LCCOMB_X97_Y16_N28
\Diminuir_Gelo|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~6_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & \Diminuir_Gelo|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datad => \Diminuir_Gelo|Add0~34_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~6_combout\);

-- Location: FF_X97_Y16_N29
\Diminuir_Gelo|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~6_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(17));

-- Location: LCCOMB_X97_Y16_N14
\Diminuir_Gelo|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~36_combout\ = (\Diminuir_Gelo|s_debounceCnt\(18) & ((GND) # (!\Diminuir_Gelo|Add0~35\))) # (!\Diminuir_Gelo|s_debounceCnt\(18) & (\Diminuir_Gelo|Add0~35\ $ (GND)))
-- \Diminuir_Gelo|Add0~37\ = CARRY((\Diminuir_Gelo|s_debounceCnt\(18)) # (!\Diminuir_Gelo|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(18),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~35\,
	combout => \Diminuir_Gelo|Add0~36_combout\,
	cout => \Diminuir_Gelo|Add0~37\);

-- Location: LCCOMB_X98_Y16_N30
\Diminuir_Gelo|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt[18]~17_combout\ = (\Diminuir_Gelo|s_debounceCnt[20]~3_combout\ & (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & ((\Diminuir_Gelo|Add0~36_combout\) # (!\Diminuir_Gelo|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datab => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datad => \Diminuir_Gelo|Add0~36_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt[18]~17_combout\);

-- Location: FF_X98_Y16_N31
\Diminuir_Gelo|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(18));

-- Location: LCCOMB_X97_Y16_N16
\Diminuir_Gelo|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~38_combout\ = (\Diminuir_Gelo|s_debounceCnt\(19) & (\Diminuir_Gelo|Add0~37\ & VCC)) # (!\Diminuir_Gelo|s_debounceCnt\(19) & (!\Diminuir_Gelo|Add0~37\))
-- \Diminuir_Gelo|Add0~39\ = CARRY((!\Diminuir_Gelo|s_debounceCnt\(19) & !\Diminuir_Gelo|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_debounceCnt\(19),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~37\,
	combout => \Diminuir_Gelo|Add0~38_combout\,
	cout => \Diminuir_Gelo|Add0~39\);

-- Location: LCCOMB_X98_Y16_N22
\Diminuir_Gelo|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt[19]~18_combout\ = (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & (\Diminuir_Gelo|s_debounceCnt[20]~3_combout\ & ((\Diminuir_Gelo|Add0~38_combout\) # (!\Diminuir_Gelo|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|Add0~38_combout\,
	datab => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datad => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt[19]~18_combout\);

-- Location: FF_X98_Y16_N23
\Diminuir_Gelo|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(19));

-- Location: LCCOMB_X98_Y16_N12
\Diminuir_Gelo|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|LessThan0~4_combout\ = (\Diminuir_Gelo|s_debounceCnt\(19) & (\Diminuir_Gelo|s_debounceCnt\(8) & (\Diminuir_Gelo|s_debounceCnt\(14) & \Diminuir_Gelo|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(19),
	datab => \Diminuir_Gelo|s_debounceCnt\(8),
	datac => \Diminuir_Gelo|s_debounceCnt\(14),
	datad => \Diminuir_Gelo|s_debounceCnt\(18),
	combout => \Diminuir_Gelo|LessThan0~4_combout\);

-- Location: LCCOMB_X98_Y16_N26
\Diminuir_Gelo|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|LessThan0~5_combout\ = (\Diminuir_Gelo|s_debounceCnt\(9) & (\Diminuir_Gelo|s_debounceCnt\(11) & \Diminuir_Gelo|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(9),
	datab => \Diminuir_Gelo|s_debounceCnt\(11),
	datad => \Diminuir_Gelo|LessThan0~4_combout\,
	combout => \Diminuir_Gelo|LessThan0~5_combout\);

-- Location: LCCOMB_X98_Y16_N0
\Diminuir_Gelo|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|LessThan0~1_combout\ = (\Diminuir_Gelo|s_debounceCnt\(13)) # ((\Diminuir_Gelo|s_debounceCnt\(12)) # ((\Diminuir_Gelo|s_debounceCnt\(11) & \Diminuir_Gelo|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(13),
	datab => \Diminuir_Gelo|s_debounceCnt\(12),
	datac => \Diminuir_Gelo|s_debounceCnt\(11),
	datad => \Diminuir_Gelo|s_debounceCnt\(10),
	combout => \Diminuir_Gelo|LessThan0~1_combout\);

-- Location: LCCOMB_X98_Y16_N18
\Diminuir_Gelo|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|LessThan0~2_combout\ = (\Diminuir_Gelo|s_debounceCnt\(15)) # ((\Diminuir_Gelo|s_debounceCnt\(16)) # ((\Diminuir_Gelo|s_debounceCnt\(14) & \Diminuir_Gelo|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(14),
	datab => \Diminuir_Gelo|s_debounceCnt\(15),
	datac => \Diminuir_Gelo|s_debounceCnt\(16),
	datad => \Diminuir_Gelo|LessThan0~1_combout\,
	combout => \Diminuir_Gelo|LessThan0~2_combout\);

-- Location: LCCOMB_X98_Y16_N24
\Diminuir_Gelo|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|LessThan0~3_combout\ = (\Diminuir_Gelo|s_debounceCnt\(18) & (\Diminuir_Gelo|s_debounceCnt\(19) & ((\Diminuir_Gelo|s_debounceCnt\(17)) # (\Diminuir_Gelo|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(18),
	datab => \Diminuir_Gelo|s_debounceCnt\(17),
	datac => \Diminuir_Gelo|s_debounceCnt\(19),
	datad => \Diminuir_Gelo|LessThan0~2_combout\,
	combout => \Diminuir_Gelo|LessThan0~3_combout\);

-- Location: LCCOMB_X98_Y16_N10
\Diminuir_Gelo|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|LessThan0~7_combout\ = (\Diminuir_Gelo|LessThan0~3_combout\) # ((\Diminuir_Gelo|LessThan0~5_combout\ & ((\Diminuir_Gelo|s_debounceCnt\(7)) # (\Diminuir_Gelo|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(7),
	datab => \Diminuir_Gelo|LessThan0~6_combout\,
	datac => \Diminuir_Gelo|LessThan0~5_combout\,
	datad => \Diminuir_Gelo|LessThan0~3_combout\,
	combout => \Diminuir_Gelo|LessThan0~7_combout\);

-- Location: LCCOMB_X97_Y16_N18
\Diminuir_Gelo|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~40_combout\ = (\Diminuir_Gelo|s_debounceCnt\(20) & ((GND) # (!\Diminuir_Gelo|Add0~39\))) # (!\Diminuir_Gelo|s_debounceCnt\(20) & (\Diminuir_Gelo|Add0~39\ $ (GND)))
-- \Diminuir_Gelo|Add0~41\ = CARRY((\Diminuir_Gelo|s_debounceCnt\(20)) # (!\Diminuir_Gelo|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_debounceCnt\(20),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~39\,
	combout => \Diminuir_Gelo|Add0~40_combout\,
	cout => \Diminuir_Gelo|Add0~41\);

-- Location: LCCOMB_X96_Y16_N28
\Diminuir_Gelo|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt[20]~9_combout\ = (\Diminuir_Gelo|s_debounceCnt[20]~3_combout\ & (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & (\Diminuir_Gelo|s_previousIn~q\ & \Diminuir_Gelo|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	datab => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datac => \Diminuir_Gelo|s_previousIn~q\,
	datad => \Diminuir_Gelo|Add0~40_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt[20]~9_combout\);

-- Location: FF_X96_Y16_N29
\Diminuir_Gelo|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(20));

-- Location: LCCOMB_X96_Y16_N6
\Diminuir_Gelo|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_pulsedOut~1_combout\ = (!\Diminuir_Gelo|s_debounceCnt\(13) & (!\Diminuir_Gelo|s_debounceCnt\(20) & (!\Diminuir_Gelo|s_debounceCnt\(12) & !\Diminuir_Gelo|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(13),
	datab => \Diminuir_Gelo|s_debounceCnt\(20),
	datac => \Diminuir_Gelo|s_debounceCnt\(12),
	datad => \Diminuir_Gelo|s_debounceCnt\(21),
	combout => \Diminuir_Gelo|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X96_Y16_N8
\Diminuir_Gelo|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_pulsedOut~0_combout\ = (!\Diminuir_Gelo|s_debounceCnt\(16) & (!\Diminuir_Gelo|s_debounceCnt\(15) & (!\Diminuir_Gelo|s_debounceCnt\(6) & !\Diminuir_Gelo|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(16),
	datab => \Diminuir_Gelo|s_debounceCnt\(15),
	datac => \Diminuir_Gelo|s_debounceCnt\(6),
	datad => \Diminuir_Gelo|s_debounceCnt\(17),
	combout => \Diminuir_Gelo|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X96_Y16_N14
\Diminuir_Gelo|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_pulsedOut~2_combout\ = (!\Diminuir_Gelo|s_debounceCnt\(10) & (!\Diminuir_Gelo|s_debounceCnt\(9) & (!\Diminuir_Gelo|s_debounceCnt\(8) & !\Diminuir_Gelo|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(10),
	datab => \Diminuir_Gelo|s_debounceCnt\(9),
	datac => \Diminuir_Gelo|s_debounceCnt\(8),
	datad => \Diminuir_Gelo|s_debounceCnt\(7),
	combout => \Diminuir_Gelo|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X96_Y16_N18
\Diminuir_Gelo|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_pulsedOut~3_combout\ = (!\Diminuir_Gelo|s_debounceCnt\(19) & (!\Diminuir_Gelo|s_debounceCnt\(14) & (!\Diminuir_Gelo|s_debounceCnt\(11) & !\Diminuir_Gelo|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(19),
	datab => \Diminuir_Gelo|s_debounceCnt\(14),
	datac => \Diminuir_Gelo|s_debounceCnt\(11),
	datad => \Diminuir_Gelo|s_debounceCnt\(18),
	combout => \Diminuir_Gelo|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X96_Y16_N24
\Diminuir_Gelo|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_pulsedOut~4_combout\ = (\Diminuir_Gelo|s_pulsedOut~1_combout\ & (\Diminuir_Gelo|s_pulsedOut~0_combout\ & (\Diminuir_Gelo|s_pulsedOut~2_combout\ & \Diminuir_Gelo|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_pulsedOut~1_combout\,
	datab => \Diminuir_Gelo|s_pulsedOut~0_combout\,
	datac => \Diminuir_Gelo|s_pulsedOut~2_combout\,
	datad => \Diminuir_Gelo|s_pulsedOut~3_combout\,
	combout => \Diminuir_Gelo|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X96_Y16_N12
\Diminuir_Gelo|s_debounceCnt[20]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt[20]~2_combout\ = (\Diminuir_Gelo|s_debounceCnt\(5)) # (((\Diminuir_Gelo|s_debounceCnt\(0)) # (!\Diminuir_Gelo|s_pulsedOut~4_combout\)) # (!\Diminuir_Gelo|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(5),
	datab => \Diminuir_Gelo|s_pulsedOut~5_combout\,
	datac => \Diminuir_Gelo|s_debounceCnt\(0),
	datad => \Diminuir_Gelo|s_pulsedOut~4_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt[20]~2_combout\);

-- Location: LCCOMB_X98_Y16_N16
\Diminuir_Gelo|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt[22]~24_combout\ = (\Diminuir_Gelo|s_debounceCnt\(22) & (!\Diminuir_Gelo|LessThan0~7_combout\ & ((\Diminuir_Gelo|LessThan0~0_combout\)))) # (!\Diminuir_Gelo|s_debounceCnt\(22) & 
-- (((\Diminuir_Gelo|s_debounceCnt[20]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|LessThan0~7_combout\,
	datab => \Diminuir_Gelo|s_debounceCnt[20]~2_combout\,
	datac => \Diminuir_Gelo|LessThan0~0_combout\,
	datad => \Diminuir_Gelo|s_debounceCnt\(22),
	combout => \Diminuir_Gelo|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X98_Y16_N4
\Diminuir_Gelo|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt[22]~25_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|s_AumDim~q\)) # (!\Diminuir_Gelo|s_previousIn~q\ & ((\Diminuir_Gelo|s_debounceCnt[20]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_AumDim~q\,
	datab => \Diminuir_Gelo|s_previousIn~q\,
	datad => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X97_Y16_N20
\Diminuir_Gelo|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~42_combout\ = (\Diminuir_Gelo|s_debounceCnt\(21) & (\Diminuir_Gelo|Add0~41\ & VCC)) # (!\Diminuir_Gelo|s_debounceCnt\(21) & (!\Diminuir_Gelo|Add0~41\))
-- \Diminuir_Gelo|Add0~43\ = CARRY((!\Diminuir_Gelo|s_debounceCnt\(21) & !\Diminuir_Gelo|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_debounceCnt\(21),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~41\,
	combout => \Diminuir_Gelo|Add0~42_combout\,
	cout => \Diminuir_Gelo|Add0~43\);

-- Location: LCCOMB_X97_Y16_N22
\Diminuir_Gelo|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~44_combout\ = \Diminuir_Gelo|Add0~43\ $ (\Diminuir_Gelo|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Diminuir_Gelo|s_debounceCnt\(22),
	cin => \Diminuir_Gelo|Add0~43\,
	combout => \Diminuir_Gelo|Add0~44_combout\);

-- Location: LCCOMB_X98_Y16_N20
\Diminuir_Gelo|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt[22]~26_combout\ = (\Diminuir_Gelo|s_debounceCnt[22]~25_combout\ & (((\Diminuir_Gelo|s_debounceCnt[22]~24_combout\ & \Diminuir_Gelo|Add0~44_combout\)) # (!\Diminuir_Gelo|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datab => \Diminuir_Gelo|s_debounceCnt[22]~24_combout\,
	datac => \Diminuir_Gelo|s_debounceCnt[22]~25_combout\,
	datad => \Diminuir_Gelo|Add0~44_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt[22]~26_combout\);

-- Location: FF_X98_Y16_N21
\Diminuir_Gelo|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(22));

-- Location: LCCOMB_X96_Y16_N26
\Diminuir_Gelo|s_debounceCnt[20]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt[20]~3_combout\ = ((\Diminuir_Gelo|s_debounceCnt\(22)) # ((\Diminuir_Gelo|s_debounceCnt[20]~2_combout\) # (!\Diminuir_Gelo|s_previousIn~q\))) # (!\Diminuir_Gelo|s_AumDim~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_AumDim~q\,
	datab => \Diminuir_Gelo|s_debounceCnt\(22),
	datac => \Diminuir_Gelo|s_previousIn~q\,
	datad => \Diminuir_Gelo|s_debounceCnt[20]~2_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\);

-- Location: LCCOMB_X97_Y16_N24
\Diminuir_Gelo|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt[21]~10_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & (\Diminuir_Gelo|s_debounceCnt[20]~3_combout\ & \Diminuir_Gelo|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datab => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	datad => \Diminuir_Gelo|Add0~42_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt[21]~10_combout\);

-- Location: FF_X97_Y16_N25
\Diminuir_Gelo|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(21));

-- Location: LCCOMB_X95_Y16_N28
\Diminuir_Gelo|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|LessThan0~0_combout\ = (!\Diminuir_Gelo|s_debounceCnt\(21) & !\Diminuir_Gelo|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Diminuir_Gelo|s_debounceCnt\(21),
	datad => \Diminuir_Gelo|s_debounceCnt\(20),
	combout => \Diminuir_Gelo|LessThan0~0_combout\);

-- Location: LCCOMB_X98_Y16_N8
\Diminuir_Gelo|s_debounceCnt[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt[20]~0_combout\ = (\Diminuir_Gelo|s_AumDim~q\ & (((\Diminuir_Gelo|LessThan0~0_combout\ & !\Diminuir_Gelo|LessThan0~7_combout\)) # (!\Diminuir_Gelo|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|LessThan0~0_combout\,
	datab => \Diminuir_Gelo|s_debounceCnt\(22),
	datac => \Diminuir_Gelo|s_AumDim~q\,
	datad => \Diminuir_Gelo|LessThan0~7_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\);

-- Location: LCCOMB_X98_Y16_N6
\Diminuir_Gelo|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~23_combout\ = (\Diminuir_Gelo|Add0~0_combout\ & (\Diminuir_Gelo|s_debounceCnt[20]~0_combout\ & \Diminuir_Gelo|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|Add0~0_combout\,
	datac => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	datad => \Diminuir_Gelo|s_previousIn~q\,
	combout => \Diminuir_Gelo|s_debounceCnt~23_combout\);

-- Location: FF_X98_Y16_N7
\Diminuir_Gelo|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~23_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(0));

-- Location: LCCOMB_X97_Y17_N12
\Diminuir_Gelo|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|Add0~2_combout\ = (\Diminuir_Gelo|s_debounceCnt\(1) & (\Diminuir_Gelo|Add0~1\ & VCC)) # (!\Diminuir_Gelo|s_debounceCnt\(1) & (!\Diminuir_Gelo|Add0~1\))
-- \Diminuir_Gelo|Add0~3\ = CARRY((!\Diminuir_Gelo|s_debounceCnt\(1) & !\Diminuir_Gelo|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_debounceCnt\(1),
	datad => VCC,
	cin => \Diminuir_Gelo|Add0~1\,
	combout => \Diminuir_Gelo|Add0~2_combout\,
	cout => \Diminuir_Gelo|Add0~3\);

-- Location: LCCOMB_X97_Y17_N0
\Diminuir_Gelo|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~19_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|Add0~2_combout\ & \Diminuir_Gelo|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|Add0~2_combout\,
	datad => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~19_combout\);

-- Location: FF_X97_Y17_N1
\Diminuir_Gelo|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~19_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(1));

-- Location: LCCOMB_X97_Y17_N6
\Diminuir_Gelo|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_debounceCnt~20_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|Add0~4_combout\ & \Diminuir_Gelo|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Diminuir_Gelo|s_previousIn~q\,
	datac => \Diminuir_Gelo|Add0~4_combout\,
	datad => \Diminuir_Gelo|s_debounceCnt[20]~0_combout\,
	combout => \Diminuir_Gelo|s_debounceCnt~20_combout\);

-- Location: FF_X97_Y17_N7
\Diminuir_Gelo|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_debounceCnt~20_combout\,
	ena => \Diminuir_Gelo|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_debounceCnt\(2));

-- Location: LCCOMB_X97_Y17_N8
\Diminuir_Gelo|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_pulsedOut~5_combout\ = (!\Diminuir_Gelo|s_debounceCnt\(2) & (!\Diminuir_Gelo|s_debounceCnt\(4) & (!\Diminuir_Gelo|s_debounceCnt\(3) & !\Diminuir_Gelo|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_debounceCnt\(2),
	datab => \Diminuir_Gelo|s_debounceCnt\(4),
	datac => \Diminuir_Gelo|s_debounceCnt\(3),
	datad => \Diminuir_Gelo|s_debounceCnt\(1),
	combout => \Diminuir_Gelo|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X95_Y16_N30
\Diminuir_Gelo|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_pulsedOut~6_combout\ = (\Diminuir_Gelo|s_previousIn~q\ & (\Diminuir_Gelo|s_debounceCnt\(0) & (\Diminuir_Gelo|s_AumDim~q\ & !\Diminuir_Gelo|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_previousIn~q\,
	datab => \Diminuir_Gelo|s_debounceCnt\(0),
	datac => \Diminuir_Gelo|s_AumDim~q\,
	datad => \Diminuir_Gelo|s_debounceCnt\(22),
	combout => \Diminuir_Gelo|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X95_Y16_N20
\Diminuir_Gelo|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Diminuir_Gelo|s_pulsedOut~7_combout\ = (\Diminuir_Gelo|s_pulsedOut~5_combout\ & (!\Diminuir_Gelo|s_debounceCnt\(5) & (\Diminuir_Gelo|s_pulsedOut~6_combout\ & \Diminuir_Gelo|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Diminuir_Gelo|s_pulsedOut~5_combout\,
	datab => \Diminuir_Gelo|s_debounceCnt\(5),
	datac => \Diminuir_Gelo|s_pulsedOut~6_combout\,
	datad => \Diminuir_Gelo|s_pulsedOut~4_combout\,
	combout => \Diminuir_Gelo|s_pulsedOut~7_combout\);

-- Location: FF_X95_Y16_N21
\Diminuir_Gelo|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Diminuir_Gelo|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Diminuir_Gelo|s_pulsedOut~q\);

-- Location: LCCOMB_X91_Y2_N8
\deb_to_SelBlocos|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|Selector5~2_combout\ = (\deb_to_SelBlocos|PS.T4cubos~q\ & (\conect_reg|dataOut\(4) & !\Diminuir_Gelo|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb_to_SelBlocos|PS.T4cubos~q\,
	datac => \conect_reg|dataOut\(4),
	datad => \Diminuir_Gelo|s_pulsedOut~q\,
	combout => \deb_to_SelBlocos|Selector5~2_combout\);

-- Location: LCCOMB_X91_Y2_N4
\deb_to_SelBlocos|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|Selector5~3_combout\ = (\deb_to_SelBlocos|Selector5~2_combout\) # ((\Aumentar_Gelo|s_pulsedOut~q\ & (\conect_reg|dataOut\(4) & \deb_to_SelBlocos|PS.T3cubos~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_pulsedOut~q\,
	datab => \conect_reg|dataOut\(4),
	datac => \deb_to_SelBlocos|Selector5~2_combout\,
	datad => \deb_to_SelBlocos|PS.T3cubos~q\,
	combout => \deb_to_SelBlocos|Selector5~3_combout\);

-- Location: FF_X91_Y2_N5
\deb_to_SelBlocos|PS.T4cubos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb_to_SelBlocos|Selector5~3_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_to_SelBlocos|PS.T4cubos~q\);

-- Location: LCCOMB_X91_Y2_N10
\deb_to_SelBlocos|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|Selector4~2_combout\ = (\Diminuir_Gelo|s_pulsedOut~q\ & (((\deb_to_SelBlocos|PS.T4cubos~q\)))) # (!\Diminuir_Gelo|s_pulsedOut~q\ & (!\Aumentar_Gelo|s_pulsedOut~q\ & (\deb_to_SelBlocos|PS.T3cubos~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_pulsedOut~q\,
	datab => \deb_to_SelBlocos|PS.T3cubos~q\,
	datac => \deb_to_SelBlocos|PS.T4cubos~q\,
	datad => \Diminuir_Gelo|s_pulsedOut~q\,
	combout => \deb_to_SelBlocos|Selector4~2_combout\);

-- Location: LCCOMB_X91_Y2_N18
\deb_to_SelBlocos|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|Selector4~3_combout\ = (\conect_reg|dataOut\(4) & ((\deb_to_SelBlocos|Selector4~2_combout\) # ((\deb_to_SelBlocos|PS.T2cubos~q\ & \Aumentar_Gelo|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_to_SelBlocos|PS.T2cubos~q\,
	datab => \Aumentar_Gelo|s_pulsedOut~q\,
	datac => \conect_reg|dataOut\(4),
	datad => \deb_to_SelBlocos|Selector4~2_combout\,
	combout => \deb_to_SelBlocos|Selector4~3_combout\);

-- Location: FF_X91_Y2_N19
\deb_to_SelBlocos|PS.T3cubos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb_to_SelBlocos|Selector4~3_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_to_SelBlocos|PS.T3cubos~q\);

-- Location: LCCOMB_X91_Y2_N22
\deb_to_SelBlocos|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|Selector2~0_combout\ = (!\Aumentar_Gelo|s_pulsedOut~q\ & ((\Diminuir_Gelo|s_pulsedOut~q\ & ((\deb_to_SelBlocos|PS.T3cubos~q\))) # (!\Diminuir_Gelo|s_pulsedOut~q\ & (\deb_to_SelBlocos|PS.T2cubos~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_to_SelBlocos|PS.T2cubos~q\,
	datab => \deb_to_SelBlocos|PS.T3cubos~q\,
	datac => \Diminuir_Gelo|s_pulsedOut~q\,
	datad => \Aumentar_Gelo|s_pulsedOut~q\,
	combout => \deb_to_SelBlocos|Selector2~0_combout\);

-- Location: LCCOMB_X91_Y2_N20
\deb_to_SelBlocos|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|Selector2~1_combout\ = ((\deb_to_SelBlocos|PS.T1cubo~q\ & \Aumentar_Gelo|s_pulsedOut~q\)) # (!\deb_to_SelBlocos|PS.Inicio~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_to_SelBlocos|PS.Inicio~q\,
	datac => \deb_to_SelBlocos|PS.T1cubo~q\,
	datad => \Aumentar_Gelo|s_pulsedOut~q\,
	combout => \deb_to_SelBlocos|Selector2~1_combout\);

-- Location: LCCOMB_X91_Y2_N12
\deb_to_SelBlocos|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|Selector2~2_combout\ = (\conect_reg|dataOut\(4) & ((\deb_to_SelBlocos|Selector2~0_combout\) # (\deb_to_SelBlocos|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conect_reg|dataOut\(4),
	datac => \deb_to_SelBlocos|Selector2~0_combout\,
	datad => \deb_to_SelBlocos|Selector2~1_combout\,
	combout => \deb_to_SelBlocos|Selector2~2_combout\);

-- Location: FF_X91_Y2_N13
\deb_to_SelBlocos|PS.T2cubos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb_to_SelBlocos|Selector2~2_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_to_SelBlocos|PS.T2cubos~q\);

-- Location: LCCOMB_X91_Y2_N2
\deb_to_SelBlocos|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|Selector3~2_combout\ = (\Diminuir_Gelo|s_pulsedOut~q\ & ((\deb_to_SelBlocos|PS.T2cubos~q\) # ((!\conect_reg|dataOut\(4) & \deb_to_SelBlocos|PS.T1cubo~q\)))) # (!\Diminuir_Gelo|s_pulsedOut~q\ & (((\deb_to_SelBlocos|PS.T1cubo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_to_SelBlocos|PS.T2cubos~q\,
	datab => \conect_reg|dataOut\(4),
	datac => \deb_to_SelBlocos|PS.T1cubo~q\,
	datad => \Diminuir_Gelo|s_pulsedOut~q\,
	combout => \deb_to_SelBlocos|Selector3~2_combout\);

-- Location: LCCOMB_X91_Y2_N30
\deb_to_SelBlocos|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|Selector3~3_combout\ = (\conect_reg|dataOut\(4) & ((\Aumentar_Gelo|s_pulsedOut~q\ & (\deb_to_SelBlocos|PS.T0cubos~q\)) # (!\Aumentar_Gelo|s_pulsedOut~q\ & ((\deb_to_SelBlocos|Selector3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Aumentar_Gelo|s_pulsedOut~q\,
	datab => \deb_to_SelBlocos|PS.T0cubos~q\,
	datac => \conect_reg|dataOut\(4),
	datad => \deb_to_SelBlocos|Selector3~2_combout\,
	combout => \deb_to_SelBlocos|Selector3~3_combout\);

-- Location: FF_X91_Y2_N31
\deb_to_SelBlocos|PS.T1cubo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb_to_SelBlocos|Selector3~3_combout\,
	sclr => \conect_reg|dataOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_to_SelBlocos|PS.T1cubo~q\);

-- Location: LCCOMB_X91_Y2_N16
\deb_to_SelBlocos|PS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|PS~9_combout\ = (!\Aumentar_Gelo|s_pulsedOut~q\ & ((\deb_to_SelBlocos|PS.T0cubos~q\) # ((\deb_to_SelBlocos|PS.T1cubo~q\ & \Diminuir_Gelo|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_to_SelBlocos|PS.T1cubo~q\,
	datab => \deb_to_SelBlocos|PS.T0cubos~q\,
	datac => \Diminuir_Gelo|s_pulsedOut~q\,
	datad => \Aumentar_Gelo|s_pulsedOut~q\,
	combout => \deb_to_SelBlocos|PS~9_combout\);

-- Location: LCCOMB_X91_Y2_N24
\deb_to_SelBlocos|PS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|PS~10_combout\ = (!\conect_reg|dataOut\(0) & (\conect_reg|dataOut\(4) & \deb_to_SelBlocos|PS~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conect_reg|dataOut\(0),
	datac => \conect_reg|dataOut\(4),
	datad => \deb_to_SelBlocos|PS~9_combout\,
	combout => \deb_to_SelBlocos|PS~10_combout\);

-- Location: FF_X91_Y2_N25
\deb_to_SelBlocos|PS.T0cubos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb_to_SelBlocos|PS~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb_to_SelBlocos|PS.T0cubos~q\);

-- Location: LCCOMB_X92_Y2_N8
\deb_to_SelBlocos|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|WideOr9~combout\ = (\deb_to_SelBlocos|PS.T0cubos~q\) # (!\deb_to_SelBlocos|PS.Inicio~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deb_to_SelBlocos|PS.Inicio~q\,
	datad => \deb_to_SelBlocos|PS.T0cubos~q\,
	combout => \deb_to_SelBlocos|WideOr9~combout\);

-- Location: LCCOMB_X91_Y2_N0
\deb_to_SelBlocos|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb_to_SelBlocos|WideOr8~0_combout\ = (!\deb_to_SelBlocos|PS.T3cubos~q\ & !\deb_to_SelBlocos|PS.T4cubos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb_to_SelBlocos|PS.T3cubos~q\,
	datac => \deb_to_SelBlocos|PS.T4cubos~q\,
	combout => \deb_to_SelBlocos|WideOr8~0_combout\);

-- Location: LCCOMB_X91_Y2_N26
\display_cubo2|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_cubo2|decOut_n[0]~0_combout\ = (!\deb_to_SelBlocos|PS.T1cubo~q\ & (!\deb_to_SelBlocos|PS.T0cubos~q\ & ((\deb_to_SelBlocos|PS.T2cubos~q\) # (!\deb_to_SelBlocos|WideOr8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_to_SelBlocos|PS.T2cubos~q\,
	datab => \deb_to_SelBlocos|WideOr8~0_combout\,
	datac => \deb_to_SelBlocos|PS.T1cubo~q\,
	datad => \deb_to_SelBlocos|PS.T0cubos~q\,
	combout => \display_cubo2|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X91_Y2_N28
\display_cubo2|decOut_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_cubo2|decOut_n[0]~1_combout\ = (!\deb_to_SelBlocos|PS.Inicio~q\) # (!\display_cubo2|decOut_n[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_cubo2|decOut_n[0]~0_combout\,
	datad => \deb_to_SelBlocos|PS.Inicio~q\,
	combout => \display_cubo2|decOut_n[0]~1_combout\);

-- Location: LCCOMB_X91_Y2_N14
\display_cubo3|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_cubo3|decOut_n[0]~0_combout\ = ((!\deb_to_SelBlocos|PS.T3cubos~q\ & !\deb_to_SelBlocos|PS.T4cubos~q\)) # (!\deb_to_SelBlocos|PS.Inicio~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb_to_SelBlocos|PS.Inicio~q\,
	datab => \deb_to_SelBlocos|PS.T3cubos~q\,
	datac => \deb_to_SelBlocos|PS.T4cubos~q\,
	combout => \display_cubo3|decOut_n[0]~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


