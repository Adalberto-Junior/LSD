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

-- DATE "06/20/2021 19:08:02"

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

ENTITY 	Maquina_Auto_ofe_proDemo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END Maquina_Auto_ofe_proDemo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Maquina_Auto_ofe_proDemo IS
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
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
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
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|s_counter[0]~31_combout\ : std_logic;
SIGNAL \inst2|s_currentState.choose~0_combout\ : std_logic;
SIGNAL \inst2|s_currentState.choose~q\ : std_logic;
SIGNAL \inst2|s_currentState.Start~feeder_combout\ : std_logic;
SIGNAL \inst2|s_currentState.Start~q\ : std_logic;
SIGNAL \inst2|newTime~combout\ : std_logic;
SIGNAL \inst3|s_counter[0]~32\ : std_logic;
SIGNAL \inst3|s_counter[1]~33_combout\ : std_logic;
SIGNAL \inst3|s_counter[1]~34\ : std_logic;
SIGNAL \inst3|s_counter[2]~35_combout\ : std_logic;
SIGNAL \inst3|s_counter[2]~36\ : std_logic;
SIGNAL \inst3|s_counter[3]~37_combout\ : std_logic;
SIGNAL \inst3|s_counter[3]~38\ : std_logic;
SIGNAL \inst3|s_counter[4]~39_combout\ : std_logic;
SIGNAL \inst3|s_counter[4]~40\ : std_logic;
SIGNAL \inst3|s_counter[5]~41_combout\ : std_logic;
SIGNAL \inst3|s_counter[5]~42\ : std_logic;
SIGNAL \inst3|s_counter[6]~43_combout\ : std_logic;
SIGNAL \inst3|s_counter[6]~44\ : std_logic;
SIGNAL \inst3|s_counter[7]~45_combout\ : std_logic;
SIGNAL \inst3|s_counter[7]~46\ : std_logic;
SIGNAL \inst3|s_counter[8]~47_combout\ : std_logic;
SIGNAL \inst3|Add0~1_cout\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|s_counter[8]~48\ : std_logic;
SIGNAL \inst3|s_counter[9]~49_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|s_counter[9]~50\ : std_logic;
SIGNAL \inst3|s_counter[10]~51_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|s_counter[10]~52\ : std_logic;
SIGNAL \inst3|s_counter[11]~53_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|s_counter[11]~54\ : std_logic;
SIGNAL \inst3|s_counter[12]~55_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|s_counter[12]~56\ : std_logic;
SIGNAL \inst3|s_counter[13]~57_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[0][13]~0_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|s_counter[13]~58\ : std_logic;
SIGNAL \inst3|s_counter[14]~59_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|s_counter[14]~60\ : std_logic;
SIGNAL \inst3|s_counter[15]~61_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|s_counter[15]~62\ : std_logic;
SIGNAL \inst3|s_counter[16]~63_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|s_counter[16]~64\ : std_logic;
SIGNAL \inst3|s_counter[17]~65_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|s_counter[17]~66\ : std_logic;
SIGNAL \inst3|s_counter[18]~67_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[0][18]~1_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|s_counter[18]~68\ : std_logic;
SIGNAL \inst3|s_counter[19]~69_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|s_counter[19]~70\ : std_logic;
SIGNAL \inst3|s_counter[20]~71_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|_~2_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|s_counter[20]~72\ : std_logic;
SIGNAL \inst3|s_counter[21]~73_combout\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|s_counter[21]~74\ : std_logic;
SIGNAL \inst3|s_counter[22]~75_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|s_counter[22]~76\ : std_logic;
SIGNAL \inst3|s_counter[23]~77_combout\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|s_counter[23]~78\ : std_logic;
SIGNAL \inst3|s_counter[24]~79_combout\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|s_counter[24]~80\ : std_logic;
SIGNAL \inst3|s_counter[25]~81_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|s_counter[25]~82\ : std_logic;
SIGNAL \inst3|s_counter[26]~83_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|s_cntZero~8_combout\ : std_logic;
SIGNAL \inst3|s_cntZero~0_combout\ : std_logic;
SIGNAL \inst3|s_cntZero~3_combout\ : std_logic;
SIGNAL \inst3|s_cntZero~2_combout\ : std_logic;
SIGNAL \inst3|s_cntZero~1_combout\ : std_logic;
SIGNAL \inst3|s_cntZero~4_combout\ : std_logic;
SIGNAL \inst3|s_counter[26]~84\ : std_logic;
SIGNAL \inst3|s_counter[27]~85_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|s_counter[27]~86\ : std_logic;
SIGNAL \inst3|s_counter[28]~87_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|s_counter[28]~88\ : std_logic;
SIGNAL \inst3|s_counter[29]~89_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|s_counter[29]~90\ : std_logic;
SIGNAL \inst3|s_counter[30]~91_combout\ : std_logic;
SIGNAL \inst3|Add0~45\ : std_logic;
SIGNAL \inst3|Add0~46_combout\ : std_logic;
SIGNAL \inst3|s_cntZero~9_combout\ : std_logic;
SIGNAL \inst3|s_cntZero~5_combout\ : std_logic;
SIGNAL \inst3|s_cntZero~6_combout\ : std_logic;
SIGNAL \inst3|s_cntZero~7_combout\ : std_logic;
SIGNAL \inst3|s_cntZero~10_combout\ : std_logic;
SIGNAL \inst3|s_cntZero~q\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|s_currentState.Helo~q\ : std_logic;
SIGNAL \inst4|OutHex0~0_combout\ : std_logic;
SIGNAL \inst2|WideOr9~combout\ : std_logic;
SIGNAL \inst2|WideOr9~0_combout\ : std_logic;
SIGNAL \inst4|OutHex1~0_combout\ : std_logic;
SIGNAL \inst3|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst3|ALT_INV_s_cntZero~10_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_OutHex1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr9~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr9~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_OutHex0~0_combout\ : std_logic;

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
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst3|ALT_INV_s_cntZero~10_combout\ <= NOT \inst3|s_cntZero~10_combout\;
\inst4|ALT_INV_OutHex1~0_combout\ <= NOT \inst4|OutHex1~0_combout\;
\inst2|ALT_INV_WideOr9~0_combout\ <= NOT \inst2|WideOr9~0_combout\;
\inst2|ALT_INV_WideOr9~combout\ <= NOT \inst2|WideOr9~combout\;
\inst4|ALT_INV_OutHex0~0_combout\ <= NOT \inst4|OutHex0~0_combout\;
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
	i => \inst4|OutHex0~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \inst2|ALT_INV_WideOr9~combout\,
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
	i => \inst2|WideOr9~0_combout\,
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
	i => \inst4|ALT_INV_OutHex0~0_combout\,
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
	i => \inst4|ALT_INV_OutHex1~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \inst2|WideOr9~combout\,
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
	i => \inst2|WideOr9~combout\,
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
	i => \inst2|ALT_INV_WideOr9~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \inst2|ALT_INV_WideOr9~combout\,
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
	i => \inst2|ALT_INV_WideOr9~0_combout\,
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
	i => \inst2|WideOr9~combout\,
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
	i => \inst2|WideOr9~0_combout\,
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
	i => \inst2|ALT_INV_WideOr9~combout\,
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
	i => GND,
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
	i => GND,
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
	i => \inst2|ALT_INV_WideOr9~0_combout\,
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
	i => \inst2|WideOr9~0_combout\,
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
	i => \inst2|WideOr9~0_combout\,
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
	i => \inst2|ALT_INV_WideOr9~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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

