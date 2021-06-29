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

-- DATE "06/16/2021 09:17:49"

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

ENTITY 	Maquina_AutoTop IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END Maquina_AutoTop;

-- Design Ports Information
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
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Maquina_AutoTop IS
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
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \s_cafe~feeder_combout\ : std_logic;
SIGNAL \s_cafe~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \s_cha~feeder_combout\ : std_logic;
SIGNAL \s_cha~q\ : std_logic;
SIGNAL \Escolha_pro|Selector6~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \s_choc~feeder_combout\ : std_logic;
SIGNAL \s_choc~q\ : std_logic;
SIGNAL \Escolha_pro|Selector6~1_combout\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.Tchoc~feeder_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \s_reset~q\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.Tchoc~q\ : std_logic;
SIGNAL \Escolha_pro|Selector3~0_combout\ : std_logic;
SIGNAL \Escolha_pro|Selector9~0_combout\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.Ready_Choc~q\ : std_logic;
SIGNAL \Escolha_pro|Selector4~0_combout\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.Tcafe~feeder_combout\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.Tcafe~q\ : std_logic;
SIGNAL \Escolha_pro|Selector7~0_combout\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.Ready_Cafe~q\ : std_logic;
SIGNAL \Escolha_pro|WideOr0~0_combout\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.Start~0_combout\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.Start~q\ : std_logic;
SIGNAL \Escolha_pro|WideOr1~0_combout\ : std_logic;
SIGNAL \TimerFSM|Mult0|mult_core|_~2_combout\ : std_logic;
SIGNAL \TimerFSM|Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\ : std_logic;
SIGNAL \TimerFSM|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~1_cout\ : std_logic;
SIGNAL \TimerFSM|Add0~3\ : std_logic;
SIGNAL \TimerFSM|Add0~6\ : std_logic;
SIGNAL \TimerFSM|Add0~9\ : std_logic;
SIGNAL \TimerFSM|Add0~12\ : std_logic;
SIGNAL \TimerFSM|Add0~15\ : std_logic;
SIGNAL \TimerFSM|Add0~18\ : std_logic;
SIGNAL \TimerFSM|Add0~20\ : std_logic;
SIGNAL \TimerFSM|Add0~22\ : std_logic;
SIGNAL \TimerFSM|Add0~24\ : std_logic;
SIGNAL \TimerFSM|Add0~26\ : std_logic;
SIGNAL \TimerFSM|Add0~28\ : std_logic;
SIGNAL \TimerFSM|Add0~30\ : std_logic;
SIGNAL \TimerFSM|Add0~32\ : std_logic;
SIGNAL \TimerFSM|Add0~34\ : std_logic;
SIGNAL \TimerFSM|Add0~36\ : std_logic;
SIGNAL \TimerFSM|Add0~38\ : std_logic;
SIGNAL \TimerFSM|Add0~40\ : std_logic;
SIGNAL \TimerFSM|Add0~42\ : std_logic;
SIGNAL \TimerFSM|Add0~44\ : std_logic;
SIGNAL \TimerFSM|Add0~45_combout\ : std_logic;
SIGNAL \Escolha_pro|Selector0~0_combout\ : std_logic;
SIGNAL \Escolha_pro|newTime~combout\ : std_logic;
SIGNAL \TimerFSM|Add0~43_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~39_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~37_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~35_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~33_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~27_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~25_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~17_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~11_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~2_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~0_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter~17_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[6]~18_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~1\ : std_logic;
SIGNAL \TimerFSM|Add1~2_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter~19_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~3\ : std_logic;
SIGNAL \TimerFSM|Add1~4_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter~20_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~5\ : std_logic;
SIGNAL \TimerFSM|Add1~6_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter~21_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~7\ : std_logic;
SIGNAL \TimerFSM|Add1~8_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter~22_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~9\ : std_logic;
SIGNAL \TimerFSM|Add1~10_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter~23_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~11\ : std_logic;
SIGNAL \TimerFSM|Add1~12_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter~24_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~13\ : std_logic;
SIGNAL \TimerFSM|Add1~14_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter~25_combout\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.Start~_wirecell_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~15\ : std_logic;
SIGNAL \TimerFSM|Add1~16_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~4_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~17\ : std_logic;
SIGNAL \TimerFSM|Add1~18_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~5_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~7_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~19\ : std_logic;
SIGNAL \TimerFSM|Add1~20_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~8_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~10_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~21\ : std_logic;
SIGNAL \TimerFSM|Add1~22_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~13_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~23\ : std_logic;
SIGNAL \TimerFSM|Add1~24_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~14_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~16_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~25\ : std_logic;
SIGNAL \TimerFSM|Add1~26_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[13]~0_combout\ : std_logic;
SIGNAL \TimerFSM|Mult0|mult_core|romout[0][22]~0_wirecell_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~27\ : std_logic;
SIGNAL \TimerFSM|Add1~28_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~19_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[14]~1_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~29\ : std_logic;
SIGNAL \TimerFSM|Add1~30_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~21_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[15]~2_combout\ : std_logic;
SIGNAL \TimerFSM|Mult0|mult_core|_~2_wirecell_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~31\ : std_logic;
SIGNAL \TimerFSM|Add1~32_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~23_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[16]~3_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~33\ : std_logic;
SIGNAL \TimerFSM|Add1~34_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[17]~4_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~35\ : std_logic;
SIGNAL \TimerFSM|Add1~36_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[18]~5_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~37\ : std_logic;
SIGNAL \TimerFSM|Add1~38_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~29_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[19]~6_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~39\ : std_logic;
SIGNAL \TimerFSM|Add1~40_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~31_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[20]~7_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~41\ : std_logic;
SIGNAL \TimerFSM|Add1~42_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[21]~8_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~43\ : std_logic;
SIGNAL \TimerFSM|Add1~44_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[22]~9_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~45\ : std_logic;
SIGNAL \TimerFSM|Add1~46_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[23]~10_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~47\ : std_logic;
SIGNAL \TimerFSM|Add1~48_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[24]~11_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~49\ : std_logic;
SIGNAL \TimerFSM|Add1~50_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~41_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[25]~12_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~51\ : std_logic;
SIGNAL \TimerFSM|Add1~52_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[26]~13_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~53\ : std_logic;
SIGNAL \TimerFSM|Add1~54_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[27]~14_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~46\ : std_logic;
SIGNAL \TimerFSM|Add0~47_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~55\ : std_logic;
SIGNAL \TimerFSM|Add1~56_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[28]~15_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~48\ : std_logic;
SIGNAL \TimerFSM|Add0~49_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~57\ : std_logic;
SIGNAL \TimerFSM|Add1~58_combout\ : std_logic;
SIGNAL \TimerFSM|s_counter[29]~16_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~9_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~8_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~6_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~5_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~7_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~0_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~2_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~50\ : std_logic;
SIGNAL \TimerFSM|Add0~51_combout\ : std_logic;
SIGNAL \TimerFSM|Add1~59\ : std_logic;
SIGNAL \TimerFSM|Add1~60_combout\ : std_logic;
SIGNAL \TimerFSM|Add0~53_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~3_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~1_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~4_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~10_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~11_combout\ : std_logic;
SIGNAL \TimerFSM|s_cntZero~q\ : std_logic;
SIGNAL \Escolha_pro|Selector3~1_combout\ : std_logic;
SIGNAL \Escolha_pro|Selector3~2_combout\ : std_logic;
SIGNAL \Escolha_pro|Selector3~3_combout\ : std_logic;
SIGNAL \Escolha_pro|Selector2~0_combout\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.Helo~q\ : std_logic;
SIGNAL \Escolha_pro|Selector3~4_combout\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.choose~q\ : std_logic;
SIGNAL \Escolha_pro|Selector5~0_combout\ : std_logic;
SIGNAL \Escolha_pro|Selector5~1_combout\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.Tcha~q\ : std_logic;
SIGNAL \Escolha_pro|Selector8~0_combout\ : std_logic;
SIGNAL \Escolha_pro|s_currentState.Ready_Cha~q\ : std_logic;
SIGNAL \Escolha_pro|selWord[2]~0_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[0]~24_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[18]~61\ : std_logic;
SIGNAL \clkDivider|s_divCounter[19]~62_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[19]~63\ : std_logic;
SIGNAL \clkDivider|s_divCounter[20]~64_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[20]~65\ : std_logic;
SIGNAL \clkDivider|s_divCounter[21]~66_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[21]~67\ : std_logic;
SIGNAL \clkDivider|s_divCounter[22]~68_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[22]~69\ : std_logic;
SIGNAL \clkDivider|s_divCounter[23]~70_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~2_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~10_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~4_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~5_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~6_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~7_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~8_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~9_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[0]~25\ : std_logic;
SIGNAL \clkDivider|s_divCounter[1]~26_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[1]~27\ : std_logic;
SIGNAL \clkDivider|s_divCounter[2]~28_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[2]~29\ : std_logic;
SIGNAL \clkDivider|s_divCounter[3]~30_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[3]~31\ : std_logic;
SIGNAL \clkDivider|s_divCounter[4]~32_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[4]~33\ : std_logic;
SIGNAL \clkDivider|s_divCounter[5]~34_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[5]~35\ : std_logic;
SIGNAL \clkDivider|s_divCounter[6]~36_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[6]~37\ : std_logic;
SIGNAL \clkDivider|s_divCounter[7]~38_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[7]~39\ : std_logic;
SIGNAL \clkDivider|s_divCounter[8]~40_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[8]~41\ : std_logic;
SIGNAL \clkDivider|s_divCounter[9]~42_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[9]~43\ : std_logic;
SIGNAL \clkDivider|s_divCounter[10]~44_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[10]~45\ : std_logic;
SIGNAL \clkDivider|s_divCounter[11]~46_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[11]~47\ : std_logic;
SIGNAL \clkDivider|s_divCounter[12]~48_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[12]~49\ : std_logic;
SIGNAL \clkDivider|s_divCounter[13]~50_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[13]~51\ : std_logic;
SIGNAL \clkDivider|s_divCounter[14]~52_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[14]~53\ : std_logic;
SIGNAL \clkDivider|s_divCounter[15]~54_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[15]~55\ : std_logic;
SIGNAL \clkDivider|s_divCounter[16]~56_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[16]~57\ : std_logic;
SIGNAL \clkDivider|s_divCounter[17]~58_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[17]~59\ : std_logic;
SIGNAL \clkDivider|s_divCounter[18]~60_combout\ : std_logic;
SIGNAL \clkDivider|LessThan1~6_combout\ : std_logic;
SIGNAL \clkDivider|LessThan1~4_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~3_combout\ : std_logic;
SIGNAL \clkDivider|LessThan1~1_combout\ : std_logic;
SIGNAL \clkDivider|LessThan1~0_combout\ : std_logic;
SIGNAL \clkDivider|LessThan1~2_combout\ : std_logic;
SIGNAL \clkDivider|LessThan1~3_combout\ : std_logic;
SIGNAL \clkDivider|LessThan1~5_combout\ : std_logic;
SIGNAL \clkDivider|LessThan1~7_combout\ : std_logic;
SIGNAL \clkDivider|clkOut~q\ : std_logic;
SIGNAL \Escolha_pro|ativad~0_combout\ : std_logic;
SIGNAL \Escolha_pro|WideOr9~combout\ : std_logic;
SIGNAL \Escolha_pro|WideOr10~0_combout\ : std_logic;
SIGNAL \Display_Decoded|OutHex0[0]~0_combout\ : std_logic;
SIGNAL \Display_Decoded|OutHex0[1]~1_combout\ : std_logic;
SIGNAL \Display_Decoded|OutHex0[2]~2_combout\ : std_logic;
SIGNAL \Display_Decoded|OutHex0[3]~3_combout\ : std_logic;
SIGNAL \Display_Decoded|OutHex0[6]~4_combout\ : std_logic;
SIGNAL \Display_Decoded|OutHex1~9_combout\ : std_logic;
SIGNAL \Display_Decoded|OutHex1~10_combout\ : std_logic;
SIGNAL \Display_Decoded|OutHex1[3]~6_combout\ : std_logic;
SIGNAL \Display_Decoded|OutHex1[4]~7_combout\ : std_logic;
SIGNAL \Display_Decoded|OutHex1~8_combout\ : std_logic;
SIGNAL \Display_Decoded|OutHex2[0]~0_combout\ : std_logic;
SIGNAL \Display_Decoded|OutHex1~11_combout\ : std_logic;
SIGNAL \Escolha_pro|WideOr11~0_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \TimerFSM|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \Display_Decoded|ALT_INV_OutHex1~11_combout\ : std_logic;
SIGNAL \Display_Decoded|ALT_INV_OutHex1~9_combout\ : std_logic;
SIGNAL \Escolha_pro|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \Display_Decoded|ALT_INV_OutHex1~8_combout\ : std_logic;
SIGNAL \Display_Decoded|ALT_INV_OutHex1[4]~7_combout\ : std_logic;
SIGNAL \Display_Decoded|ALT_INV_OutHex0[2]~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\Display_Decoded|ALT_INV_OutHex1~11_combout\ <= NOT \Display_Decoded|OutHex1~11_combout\;
\Display_Decoded|ALT_INV_OutHex1~9_combout\ <= NOT \Display_Decoded|OutHex1~9_combout\;
\Escolha_pro|ALT_INV_WideOr0~0_combout\ <= NOT \Escolha_pro|WideOr0~0_combout\;
\Display_Decoded|ALT_INV_OutHex1~8_combout\ <= NOT \Display_Decoded|OutHex1~8_combout\;
\Display_Decoded|ALT_INV_OutHex1[4]~7_combout\ <= NOT \Display_Decoded|OutHex1[4]~7_combout\;
\Display_Decoded|ALT_INV_OutHex0[2]~2_combout\ <= NOT \Display_Decoded|OutHex0[2]~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_Decoded|OutHex0[0]~0_combout\,
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
	i => \Display_Decoded|OutHex0[1]~1_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex0[2]~2_combout\,
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
	i => \Display_Decoded|OutHex0[3]~3_combout\,
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
	i => \Display_Decoded|OutHex0[3]~3_combout\,
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
	i => \Display_Decoded|OutHex0[3]~3_combout\,
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
	i => \Display_Decoded|OutHex0[6]~4_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1~9_combout\,
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
	i => \Display_Decoded|OutHex1~10_combout\,
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
	i => \Display_Decoded|OutHex1~10_combout\,
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
	i => \Display_Decoded|OutHex1[3]~6_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1[4]~7_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1[4]~7_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1~8_combout\,
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
	i => \Display_Decoded|OutHex2[0]~0_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1~11_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1~9_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex0[2]~2_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1[4]~7_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1[4]~7_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1[4]~7_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1~9_combout\,
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
	i => \Display_Decoded|OutHex0[1]~1_combout\,
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
	i => \Display_Decoded|OutHex0[1]~1_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1~9_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1[4]~7_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex1[4]~7_combout\,
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
	i => \Display_Decoded|ALT_INV_OutHex0[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Escolha_pro|ALT_INV_WideOr0~0_combout\,
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
	i => \Escolha_pro|WideOr11~0_combout\,
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

-- Location: LCCOMB_X108_Y32_N22
\s_cafe~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cafe~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	combout => \s_cafe~feeder_combout\);

-- Location: FF_X108_Y32_N23
s_cafe : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \s_cafe~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_cafe~q\);

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

-- Location: LCCOMB_X108_Y32_N12
\s_cha~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cha~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	combout => \s_cha~feeder_combout\);

-- Location: FF_X108_Y32_N13
s_cha : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \s_cha~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_cha~q\);