-- Location: LCCOMB_X107_Y20_N2
\inst3|s_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[0]~31_combout\ = \inst3|s_counter\(0) $ (VCC)
-- \inst3|s_counter[0]~32\ = CARRY(\inst3|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(0),
	datad => VCC,
	combout => \inst3|s_counter[0]~31_combout\,
	cout => \inst3|s_counter[0]~32\);

-- Location: LCCOMB_X108_Y20_N30
\inst2|s_currentState.choose~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState.choose~0_combout\ = (\inst2|s_currentState.choose~q\) # ((\inst2|s_currentState.Helo~q\ & \inst3|s_cntZero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Helo~q\,
	datac => \inst3|s_cntZero~q\,
	datad => \inst2|s_currentState.choose~q\,
	combout => \inst2|s_currentState.choose~0_combout\);

-- Location: FF_X106_Y20_N3
\inst2|s_currentState.choose\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_currentState.choose~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.choose~q\);

-- Location: LCCOMB_X106_Y20_N0
\inst2|s_currentState.Start~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState.Start~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|s_currentState.Start~feeder_combout\);

-- Location: FF_X106_Y20_N1
\inst2|s_currentState.Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_currentState.Start~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.Start~q\);

-- Location: LCCOMB_X108_Y20_N6
\inst2|newTime\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|newTime~combout\ = (\inst2|s_currentState.choose~q\ & (\inst2|newTime~combout\)) # (!\inst2|s_currentState.choose~q\ & ((!\inst2|s_currentState.Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|newTime~combout\,
	datab => \inst2|s_currentState.choose~q\,
	datac => \inst2|s_currentState.Start~q\,
	combout => \inst2|newTime~combout\);

-- Location: FF_X107_Y20_N3
\inst3|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[0]~31_combout\,
	asdata => VCC,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(0));