-- Location: LCCOMB_X108_Y32_N14
\Escolha_pro|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector6~0_combout\ = (\Escolha_pro|s_currentState.choose~q\ & (!\s_cafe~q\ & !\s_cha~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|s_currentState.choose~q\,
	datac => \s_cafe~q\,
	datad => \s_cha~q\,
	combout => \Escolha_pro|Selector6~0_combout\);

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

-- Location: LCCOMB_X108_Y32_N10
\s_choc~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_choc~feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \s_choc~feeder_combout\);

-- Location: FF_X108_Y32_N11
s_choc : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \s_choc~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_choc~q\);

-- Location: LCCOMB_X108_Y32_N18
\Escolha_pro|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector6~1_combout\ = (\s_choc~q\ & ((\Escolha_pro|Selector6~0_combout\) # ((\Escolha_pro|s_currentState.Tchoc~q\ & !\TimerFSM|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|Selector6~0_combout\,
	datab => \Escolha_pro|s_currentState.Tchoc~q\,
	datac => \s_choc~q\,
	datad => \TimerFSM|s_cntZero~q\,
	combout => \Escolha_pro|Selector6~1_combout\);

-- Location: LCCOMB_X108_Y32_N28
\Escolha_pro|s_currentState.Tchoc~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|s_currentState.Tchoc~feeder_combout\ = \Escolha_pro|Selector6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|Selector6~1_combout\,
	combout => \Escolha_pro|s_currentState.Tchoc~feeder_combout\);

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

-- Location: FF_X109_Y28_N19
s_reset : dffeas
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
	q => \s_reset~q\);

-- Location: FF_X108_Y32_N29
\Escolha_pro|s_currentState.Tchoc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Escolha_pro|s_currentState.Tchoc~feeder_combout\,
	sclr => \s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escolha_pro|s_currentState.Tchoc~q\);

-- Location: LCCOMB_X108_Y32_N6
\Escolha_pro|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector3~0_combout\ = (!\s_cha~q\ & (!\s_cafe~q\ & !\s_choc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_cha~q\,
	datac => \s_cafe~q\,
	datad => \s_choc~q\,
	combout => \Escolha_pro|Selector3~0_combout\);

-- Location: LCCOMB_X109_Y32_N18
\Escolha_pro|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector9~0_combout\ = (\Escolha_pro|s_currentState.Tchoc~q\ & ((\TimerFSM|s_cntZero~q\) # ((!\Escolha_pro|Selector3~0_combout\ & \Escolha_pro|s_currentState.Ready_Choc~q\)))) # (!\Escolha_pro|s_currentState.Tchoc~q\ & 
-- (!\Escolha_pro|Selector3~0_combout\ & (\Escolha_pro|s_currentState.Ready_Choc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.Tchoc~q\,
	datab => \Escolha_pro|Selector3~0_combout\,
	datac => \Escolha_pro|s_currentState.Ready_Choc~q\,
	datad => \TimerFSM|s_cntZero~q\,
	combout => \Escolha_pro|Selector9~0_combout\);

-- Location: FF_X109_Y32_N19
\Escolha_pro|s_currentState.Ready_Choc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Escolha_pro|Selector9~0_combout\,
	sclr => \s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escolha_pro|s_currentState.Ready_Choc~q\);

-- Location: LCCOMB_X108_Y32_N0
\Escolha_pro|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector4~0_combout\ = (\s_cafe~q\ & ((\Escolha_pro|s_currentState.choose~q\) # ((\Escolha_pro|s_currentState.Tcafe~q\ & !\TimerFSM|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.Tcafe~q\,
	datab => \s_cafe~q\,
	datac => \Escolha_pro|s_currentState.choose~q\,
	datad => \TimerFSM|s_cntZero~q\,
	combout => \Escolha_pro|Selector4~0_combout\);

-- Location: LCCOMB_X108_Y32_N26
\Escolha_pro|s_currentState.Tcafe~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|s_currentState.Tcafe~feeder_combout\ = \Escolha_pro|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|Selector4~0_combout\,
	combout => \Escolha_pro|s_currentState.Tcafe~feeder_combout\);

-- Location: FF_X108_Y32_N27
\Escolha_pro|s_currentState.Tcafe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Escolha_pro|s_currentState.Tcafe~feeder_combout\,
	sclr => \s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escolha_pro|s_currentState.Tcafe~q\);

-- Location: LCCOMB_X109_Y32_N30
\Escolha_pro|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector7~0_combout\ = (\Escolha_pro|s_currentState.Tcafe~q\ & ((\TimerFSM|s_cntZero~q\) # ((!\Escolha_pro|Selector3~0_combout\ & \Escolha_pro|s_currentState.Ready_Cafe~q\)))) # (!\Escolha_pro|s_currentState.Tcafe~q\ & 
-- (!\Escolha_pro|Selector3~0_combout\ & (\Escolha_pro|s_currentState.Ready_Cafe~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.Tcafe~q\,
	datab => \Escolha_pro|Selector3~0_combout\,
	datac => \Escolha_pro|s_currentState.Ready_Cafe~q\,
	datad => \TimerFSM|s_cntZero~q\,
	combout => \Escolha_pro|Selector7~0_combout\);

-- Location: FF_X109_Y32_N31
\Escolha_pro|s_currentState.Ready_Cafe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Escolha_pro|Selector7~0_combout\,
	sclr => \s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escolha_pro|s_currentState.Ready_Cafe~q\);

-- Location: LCCOMB_X109_Y32_N14
\Escolha_pro|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|WideOr0~0_combout\ = (!\Escolha_pro|s_currentState.Ready_Choc~q\ & (!\Escolha_pro|s_currentState.Ready_Cafe~q\ & !\Escolha_pro|s_currentState.Ready_Cha~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|s_currentState.Ready_Choc~q\,
	datac => \Escolha_pro|s_currentState.Ready_Cafe~q\,
	datad => \Escolha_pro|s_currentState.Ready_Cha~q\,
	combout => \Escolha_pro|WideOr0~0_combout\);

-- Location: LCCOMB_X108_Y30_N24
\Escolha_pro|s_currentState.Start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|s_currentState.Start~0_combout\ = !\s_reset~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_reset~q\,
	combout => \Escolha_pro|s_currentState.Start~0_combout\);

-- Location: FF_X108_Y30_N25
\Escolha_pro|s_currentState.Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Escolha_pro|s_currentState.Start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escolha_pro|s_currentState.Start~q\);

-- Location: LCCOMB_X108_Y30_N8
\Escolha_pro|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|WideOr1~0_combout\ = (\Escolha_pro|s_currentState.choose~q\) # (!\Escolha_pro|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.choose~q\,
	datad => \Escolha_pro|s_currentState.Start~q\,
	combout => \Escolha_pro|WideOr1~0_combout\);

-- Location: LCCOMB_X107_Y30_N6
\TimerFSM|Mult0|mult_core|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Mult0|mult_core|_~2_combout\ = (\Escolha_pro|s_currentState.choose~q\) # (\Escolha_pro|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|s_currentState.choose~q\,
	datad => \Escolha_pro|s_currentState.Start~q\,
	combout => \TimerFSM|Mult0|mult_core|_~2_combout\);

-- Location: LCCOMB_X107_Y30_N0
\TimerFSM|Mult0|mult_core|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Mult0|mult_core|_~1_combout\ = (\Escolha_pro|s_currentState.choose~q\ & \Escolha_pro|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.choose~q\,
	datad => \Escolha_pro|s_currentState.Start~q\,
	combout => \TimerFSM|Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X107_Y30_N4
\TimerFSM|Mult0|mult_core|romout[0][22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\ = \Escolha_pro|s_currentState.choose~q\ $ (\Escolha_pro|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.choose~q\,
	datad => \Escolha_pro|s_currentState.Start~q\,
	combout => \TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\);

-- Location: LCCOMB_X107_Y29_N26
\TimerFSM|Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Mult0|mult_core|_~0_combout\ = (!\Escolha_pro|s_currentState.Start~q\ & \Escolha_pro|s_currentState.choose~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Escolha_pro|s_currentState.Start~q\,
	datad => \Escolha_pro|s_currentState.choose~q\,
	combout => \TimerFSM|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X107_Y30_N8
\TimerFSM|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~1_cout\ = CARRY(!\Escolha_pro|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|s_currentState.Start~q\,
	datad => VCC,
	cout => \TimerFSM|Add0~1_cout\);

-- Location: LCCOMB_X107_Y30_N10
\TimerFSM|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~2_combout\ = (\Escolha_pro|s_currentState.choose~q\ & (\TimerFSM|Add0~1_cout\ & VCC)) # (!\Escolha_pro|s_currentState.choose~q\ & (!\TimerFSM|Add0~1_cout\))
-- \TimerFSM|Add0~3\ = CARRY((!\Escolha_pro|s_currentState.choose~q\ & !\TimerFSM|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|s_currentState.choose~q\,
	datad => VCC,
	cin => \TimerFSM|Add0~1_cout\,
	combout => \TimerFSM|Add0~2_combout\,
	cout => \TimerFSM|Add0~3\);

-- Location: LCCOMB_X107_Y30_N12
\TimerFSM|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~5_combout\ = (\Escolha_pro|s_currentState.Start~q\ & (\TimerFSM|Add0~3\ $ (GND))) # (!\Escolha_pro|s_currentState.Start~q\ & ((GND) # (!\TimerFSM|Add0~3\)))
-- \TimerFSM|Add0~6\ = CARRY((!\TimerFSM|Add0~3\) # (!\Escolha_pro|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|s_currentState.Start~q\,
	datad => VCC,
	cin => \TimerFSM|Add0~3\,
	combout => \TimerFSM|Add0~5_combout\,
	cout => \TimerFSM|Add0~6\);

-- Location: LCCOMB_X107_Y30_N14
\TimerFSM|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~8_combout\ = (\Escolha_pro|s_currentState.choose~q\ & (\TimerFSM|Add0~6\ & VCC)) # (!\Escolha_pro|s_currentState.choose~q\ & (!\TimerFSM|Add0~6\))
-- \TimerFSM|Add0~9\ = CARRY((!\Escolha_pro|s_currentState.choose~q\ & !\TimerFSM|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.choose~q\,
	datad => VCC,
	cin => \TimerFSM|Add0~6\,
	combout => \TimerFSM|Add0~8_combout\,
	cout => \TimerFSM|Add0~9\);

-- Location: LCCOMB_X107_Y30_N16
\TimerFSM|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~11_combout\ = \TimerFSM|Add0~9\ $ (GND)
-- \TimerFSM|Add0~12\ = CARRY(!\TimerFSM|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \TimerFSM|Add0~9\,
	combout => \TimerFSM|Add0~11_combout\,
	cout => \TimerFSM|Add0~12\);

-- Location: LCCOMB_X107_Y30_N18
\TimerFSM|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~14_combout\ = (\Escolha_pro|s_currentState.Start~q\ & (!\TimerFSM|Add0~12\)) # (!\Escolha_pro|s_currentState.Start~q\ & (\TimerFSM|Add0~12\ & VCC))
-- \TimerFSM|Add0~15\ = CARRY((\Escolha_pro|s_currentState.Start~q\ & !\TimerFSM|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|s_currentState.Start~q\,
	datad => VCC,
	cin => \TimerFSM|Add0~12\,
	combout => \TimerFSM|Add0~14_combout\,
	cout => \TimerFSM|Add0~15\);

-- Location: LCCOMB_X107_Y30_N20
\TimerFSM|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~17_combout\ = (\TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\ & (\TimerFSM|Add0~15\ $ (GND))) # (!\TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\ & ((GND) # (!\TimerFSM|Add0~15\)))
-- \TimerFSM|Add0~18\ = CARRY((!\TimerFSM|Add0~15\) # (!\TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~15\,
	combout => \TimerFSM|Add0~17_combout\,
	cout => \TimerFSM|Add0~18\);

-- Location: LCCOMB_X107_Y30_N22
\TimerFSM|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~19_combout\ = (\TimerFSM|Mult0|mult_core|_~1_combout\ & (\TimerFSM|Add0~18\ & VCC)) # (!\TimerFSM|Mult0|mult_core|_~1_combout\ & (!\TimerFSM|Add0~18\))
-- \TimerFSM|Add0~20\ = CARRY((!\TimerFSM|Mult0|mult_core|_~1_combout\ & !\TimerFSM|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~18\,
	combout => \TimerFSM|Add0~19_combout\,
	cout => \TimerFSM|Add0~20\);

-- Location: LCCOMB_X107_Y30_N24
\TimerFSM|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~21_combout\ = (\TimerFSM|Mult0|mult_core|_~2_combout\ & (\TimerFSM|Add0~20\ $ (GND))) # (!\TimerFSM|Mult0|mult_core|_~2_combout\ & ((GND) # (!\TimerFSM|Add0~20\)))
-- \TimerFSM|Add0~22\ = CARRY((!\TimerFSM|Add0~20\) # (!\TimerFSM|Mult0|mult_core|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|Mult0|mult_core|_~2_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~20\,
	combout => \TimerFSM|Add0~21_combout\,
	cout => \TimerFSM|Add0~22\);

-- Location: LCCOMB_X107_Y30_N26
\TimerFSM|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~23_combout\ = (\TimerFSM|Mult0|mult_core|_~1_combout\ & (\TimerFSM|Add0~22\ & VCC)) # (!\TimerFSM|Mult0|mult_core|_~1_combout\ & (!\TimerFSM|Add0~22\))
-- \TimerFSM|Add0~24\ = CARRY((!\TimerFSM|Mult0|mult_core|_~1_combout\ & !\TimerFSM|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~22\,
	combout => \TimerFSM|Add0~23_combout\,
	cout => \TimerFSM|Add0~24\);

-- Location: LCCOMB_X107_Y30_N28
\TimerFSM|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~25_combout\ = (\TimerFSM|Mult0|mult_core|_~2_combout\ & (\TimerFSM|Add0~24\ $ (GND))) # (!\TimerFSM|Mult0|mult_core|_~2_combout\ & ((GND) # (!\TimerFSM|Add0~24\)))
-- \TimerFSM|Add0~26\ = CARRY((!\TimerFSM|Add0~24\) # (!\TimerFSM|Mult0|mult_core|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Mult0|mult_core|_~2_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~24\,
	combout => \TimerFSM|Add0~25_combout\,
	cout => \TimerFSM|Add0~26\);

-- Location: LCCOMB_X107_Y30_N30
\TimerFSM|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~27_combout\ = (\Escolha_pro|WideOr1~0_combout\ & (\TimerFSM|Add0~26\ & VCC)) # (!\Escolha_pro|WideOr1~0_combout\ & (!\TimerFSM|Add0~26\))
-- \TimerFSM|Add0~28\ = CARRY((!\Escolha_pro|WideOr1~0_combout\ & !\TimerFSM|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|WideOr1~0_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~26\,
	combout => \TimerFSM|Add0~27_combout\,
	cout => \TimerFSM|Add0~28\);

-- Location: LCCOMB_X107_Y29_N0
\TimerFSM|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~29_combout\ = (\TimerFSM|Mult0|mult_core|_~1_combout\ & ((GND) # (!\TimerFSM|Add0~28\))) # (!\TimerFSM|Mult0|mult_core|_~1_combout\ & (\TimerFSM|Add0~28\ $ (GND)))
-- \TimerFSM|Add0~30\ = CARRY((\TimerFSM|Mult0|mult_core|_~1_combout\) # (!\TimerFSM|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~28\,
	combout => \TimerFSM|Add0~29_combout\,
	cout => \TimerFSM|Add0~30\);

-- Location: LCCOMB_X107_Y29_N2
\TimerFSM|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~31_combout\ = (\TimerFSM|Mult0|mult_core|_~0_combout\ & (\TimerFSM|Add0~30\ & VCC)) # (!\TimerFSM|Mult0|mult_core|_~0_combout\ & (!\TimerFSM|Add0~30\))
-- \TimerFSM|Add0~32\ = CARRY((!\TimerFSM|Mult0|mult_core|_~0_combout\ & !\TimerFSM|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~30\,
	combout => \TimerFSM|Add0~31_combout\,
	cout => \TimerFSM|Add0~32\);

-- Location: LCCOMB_X107_Y29_N4
\TimerFSM|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~33_combout\ = (\Escolha_pro|s_currentState.Start~q\ & (\TimerFSM|Add0~32\ $ (GND))) # (!\Escolha_pro|s_currentState.Start~q\ & ((GND) # (!\TimerFSM|Add0~32\)))
-- \TimerFSM|Add0~34\ = CARRY((!\TimerFSM|Add0~32\) # (!\Escolha_pro|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|s_currentState.Start~q\,
	datad => VCC,
	cin => \TimerFSM|Add0~32\,
	combout => \TimerFSM|Add0~33_combout\,
	cout => \TimerFSM|Add0~34\);

-- Location: LCCOMB_X107_Y29_N6
\TimerFSM|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~35_combout\ = (\TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\ & (!\TimerFSM|Add0~34\)) # (!\TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\ & (\TimerFSM|Add0~34\ & VCC))
-- \TimerFSM|Add0~36\ = CARRY((\TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\ & !\TimerFSM|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~34\,
	combout => \TimerFSM|Add0~35_combout\,
	cout => \TimerFSM|Add0~36\);

-- Location: LCCOMB_X107_Y29_N8
\TimerFSM|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~37_combout\ = (\Escolha_pro|WideOr1~0_combout\ & ((GND) # (!\TimerFSM|Add0~36\))) # (!\Escolha_pro|WideOr1~0_combout\ & (\TimerFSM|Add0~36\ $ (GND)))
-- \TimerFSM|Add0~38\ = CARRY((\Escolha_pro|WideOr1~0_combout\) # (!\TimerFSM|Add0~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|WideOr1~0_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~36\,
	combout => \TimerFSM|Add0~37_combout\,
	cout => \TimerFSM|Add0~38\);

-- Location: LCCOMB_X107_Y29_N10
\TimerFSM|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~39_combout\ = (\TimerFSM|Mult0|mult_core|_~1_combout\ & (\TimerFSM|Add0~38\ & VCC)) # (!\TimerFSM|Mult0|mult_core|_~1_combout\ & (!\TimerFSM|Add0~38\))
-- \TimerFSM|Add0~40\ = CARRY((!\TimerFSM|Mult0|mult_core|_~1_combout\ & !\TimerFSM|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~38\,
	combout => \TimerFSM|Add0~39_combout\,
	cout => \TimerFSM|Add0~40\);

-- Location: LCCOMB_X107_Y29_N12
\TimerFSM|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~41_combout\ = (\TimerFSM|Mult0|mult_core|_~2_combout\ & (\TimerFSM|Add0~40\ $ (GND))) # (!\TimerFSM|Mult0|mult_core|_~2_combout\ & ((GND) # (!\TimerFSM|Add0~40\)))
-- \TimerFSM|Add0~42\ = CARRY((!\TimerFSM|Add0~40\) # (!\TimerFSM|Mult0|mult_core|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Mult0|mult_core|_~2_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~40\,
	combout => \TimerFSM|Add0~41_combout\,
	cout => \TimerFSM|Add0~42\);

-- Location: LCCOMB_X107_Y29_N14
\TimerFSM|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~43_combout\ = (\Escolha_pro|WideOr1~0_combout\ & (\TimerFSM|Add0~42\ & VCC)) # (!\Escolha_pro|WideOr1~0_combout\ & (!\TimerFSM|Add0~42\))
-- \TimerFSM|Add0~44\ = CARRY((!\Escolha_pro|WideOr1~0_combout\ & !\TimerFSM|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|WideOr1~0_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~42\,
	combout => \TimerFSM|Add0~43_combout\,
	cout => \TimerFSM|Add0~44\);

-- Location: LCCOMB_X107_Y29_N16
\TimerFSM|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~45_combout\ = (\Escolha_pro|WideOr1~0_combout\ & ((GND) # (!\TimerFSM|Add0~44\))) # (!\Escolha_pro|WideOr1~0_combout\ & (\TimerFSM|Add0~44\ $ (GND)))
-- \TimerFSM|Add0~46\ = CARRY((\Escolha_pro|WideOr1~0_combout\) # (!\TimerFSM|Add0~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|WideOr1~0_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~44\,
	combout => \TimerFSM|Add0~45_combout\,
	cout => \TimerFSM|Add0~46\);

-- Location: LCCOMB_X108_Y32_N2
\Escolha_pro|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector0~0_combout\ = (\s_choc~q\) # (((\s_cafe~q\) # (\s_cha~q\)) # (!\Escolha_pro|s_currentState.choose~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_choc~q\,
	datab => \Escolha_pro|s_currentState.choose~q\,
	datac => \s_cafe~q\,
	datad => \s_cha~q\,
	combout => \Escolha_pro|Selector0~0_combout\);

-- Location: LCCOMB_X108_Y30_N14
\Escolha_pro|newTime\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|newTime~combout\ = (\Escolha_pro|Selector0~0_combout\ & ((\Escolha_pro|WideOr1~0_combout\))) # (!\Escolha_pro|Selector0~0_combout\ & (\Escolha_pro|newTime~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|newTime~combout\,
	datac => \Escolha_pro|WideOr1~0_combout\,
	datad => \Escolha_pro|Selector0~0_combout\,
	combout => \Escolha_pro|newTime~combout\);

-- Location: LCCOMB_X109_Y30_N2
\TimerFSM|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~0_combout\ = \TimerFSM|s_counter\(0) $ (VCC)
-- \TimerFSM|Add1~1\ = CARRY(\TimerFSM|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|s_counter\(0),
	datad => VCC,
	combout => \TimerFSM|Add1~0_combout\,
	cout => \TimerFSM|Add1~1\);

-- Location: LCCOMB_X108_Y30_N22
\TimerFSM|s_counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter~17_combout\ = (!\s_reset~q\ & ((\TimerFSM|Add1~0_combout\) # (\Escolha_pro|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add1~0_combout\,
	datac => \s_reset~q\,
	datad => \Escolha_pro|newTime~combout\,
	combout => \TimerFSM|s_counter~17_combout\);

-- Location: LCCOMB_X109_Y28_N18
\TimerFSM|s_counter[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[6]~18_combout\ = (\s_reset~q\) # ((\Escolha_pro|WideOr0~0_combout\ & !\TimerFSM|s_cntZero~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|WideOr0~0_combout\,
	datac => \s_reset~q\,
	datad => \TimerFSM|s_cntZero~10_combout\,
	combout => \TimerFSM|s_counter[6]~18_combout\);

-- Location: FF_X108_Y30_N23
\TimerFSM|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter~17_combout\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(0));

-- Location: LCCOMB_X109_Y30_N4
\TimerFSM|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~2_combout\ = (\TimerFSM|s_counter\(1) & (\TimerFSM|Add1~1\ & VCC)) # (!\TimerFSM|s_counter\(1) & (!\TimerFSM|Add1~1\))
-- \TimerFSM|Add1~3\ = CARRY((!\TimerFSM|s_counter\(1) & !\TimerFSM|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|s_counter\(1),
	datad => VCC,
	cin => \TimerFSM|Add1~1\,
	combout => \TimerFSM|Add1~2_combout\,
	cout => \TimerFSM|Add1~3\);

-- Location: LCCOMB_X108_Y30_N6
\TimerFSM|s_counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter~19_combout\ = (!\s_reset~q\ & ((\TimerFSM|Add1~2_combout\) # (\Escolha_pro|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|Add1~2_combout\,
	datac => \s_reset~q\,
	datad => \Escolha_pro|newTime~combout\,
	combout => \TimerFSM|s_counter~19_combout\);

-- Location: FF_X108_Y30_N7
\TimerFSM|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter~19_combout\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(1));

-- Location: LCCOMB_X109_Y30_N6
\TimerFSM|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~4_combout\ = (\TimerFSM|s_counter\(2) & ((GND) # (!\TimerFSM|Add1~3\))) # (!\TimerFSM|s_counter\(2) & (\TimerFSM|Add1~3\ $ (GND)))
-- \TimerFSM|Add1~5\ = CARRY((\TimerFSM|s_counter\(2)) # (!\TimerFSM|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(2),
	datad => VCC,
	cin => \TimerFSM|Add1~3\,
	combout => \TimerFSM|Add1~4_combout\,
	cout => \TimerFSM|Add1~5\);

-- Location: LCCOMB_X108_Y30_N10
\TimerFSM|s_counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter~20_combout\ = (!\s_reset~q\ & ((\TimerFSM|Add1~4_combout\) # (\Escolha_pro|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add1~4_combout\,
	datac => \s_reset~q\,
	datad => \Escolha_pro|newTime~combout\,
	combout => \TimerFSM|s_counter~20_combout\);

-- Location: FF_X108_Y30_N11
\TimerFSM|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter~20_combout\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(2));

-- Location: LCCOMB_X109_Y30_N8
\TimerFSM|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~6_combout\ = (\TimerFSM|s_counter\(3) & (\TimerFSM|Add1~5\ & VCC)) # (!\TimerFSM|s_counter\(3) & (!\TimerFSM|Add1~5\))
-- \TimerFSM|Add1~7\ = CARRY((!\TimerFSM|s_counter\(3) & !\TimerFSM|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(3),
	datad => VCC,
	cin => \TimerFSM|Add1~5\,
	combout => \TimerFSM|Add1~6_combout\,
	cout => \TimerFSM|Add1~7\);

-- Location: LCCOMB_X108_Y30_N16
\TimerFSM|s_counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter~21_combout\ = (!\s_reset~q\ & ((\TimerFSM|Add1~6_combout\) # (\Escolha_pro|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reset~q\,
	datac => \TimerFSM|Add1~6_combout\,
	datad => \Escolha_pro|newTime~combout\,
	combout => \TimerFSM|s_counter~21_combout\);

-- Location: FF_X108_Y30_N17
\TimerFSM|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter~21_combout\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(3));

-- Location: LCCOMB_X109_Y30_N10
\TimerFSM|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~8_combout\ = (\TimerFSM|s_counter\(4) & ((GND) # (!\TimerFSM|Add1~7\))) # (!\TimerFSM|s_counter\(4) & (\TimerFSM|Add1~7\ $ (GND)))
-- \TimerFSM|Add1~9\ = CARRY((\TimerFSM|s_counter\(4)) # (!\TimerFSM|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|s_counter\(4),
	datad => VCC,
	cin => \TimerFSM|Add1~7\,
	combout => \TimerFSM|Add1~8_combout\,
	cout => \TimerFSM|Add1~9\);

-- Location: LCCOMB_X108_Y30_N20
\TimerFSM|s_counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter~22_combout\ = (!\s_reset~q\ & ((\TimerFSM|Add1~8_combout\) # (\Escolha_pro|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reset~q\,
	datac => \TimerFSM|Add1~8_combout\,
	datad => \Escolha_pro|newTime~combout\,
	combout => \TimerFSM|s_counter~22_combout\);

-- Location: FF_X108_Y30_N21
\TimerFSM|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter~22_combout\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(4));

-- Location: LCCOMB_X109_Y30_N12
\TimerFSM|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~10_combout\ = (\TimerFSM|s_counter\(5) & (\TimerFSM|Add1~9\ & VCC)) # (!\TimerFSM|s_counter\(5) & (!\TimerFSM|Add1~9\))
-- \TimerFSM|Add1~11\ = CARRY((!\TimerFSM|s_counter\(5) & !\TimerFSM|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(5),
	datad => VCC,
	cin => \TimerFSM|Add1~9\,
	combout => \TimerFSM|Add1~10_combout\,
	cout => \TimerFSM|Add1~11\);

-- Location: LCCOMB_X108_Y30_N0
\TimerFSM|s_counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter~23_combout\ = (!\s_reset~q\ & ((\TimerFSM|Add1~10_combout\) # (\Escolha_pro|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reset~q\,
	datac => \TimerFSM|Add1~10_combout\,
	datad => \Escolha_pro|newTime~combout\,
	combout => \TimerFSM|s_counter~23_combout\);

-- Location: FF_X108_Y30_N1
\TimerFSM|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter~23_combout\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(5));

-- Location: LCCOMB_X109_Y30_N14
\TimerFSM|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~12_combout\ = (\TimerFSM|s_counter\(6) & ((GND) # (!\TimerFSM|Add1~11\))) # (!\TimerFSM|s_counter\(6) & (\TimerFSM|Add1~11\ $ (GND)))
-- \TimerFSM|Add1~13\ = CARRY((\TimerFSM|s_counter\(6)) # (!\TimerFSM|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|s_counter\(6),
	datad => VCC,
	cin => \TimerFSM|Add1~11\,
	combout => \TimerFSM|Add1~12_combout\,
	cout => \TimerFSM|Add1~13\);

-- Location: LCCOMB_X108_Y30_N18
\TimerFSM|s_counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter~24_combout\ = (!\s_reset~q\ & ((\TimerFSM|Add1~12_combout\) # (\Escolha_pro|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add1~12_combout\,
	datac => \s_reset~q\,
	datad => \Escolha_pro|newTime~combout\,
	combout => \TimerFSM|s_counter~24_combout\);

-- Location: FF_X108_Y30_N19
\TimerFSM|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter~24_combout\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(6));

-- Location: LCCOMB_X109_Y30_N16
\TimerFSM|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~14_combout\ = (\TimerFSM|s_counter\(7) & (\TimerFSM|Add1~13\ & VCC)) # (!\TimerFSM|s_counter\(7) & (!\TimerFSM|Add1~13\))
-- \TimerFSM|Add1~15\ = CARRY((!\TimerFSM|s_counter\(7) & !\TimerFSM|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(7),
	datad => VCC,
	cin => \TimerFSM|Add1~13\,
	combout => \TimerFSM|Add1~14_combout\,
	cout => \TimerFSM|Add1~15\);

-- Location: LCCOMB_X108_Y29_N24
\TimerFSM|s_counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter~25_combout\ = (\Escolha_pro|newTime~combout\ & ((\Escolha_pro|s_currentState.Start~q\))) # (!\Escolha_pro|newTime~combout\ & (\TimerFSM|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add1~14_combout\,
	datab => \Escolha_pro|s_currentState.Start~q\,
	datad => \Escolha_pro|newTime~combout\,
	combout => \TimerFSM|s_counter~25_combout\);

-- Location: LCCOMB_X108_Y29_N18
\Escolha_pro|s_currentState.Start~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|s_currentState.Start~_wirecell_combout\ = !\Escolha_pro|s_currentState.Start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Escolha_pro|s_currentState.Start~q\,
	combout => \Escolha_pro|s_currentState.Start~_wirecell_combout\);

-- Location: FF_X108_Y29_N25
\TimerFSM|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter~25_combout\,
	asdata => \Escolha_pro|s_currentState.Start~_wirecell_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(7));

-- Location: LCCOMB_X109_Y30_N18
\TimerFSM|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~16_combout\ = (\TimerFSM|s_counter\(8) & ((GND) # (!\TimerFSM|Add1~15\))) # (!\TimerFSM|s_counter\(8) & (\TimerFSM|Add1~15\ $ (GND)))
-- \TimerFSM|Add1~17\ = CARRY((\TimerFSM|s_counter\(8)) # (!\TimerFSM|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(8),
	datad => VCC,
	cin => \TimerFSM|Add1~15\,
	combout => \TimerFSM|Add1~16_combout\,
	cout => \TimerFSM|Add1~17\);

-- Location: LCCOMB_X108_Y29_N2
\TimerFSM|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~4_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~2_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add0~2_combout\,
	datab => \TimerFSM|Add1~16_combout\,
	datad => \Escolha_pro|newTime~combout\,
	combout => \TimerFSM|Add0~4_combout\);

-- Location: FF_X108_Y29_N3
\TimerFSM|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|Add0~4_combout\,
	asdata => \Escolha_pro|s_currentState.choose~q\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(8));

-- Location: LCCOMB_X109_Y30_N20
\TimerFSM|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~18_combout\ = (\TimerFSM|s_counter\(9) & (\TimerFSM|Add1~17\ & VCC)) # (!\TimerFSM|s_counter\(9) & (!\TimerFSM|Add1~17\))
-- \TimerFSM|Add1~19\ = CARRY((!\TimerFSM|s_counter\(9) & !\TimerFSM|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|s_counter\(9),
	datad => VCC,
	cin => \TimerFSM|Add1~17\,
	combout => \TimerFSM|Add1~18_combout\,
	cout => \TimerFSM|Add1~19\);

-- Location: LCCOMB_X108_Y29_N8
\TimerFSM|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~7_combout\ = (\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add0~5_combout\))) # (!\Escolha_pro|newTime~combout\ & (\TimerFSM|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add1~18_combout\,
	datab => \TimerFSM|Add0~5_combout\,
	datad => \Escolha_pro|newTime~combout\,
	combout => \TimerFSM|Add0~7_combout\);

-- Location: FF_X108_Y29_N9
\TimerFSM|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|Add0~7_combout\,
	asdata => \Escolha_pro|s_currentState.Start~_wirecell_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(9));

-- Location: LCCOMB_X109_Y30_N22
\TimerFSM|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~20_combout\ = (\TimerFSM|s_counter\(10) & ((GND) # (!\TimerFSM|Add1~19\))) # (!\TimerFSM|s_counter\(10) & (\TimerFSM|Add1~19\ $ (GND)))
-- \TimerFSM|Add1~21\ = CARRY((\TimerFSM|s_counter\(10)) # (!\TimerFSM|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|s_counter\(10),
	datad => VCC,
	cin => \TimerFSM|Add1~19\,
	combout => \TimerFSM|Add1~20_combout\,
	cout => \TimerFSM|Add1~21\);

-- Location: LCCOMB_X108_Y29_N10
\TimerFSM|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~10_combout\ = (\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add0~8_combout\))) # (!\Escolha_pro|newTime~combout\ & (\TimerFSM|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add1~20_combout\,
	datab => \TimerFSM|Add0~8_combout\,
	datad => \Escolha_pro|newTime~combout\,
	combout => \TimerFSM|Add0~10_combout\);

-- Location: FF_X108_Y29_N11
\TimerFSM|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|Add0~10_combout\,
	asdata => \Escolha_pro|s_currentState.choose~q\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(10));

-- Location: LCCOMB_X109_Y30_N24
\TimerFSM|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~22_combout\ = (\TimerFSM|s_counter\(11) & (\TimerFSM|Add1~21\ & VCC)) # (!\TimerFSM|s_counter\(11) & (!\TimerFSM|Add1~21\))
-- \TimerFSM|Add1~23\ = CARRY((!\TimerFSM|s_counter\(11) & !\TimerFSM|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(11),
	datad => VCC,
	cin => \TimerFSM|Add1~21\,
	combout => \TimerFSM|Add1~22_combout\,
	cout => \TimerFSM|Add1~23\);

-- Location: LCCOMB_X108_Y30_N12
\TimerFSM|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~13_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~11_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|newTime~combout\,
	datab => \TimerFSM|Add0~11_combout\,
	datad => \TimerFSM|Add1~22_combout\,
	combout => \TimerFSM|Add0~13_combout\);

-- Location: FF_X108_Y30_N13
\TimerFSM|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|Add0~13_combout\,
	sclr => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(11));

-- Location: LCCOMB_X109_Y30_N26
\TimerFSM|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~24_combout\ = (\TimerFSM|s_counter\(12) & ((GND) # (!\TimerFSM|Add1~23\))) # (!\TimerFSM|s_counter\(12) & (\TimerFSM|Add1~23\ $ (GND)))
-- \TimerFSM|Add1~25\ = CARRY((\TimerFSM|s_counter\(12)) # (!\TimerFSM|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|s_counter\(12),
	datad => VCC,
	cin => \TimerFSM|Add1~23\,
	combout => \TimerFSM|Add1~24_combout\,
	cout => \TimerFSM|Add1~25\);

-- Location: LCCOMB_X110_Y30_N16
\TimerFSM|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~16_combout\ = (\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add0~14_combout\))) # (!\Escolha_pro|newTime~combout\ & (\TimerFSM|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add1~24_combout\,
	datab => \Escolha_pro|newTime~combout\,
	datad => \TimerFSM|Add0~14_combout\,
	combout => \TimerFSM|Add0~16_combout\);

-- Location: FF_X110_Y30_N17
\TimerFSM|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|Add0~16_combout\,
	asdata => \Escolha_pro|s_currentState.Start~_wirecell_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(12));

-- Location: LCCOMB_X109_Y30_N28
\TimerFSM|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~26_combout\ = (\TimerFSM|s_counter\(13) & (\TimerFSM|Add1~25\ & VCC)) # (!\TimerFSM|s_counter\(13) & (!\TimerFSM|Add1~25\))
-- \TimerFSM|Add1~27\ = CARRY((!\TimerFSM|s_counter\(13) & !\TimerFSM|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(13),
	datad => VCC,
	cin => \TimerFSM|Add1~25\,
	combout => \TimerFSM|Add1~26_combout\,
	cout => \TimerFSM|Add1~27\);

-- Location: LCCOMB_X108_Y28_N16
\TimerFSM|s_counter[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[13]~0_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~17_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|newTime~combout\,
	datab => \TimerFSM|Add0~17_combout\,
	datad => \TimerFSM|Add1~26_combout\,
	combout => \TimerFSM|s_counter[13]~0_combout\);

-- Location: LCCOMB_X108_Y28_N0
\TimerFSM|Mult0|mult_core|romout[0][22]~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Mult0|mult_core|romout[0][22]~0_wirecell_combout\ = !\TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimerFSM|Mult0|mult_core|romout[0][22]~0_combout\,
	combout => \TimerFSM|Mult0|mult_core|romout[0][22]~0_wirecell_combout\);

-- Location: FF_X108_Y28_N17
\TimerFSM|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[13]~0_combout\,
	asdata => \TimerFSM|Mult0|mult_core|romout[0][22]~0_wirecell_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(13));

-- Location: LCCOMB_X109_Y30_N30
\TimerFSM|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~28_combout\ = (\TimerFSM|s_counter\(14) & ((GND) # (!\TimerFSM|Add1~27\))) # (!\TimerFSM|s_counter\(14) & (\TimerFSM|Add1~27\ $ (GND)))
-- \TimerFSM|Add1~29\ = CARRY((\TimerFSM|s_counter\(14)) # (!\TimerFSM|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|s_counter\(14),
	datad => VCC,
	cin => \TimerFSM|Add1~27\,
	combout => \TimerFSM|Add1~28_combout\,
	cout => \TimerFSM|Add1~29\);

-- Location: LCCOMB_X109_Y30_N0
\TimerFSM|s_counter[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[14]~1_combout\ = (\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add0~19_combout\))) # (!\Escolha_pro|newTime~combout\ & (\TimerFSM|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add1~28_combout\,
	datab => \TimerFSM|Add0~19_combout\,
	datad => \Escolha_pro|newTime~combout\,
	combout => \TimerFSM|s_counter[14]~1_combout\);

-- Location: FF_X109_Y30_N1
\TimerFSM|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[14]~1_combout\,
	asdata => \TimerFSM|Mult0|mult_core|_~1_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(14));

-- Location: LCCOMB_X109_Y29_N0
\TimerFSM|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~30_combout\ = (\TimerFSM|s_counter\(15) & (\TimerFSM|Add1~29\ & VCC)) # (!\TimerFSM|s_counter\(15) & (!\TimerFSM|Add1~29\))
-- \TimerFSM|Add1~31\ = CARRY((!\TimerFSM|s_counter\(15) & !\TimerFSM|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(15),
	datad => VCC,
	cin => \TimerFSM|Add1~29\,
	combout => \TimerFSM|Add1~30_combout\,
	cout => \TimerFSM|Add1~31\);

-- Location: LCCOMB_X108_Y28_N10
\TimerFSM|s_counter[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[15]~2_combout\ = (\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add0~21_combout\))) # (!\Escolha_pro|newTime~combout\ & (\TimerFSM|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add1~30_combout\,
	datab => \Escolha_pro|newTime~combout\,
	datad => \TimerFSM|Add0~21_combout\,
	combout => \TimerFSM|s_counter[15]~2_combout\);

-- Location: LCCOMB_X108_Y28_N30
\TimerFSM|Mult0|mult_core|_~2_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Mult0|mult_core|_~2_wirecell_combout\ = !\TimerFSM|Mult0|mult_core|_~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TimerFSM|Mult0|mult_core|_~2_combout\,
	combout => \TimerFSM|Mult0|mult_core|_~2_wirecell_combout\);

-- Location: FF_X108_Y28_N11
\TimerFSM|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[15]~2_combout\,
	asdata => \TimerFSM|Mult0|mult_core|_~2_wirecell_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(15));

-- Location: LCCOMB_X109_Y29_N2
\TimerFSM|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~32_combout\ = (\TimerFSM|s_counter\(16) & ((GND) # (!\TimerFSM|Add1~31\))) # (!\TimerFSM|s_counter\(16) & (\TimerFSM|Add1~31\ $ (GND)))
-- \TimerFSM|Add1~33\ = CARRY((\TimerFSM|s_counter\(16)) # (!\TimerFSM|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(16),
	datad => VCC,
	cin => \TimerFSM|Add1~31\,
	combout => \TimerFSM|Add1~32_combout\,
	cout => \TimerFSM|Add1~33\);

-- Location: LCCOMB_X108_Y28_N4
\TimerFSM|s_counter[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[16]~3_combout\ = (\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add0~23_combout\))) # (!\Escolha_pro|newTime~combout\ & (\TimerFSM|Add1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add1~32_combout\,
	datab => \Escolha_pro|newTime~combout\,
	datad => \TimerFSM|Add0~23_combout\,
	combout => \TimerFSM|s_counter[16]~3_combout\);

-- Location: FF_X108_Y28_N5
\TimerFSM|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[16]~3_combout\,
	asdata => \TimerFSM|Mult0|mult_core|_~1_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(16));

-- Location: LCCOMB_X109_Y29_N4
\TimerFSM|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~34_combout\ = (\TimerFSM|s_counter\(17) & (\TimerFSM|Add1~33\ & VCC)) # (!\TimerFSM|s_counter\(17) & (!\TimerFSM|Add1~33\))
-- \TimerFSM|Add1~35\ = CARRY((!\TimerFSM|s_counter\(17) & !\TimerFSM|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(17),
	datad => VCC,
	cin => \TimerFSM|Add1~33\,
	combout => \TimerFSM|Add1~34_combout\,
	cout => \TimerFSM|Add1~35\);

-- Location: LCCOMB_X108_Y28_N26
\TimerFSM|s_counter[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[17]~4_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~25_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|newTime~combout\,
	datab => \TimerFSM|Add0~25_combout\,
	datad => \TimerFSM|Add1~34_combout\,
	combout => \TimerFSM|s_counter[17]~4_combout\);

-- Location: FF_X108_Y28_N27
\TimerFSM|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[17]~4_combout\,
	asdata => \TimerFSM|Mult0|mult_core|_~2_wirecell_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(17));

-- Location: LCCOMB_X109_Y29_N6
\TimerFSM|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~36_combout\ = (\TimerFSM|s_counter\(18) & ((GND) # (!\TimerFSM|Add1~35\))) # (!\TimerFSM|s_counter\(18) & (\TimerFSM|Add1~35\ $ (GND)))
-- \TimerFSM|Add1~37\ = CARRY((\TimerFSM|s_counter\(18)) # (!\TimerFSM|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|s_counter\(18),
	datad => VCC,
	cin => \TimerFSM|Add1~35\,
	combout => \TimerFSM|Add1~36_combout\,
	cout => \TimerFSM|Add1~37\);

-- Location: LCCOMB_X108_Y28_N12
\TimerFSM|s_counter[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[18]~5_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~27_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add0~27_combout\,
	datab => \Escolha_pro|newTime~combout\,
	datad => \TimerFSM|Add1~36_combout\,
	combout => \TimerFSM|s_counter[18]~5_combout\);

-- Location: FF_X108_Y28_N13
\TimerFSM|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[18]~5_combout\,
	asdata => \Escolha_pro|WideOr1~0_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(18));

-- Location: LCCOMB_X109_Y29_N8
\TimerFSM|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~38_combout\ = (\TimerFSM|s_counter\(19) & (\TimerFSM|Add1~37\ & VCC)) # (!\TimerFSM|s_counter\(19) & (!\TimerFSM|Add1~37\))
-- \TimerFSM|Add1~39\ = CARRY((!\TimerFSM|s_counter\(19) & !\TimerFSM|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|s_counter\(19),
	datad => VCC,
	cin => \TimerFSM|Add1~37\,
	combout => \TimerFSM|Add1~38_combout\,
	cout => \TimerFSM|Add1~39\);

-- Location: LCCOMB_X108_Y28_N2
\TimerFSM|s_counter[19]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[19]~6_combout\ = (\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add0~29_combout\))) # (!\Escolha_pro|newTime~combout\ & (\TimerFSM|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|newTime~combout\,
	datab => \TimerFSM|Add1~38_combout\,
	datad => \TimerFSM|Add0~29_combout\,
	combout => \TimerFSM|s_counter[19]~6_combout\);

-- Location: FF_X108_Y28_N3
\TimerFSM|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[19]~6_combout\,
	asdata => \TimerFSM|Mult0|mult_core|_~1_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(19));

-- Location: LCCOMB_X109_Y29_N10
\TimerFSM|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~40_combout\ = (\TimerFSM|s_counter\(20) & ((GND) # (!\TimerFSM|Add1~39\))) # (!\TimerFSM|s_counter\(20) & (\TimerFSM|Add1~39\ $ (GND)))
-- \TimerFSM|Add1~41\ = CARRY((\TimerFSM|s_counter\(20)) # (!\TimerFSM|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(20),
	datad => VCC,
	cin => \TimerFSM|Add1~39\,
	combout => \TimerFSM|Add1~40_combout\,
	cout => \TimerFSM|Add1~41\);

-- Location: LCCOMB_X108_Y29_N16
\TimerFSM|s_counter[20]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[20]~7_combout\ = (\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add0~31_combout\))) # (!\Escolha_pro|newTime~combout\ & (\TimerFSM|Add1~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|newTime~combout\,
	datab => \TimerFSM|Add1~40_combout\,
	datad => \TimerFSM|Add0~31_combout\,
	combout => \TimerFSM|s_counter[20]~7_combout\);

-- Location: FF_X108_Y29_N17
\TimerFSM|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[20]~7_combout\,
	asdata => \TimerFSM|Mult0|mult_core|_~0_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(20));

-- Location: LCCOMB_X109_Y29_N12
\TimerFSM|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~42_combout\ = (\TimerFSM|s_counter\(21) & (\TimerFSM|Add1~41\ & VCC)) # (!\TimerFSM|s_counter\(21) & (!\TimerFSM|Add1~41\))
-- \TimerFSM|Add1~43\ = CARRY((!\TimerFSM|s_counter\(21) & !\TimerFSM|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(21),
	datad => VCC,
	cin => \TimerFSM|Add1~41\,
	combout => \TimerFSM|Add1~42_combout\,
	cout => \TimerFSM|Add1~43\);

-- Location: LCCOMB_X108_Y29_N14
\TimerFSM|s_counter[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[21]~8_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~33_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add0~33_combout\,
	datab => \Escolha_pro|newTime~combout\,
	datad => \TimerFSM|Add1~42_combout\,
	combout => \TimerFSM|s_counter[21]~8_combout\);

-- Location: FF_X108_Y29_N15
\TimerFSM|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[21]~8_combout\,
	asdata => \Escolha_pro|s_currentState.Start~_wirecell_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(21));

-- Location: LCCOMB_X109_Y29_N14
\TimerFSM|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~44_combout\ = (\TimerFSM|s_counter\(22) & ((GND) # (!\TimerFSM|Add1~43\))) # (!\TimerFSM|s_counter\(22) & (\TimerFSM|Add1~43\ $ (GND)))
-- \TimerFSM|Add1~45\ = CARRY((\TimerFSM|s_counter\(22)) # (!\TimerFSM|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|s_counter\(22),
	datad => VCC,
	cin => \TimerFSM|Add1~43\,
	combout => \TimerFSM|Add1~44_combout\,
	cout => \TimerFSM|Add1~45\);

-- Location: LCCOMB_X108_Y28_N28
\TimerFSM|s_counter[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[22]~9_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~35_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|newTime~combout\,
	datab => \TimerFSM|Add0~35_combout\,
	datad => \TimerFSM|Add1~44_combout\,
	combout => \TimerFSM|s_counter[22]~9_combout\);

-- Location: FF_X108_Y28_N29
\TimerFSM|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[22]~9_combout\,
	asdata => \TimerFSM|Mult0|mult_core|romout[0][22]~0_wirecell_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(22));

-- Location: LCCOMB_X109_Y29_N16
\TimerFSM|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~46_combout\ = (\TimerFSM|s_counter\(23) & (\TimerFSM|Add1~45\ & VCC)) # (!\TimerFSM|s_counter\(23) & (!\TimerFSM|Add1~45\))
-- \TimerFSM|Add1~47\ = CARRY((!\TimerFSM|s_counter\(23) & !\TimerFSM|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(23),
	datad => VCC,
	cin => \TimerFSM|Add1~45\,
	combout => \TimerFSM|Add1~46_combout\,
	cout => \TimerFSM|Add1~47\);

-- Location: LCCOMB_X108_Y28_N14
\TimerFSM|s_counter[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[23]~10_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~37_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add0~37_combout\,
	datab => \Escolha_pro|newTime~combout\,
	datad => \TimerFSM|Add1~46_combout\,
	combout => \TimerFSM|s_counter[23]~10_combout\);

-- Location: FF_X108_Y28_N15
\TimerFSM|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[23]~10_combout\,
	asdata => \Escolha_pro|WideOr1~0_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(23));

-- Location: LCCOMB_X109_Y29_N18
\TimerFSM|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~48_combout\ = (\TimerFSM|s_counter\(24) & ((GND) # (!\TimerFSM|Add1~47\))) # (!\TimerFSM|s_counter\(24) & (\TimerFSM|Add1~47\ $ (GND)))
-- \TimerFSM|Add1~49\ = CARRY((\TimerFSM|s_counter\(24)) # (!\TimerFSM|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(24),
	datad => VCC,
	cin => \TimerFSM|Add1~47\,
	combout => \TimerFSM|Add1~48_combout\,
	cout => \TimerFSM|Add1~49\);

-- Location: LCCOMB_X108_Y28_N24
\TimerFSM|s_counter[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[24]~11_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~39_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|newTime~combout\,
	datab => \TimerFSM|Add0~39_combout\,
	datad => \TimerFSM|Add1~48_combout\,
	combout => \TimerFSM|s_counter[24]~11_combout\);

-- Location: FF_X108_Y28_N25
\TimerFSM|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[24]~11_combout\,
	asdata => \TimerFSM|Mult0|mult_core|_~1_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(24));

-- Location: LCCOMB_X109_Y29_N20
\TimerFSM|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~50_combout\ = (\TimerFSM|s_counter\(25) & (\TimerFSM|Add1~49\ & VCC)) # (!\TimerFSM|s_counter\(25) & (!\TimerFSM|Add1~49\))
-- \TimerFSM|Add1~51\ = CARRY((!\TimerFSM|s_counter\(25) & !\TimerFSM|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(25),
	datad => VCC,
	cin => \TimerFSM|Add1~49\,
	combout => \TimerFSM|Add1~50_combout\,
	cout => \TimerFSM|Add1~51\);

-- Location: LCCOMB_X108_Y28_N22
\TimerFSM|s_counter[25]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[25]~12_combout\ = (\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add0~41_combout\))) # (!\Escolha_pro|newTime~combout\ & (\TimerFSM|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add1~50_combout\,
	datab => \Escolha_pro|newTime~combout\,
	datad => \TimerFSM|Add0~41_combout\,
	combout => \TimerFSM|s_counter[25]~12_combout\);

-- Location: FF_X108_Y28_N23
\TimerFSM|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[25]~12_combout\,
	asdata => \TimerFSM|Mult0|mult_core|_~2_wirecell_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(25));

-- Location: LCCOMB_X109_Y29_N22
\TimerFSM|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~52_combout\ = (\TimerFSM|s_counter\(26) & ((GND) # (!\TimerFSM|Add1~51\))) # (!\TimerFSM|s_counter\(26) & (\TimerFSM|Add1~51\ $ (GND)))
-- \TimerFSM|Add1~53\ = CARRY((\TimerFSM|s_counter\(26)) # (!\TimerFSM|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|s_counter\(26),
	datad => VCC,
	cin => \TimerFSM|Add1~51\,
	combout => \TimerFSM|Add1~52_combout\,
	cout => \TimerFSM|Add1~53\);

-- Location: LCCOMB_X108_Y29_N20
\TimerFSM|s_counter[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[26]~13_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~43_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add0~43_combout\,
	datab => \Escolha_pro|newTime~combout\,
	datad => \TimerFSM|Add1~52_combout\,
	combout => \TimerFSM|s_counter[26]~13_combout\);

-- Location: FF_X108_Y29_N21
\TimerFSM|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[26]~13_combout\,
	asdata => \Escolha_pro|WideOr1~0_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(26));

-- Location: LCCOMB_X109_Y29_N24
\TimerFSM|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~54_combout\ = (\TimerFSM|s_counter\(27) & (\TimerFSM|Add1~53\ & VCC)) # (!\TimerFSM|s_counter\(27) & (!\TimerFSM|Add1~53\))
-- \TimerFSM|Add1~55\ = CARRY((!\TimerFSM|s_counter\(27) & !\TimerFSM|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(27),
	datad => VCC,
	cin => \TimerFSM|Add1~53\,
	combout => \TimerFSM|Add1~54_combout\,
	cout => \TimerFSM|Add1~55\);

-- Location: LCCOMB_X108_Y29_N22
\TimerFSM|s_counter[27]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[27]~14_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~45_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add0~45_combout\,
	datab => \Escolha_pro|newTime~combout\,
	datad => \TimerFSM|Add1~54_combout\,
	combout => \TimerFSM|s_counter[27]~14_combout\);

-- Location: FF_X108_Y29_N23
\TimerFSM|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[27]~14_combout\,
	asdata => \Escolha_pro|WideOr1~0_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(27));

-- Location: LCCOMB_X107_Y29_N18
\TimerFSM|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~47_combout\ = (\TimerFSM|Mult0|mult_core|_~1_combout\ & (\TimerFSM|Add0~46\ & VCC)) # (!\TimerFSM|Mult0|mult_core|_~1_combout\ & (!\TimerFSM|Add0~46\))
-- \TimerFSM|Add0~48\ = CARRY((!\TimerFSM|Mult0|mult_core|_~1_combout\ & !\TimerFSM|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~46\,
	combout => \TimerFSM|Add0~47_combout\,
	cout => \TimerFSM|Add0~48\);

-- Location: LCCOMB_X109_Y29_N26
\TimerFSM|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~56_combout\ = (\TimerFSM|s_counter\(28) & ((GND) # (!\TimerFSM|Add1~55\))) # (!\TimerFSM|s_counter\(28) & (\TimerFSM|Add1~55\ $ (GND)))
-- \TimerFSM|Add1~57\ = CARRY((\TimerFSM|s_counter\(28)) # (!\TimerFSM|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(28),
	datad => VCC,
	cin => \TimerFSM|Add1~55\,
	combout => \TimerFSM|Add1~56_combout\,
	cout => \TimerFSM|Add1~57\);

-- Location: LCCOMB_X108_Y29_N28
\TimerFSM|s_counter[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[28]~15_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~47_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|Add0~47_combout\,
	datab => \Escolha_pro|newTime~combout\,
	datad => \TimerFSM|Add1~56_combout\,
	combout => \TimerFSM|s_counter[28]~15_combout\);

-- Location: FF_X108_Y29_N29
\TimerFSM|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[28]~15_combout\,
	asdata => \TimerFSM|Mult0|mult_core|_~1_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(28));

-- Location: LCCOMB_X107_Y29_N20
\TimerFSM|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~49_combout\ = (\TimerFSM|Mult0|mult_core|_~0_combout\ & ((GND) # (!\TimerFSM|Add0~48\))) # (!\TimerFSM|Mult0|mult_core|_~0_combout\ & (\TimerFSM|Add0~48\ $ (GND)))
-- \TimerFSM|Add0~50\ = CARRY((\TimerFSM|Mult0|mult_core|_~0_combout\) # (!\TimerFSM|Add0~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerFSM|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \TimerFSM|Add0~48\,
	combout => \TimerFSM|Add0~49_combout\,
	cout => \TimerFSM|Add0~50\);

-- Location: LCCOMB_X109_Y29_N28
\TimerFSM|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~58_combout\ = (\TimerFSM|s_counter\(29) & (\TimerFSM|Add1~57\ & VCC)) # (!\TimerFSM|s_counter\(29) & (!\TimerFSM|Add1~57\))
-- \TimerFSM|Add1~59\ = CARRY((!\TimerFSM|s_counter\(29) & !\TimerFSM|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(29),
	datad => VCC,
	cin => \TimerFSM|Add1~57\,
	combout => \TimerFSM|Add1~58_combout\,
	cout => \TimerFSM|Add1~59\);

-- Location: LCCOMB_X108_Y29_N26
\TimerFSM|s_counter[29]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_counter[29]~16_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~49_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|newTime~combout\,
	datab => \TimerFSM|Add0~49_combout\,
	datad => \TimerFSM|Add1~58_combout\,
	combout => \TimerFSM|s_counter[29]~16_combout\);

-- Location: FF_X108_Y29_N27
\TimerFSM|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_counter[29]~16_combout\,
	asdata => \TimerFSM|Mult0|mult_core|_~0_combout\,
	sload => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(29));

-- Location: LCCOMB_X108_Y29_N12
\TimerFSM|s_cntZero~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_cntZero~9_combout\ = (!\TimerFSM|s_counter\(27) & (!\TimerFSM|s_counter\(28) & (!\TimerFSM|s_counter\(29) & !\TimerFSM|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(27),
	datab => \TimerFSM|s_counter\(28),
	datac => \TimerFSM|s_counter\(29),
	datad => \TimerFSM|s_counter\(26),
	combout => \TimerFSM|s_cntZero~9_combout\);

-- Location: LCCOMB_X108_Y28_N20
\TimerFSM|s_cntZero~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_cntZero~8_combout\ = (!\TimerFSM|s_counter\(25) & (!\TimerFSM|s_counter\(24) & (!\TimerFSM|s_counter\(23) & !\TimerFSM|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(25),
	datab => \TimerFSM|s_counter\(24),
	datac => \TimerFSM|s_counter\(23),
	datad => \TimerFSM|s_counter\(22),
	combout => \TimerFSM|s_cntZero~8_combout\);

-- Location: LCCOMB_X108_Y29_N30
\TimerFSM|s_cntZero~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_cntZero~6_combout\ = (!\TimerFSM|s_counter\(21) & !\TimerFSM|s_counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimerFSM|s_counter\(21),
	datad => \TimerFSM|s_counter\(20),
	combout => \TimerFSM|s_cntZero~6_combout\);

-- Location: LCCOMB_X109_Y28_N12
\TimerFSM|s_cntZero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_cntZero~5_combout\ = (!\TimerFSM|s_counter\(15) & (!\TimerFSM|s_counter\(16) & (!\TimerFSM|s_counter\(17) & !\TimerFSM|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(15),
	datab => \TimerFSM|s_counter\(16),
	datac => \TimerFSM|s_counter\(17),
	datad => \TimerFSM|s_counter\(14),
	combout => \TimerFSM|s_cntZero~5_combout\);

-- Location: LCCOMB_X109_Y28_N14
\TimerFSM|s_cntZero~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_cntZero~7_combout\ = (!\TimerFSM|s_counter\(18) & (\TimerFSM|s_cntZero~6_combout\ & (\TimerFSM|s_cntZero~5_combout\ & !\TimerFSM|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(18),
	datab => \TimerFSM|s_cntZero~6_combout\,
	datac => \TimerFSM|s_cntZero~5_combout\,
	datad => \TimerFSM|s_counter\(19),
	combout => \TimerFSM|s_cntZero~7_combout\);

-- Location: LCCOMB_X108_Y30_N30
\TimerFSM|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_cntZero~0_combout\ = (!\TimerFSM|s_counter\(1) & (!\TimerFSM|s_counter\(0) & (!\TimerFSM|s_counter\(2) & !\TimerFSM|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(1),
	datab => \TimerFSM|s_counter\(0),
	datac => \TimerFSM|s_counter\(2),
	datad => \TimerFSM|s_counter\(3),
	combout => \TimerFSM|s_cntZero~0_combout\);

-- Location: LCCOMB_X108_Y29_N0
\TimerFSM|s_cntZero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_cntZero~2_combout\ = (!\TimerFSM|s_counter\(10) & (!\TimerFSM|s_counter\(7) & (!\TimerFSM|s_counter\(9) & !\TimerFSM|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(10),
	datab => \TimerFSM|s_counter\(7),
	datac => \TimerFSM|s_counter\(9),
	datad => \TimerFSM|s_counter\(8),
	combout => \TimerFSM|s_cntZero~2_combout\);

-- Location: LCCOMB_X107_Y29_N22
\TimerFSM|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~51_combout\ = !\TimerFSM|Add0~50\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \TimerFSM|Add0~50\,
	combout => \TimerFSM|Add0~51_combout\);

-- Location: LCCOMB_X109_Y29_N30
\TimerFSM|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add1~60_combout\ = \TimerFSM|Add1~59\ $ (\TimerFSM|s_counter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \TimerFSM|s_counter\(30),
	cin => \TimerFSM|Add1~59\,
	combout => \TimerFSM|Add1~60_combout\);

-- Location: LCCOMB_X107_Y29_N28
\TimerFSM|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|Add0~53_combout\ = (\Escolha_pro|newTime~combout\ & (\TimerFSM|Add0~51_combout\)) # (!\Escolha_pro|newTime~combout\ & ((\TimerFSM|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|newTime~combout\,
	datac => \TimerFSM|Add0~51_combout\,
	datad => \TimerFSM|Add1~60_combout\,
	combout => \TimerFSM|Add0~53_combout\);

-- Location: FF_X107_Y29_N29
\TimerFSM|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|Add0~53_combout\,
	sclr => \s_reset~q\,
	ena => \TimerFSM|s_counter[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_counter\(30));

-- Location: LCCOMB_X108_Y30_N4
\TimerFSM|s_cntZero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_cntZero~3_combout\ = (!\TimerFSM|s_counter\(11) & (!\TimerFSM|s_counter\(30) & (!\TimerFSM|s_counter\(12) & !\TimerFSM|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(11),
	datab => \TimerFSM|s_counter\(30),
	datac => \TimerFSM|s_counter\(12),
	datad => \TimerFSM|s_counter\(13),
	combout => \TimerFSM|s_cntZero~3_combout\);

-- Location: LCCOMB_X108_Y30_N2
\TimerFSM|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_cntZero~1_combout\ = (!\TimerFSM|s_counter\(4) & (!\TimerFSM|s_counter\(6) & (!\Escolha_pro|newTime~combout\ & !\TimerFSM|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_counter\(4),
	datab => \TimerFSM|s_counter\(6),
	datac => \Escolha_pro|newTime~combout\,
	datad => \TimerFSM|s_counter\(5),
	combout => \TimerFSM|s_cntZero~1_combout\);

-- Location: LCCOMB_X108_Y30_N28
\TimerFSM|s_cntZero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_cntZero~4_combout\ = (\TimerFSM|s_cntZero~0_combout\ & (\TimerFSM|s_cntZero~2_combout\ & (\TimerFSM|s_cntZero~3_combout\ & \TimerFSM|s_cntZero~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_cntZero~0_combout\,
	datab => \TimerFSM|s_cntZero~2_combout\,
	datac => \TimerFSM|s_cntZero~3_combout\,
	datad => \TimerFSM|s_cntZero~1_combout\,
	combout => \TimerFSM|s_cntZero~4_combout\);

-- Location: LCCOMB_X109_Y28_N20
\TimerFSM|s_cntZero~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_cntZero~10_combout\ = (\TimerFSM|s_cntZero~9_combout\ & (\TimerFSM|s_cntZero~8_combout\ & (\TimerFSM|s_cntZero~7_combout\ & \TimerFSM|s_cntZero~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_cntZero~9_combout\,
	datab => \TimerFSM|s_cntZero~8_combout\,
	datac => \TimerFSM|s_cntZero~7_combout\,
	datad => \TimerFSM|s_cntZero~4_combout\,
	combout => \TimerFSM|s_cntZero~10_combout\);

-- Location: LCCOMB_X109_Y32_N28
\TimerFSM|s_cntZero~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerFSM|s_cntZero~11_combout\ = (\Escolha_pro|WideOr0~0_combout\ & ((\TimerFSM|s_cntZero~10_combout\))) # (!\Escolha_pro|WideOr0~0_combout\ & (\TimerFSM|s_cntZero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|WideOr0~0_combout\,
	datac => \TimerFSM|s_cntZero~q\,
	datad => \TimerFSM|s_cntZero~10_combout\,
	combout => \TimerFSM|s_cntZero~11_combout\);

-- Location: FF_X109_Y32_N29
\TimerFSM|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerFSM|s_cntZero~11_combout\,
	sclr => \s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerFSM|s_cntZero~q\);

-- Location: LCCOMB_X109_Y32_N8
\Escolha_pro|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector3~1_combout\ = (\Escolha_pro|Selector3~0_combout\ & ((\Escolha_pro|s_currentState.choose~q\) # (!\Escolha_pro|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|WideOr0~0_combout\,
	datac => \Escolha_pro|Selector3~0_combout\,
	datad => \Escolha_pro|s_currentState.choose~q\,
	combout => \Escolha_pro|Selector3~1_combout\);

-- Location: LCCOMB_X108_Y32_N8
\Escolha_pro|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector3~2_combout\ = (\s_choc~q\ & (((\Escolha_pro|s_currentState.Tcha~q\ & !\s_cha~q\)))) # (!\s_choc~q\ & ((\Escolha_pro|s_currentState.Tchoc~q\) # ((\Escolha_pro|s_currentState.Tcha~q\ & !\s_cha~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_choc~q\,
	datab => \Escolha_pro|s_currentState.Tchoc~q\,
	datac => \Escolha_pro|s_currentState.Tcha~q\,
	datad => \s_cha~q\,
	combout => \Escolha_pro|Selector3~2_combout\);

-- Location: LCCOMB_X108_Y32_N20
\Escolha_pro|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector3~3_combout\ = (!\TimerFSM|s_cntZero~q\ & ((\Escolha_pro|Selector3~2_combout\) # ((\Escolha_pro|s_currentState.Tcafe~q\ & !\s_cafe~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.Tcafe~q\,
	datab => \s_cafe~q\,
	datac => \Escolha_pro|Selector3~2_combout\,
	datad => \TimerFSM|s_cntZero~q\,
	combout => \Escolha_pro|Selector3~3_combout\);

-- Location: LCCOMB_X109_Y32_N12
\Escolha_pro|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector2~0_combout\ = ((\Escolha_pro|s_currentState.Helo~q\ & !\TimerFSM|s_cntZero~q\)) # (!\Escolha_pro|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.Start~q\,
	datac => \Escolha_pro|s_currentState.Helo~q\,
	datad => \TimerFSM|s_cntZero~q\,
	combout => \Escolha_pro|Selector2~0_combout\);

-- Location: FF_X109_Y32_N13
\Escolha_pro|s_currentState.Helo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Escolha_pro|Selector2~0_combout\,
	sclr => \s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escolha_pro|s_currentState.Helo~q\);

-- Location: LCCOMB_X108_Y30_N26
\Escolha_pro|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector3~4_combout\ = (\Escolha_pro|Selector3~1_combout\) # ((\Escolha_pro|Selector3~3_combout\) # ((\TimerFSM|s_cntZero~q\ & \Escolha_pro|s_currentState.Helo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerFSM|s_cntZero~q\,
	datab => \Escolha_pro|Selector3~1_combout\,
	datac => \Escolha_pro|Selector3~3_combout\,
	datad => \Escolha_pro|s_currentState.Helo~q\,
	combout => \Escolha_pro|Selector3~4_combout\);

-- Location: FF_X108_Y30_N27
\Escolha_pro|s_currentState.choose\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Escolha_pro|Selector3~4_combout\,
	sclr => \s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escolha_pro|s_currentState.choose~q\);

-- Location: LCCOMB_X108_Y32_N30
\Escolha_pro|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector5~0_combout\ = (\Escolha_pro|s_currentState.Tcha~q\ & (((!\s_cafe~q\ & \Escolha_pro|s_currentState.choose~q\)) # (!\TimerFSM|s_cntZero~q\))) # (!\Escolha_pro|s_currentState.Tcha~q\ & (!\s_cafe~q\ & 
-- (\Escolha_pro|s_currentState.choose~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.Tcha~q\,
	datab => \s_cafe~q\,
	datac => \Escolha_pro|s_currentState.choose~q\,
	datad => \TimerFSM|s_cntZero~q\,
	combout => \Escolha_pro|Selector5~0_combout\);

-- Location: LCCOMB_X108_Y32_N4
\Escolha_pro|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector5~1_combout\ = (\Escolha_pro|Selector5~0_combout\ & \s_cha~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|Selector5~0_combout\,
	datad => \s_cha~q\,
	combout => \Escolha_pro|Selector5~1_combout\);

-- Location: FF_X108_Y32_N5
\Escolha_pro|s_currentState.Tcha\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Escolha_pro|Selector5~1_combout\,
	sclr => \s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escolha_pro|s_currentState.Tcha~q\);

-- Location: LCCOMB_X109_Y32_N24
\Escolha_pro|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|Selector8~0_combout\ = (\Escolha_pro|s_currentState.Tcha~q\ & ((\TimerFSM|s_cntZero~q\) # ((!\Escolha_pro|Selector3~0_combout\ & \Escolha_pro|s_currentState.Ready_Cha~q\)))) # (!\Escolha_pro|s_currentState.Tcha~q\ & 
-- (!\Escolha_pro|Selector3~0_combout\ & (\Escolha_pro|s_currentState.Ready_Cha~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.Tcha~q\,
	datab => \Escolha_pro|Selector3~0_combout\,
	datac => \Escolha_pro|s_currentState.Ready_Cha~q\,
	datad => \TimerFSM|s_cntZero~q\,
	combout => \Escolha_pro|Selector8~0_combout\);

-- Location: FF_X109_Y32_N25
\Escolha_pro|s_currentState.Ready_Cha\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Escolha_pro|Selector8~0_combout\,
	sclr => \s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Escolha_pro|s_currentState.Ready_Cha~q\);

-- Location: LCCOMB_X109_Y28_N30
\Escolha_pro|selWord[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|selWord[2]~0_combout\ = (!\Escolha_pro|s_currentState.Ready_Cha~q\ & !\Escolha_pro|s_currentState.Tcha~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.Ready_Cha~q\,
	datac => \Escolha_pro|s_currentState.Tcha~q\,
	combout => \Escolha_pro|selWord[2]~0_combout\);

-- Location: LCCOMB_X108_Y23_N8
\clkDivider|s_divCounter[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[0]~24_combout\ = \clkDivider|s_divCounter\(0) $ (VCC)
-- \clkDivider|s_divCounter[0]~25\ = CARRY(\clkDivider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(0),
	datad => VCC,
	combout => \clkDivider|s_divCounter[0]~24_combout\,
	cout => \clkDivider|s_divCounter[0]~25\);

-- Location: LCCOMB_X108_Y22_N12
\clkDivider|s_divCounter[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[18]~60_combout\ = (\clkDivider|s_divCounter\(18) & (\clkDivider|s_divCounter[17]~59\ $ (GND))) # (!\clkDivider|s_divCounter\(18) & (!\clkDivider|s_divCounter[17]~59\ & VCC))
-- \clkDivider|s_divCounter[18]~61\ = CARRY((\clkDivider|s_divCounter\(18) & !\clkDivider|s_divCounter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(18),
	datad => VCC,
	cin => \clkDivider|s_divCounter[17]~59\,
	combout => \clkDivider|s_divCounter[18]~60_combout\,
	cout => \clkDivider|s_divCounter[18]~61\);

-- Location: LCCOMB_X108_Y22_N14
\clkDivider|s_divCounter[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[19]~62_combout\ = (\clkDivider|s_divCounter\(19) & (!\clkDivider|s_divCounter[18]~61\)) # (!\clkDivider|s_divCounter\(19) & ((\clkDivider|s_divCounter[18]~61\) # (GND)))
-- \clkDivider|s_divCounter[19]~63\ = CARRY((!\clkDivider|s_divCounter[18]~61\) # (!\clkDivider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(19),
	datad => VCC,
	cin => \clkDivider|s_divCounter[18]~61\,
	combout => \clkDivider|s_divCounter[19]~62_combout\,
	cout => \clkDivider|s_divCounter[19]~63\);

-- Location: FF_X108_Y22_N15
\clkDivider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[19]~62_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(19));

-- Location: LCCOMB_X108_Y22_N16
\clkDivider|s_divCounter[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[20]~64_combout\ = (\clkDivider|s_divCounter\(20) & (\clkDivider|s_divCounter[19]~63\ $ (GND))) # (!\clkDivider|s_divCounter\(20) & (!\clkDivider|s_divCounter[19]~63\ & VCC))
-- \clkDivider|s_divCounter[20]~65\ = CARRY((\clkDivider|s_divCounter\(20) & !\clkDivider|s_divCounter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(20),
	datad => VCC,
	cin => \clkDivider|s_divCounter[19]~63\,
	combout => \clkDivider|s_divCounter[20]~64_combout\,
	cout => \clkDivider|s_divCounter[20]~65\);

-- Location: FF_X108_Y22_N17
\clkDivider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[20]~64_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(20));

-- Location: LCCOMB_X108_Y22_N18
\clkDivider|s_divCounter[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[21]~66_combout\ = (\clkDivider|s_divCounter\(21) & (!\clkDivider|s_divCounter[20]~65\)) # (!\clkDivider|s_divCounter\(21) & ((\clkDivider|s_divCounter[20]~65\) # (GND)))
-- \clkDivider|s_divCounter[21]~67\ = CARRY((!\clkDivider|s_divCounter[20]~65\) # (!\clkDivider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(21),
	datad => VCC,
	cin => \clkDivider|s_divCounter[20]~65\,
	combout => \clkDivider|s_divCounter[21]~66_combout\,
	cout => \clkDivider|s_divCounter[21]~67\);

-- Location: FF_X108_Y22_N19
\clkDivider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[21]~66_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(21));

-- Location: LCCOMB_X108_Y22_N20
\clkDivider|s_divCounter[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[22]~68_combout\ = (\clkDivider|s_divCounter\(22) & (\clkDivider|s_divCounter[21]~67\ $ (GND))) # (!\clkDivider|s_divCounter\(22) & (!\clkDivider|s_divCounter[21]~67\ & VCC))
-- \clkDivider|s_divCounter[22]~69\ = CARRY((\clkDivider|s_divCounter\(22) & !\clkDivider|s_divCounter[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(22),
	datad => VCC,
	cin => \clkDivider|s_divCounter[21]~67\,
	combout => \clkDivider|s_divCounter[22]~68_combout\,
	cout => \clkDivider|s_divCounter[22]~69\);

-- Location: FF_X108_Y22_N21
\clkDivider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[22]~68_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(22));

-- Location: LCCOMB_X108_Y22_N22
\clkDivider|s_divCounter[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[23]~70_combout\ = \clkDivider|s_divCounter\(23) $ (\clkDivider|s_divCounter[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(23),
	cin => \clkDivider|s_divCounter[22]~69\,
	combout => \clkDivider|s_divCounter[23]~70_combout\);

-- Location: FF_X108_Y22_N23
\clkDivider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[23]~70_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(23));

-- Location: LCCOMB_X108_Y23_N0
\clkDivider|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~2_combout\ = (\clkDivider|s_divCounter\(1) & (\clkDivider|s_divCounter\(0) & (\clkDivider|s_divCounter\(3) & \clkDivider|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(1),
	datab => \clkDivider|s_divCounter\(0),
	datac => \clkDivider|s_divCounter\(3),
	datad => \clkDivider|s_divCounter\(2),
	combout => \clkDivider|LessThan0~2_combout\);

-- Location: LCCOMB_X108_Y23_N6
\clkDivider|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~10_combout\ = (\clkDivider|s_divCounter\(5) & (\clkDivider|s_divCounter\(4) & (\clkDivider|s_divCounter\(6) & \clkDivider|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(5),
	datab => \clkDivider|s_divCounter\(4),
	datac => \clkDivider|s_divCounter\(6),
	datad => \clkDivider|LessThan0~2_combout\,
	combout => \clkDivider|LessThan0~10_combout\);

-- Location: LCCOMB_X108_Y23_N2
\clkDivider|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~4_combout\ = (\clkDivider|s_divCounter\(9) & ((\clkDivider|s_divCounter\(8)) # ((\clkDivider|s_divCounter\(7)) # (\clkDivider|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(9),
	datab => \clkDivider|s_divCounter\(8),
	datac => \clkDivider|s_divCounter\(7),
	datad => \clkDivider|LessThan0~10_combout\,
	combout => \clkDivider|LessThan0~4_combout\);

-- Location: LCCOMB_X108_Y23_N4
\clkDivider|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~5_combout\ = ((!\clkDivider|s_divCounter\(11) & ((!\clkDivider|LessThan0~4_combout\) # (!\clkDivider|s_divCounter\(10))))) # (!\clkDivider|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(11),
	datab => \clkDivider|s_divCounter\(10),
	datac => \clkDivider|s_divCounter\(12),
	datad => \clkDivider|LessThan0~4_combout\,
	combout => \clkDivider|LessThan0~5_combout\);

-- Location: LCCOMB_X108_Y22_N28
\clkDivider|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~6_combout\ = (\clkDivider|s_divCounter\(15) & ((\clkDivider|s_divCounter\(13)) # ((\clkDivider|s_divCounter\(14)) # (!\clkDivider|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(15),
	datab => \clkDivider|s_divCounter\(13),
	datac => \clkDivider|s_divCounter\(14),
	datad => \clkDivider|LessThan0~5_combout\,
	combout => \clkDivider|LessThan0~6_combout\);

-- Location: LCCOMB_X108_Y22_N26
\clkDivider|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~7_combout\ = (!\clkDivider|s_divCounter\(18) & (!\clkDivider|s_divCounter\(16) & (!\clkDivider|s_divCounter\(17) & !\clkDivider|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(18),
	datab => \clkDivider|s_divCounter\(16),
	datac => \clkDivider|s_divCounter\(17),
	datad => \clkDivider|LessThan0~6_combout\,
	combout => \clkDivider|LessThan0~7_combout\);

-- Location: LCCOMB_X108_Y22_N24
\clkDivider|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~8_combout\ = (\clkDivider|s_divCounter\(20) & (!\clkDivider|LessThan0~7_combout\ & \clkDivider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(20),
	datac => \clkDivider|LessThan0~7_combout\,
	datad => \clkDivider|s_divCounter\(19),
	combout => \clkDivider|LessThan0~8_combout\);

-- Location: LCCOMB_X108_Y22_N30
\clkDivider|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~9_combout\ = (\clkDivider|s_divCounter\(23) & ((\clkDivider|s_divCounter\(21)) # ((\clkDivider|s_divCounter\(22)) # (\clkDivider|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(21),
	datab => \clkDivider|s_divCounter\(22),
	datac => \clkDivider|s_divCounter\(23),
	datad => \clkDivider|LessThan0~8_combout\,
	combout => \clkDivider|LessThan0~9_combout\);

-- Location: FF_X108_Y23_N9
\clkDivider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[0]~24_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(0));

-- Location: LCCOMB_X108_Y23_N10
\clkDivider|s_divCounter[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[1]~26_combout\ = (\clkDivider|s_divCounter\(1) & (!\clkDivider|s_divCounter[0]~25\)) # (!\clkDivider|s_divCounter\(1) & ((\clkDivider|s_divCounter[0]~25\) # (GND)))
-- \clkDivider|s_divCounter[1]~27\ = CARRY((!\clkDivider|s_divCounter[0]~25\) # (!\clkDivider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(1),
	datad => VCC,
	cin => \clkDivider|s_divCounter[0]~25\,
	combout => \clkDivider|s_divCounter[1]~26_combout\,
	cout => \clkDivider|s_divCounter[1]~27\);

-- Location: FF_X108_Y23_N11
\clkDivider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[1]~26_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(1));

-- Location: LCCOMB_X108_Y23_N12
\clkDivider|s_divCounter[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[2]~28_combout\ = (\clkDivider|s_divCounter\(2) & (\clkDivider|s_divCounter[1]~27\ $ (GND))) # (!\clkDivider|s_divCounter\(2) & (!\clkDivider|s_divCounter[1]~27\ & VCC))
-- \clkDivider|s_divCounter[2]~29\ = CARRY((\clkDivider|s_divCounter\(2) & !\clkDivider|s_divCounter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(2),
	datad => VCC,
	cin => \clkDivider|s_divCounter[1]~27\,
	combout => \clkDivider|s_divCounter[2]~28_combout\,
	cout => \clkDivider|s_divCounter[2]~29\);

-- Location: FF_X108_Y23_N13
\clkDivider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[2]~28_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(2));

-- Location: LCCOMB_X108_Y23_N14
\clkDivider|s_divCounter[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[3]~30_combout\ = (\clkDivider|s_divCounter\(3) & (!\clkDivider|s_divCounter[2]~29\)) # (!\clkDivider|s_divCounter\(3) & ((\clkDivider|s_divCounter[2]~29\) # (GND)))
-- \clkDivider|s_divCounter[3]~31\ = CARRY((!\clkDivider|s_divCounter[2]~29\) # (!\clkDivider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(3),
	datad => VCC,
	cin => \clkDivider|s_divCounter[2]~29\,
	combout => \clkDivider|s_divCounter[3]~30_combout\,
	cout => \clkDivider|s_divCounter[3]~31\);

-- Location: FF_X108_Y23_N15
\clkDivider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[3]~30_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(3));

-- Location: LCCOMB_X108_Y23_N16
\clkDivider|s_divCounter[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[4]~32_combout\ = (\clkDivider|s_divCounter\(4) & (\clkDivider|s_divCounter[3]~31\ $ (GND))) # (!\clkDivider|s_divCounter\(4) & (!\clkDivider|s_divCounter[3]~31\ & VCC))
-- \clkDivider|s_divCounter[4]~33\ = CARRY((\clkDivider|s_divCounter\(4) & !\clkDivider|s_divCounter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(4),
	datad => VCC,
	cin => \clkDivider|s_divCounter[3]~31\,
	combout => \clkDivider|s_divCounter[4]~32_combout\,
	cout => \clkDivider|s_divCounter[4]~33\);

-- Location: FF_X108_Y23_N17
\clkDivider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[4]~32_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(4));

-- Location: LCCOMB_X108_Y23_N18
\clkDivider|s_divCounter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[5]~34_combout\ = (\clkDivider|s_divCounter\(5) & (!\clkDivider|s_divCounter[4]~33\)) # (!\clkDivider|s_divCounter\(5) & ((\clkDivider|s_divCounter[4]~33\) # (GND)))
-- \clkDivider|s_divCounter[5]~35\ = CARRY((!\clkDivider|s_divCounter[4]~33\) # (!\clkDivider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(5),
	datad => VCC,
	cin => \clkDivider|s_divCounter[4]~33\,
	combout => \clkDivider|s_divCounter[5]~34_combout\,
	cout => \clkDivider|s_divCounter[5]~35\);

-- Location: FF_X108_Y23_N19
\clkDivider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[5]~34_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(5));

-- Location: LCCOMB_X108_Y23_N20
\clkDivider|s_divCounter[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[6]~36_combout\ = (\clkDivider|s_divCounter\(6) & (\clkDivider|s_divCounter[5]~35\ $ (GND))) # (!\clkDivider|s_divCounter\(6) & (!\clkDivider|s_divCounter[5]~35\ & VCC))
-- \clkDivider|s_divCounter[6]~37\ = CARRY((\clkDivider|s_divCounter\(6) & !\clkDivider|s_divCounter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(6),
	datad => VCC,
	cin => \clkDivider|s_divCounter[5]~35\,
	combout => \clkDivider|s_divCounter[6]~36_combout\,
	cout => \clkDivider|s_divCounter[6]~37\);

-- Location: FF_X108_Y23_N21
\clkDivider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[6]~36_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(6));

-- Location: LCCOMB_X108_Y23_N22
\clkDivider|s_divCounter[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[7]~38_combout\ = (\clkDivider|s_divCounter\(7) & (!\clkDivider|s_divCounter[6]~37\)) # (!\clkDivider|s_divCounter\(7) & ((\clkDivider|s_divCounter[6]~37\) # (GND)))
-- \clkDivider|s_divCounter[7]~39\ = CARRY((!\clkDivider|s_divCounter[6]~37\) # (!\clkDivider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(7),
	datad => VCC,
	cin => \clkDivider|s_divCounter[6]~37\,
	combout => \clkDivider|s_divCounter[7]~38_combout\,
	cout => \clkDivider|s_divCounter[7]~39\);

-- Location: FF_X108_Y23_N23
\clkDivider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[7]~38_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(7));

-- Location: LCCOMB_X108_Y23_N24
\clkDivider|s_divCounter[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[8]~40_combout\ = (\clkDivider|s_divCounter\(8) & (\clkDivider|s_divCounter[7]~39\ $ (GND))) # (!\clkDivider|s_divCounter\(8) & (!\clkDivider|s_divCounter[7]~39\ & VCC))
-- \clkDivider|s_divCounter[8]~41\ = CARRY((\clkDivider|s_divCounter\(8) & !\clkDivider|s_divCounter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(8),
	datad => VCC,
	cin => \clkDivider|s_divCounter[7]~39\,
	combout => \clkDivider|s_divCounter[8]~40_combout\,
	cout => \clkDivider|s_divCounter[8]~41\);

-- Location: FF_X108_Y23_N25
\clkDivider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[8]~40_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(8));

-- Location: LCCOMB_X108_Y23_N26
\clkDivider|s_divCounter[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[9]~42_combout\ = (\clkDivider|s_divCounter\(9) & (!\clkDivider|s_divCounter[8]~41\)) # (!\clkDivider|s_divCounter\(9) & ((\clkDivider|s_divCounter[8]~41\) # (GND)))
-- \clkDivider|s_divCounter[9]~43\ = CARRY((!\clkDivider|s_divCounter[8]~41\) # (!\clkDivider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(9),
	datad => VCC,
	cin => \clkDivider|s_divCounter[8]~41\,
	combout => \clkDivider|s_divCounter[9]~42_combout\,
	cout => \clkDivider|s_divCounter[9]~43\);

-- Location: FF_X108_Y23_N27
\clkDivider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[9]~42_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(9));

-- Location: LCCOMB_X108_Y23_N28
\clkDivider|s_divCounter[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[10]~44_combout\ = (\clkDivider|s_divCounter\(10) & (\clkDivider|s_divCounter[9]~43\ $ (GND))) # (!\clkDivider|s_divCounter\(10) & (!\clkDivider|s_divCounter[9]~43\ & VCC))
-- \clkDivider|s_divCounter[10]~45\ = CARRY((\clkDivider|s_divCounter\(10) & !\clkDivider|s_divCounter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(10),
	datad => VCC,
	cin => \clkDivider|s_divCounter[9]~43\,
	combout => \clkDivider|s_divCounter[10]~44_combout\,
	cout => \clkDivider|s_divCounter[10]~45\);

-- Location: FF_X108_Y23_N29
\clkDivider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[10]~44_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(10));

-- Location: LCCOMB_X108_Y23_N30
\clkDivider|s_divCounter[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[11]~46_combout\ = (\clkDivider|s_divCounter\(11) & (!\clkDivider|s_divCounter[10]~45\)) # (!\clkDivider|s_divCounter\(11) & ((\clkDivider|s_divCounter[10]~45\) # (GND)))
-- \clkDivider|s_divCounter[11]~47\ = CARRY((!\clkDivider|s_divCounter[10]~45\) # (!\clkDivider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(11),
	datad => VCC,
	cin => \clkDivider|s_divCounter[10]~45\,
	combout => \clkDivider|s_divCounter[11]~46_combout\,
	cout => \clkDivider|s_divCounter[11]~47\);

-- Location: FF_X108_Y23_N31
\clkDivider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[11]~46_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(11));

-- Location: LCCOMB_X108_Y22_N0
\clkDivider|s_divCounter[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[12]~48_combout\ = (\clkDivider|s_divCounter\(12) & (\clkDivider|s_divCounter[11]~47\ $ (GND))) # (!\clkDivider|s_divCounter\(12) & (!\clkDivider|s_divCounter[11]~47\ & VCC))
-- \clkDivider|s_divCounter[12]~49\ = CARRY((\clkDivider|s_divCounter\(12) & !\clkDivider|s_divCounter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(12),
	datad => VCC,
	cin => \clkDivider|s_divCounter[11]~47\,
	combout => \clkDivider|s_divCounter[12]~48_combout\,
	cout => \clkDivider|s_divCounter[12]~49\);

-- Location: FF_X108_Y22_N1
\clkDivider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[12]~48_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(12));

-- Location: LCCOMB_X108_Y22_N2
\clkDivider|s_divCounter[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[13]~50_combout\ = (\clkDivider|s_divCounter\(13) & (!\clkDivider|s_divCounter[12]~49\)) # (!\clkDivider|s_divCounter\(13) & ((\clkDivider|s_divCounter[12]~49\) # (GND)))
-- \clkDivider|s_divCounter[13]~51\ = CARRY((!\clkDivider|s_divCounter[12]~49\) # (!\clkDivider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(13),
	datad => VCC,
	cin => \clkDivider|s_divCounter[12]~49\,
	combout => \clkDivider|s_divCounter[13]~50_combout\,
	cout => \clkDivider|s_divCounter[13]~51\);

-- Location: FF_X108_Y22_N3
\clkDivider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[13]~50_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(13));

-- Location: LCCOMB_X108_Y22_N4
\clkDivider|s_divCounter[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[14]~52_combout\ = (\clkDivider|s_divCounter\(14) & (\clkDivider|s_divCounter[13]~51\ $ (GND))) # (!\clkDivider|s_divCounter\(14) & (!\clkDivider|s_divCounter[13]~51\ & VCC))
-- \clkDivider|s_divCounter[14]~53\ = CARRY((\clkDivider|s_divCounter\(14) & !\clkDivider|s_divCounter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(14),
	datad => VCC,
	cin => \clkDivider|s_divCounter[13]~51\,
	combout => \clkDivider|s_divCounter[14]~52_combout\,
	cout => \clkDivider|s_divCounter[14]~53\);

-- Location: FF_X108_Y22_N5
\clkDivider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[14]~52_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(14));

-- Location: LCCOMB_X108_Y22_N6
\clkDivider|s_divCounter[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[15]~54_combout\ = (\clkDivider|s_divCounter\(15) & (!\clkDivider|s_divCounter[14]~53\)) # (!\clkDivider|s_divCounter\(15) & ((\clkDivider|s_divCounter[14]~53\) # (GND)))
-- \clkDivider|s_divCounter[15]~55\ = CARRY((!\clkDivider|s_divCounter[14]~53\) # (!\clkDivider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(15),
	datad => VCC,
	cin => \clkDivider|s_divCounter[14]~53\,
	combout => \clkDivider|s_divCounter[15]~54_combout\,
	cout => \clkDivider|s_divCounter[15]~55\);

-- Location: FF_X108_Y22_N7
\clkDivider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[15]~54_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(15));

-- Location: LCCOMB_X108_Y22_N8
\clkDivider|s_divCounter[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[16]~56_combout\ = (\clkDivider|s_divCounter\(16) & (\clkDivider|s_divCounter[15]~55\ $ (GND))) # (!\clkDivider|s_divCounter\(16) & (!\clkDivider|s_divCounter[15]~55\ & VCC))
-- \clkDivider|s_divCounter[16]~57\ = CARRY((\clkDivider|s_divCounter\(16) & !\clkDivider|s_divCounter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(16),
	datad => VCC,
	cin => \clkDivider|s_divCounter[15]~55\,
	combout => \clkDivider|s_divCounter[16]~56_combout\,
	cout => \clkDivider|s_divCounter[16]~57\);

-- Location: FF_X108_Y22_N9
\clkDivider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[16]~56_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(16));

-- Location: LCCOMB_X108_Y22_N10
\clkDivider|s_divCounter[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[17]~58_combout\ = (\clkDivider|s_divCounter\(17) & (!\clkDivider|s_divCounter[16]~57\)) # (!\clkDivider|s_divCounter\(17) & ((\clkDivider|s_divCounter[16]~57\) # (GND)))
-- \clkDivider|s_divCounter[17]~59\ = CARRY((!\clkDivider|s_divCounter[16]~57\) # (!\clkDivider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(17),
	datad => VCC,
	cin => \clkDivider|s_divCounter[16]~57\,
	combout => \clkDivider|s_divCounter[17]~58_combout\,
	cout => \clkDivider|s_divCounter[17]~59\);

-- Location: FF_X108_Y22_N11
\clkDivider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[17]~58_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(17));

-- Location: FF_X108_Y22_N13
\clkDivider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[18]~60_combout\,
	sclr => \clkDivider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(18));

-- Location: LCCOMB_X109_Y22_N12
\clkDivider|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan1~6_combout\ = (!\clkDivider|s_divCounter\(21) & (!\clkDivider|s_divCounter\(20) & ((!\clkDivider|s_divCounter\(19)) # (!\clkDivider|s_divCounter\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(18),
	datab => \clkDivider|s_divCounter\(21),
	datac => \clkDivider|s_divCounter\(20),
	datad => \clkDivider|s_divCounter\(19),
	combout => \clkDivider|LessThan1~6_combout\);

-- Location: LCCOMB_X109_Y22_N28
\clkDivider|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan1~4_combout\ = (!\clkDivider|s_divCounter\(17) & (!\clkDivider|s_divCounter\(21) & (!\clkDivider|s_divCounter\(20) & !\clkDivider|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(17),
	datab => \clkDivider|s_divCounter\(21),
	datac => \clkDivider|s_divCounter\(20),
	datad => \clkDivider|s_divCounter\(16),
	combout => \clkDivider|LessThan1~4_combout\);

-- Location: LCCOMB_X109_Y23_N12
\clkDivider|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~3_combout\ = (\clkDivider|s_divCounter\(4) & \clkDivider|s_divCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDivider|s_divCounter\(4),
	datad => \clkDivider|s_divCounter\(5),
	combout => \clkDivider|LessThan0~3_combout\);

-- Location: LCCOMB_X109_Y23_N18
\clkDivider|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan1~1_combout\ = (!\clkDivider|s_divCounter\(7) & (!\clkDivider|s_divCounter\(6) & !\clkDivider|s_divCounter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(7),
	datac => \clkDivider|s_divCounter\(6),
	datad => \clkDivider|s_divCounter\(10),
	combout => \clkDivider|LessThan1~1_combout\);

-- Location: LCCOMB_X109_Y23_N28
\clkDivider|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan1~0_combout\ = ((!\clkDivider|s_divCounter\(10) & ((!\clkDivider|s_divCounter\(9)) # (!\clkDivider|s_divCounter\(8))))) # (!\clkDivider|s_divCounter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(8),
	datab => \clkDivider|s_divCounter\(11),
	datac => \clkDivider|s_divCounter\(9),
	datad => \clkDivider|s_divCounter\(10),
	combout => \clkDivider|LessThan1~0_combout\);

-- Location: LCCOMB_X109_Y23_N30
\clkDivider|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan1~2_combout\ = (\clkDivider|LessThan1~0_combout\) # ((\clkDivider|LessThan1~1_combout\ & ((!\clkDivider|LessThan0~2_combout\) # (!\clkDivider|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|LessThan0~3_combout\,
	datab => \clkDivider|LessThan1~1_combout\,
	datac => \clkDivider|LessThan0~2_combout\,
	datad => \clkDivider|LessThan1~0_combout\,
	combout => \clkDivider|LessThan1~2_combout\);

-- Location: LCCOMB_X109_Y22_N10
\clkDivider|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan1~3_combout\ = ((!\clkDivider|s_divCounter\(12) & (\clkDivider|LessThan1~2_combout\ & !\clkDivider|s_divCounter\(13)))) # (!\clkDivider|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(12),
	datab => \clkDivider|s_divCounter\(14),
	datac => \clkDivider|LessThan1~2_combout\,
	datad => \clkDivider|s_divCounter\(13),
	combout => \clkDivider|LessThan1~3_combout\);

-- Location: LCCOMB_X109_Y22_N18
\clkDivider|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan1~5_combout\ = (\clkDivider|LessThan1~4_combout\ & (!\clkDivider|s_divCounter\(15) & \clkDivider|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|LessThan1~4_combout\,
	datac => \clkDivider|s_divCounter\(15),
	datad => \clkDivider|LessThan1~3_combout\,
	combout => \clkDivider|LessThan1~5_combout\);

-- Location: LCCOMB_X109_Y22_N0
\clkDivider|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan1~7_combout\ = (\clkDivider|s_divCounter\(23)) # ((!\clkDivider|LessThan1~6_combout\ & (\clkDivider|s_divCounter\(22) & !\clkDivider|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|LessThan1~6_combout\,
	datab => \clkDivider|s_divCounter\(23),
	datac => \clkDivider|s_divCounter\(22),
	datad => \clkDivider|LessThan1~5_combout\,
	combout => \clkDivider|LessThan1~7_combout\);

-- Location: FF_X109_Y22_N1
\clkDivider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|clkOut~q\);

-- Location: LCCOMB_X109_Y28_N8
\Escolha_pro|ativad~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|ativad~0_combout\ = (\clkDivider|clkOut~q\) # (!\Escolha_pro|s_currentState.Helo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Escolha_pro|s_currentState.Helo~q\,
	datac => \clkDivider|clkOut~q\,
	combout => \Escolha_pro|ativad~0_combout\);

-- Location: LCCOMB_X109_Y32_N6
\Escolha_pro|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|WideOr9~combout\ = (\Escolha_pro|s_currentState.choose~q\) # ((\Escolha_pro|s_currentState.Helo~q\) # (!\Escolha_pro|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.choose~q\,
	datac => \Escolha_pro|s_currentState.Start~q\,
	datad => \Escolha_pro|s_currentState.Helo~q\,
	combout => \Escolha_pro|WideOr9~combout\);

-- Location: LCCOMB_X109_Y32_N16
\Escolha_pro|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|WideOr10~0_combout\ = (\Escolha_pro|s_currentState.Tcafe~q\) # (((\Escolha_pro|s_currentState.Ready_Cafe~q\) # (\Escolha_pro|s_currentState.Helo~q\)) # (!\Escolha_pro|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.Tcafe~q\,
	datab => \Escolha_pro|s_currentState.Start~q\,
	datac => \Escolha_pro|s_currentState.Ready_Cafe~q\,
	datad => \Escolha_pro|s_currentState.Helo~q\,
	combout => \Escolha_pro|WideOr10~0_combout\);

-- Location: LCCOMB_X108_Y29_N4
\Display_Decoded|OutHex0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Decoded|OutHex0[0]~0_combout\ = ((\Escolha_pro|WideOr9~combout\ & ((!\Escolha_pro|WideOr10~0_combout\) # (!\Escolha_pro|ativad~0_combout\)))) # (!\Escolha_pro|selWord[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|selWord[2]~0_combout\,
	datab => \Escolha_pro|ativad~0_combout\,
	datac => \Escolha_pro|WideOr9~combout\,
	datad => \Escolha_pro|WideOr10~0_combout\,
	combout => \Display_Decoded|OutHex0[0]~0_combout\);

-- Location: LCCOMB_X109_Y28_N24
\Display_Decoded|OutHex0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Decoded|OutHex0[1]~1_combout\ = (((!\Escolha_pro|selWord[2]~0_combout\) # (!\Escolha_pro|WideOr10~0_combout\)) # (!\Escolha_pro|ativad~0_combout\)) # (!\Escolha_pro|WideOr9~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|WideOr9~combout\,
	datab => \Escolha_pro|ativad~0_combout\,
	datac => \Escolha_pro|WideOr10~0_combout\,
	datad => \Escolha_pro|selWord[2]~0_combout\,
	combout => \Display_Decoded|OutHex0[1]~1_combout\);

-- Location: LCCOMB_X109_Y28_N10
\Display_Decoded|OutHex0[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Decoded|OutHex0[2]~2_combout\ = (\Escolha_pro|WideOr9~combout\ & (\Escolha_pro|selWord[2]~0_combout\ & ((\Escolha_pro|ativad~0_combout\) # (!\Escolha_pro|WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|WideOr9~combout\,
	datab => \Escolha_pro|ativad~0_combout\,
	datac => \Escolha_pro|WideOr10~0_combout\,
	datad => \Escolha_pro|selWord[2]~0_combout\,
	combout => \Display_Decoded|OutHex0[2]~2_combout\);

-- Location: LCCOMB_X109_Y28_N0
\Display_Decoded|OutHex0[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Decoded|OutHex0[3]~3_combout\ = (\Escolha_pro|s_currentState.Ready_Cha~q\) # ((\Escolha_pro|s_currentState.Tcha~q\) # ((!\clkDivider|clkOut~q\ & \Escolha_pro|s_currentState.Helo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.Ready_Cha~q\,
	datab => \clkDivider|clkOut~q\,
	datac => \Escolha_pro|s_currentState.Tcha~q\,
	datad => \Escolha_pro|s_currentState.Helo~q\,
	combout => \Display_Decoded|OutHex0[3]~3_combout\);

-- Location: LCCOMB_X108_Y29_N6
\Display_Decoded|OutHex0[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Decoded|OutHex0[6]~4_combout\ = ((\Escolha_pro|WideOr9~combout\ & ((\Escolha_pro|WideOr10~0_combout\) # (!\Escolha_pro|ativad~0_combout\))) # (!\Escolha_pro|WideOr9~combout\ & ((!\Escolha_pro|WideOr10~0_combout\)))) # 
-- (!\Escolha_pro|selWord[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|selWord[2]~0_combout\,
	datab => \Escolha_pro|ativad~0_combout\,
	datac => \Escolha_pro|WideOr9~combout\,
	datad => \Escolha_pro|WideOr10~0_combout\,
	combout => \Display_Decoded|OutHex0[6]~4_combout\);

-- Location: LCCOMB_X109_Y28_N6
\Display_Decoded|OutHex1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Decoded|OutHex1~9_combout\ = (\Escolha_pro|WideOr10~0_combout\ & (!\Escolha_pro|s_currentState.Tcha~q\ & (!\Escolha_pro|s_currentState.Ready_Cha~q\ & !\Escolha_pro|WideOr9~combout\))) # (!\Escolha_pro|WideOr10~0_combout\ & 
-- (((!\Escolha_pro|s_currentState.Tcha~q\ & !\Escolha_pro|s_currentState.Ready_Cha~q\)) # (!\Escolha_pro|WideOr9~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|WideOr10~0_combout\,
	datab => \Escolha_pro|s_currentState.Tcha~q\,
	datac => \Escolha_pro|s_currentState.Ready_Cha~q\,
	datad => \Escolha_pro|WideOr9~combout\,
	combout => \Display_Decoded|OutHex1~9_combout\);

-- Location: LCCOMB_X109_Y32_N2
\Display_Decoded|OutHex1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Decoded|OutHex1~10_combout\ = (\Escolha_pro|s_currentState.choose~q\) # ((\Escolha_pro|WideOr10~0_combout\) # ((\Escolha_pro|s_currentState.Helo~q\) # (!\Escolha_pro|s_currentState.Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.choose~q\,
	datab => \Escolha_pro|WideOr10~0_combout\,
	datac => \Escolha_pro|s_currentState.Start~q\,
	datad => \Escolha_pro|s_currentState.Helo~q\,
	combout => \Display_Decoded|OutHex1~10_combout\);

-- Location: LCCOMB_X109_Y28_N22
\Display_Decoded|OutHex1[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Decoded|OutHex1[3]~6_combout\ = (((!\Escolha_pro|WideOr9~combout\ & \Escolha_pro|WideOr10~0_combout\)) # (!\Escolha_pro|selWord[2]~0_combout\)) # (!\Escolha_pro|ativad~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|WideOr9~combout\,
	datab => \Escolha_pro|ativad~0_combout\,
	datac => \Escolha_pro|WideOr10~0_combout\,
	datad => \Escolha_pro|selWord[2]~0_combout\,
	combout => \Display_Decoded|OutHex1[3]~6_combout\);

-- Location: LCCOMB_X109_Y28_N4
\Display_Decoded|OutHex1[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Decoded|OutHex1[4]~7_combout\ = (\Escolha_pro|WideOr9~combout\ & (\Escolha_pro|selWord[2]~0_combout\ & ((\Escolha_pro|ativad~0_combout\) # (!\Escolha_pro|WideOr10~0_combout\)))) # (!\Escolha_pro|WideOr9~combout\ & 
-- (((\Escolha_pro|selWord[2]~0_combout\) # (!\Escolha_pro|WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|WideOr9~combout\,
	datab => \Escolha_pro|ativad~0_combout\,
	datac => \Escolha_pro|WideOr10~0_combout\,
	datad => \Escolha_pro|selWord[2]~0_combout\,
	combout => \Display_Decoded|OutHex1[4]~7_combout\);

-- Location: LCCOMB_X109_Y28_N26
\Display_Decoded|OutHex1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Decoded|OutHex1~8_combout\ = (\Escolha_pro|ativad~0_combout\ & (\Escolha_pro|WideOr10~0_combout\ $ (((\Escolha_pro|WideOr9~combout\) # (!\Escolha_pro|selWord[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|WideOr9~combout\,
	datab => \Escolha_pro|ativad~0_combout\,
	datac => \Escolha_pro|WideOr10~0_combout\,
	datad => \Escolha_pro|selWord[2]~0_combout\,
	combout => \Display_Decoded|OutHex1~8_combout\);

-- Location: LCCOMB_X109_Y28_N16
\Display_Decoded|OutHex2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Decoded|OutHex2[0]~0_combout\ = (((\Escolha_pro|WideOr9~combout\ & !\Escolha_pro|ativad~0_combout\)) # (!\Escolha_pro|selWord[2]~0_combout\)) # (!\Escolha_pro|WideOr10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|WideOr9~combout\,
	datab => \Escolha_pro|ativad~0_combout\,
	datac => \Escolha_pro|WideOr10~0_combout\,
	datad => \Escolha_pro|selWord[2]~0_combout\,
	combout => \Display_Decoded|OutHex2[0]~0_combout\);

-- Location: LCCOMB_X109_Y28_N28
\Display_Decoded|OutHex1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Decoded|OutHex1~11_combout\ = (!\Escolha_pro|WideOr9~combout\ & (((!\Escolha_pro|s_currentState.Tcha~q\ & !\Escolha_pro|s_currentState.Ready_Cha~q\)) # (!\Escolha_pro|WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|WideOr10~0_combout\,
	datab => \Escolha_pro|s_currentState.Tcha~q\,
	datac => \Escolha_pro|s_currentState.Ready_Cha~q\,
	datad => \Escolha_pro|WideOr9~combout\,
	combout => \Display_Decoded|OutHex1~11_combout\);

-- Location: LCCOMB_X108_Y32_N24
\Escolha_pro|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Escolha_pro|WideOr11~0_combout\ = (\Escolha_pro|s_currentState.Tcafe~q\) # ((\Escolha_pro|s_currentState.Tcha~q\) # (\Escolha_pro|s_currentState.Tchoc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Escolha_pro|s_currentState.Tcafe~q\,
	datac => \Escolha_pro|s_currentState.Tcha~q\,
	datad => \Escolha_pro|s_currentState.Tchoc~q\,
	combout => \Escolha_pro|WideOr11~0_combout\);

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

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