-- Location: LCCOMB_X107_Y20_N4
\inst3|s_counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[1]~33_combout\ = (\inst3|s_counter\(1) & (\inst3|s_counter[0]~32\ & VCC)) # (!\inst3|s_counter\(1) & (!\inst3|s_counter[0]~32\))
-- \inst3|s_counter[1]~34\ = CARRY((!\inst3|s_counter\(1) & !\inst3|s_counter[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(1),
	datad => VCC,
	cin => \inst3|s_counter[0]~32\,
	combout => \inst3|s_counter[1]~33_combout\,
	cout => \inst3|s_counter[1]~34\);

-- Location: FF_X107_Y20_N5
\inst3|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[1]~33_combout\,
	asdata => VCC,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(1));

-- Location: LCCOMB_X107_Y20_N6
\inst3|s_counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[2]~35_combout\ = (\inst3|s_counter\(2) & ((GND) # (!\inst3|s_counter[1]~34\))) # (!\inst3|s_counter\(2) & (\inst3|s_counter[1]~34\ $ (GND)))
-- \inst3|s_counter[2]~36\ = CARRY((\inst3|s_counter\(2)) # (!\inst3|s_counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(2),
	datad => VCC,
	cin => \inst3|s_counter[1]~34\,
	combout => \inst3|s_counter[2]~35_combout\,
	cout => \inst3|s_counter[2]~36\);

-- Location: FF_X107_Y20_N7
\inst3|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[2]~35_combout\,
	asdata => VCC,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(2));

-- Location: LCCOMB_X107_Y20_N8
\inst3|s_counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[3]~37_combout\ = (\inst3|s_counter\(3) & (\inst3|s_counter[2]~36\ & VCC)) # (!\inst3|s_counter\(3) & (!\inst3|s_counter[2]~36\))
-- \inst3|s_counter[3]~38\ = CARRY((!\inst3|s_counter\(3) & !\inst3|s_counter[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(3),
	datad => VCC,
	cin => \inst3|s_counter[2]~36\,
	combout => \inst3|s_counter[3]~37_combout\,
	cout => \inst3|s_counter[3]~38\);

-- Location: FF_X107_Y20_N9
\inst3|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[3]~37_combout\,
	asdata => VCC,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(3));

-- Location: LCCOMB_X107_Y20_N10
\inst3|s_counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[4]~39_combout\ = (\inst3|s_counter\(4) & ((GND) # (!\inst3|s_counter[3]~38\))) # (!\inst3|s_counter\(4) & (\inst3|s_counter[3]~38\ $ (GND)))
-- \inst3|s_counter[4]~40\ = CARRY((\inst3|s_counter\(4)) # (!\inst3|s_counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(4),
	datad => VCC,
	cin => \inst3|s_counter[3]~38\,
	combout => \inst3|s_counter[4]~39_combout\,
	cout => \inst3|s_counter[4]~40\);

-- Location: FF_X107_Y20_N11
\inst3|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[4]~39_combout\,
	asdata => VCC,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(4));

-- Location: LCCOMB_X107_Y20_N12
\inst3|s_counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[5]~41_combout\ = (\inst3|s_counter\(5) & (\inst3|s_counter[4]~40\ & VCC)) # (!\inst3|s_counter\(5) & (!\inst3|s_counter[4]~40\))
-- \inst3|s_counter[5]~42\ = CARRY((!\inst3|s_counter\(5) & !\inst3|s_counter[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(5),
	datad => VCC,
	cin => \inst3|s_counter[4]~40\,
	combout => \inst3|s_counter[5]~41_combout\,
	cout => \inst3|s_counter[5]~42\);

-- Location: FF_X107_Y20_N13
\inst3|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[5]~41_combout\,
	asdata => VCC,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(5));

-- Location: LCCOMB_X107_Y20_N14
\inst3|s_counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[6]~43_combout\ = (\inst3|s_counter\(6) & ((GND) # (!\inst3|s_counter[5]~42\))) # (!\inst3|s_counter\(6) & (\inst3|s_counter[5]~42\ $ (GND)))
-- \inst3|s_counter[6]~44\ = CARRY((\inst3|s_counter\(6)) # (!\inst3|s_counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(6),
	datad => VCC,
	cin => \inst3|s_counter[5]~42\,
	combout => \inst3|s_counter[6]~43_combout\,
	cout => \inst3|s_counter[6]~44\);

-- Location: FF_X107_Y20_N15
\inst3|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[6]~43_combout\,
	asdata => VCC,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(6));

-- Location: LCCOMB_X107_Y20_N16
\inst3|s_counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[7]~45_combout\ = (\inst3|s_counter\(7) & (\inst3|s_counter[6]~44\ & VCC)) # (!\inst3|s_counter\(7) & (!\inst3|s_counter[6]~44\))
-- \inst3|s_counter[7]~46\ = CARRY((!\inst3|s_counter\(7) & !\inst3|s_counter[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(7),
	datad => VCC,
	cin => \inst3|s_counter[6]~44\,
	combout => \inst3|s_counter[7]~45_combout\,
	cout => \inst3|s_counter[7]~46\);

-- Location: FF_X107_Y20_N17
\inst3|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[7]~45_combout\,
	asdata => \inst2|s_currentState.Start~q\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(7));

-- Location: LCCOMB_X107_Y20_N18
\inst3|s_counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[8]~47_combout\ = (\inst3|s_counter\(8) & ((GND) # (!\inst3|s_counter[7]~46\))) # (!\inst3|s_counter\(8) & (\inst3|s_counter[7]~46\ $ (GND)))
-- \inst3|s_counter[8]~48\ = CARRY((\inst3|s_counter\(8)) # (!\inst3|s_counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(8),
	datad => VCC,
	cin => \inst3|s_counter[7]~46\,
	combout => \inst3|s_counter[8]~47_combout\,
	cout => \inst3|s_counter[8]~48\);

-- Location: LCCOMB_X106_Y20_N8
\inst3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_cout\ = CARRY(!\inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Start~q\,
	datad => VCC,
	cout => \inst3|Add0~1_cout\);

-- Location: LCCOMB_X106_Y20_N10
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst2|s_currentState.choose~q\ & (\inst3|Add0~1_cout\ & VCC)) # (!\inst2|s_currentState.choose~q\ & (!\inst3|Add0~1_cout\))
-- \inst3|Add0~3\ = CARRY((!\inst2|s_currentState.choose~q\ & !\inst3|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.choose~q\,
	datad => VCC,
	cin => \inst3|Add0~1_cout\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: FF_X107_Y20_N19
\inst3|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[8]~47_combout\,
	asdata => \inst3|Add0~2_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(8));

-- Location: LCCOMB_X107_Y20_N20
\inst3|s_counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[9]~49_combout\ = (\inst3|s_counter\(9) & (\inst3|s_counter[8]~48\ & VCC)) # (!\inst3|s_counter\(9) & (!\inst3|s_counter[8]~48\))
-- \inst3|s_counter[9]~50\ = CARRY((!\inst3|s_counter\(9) & !\inst3|s_counter[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(9),
	datad => VCC,
	cin => \inst3|s_counter[8]~48\,
	combout => \inst3|s_counter[9]~49_combout\,
	cout => \inst3|s_counter[9]~50\);

-- Location: LCCOMB_X106_Y20_N12
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst2|s_currentState.Start~q\ & (\inst3|Add0~3\ $ (GND))) # (!\inst2|s_currentState.Start~q\ & ((GND) # (!\inst3|Add0~3\)))
-- \inst3|Add0~5\ = CARRY((!\inst3|Add0~3\) # (!\inst2|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Start~q\,
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: FF_X107_Y20_N21
\inst3|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[9]~49_combout\,
	asdata => \inst3|Add0~4_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(9));

-- Location: LCCOMB_X107_Y20_N22
\inst3|s_counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[10]~51_combout\ = (\inst3|s_counter\(10) & ((GND) # (!\inst3|s_counter[9]~50\))) # (!\inst3|s_counter\(10) & (\inst3|s_counter[9]~50\ $ (GND)))
-- \inst3|s_counter[10]~52\ = CARRY((\inst3|s_counter\(10)) # (!\inst3|s_counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(10),
	datad => VCC,
	cin => \inst3|s_counter[9]~50\,
	combout => \inst3|s_counter[10]~51_combout\,
	cout => \inst3|s_counter[10]~52\);

-- Location: LCCOMB_X106_Y20_N14
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst2|s_currentState.choose~q\ & (\inst3|Add0~5\ & VCC)) # (!\inst2|s_currentState.choose~q\ & (!\inst3|Add0~5\))
-- \inst3|Add0~7\ = CARRY((!\inst2|s_currentState.choose~q\ & !\inst3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.choose~q\,
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: FF_X107_Y20_N23
\inst3|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[10]~51_combout\,
	asdata => \inst3|Add0~6_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(10));

-- Location: LCCOMB_X107_Y20_N24
\inst3|s_counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[11]~53_combout\ = (\inst3|s_counter\(11) & (\inst3|s_counter[10]~52\ & VCC)) # (!\inst3|s_counter\(11) & (!\inst3|s_counter[10]~52\))
-- \inst3|s_counter[11]~54\ = CARRY((!\inst3|s_counter\(11) & !\inst3|s_counter[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(11),
	datad => VCC,
	cin => \inst3|s_counter[10]~52\,
	combout => \inst3|s_counter[11]~53_combout\,
	cout => \inst3|s_counter[11]~54\);

-- Location: LCCOMB_X106_Y20_N16
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = \inst3|Add0~7\ $ (GND)
-- \inst3|Add0~9\ = CARRY(!\inst3|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: FF_X107_Y20_N25
\inst3|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[11]~53_combout\,
	asdata => \inst3|Add0~8_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(11));

-- Location: LCCOMB_X107_Y20_N26
\inst3|s_counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[12]~55_combout\ = (\inst3|s_counter\(12) & ((GND) # (!\inst3|s_counter[11]~54\))) # (!\inst3|s_counter\(12) & (\inst3|s_counter[11]~54\ $ (GND)))
-- \inst3|s_counter[12]~56\ = CARRY((\inst3|s_counter\(12)) # (!\inst3|s_counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(12),
	datad => VCC,
	cin => \inst3|s_counter[11]~54\,
	combout => \inst3|s_counter[12]~55_combout\,
	cout => \inst3|s_counter[12]~56\);

-- Location: LCCOMB_X106_Y20_N18
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst2|s_currentState.Start~q\ & (!\inst3|Add0~9\)) # (!\inst2|s_currentState.Start~q\ & (\inst3|Add0~9\ & VCC))
-- \inst3|Add0~11\ = CARRY((\inst2|s_currentState.Start~q\ & !\inst3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Start~q\,
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: FF_X107_Y20_N27
\inst3|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[12]~55_combout\,
	asdata => \inst3|Add0~10_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(12));

-- Location: LCCOMB_X107_Y20_N28
\inst3|s_counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[13]~57_combout\ = (\inst3|s_counter\(13) & (\inst3|s_counter[12]~56\ & VCC)) # (!\inst3|s_counter\(13) & (!\inst3|s_counter[12]~56\))
-- \inst3|s_counter[13]~58\ = CARRY((!\inst3|s_counter\(13) & !\inst3|s_counter[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(13),
	datad => VCC,
	cin => \inst3|s_counter[12]~56\,
	combout => \inst3|s_counter[13]~57_combout\,
	cout => \inst3|s_counter[13]~58\);

-- Location: LCCOMB_X106_Y20_N4
\inst3|Mult0|mult_core|romout[0][13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[0][13]~0_combout\ = \inst2|s_currentState.choose~q\ $ (\inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_currentState.choose~q\,
	datad => \inst2|s_currentState.Start~q\,
	combout => \inst3|Mult0|mult_core|romout[0][13]~0_combout\);

-- Location: LCCOMB_X106_Y20_N20
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|Mult0|mult_core|romout[0][13]~0_combout\ & (\inst3|Add0~11\ $ (GND))) # (!\inst3|Mult0|mult_core|romout[0][13]~0_combout\ & ((GND) # (!\inst3|Add0~11\)))
-- \inst3|Add0~13\ = CARRY((!\inst3|Add0~11\) # (!\inst3|Mult0|mult_core|romout[0][13]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|romout[0][13]~0_combout\,
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: FF_X107_Y20_N29
\inst3|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[13]~57_combout\,
	asdata => \inst3|Add0~12_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(13));

-- Location: LCCOMB_X107_Y20_N30
\inst3|s_counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[14]~59_combout\ = (\inst3|s_counter\(14) & ((GND) # (!\inst3|s_counter[13]~58\))) # (!\inst3|s_counter\(14) & (\inst3|s_counter[13]~58\ $ (GND)))
-- \inst3|s_counter[14]~60\ = CARRY((\inst3|s_counter\(14)) # (!\inst3|s_counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(14),
	datad => VCC,
	cin => \inst3|s_counter[13]~58\,
	combout => \inst3|s_counter[14]~59_combout\,
	cout => \inst3|s_counter[14]~60\);

-- Location: LCCOMB_X106_Y20_N6
\inst3|Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|_~0_combout\ = (\inst2|s_currentState.choose~q\ & \inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_currentState.choose~q\,
	datad => \inst2|s_currentState.Start~q\,
	combout => \inst3|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X106_Y20_N22
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|Mult0|mult_core|_~0_combout\ & (\inst3|Add0~13\ & VCC)) # (!\inst3|Mult0|mult_core|_~0_combout\ & (!\inst3|Add0~13\))
-- \inst3|Add0~15\ = CARRY((!\inst3|Mult0|mult_core|_~0_combout\ & !\inst3|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: FF_X107_Y20_N31
\inst3|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[14]~59_combout\,
	asdata => \inst3|Add0~14_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(14));

-- Location: LCCOMB_X107_Y19_N0
\inst3|s_counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[15]~61_combout\ = (\inst3|s_counter\(15) & (\inst3|s_counter[14]~60\ & VCC)) # (!\inst3|s_counter\(15) & (!\inst3|s_counter[14]~60\))
-- \inst3|s_counter[15]~62\ = CARRY((!\inst3|s_counter\(15) & !\inst3|s_counter[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(15),
	datad => VCC,
	cin => \inst3|s_counter[14]~60\,
	combout => \inst3|s_counter[15]~61_combout\,
	cout => \inst3|s_counter[15]~62\);

-- Location: LCCOMB_X106_Y20_N2
\inst3|Mult0|mult_core|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|_~1_combout\ = (\inst2|s_currentState.choose~q\) # (\inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_currentState.choose~q\,
	datad => \inst2|s_currentState.Start~q\,
	combout => \inst3|Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X106_Y20_N24
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|Mult0|mult_core|_~1_combout\ & (\inst3|Add0~15\ $ (GND))) # (!\inst3|Mult0|mult_core|_~1_combout\ & ((GND) # (!\inst3|Add0~15\)))
-- \inst3|Add0~17\ = CARRY((!\inst3|Add0~15\) # (!\inst3|Mult0|mult_core|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: FF_X107_Y19_N1
\inst3|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[15]~61_combout\,
	asdata => \inst3|Add0~16_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(15));

-- Location: LCCOMB_X107_Y19_N2
\inst3|s_counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[16]~63_combout\ = (\inst3|s_counter\(16) & ((GND) # (!\inst3|s_counter[15]~62\))) # (!\inst3|s_counter\(16) & (\inst3|s_counter[15]~62\ $ (GND)))
-- \inst3|s_counter[16]~64\ = CARRY((\inst3|s_counter\(16)) # (!\inst3|s_counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(16),
	datad => VCC,
	cin => \inst3|s_counter[15]~62\,
	combout => \inst3|s_counter[16]~63_combout\,
	cout => \inst3|s_counter[16]~64\);

-- Location: LCCOMB_X106_Y20_N26
\inst3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|Mult0|mult_core|_~0_combout\ & (\inst3|Add0~17\ & VCC)) # (!\inst3|Mult0|mult_core|_~0_combout\ & (!\inst3|Add0~17\))
-- \inst3|Add0~19\ = CARRY((!\inst3|Mult0|mult_core|_~0_combout\ & !\inst3|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: FF_X107_Y19_N3
\inst3|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[16]~63_combout\,
	asdata => \inst3|Add0~18_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(16));

-- Location: LCCOMB_X107_Y19_N4
\inst3|s_counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[17]~65_combout\ = (\inst3|s_counter\(17) & (\inst3|s_counter[16]~64\ & VCC)) # (!\inst3|s_counter\(17) & (!\inst3|s_counter[16]~64\))
-- \inst3|s_counter[17]~66\ = CARRY((!\inst3|s_counter\(17) & !\inst3|s_counter[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(17),
	datad => VCC,
	cin => \inst3|s_counter[16]~64\,
	combout => \inst3|s_counter[17]~65_combout\,
	cout => \inst3|s_counter[17]~66\);

-- Location: LCCOMB_X106_Y20_N28
\inst3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|Mult0|mult_core|_~1_combout\ & (\inst3|Add0~19\ $ (GND))) # (!\inst3|Mult0|mult_core|_~1_combout\ & ((GND) # (!\inst3|Add0~19\)))
-- \inst3|Add0~21\ = CARRY((!\inst3|Add0~19\) # (!\inst3|Mult0|mult_core|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: FF_X107_Y19_N5
\inst3|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[17]~65_combout\,
	asdata => \inst3|Add0~20_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(17));

-- Location: LCCOMB_X107_Y19_N6
\inst3|s_counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[18]~67_combout\ = (\inst3|s_counter\(18) & ((GND) # (!\inst3|s_counter[17]~66\))) # (!\inst3|s_counter\(18) & (\inst3|s_counter[17]~66\ $ (GND)))
-- \inst3|s_counter[18]~68\ = CARRY((\inst3|s_counter\(18)) # (!\inst3|s_counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(18),
	datad => VCC,
	cin => \inst3|s_counter[17]~66\,
	combout => \inst3|s_counter[18]~67_combout\,
	cout => \inst3|s_counter[18]~68\);

-- Location: LCCOMB_X105_Y20_N20
\inst3|Mult0|mult_core|romout[0][18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[0][18]~1_combout\ = (\inst2|s_currentState.choose~q\) # (!\inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.choose~q\,
	datac => \inst2|s_currentState.Start~q\,
	combout => \inst3|Mult0|mult_core|romout[0][18]~1_combout\);

-- Location: LCCOMB_X106_Y20_N30
\inst3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|Mult0|mult_core|romout[0][18]~1_combout\ & (\inst3|Add0~21\ & VCC)) # (!\inst3|Mult0|mult_core|romout[0][18]~1_combout\ & (!\inst3|Add0~21\))
-- \inst3|Add0~23\ = CARRY((!\inst3|Mult0|mult_core|romout[0][18]~1_combout\ & !\inst3|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|romout[0][18]~1_combout\,
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: FF_X107_Y19_N7
\inst3|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[18]~67_combout\,
	asdata => \inst3|Add0~22_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(18));

-- Location: LCCOMB_X107_Y19_N8
\inst3|s_counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[19]~69_combout\ = (\inst3|s_counter\(19) & (\inst3|s_counter[18]~68\ & VCC)) # (!\inst3|s_counter\(19) & (!\inst3|s_counter[18]~68\))
-- \inst3|s_counter[19]~70\ = CARRY((!\inst3|s_counter\(19) & !\inst3|s_counter[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(19),
	datad => VCC,
	cin => \inst3|s_counter[18]~68\,
	combout => \inst3|s_counter[19]~69_combout\,
	cout => \inst3|s_counter[19]~70\);

-- Location: LCCOMB_X106_Y19_N0
\inst3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|Mult0|mult_core|_~0_combout\ & ((GND) # (!\inst3|Add0~23\))) # (!\inst3|Mult0|mult_core|_~0_combout\ & (\inst3|Add0~23\ $ (GND)))
-- \inst3|Add0~25\ = CARRY((\inst3|Mult0|mult_core|_~0_combout\) # (!\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: FF_X107_Y19_N9
\inst3|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[19]~69_combout\,
	asdata => \inst3|Add0~24_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(19));

-- Location: LCCOMB_X107_Y19_N10
\inst3|s_counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[20]~71_combout\ = (\inst3|s_counter\(20) & ((GND) # (!\inst3|s_counter[19]~70\))) # (!\inst3|s_counter\(20) & (\inst3|s_counter[19]~70\ $ (GND)))
-- \inst3|s_counter[20]~72\ = CARRY((\inst3|s_counter\(20)) # (!\inst3|s_counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(20),
	datad => VCC,
	cin => \inst3|s_counter[19]~70\,
	combout => \inst3|s_counter[20]~71_combout\,
	cout => \inst3|s_counter[20]~72\);

-- Location: LCCOMB_X106_Y19_N28
\inst3|Mult0|mult_core|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|_~2_combout\ = (\inst2|s_currentState.choose~q\ & !\inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.choose~q\,
	datad => \inst2|s_currentState.Start~q\,
	combout => \inst3|Mult0|mult_core|_~2_combout\);

-- Location: LCCOMB_X106_Y19_N2
\inst3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|Mult0|mult_core|_~2_combout\ & (\inst3|Add0~25\ & VCC)) # (!\inst3|Mult0|mult_core|_~2_combout\ & (!\inst3|Add0~25\))
-- \inst3|Add0~27\ = CARRY((!\inst3|Mult0|mult_core|_~2_combout\ & !\inst3|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|_~2_combout\,
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: FF_X107_Y19_N11
\inst3|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[20]~71_combout\,
	asdata => \inst3|Add0~26_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(20));

-- Location: LCCOMB_X107_Y19_N12
\inst3|s_counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[21]~73_combout\ = (\inst3|s_counter\(21) & (\inst3|s_counter[20]~72\ & VCC)) # (!\inst3|s_counter\(21) & (!\inst3|s_counter[20]~72\))
-- \inst3|s_counter[21]~74\ = CARRY((!\inst3|s_counter\(21) & !\inst3|s_counter[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(21),
	datad => VCC,
	cin => \inst3|s_counter[20]~72\,
	combout => \inst3|s_counter[21]~73_combout\,
	cout => \inst3|s_counter[21]~74\);

-- Location: LCCOMB_X106_Y19_N4
\inst3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst2|s_currentState.Start~q\ & (\inst3|Add0~27\ $ (GND))) # (!\inst2|s_currentState.Start~q\ & ((GND) # (!\inst3|Add0~27\)))
-- \inst3|Add0~29\ = CARRY((!\inst3|Add0~27\) # (!\inst2|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_currentState.Start~q\,
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: FF_X107_Y19_N13
\inst3|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[21]~73_combout\,
	asdata => \inst3|Add0~28_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(21));

-- Location: LCCOMB_X107_Y19_N14
\inst3|s_counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[22]~75_combout\ = (\inst3|s_counter\(22) & ((GND) # (!\inst3|s_counter[21]~74\))) # (!\inst3|s_counter\(22) & (\inst3|s_counter[21]~74\ $ (GND)))
-- \inst3|s_counter[22]~76\ = CARRY((\inst3|s_counter\(22)) # (!\inst3|s_counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(22),
	datad => VCC,
	cin => \inst3|s_counter[21]~74\,
	combout => \inst3|s_counter[22]~75_combout\,
	cout => \inst3|s_counter[22]~76\);

-- Location: LCCOMB_X106_Y19_N6
\inst3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|Mult0|mult_core|romout[0][13]~0_combout\ & (!\inst3|Add0~29\)) # (!\inst3|Mult0|mult_core|romout[0][13]~0_combout\ & (\inst3|Add0~29\ & VCC))
-- \inst3|Add0~31\ = CARRY((\inst3|Mult0|mult_core|romout[0][13]~0_combout\ & !\inst3|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|romout[0][13]~0_combout\,
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: FF_X107_Y19_N15
\inst3|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[22]~75_combout\,
	asdata => \inst3|Add0~30_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(22));

-- Location: LCCOMB_X107_Y19_N16
\inst3|s_counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[23]~77_combout\ = (\inst3|s_counter\(23) & (\inst3|s_counter[22]~76\ & VCC)) # (!\inst3|s_counter\(23) & (!\inst3|s_counter[22]~76\))
-- \inst3|s_counter[23]~78\ = CARRY((!\inst3|s_counter\(23) & !\inst3|s_counter[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(23),
	datad => VCC,
	cin => \inst3|s_counter[22]~76\,
	combout => \inst3|s_counter[23]~77_combout\,
	cout => \inst3|s_counter[23]~78\);

-- Location: LCCOMB_X106_Y19_N8
\inst3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = (\inst3|Mult0|mult_core|romout[0][18]~1_combout\ & ((GND) # (!\inst3|Add0~31\))) # (!\inst3|Mult0|mult_core|romout[0][18]~1_combout\ & (\inst3|Add0~31\ $ (GND)))
-- \inst3|Add0~33\ = CARRY((\inst3|Mult0|mult_core|romout[0][18]~1_combout\) # (!\inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|romout[0][18]~1_combout\,
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: FF_X107_Y19_N17
\inst3|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[23]~77_combout\,
	asdata => \inst3|Add0~32_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(23));

-- Location: LCCOMB_X107_Y19_N18
\inst3|s_counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[24]~79_combout\ = (\inst3|s_counter\(24) & ((GND) # (!\inst3|s_counter[23]~78\))) # (!\inst3|s_counter\(24) & (\inst3|s_counter[23]~78\ $ (GND)))
-- \inst3|s_counter[24]~80\ = CARRY((\inst3|s_counter\(24)) # (!\inst3|s_counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(24),
	datad => VCC,
	cin => \inst3|s_counter[23]~78\,
	combout => \inst3|s_counter[24]~79_combout\,
	cout => \inst3|s_counter[24]~80\);

-- Location: LCCOMB_X106_Y19_N10
\inst3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|Mult0|mult_core|_~0_combout\ & (\inst3|Add0~33\ & VCC)) # (!\inst3|Mult0|mult_core|_~0_combout\ & (!\inst3|Add0~33\))
-- \inst3|Add0~35\ = CARRY((!\inst3|Mult0|mult_core|_~0_combout\ & !\inst3|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: FF_X107_Y19_N19
\inst3|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[24]~79_combout\,
	asdata => \inst3|Add0~34_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(24));

-- Location: LCCOMB_X107_Y19_N20
\inst3|s_counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[25]~81_combout\ = (\inst3|s_counter\(25) & (\inst3|s_counter[24]~80\ & VCC)) # (!\inst3|s_counter\(25) & (!\inst3|s_counter[24]~80\))
-- \inst3|s_counter[25]~82\ = CARRY((!\inst3|s_counter\(25) & !\inst3|s_counter[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(25),
	datad => VCC,
	cin => \inst3|s_counter[24]~80\,
	combout => \inst3|s_counter[25]~81_combout\,
	cout => \inst3|s_counter[25]~82\);

-- Location: LCCOMB_X106_Y19_N12
\inst3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = (\inst3|Mult0|mult_core|_~1_combout\ & (\inst3|Add0~35\ $ (GND))) # (!\inst3|Mult0|mult_core|_~1_combout\ & ((GND) # (!\inst3|Add0~35\)))
-- \inst3|Add0~37\ = CARRY((!\inst3|Add0~35\) # (!\inst3|Mult0|mult_core|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: FF_X107_Y19_N21
\inst3|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[25]~81_combout\,
	asdata => \inst3|Add0~36_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(25));

-- Location: LCCOMB_X107_Y19_N22
\inst3|s_counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[26]~83_combout\ = (\inst3|s_counter\(26) & ((GND) # (!\inst3|s_counter[25]~82\))) # (!\inst3|s_counter\(26) & (\inst3|s_counter[25]~82\ $ (GND)))
-- \inst3|s_counter[26]~84\ = CARRY((\inst3|s_counter\(26)) # (!\inst3|s_counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(26),
	datad => VCC,
	cin => \inst3|s_counter[25]~82\,
	combout => \inst3|s_counter[26]~83_combout\,
	cout => \inst3|s_counter[26]~84\);

-- Location: LCCOMB_X106_Y19_N14
\inst3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|Mult0|mult_core|romout[0][18]~1_combout\ & (\inst3|Add0~37\ & VCC)) # (!\inst3|Mult0|mult_core|romout[0][18]~1_combout\ & (!\inst3|Add0~37\))
-- \inst3|Add0~39\ = CARRY((!\inst3|Mult0|mult_core|romout[0][18]~1_combout\ & !\inst3|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|romout[0][18]~1_combout\,
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: FF_X107_Y19_N23
\inst3|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[26]~83_combout\,
	asdata => \inst3|Add0~38_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(26));

-- Location: LCCOMB_X108_Y19_N2
\inst3|s_cntZero~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cntZero~8_combout\ = (!\inst3|s_counter\(23) & (!\inst3|s_counter\(25) & (!\inst3|s_counter\(26) & !\inst3|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(23),
	datab => \inst3|s_counter\(25),
	datac => \inst3|s_counter\(26),
	datad => \inst3|s_counter\(24),
	combout => \inst3|s_cntZero~8_combout\);

-- Location: LCCOMB_X108_Y20_N20
\inst3|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cntZero~0_combout\ = (!\inst3|s_counter\(2) & (!\inst2|newTime~combout\ & (!\inst3|s_counter\(1) & !\inst3|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(2),
	datab => \inst2|newTime~combout\,
	datac => \inst3|s_counter\(1),
	datad => \inst3|s_counter\(0),
	combout => \inst3|s_cntZero~0_combout\);

-- Location: LCCOMB_X108_Y20_N16
\inst3|s_cntZero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cntZero~3_combout\ = (!\inst3|s_counter\(14) & (!\inst3|s_counter\(13) & (!\inst3|s_counter\(12) & !\inst3|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(14),
	datab => \inst3|s_counter\(13),
	datac => \inst3|s_counter\(12),
	datad => \inst3|s_counter\(11),
	combout => \inst3|s_cntZero~3_combout\);

-- Location: LCCOMB_X107_Y20_N0
\inst3|s_cntZero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cntZero~2_combout\ = (!\inst3|s_counter\(10) & (!\inst3|s_counter\(8) & (!\inst3|s_counter\(9) & !\inst3|s_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(10),
	datab => \inst3|s_counter\(8),
	datac => \inst3|s_counter\(9),
	datad => \inst3|s_counter\(7),
	combout => \inst3|s_cntZero~2_combout\);

-- Location: LCCOMB_X108_Y20_N26
\inst3|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cntZero~1_combout\ = (!\inst3|s_counter\(3) & (!\inst3|s_counter\(6) & (!\inst3|s_counter\(4) & !\inst3|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(3),
	datab => \inst3|s_counter\(6),
	datac => \inst3|s_counter\(4),
	datad => \inst3|s_counter\(5),
	combout => \inst3|s_cntZero~1_combout\);

-- Location: LCCOMB_X108_Y20_N10
\inst3|s_cntZero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cntZero~4_combout\ = (\inst3|s_cntZero~0_combout\ & (\inst3|s_cntZero~3_combout\ & (\inst3|s_cntZero~2_combout\ & \inst3|s_cntZero~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cntZero~0_combout\,
	datab => \inst3|s_cntZero~3_combout\,
	datac => \inst3|s_cntZero~2_combout\,
	datad => \inst3|s_cntZero~1_combout\,
	combout => \inst3|s_cntZero~4_combout\);

-- Location: LCCOMB_X107_Y19_N24
\inst3|s_counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[27]~85_combout\ = (\inst3|s_counter\(27) & (\inst3|s_counter[26]~84\ & VCC)) # (!\inst3|s_counter\(27) & (!\inst3|s_counter[26]~84\))
-- \inst3|s_counter[27]~86\ = CARRY((!\inst3|s_counter\(27) & !\inst3|s_counter[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(27),
	datad => VCC,
	cin => \inst3|s_counter[26]~84\,
	combout => \inst3|s_counter[27]~85_combout\,
	cout => \inst3|s_counter[27]~86\);

-- Location: LCCOMB_X106_Y19_N16
\inst3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = (\inst3|Mult0|mult_core|romout[0][18]~1_combout\ & ((GND) # (!\inst3|Add0~39\))) # (!\inst3|Mult0|mult_core|romout[0][18]~1_combout\ & (\inst3|Add0~39\ $ (GND)))
-- \inst3|Add0~41\ = CARRY((\inst3|Mult0|mult_core|romout[0][18]~1_combout\) # (!\inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|romout[0][18]~1_combout\,
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: FF_X107_Y19_N25
\inst3|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[27]~85_combout\,
	asdata => \inst3|Add0~40_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(27));

-- Location: LCCOMB_X107_Y19_N26
\inst3|s_counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[28]~87_combout\ = (\inst3|s_counter\(28) & ((GND) # (!\inst3|s_counter[27]~86\))) # (!\inst3|s_counter\(28) & (\inst3|s_counter[27]~86\ $ (GND)))
-- \inst3|s_counter[28]~88\ = CARRY((\inst3|s_counter\(28)) # (!\inst3|s_counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(28),
	datad => VCC,
	cin => \inst3|s_counter[27]~86\,
	combout => \inst3|s_counter[28]~87_combout\,
	cout => \inst3|s_counter[28]~88\);

-- Location: LCCOMB_X106_Y19_N18
\inst3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|Mult0|mult_core|_~0_combout\ & (\inst3|Add0~41\ & VCC)) # (!\inst3|Mult0|mult_core|_~0_combout\ & (!\inst3|Add0~41\))
-- \inst3|Add0~43\ = CARRY((!\inst3|Mult0|mult_core|_~0_combout\ & !\inst3|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: FF_X107_Y19_N27
\inst3|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[28]~87_combout\,
	asdata => \inst3|Add0~42_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(28));

-- Location: LCCOMB_X107_Y19_N28
\inst3|s_counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[29]~89_combout\ = (\inst3|s_counter\(29) & (\inst3|s_counter[28]~88\ & VCC)) # (!\inst3|s_counter\(29) & (!\inst3|s_counter[28]~88\))
-- \inst3|s_counter[29]~90\ = CARRY((!\inst3|s_counter\(29) & !\inst3|s_counter[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(29),
	datad => VCC,
	cin => \inst3|s_counter[28]~88\,
	combout => \inst3|s_counter[29]~89_combout\,
	cout => \inst3|s_counter[29]~90\);

-- Location: LCCOMB_X106_Y19_N20
\inst3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~44_combout\ = (\inst3|Mult0|mult_core|_~2_combout\ & ((GND) # (!\inst3|Add0~43\))) # (!\inst3|Mult0|mult_core|_~2_combout\ & (\inst3|Add0~43\ $ (GND)))
-- \inst3|Add0~45\ = CARRY((\inst3|Mult0|mult_core|_~2_combout\) # (!\inst3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|_~2_combout\,
	datad => VCC,
	cin => \inst3|Add0~43\,
	combout => \inst3|Add0~44_combout\,
	cout => \inst3|Add0~45\);

-- Location: FF_X107_Y19_N29
\inst3|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[29]~89_combout\,
	asdata => \inst3|Add0~44_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(29));

-- Location: LCCOMB_X107_Y19_N30
\inst3|s_counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[30]~91_combout\ = \inst3|s_counter\(30) $ (\inst3|s_counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(30),
	cin => \inst3|s_counter[29]~90\,
	combout => \inst3|s_counter[30]~91_combout\);

-- Location: LCCOMB_X106_Y19_N22
\inst3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~46_combout\ = !\inst3|Add0~45\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Add0~45\,
	combout => \inst3|Add0~46_combout\);

-- Location: FF_X107_Y19_N31
\inst3|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[30]~91_combout\,
	asdata => \inst3|Add0~46_combout\,
	sload => \inst2|newTime~combout\,
	ena => \inst3|ALT_INV_s_cntZero~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(30));

-- Location: LCCOMB_X108_Y19_N16
\inst3|s_cntZero~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cntZero~9_combout\ = (!\inst3|s_counter\(28) & (!\inst3|s_counter\(29) & (!\inst3|s_counter\(30) & !\inst3|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(28),
	datab => \inst3|s_counter\(29),
	datac => \inst3|s_counter\(30),
	datad => \inst3|s_counter\(27),
	combout => \inst3|s_cntZero~9_combout\);

-- Location: LCCOMB_X108_Y19_N8
\inst3|s_cntZero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cntZero~5_combout\ = (!\inst3|s_counter\(15) & (!\inst3|s_counter\(18) & (!\inst3|s_counter\(17) & !\inst3|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(15),
	datab => \inst3|s_counter\(18),
	datac => \inst3|s_counter\(17),
	datad => \inst3|s_counter\(16),
	combout => \inst3|s_cntZero~5_combout\);

-- Location: LCCOMB_X108_Y19_N18
\inst3|s_cntZero~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cntZero~6_combout\ = (!\inst3|s_counter\(19) & (!\inst3|s_counter\(21) & (!\inst3|s_counter\(20) & !\inst3|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(19),
	datab => \inst3|s_counter\(21),
	datac => \inst3|s_counter\(20),
	datad => \inst3|s_counter\(22),
	combout => \inst3|s_cntZero~6_combout\);

-- Location: LCCOMB_X108_Y19_N0
\inst3|s_cntZero~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cntZero~7_combout\ = (\inst3|s_cntZero~5_combout\ & \inst3|s_cntZero~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_cntZero~5_combout\,
	datad => \inst3|s_cntZero~6_combout\,
	combout => \inst3|s_cntZero~7_combout\);

-- Location: LCCOMB_X108_Y20_N24
\inst3|s_cntZero~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cntZero~10_combout\ = (\inst3|s_cntZero~8_combout\ & (\inst3|s_cntZero~4_combout\ & (\inst3|s_cntZero~9_combout\ & \inst3|s_cntZero~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cntZero~8_combout\,
	datab => \inst3|s_cntZero~4_combout\,
	datac => \inst3|s_cntZero~9_combout\,
	datad => \inst3|s_cntZero~7_combout\,
	combout => \inst3|s_cntZero~10_combout\);

-- Location: FF_X108_Y20_N31
\inst3|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_cntZero~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cntZero~q\);

-- Location: LCCOMB_X108_Y20_N12
\inst2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = ((!\inst3|s_cntZero~q\ & \inst2|s_currentState.Helo~q\)) # (!\inst2|s_currentState.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cntZero~q\,
	datab => \inst2|s_currentState.Start~q\,
	datac => \inst2|s_currentState.Helo~q\,
	combout => \inst2|Selector2~0_combout\);

-- Location: FF_X108_Y20_N13
\inst2|s_currentState.Helo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.Helo~q\);

-- Location: LCCOMB_X108_Y20_N22
\inst4|OutHex0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|OutHex0~0_combout\ = (\inst2|s_currentState.Helo~q\) # ((!\inst2|s_currentState.Start~q\) # (!\inst2|s_currentState.choose~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Helo~q\,
	datab => \inst2|s_currentState.choose~q\,
	datac => \inst2|s_currentState.Start~q\,
	combout => \inst4|OutHex0~0_combout\);

-- Location: LCCOMB_X108_Y20_N0
\inst2|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr9~combout\ = (\inst2|s_currentState.Helo~q\) # ((\inst2|s_currentState.choose~q\) # (!\inst2|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Helo~q\,
	datab => \inst2|s_currentState.choose~q\,
	datac => \inst2|s_currentState.Start~q\,
	combout => \inst2|WideOr9~combout\);

-- Location: LCCOMB_X108_Y20_N18
\inst2|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr9~0_combout\ = (\inst2|s_currentState.Start~q\ & !\inst2|s_currentState.Helo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_currentState.Start~q\,
	datad => \inst2|s_currentState.Helo~q\,
	combout => \inst2|WideOr9~0_combout\);

-- Location: LCCOMB_X108_Y20_N28
\inst4|OutHex1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|OutHex1~0_combout\ = (!\inst2|s_currentState.Helo~q\ & (\inst2|s_currentState.choose~q\ & \inst2|s_currentState.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_currentState.Helo~q\,
	datab => \inst2|s_currentState.choose~q\,
	datac => \inst2|s_currentState.Start~q\,
	combout => \inst4|OutHex1~0_combout\);

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

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


