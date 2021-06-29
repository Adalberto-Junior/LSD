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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/02/2021 14:51:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ShiftRegisterLoadN
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ShiftRegisterLoadN_vhd_vec_tst IS
END ShiftRegisterLoadN_vhd_vec_tst;
ARCHITECTURE ShiftRegisterLoadN_arch OF ShiftRegisterLoadN_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dataIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en : STD_LOGIC;
SIGNAL load : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sin : STD_LOGIC;
COMPONENT ShiftRegisterLoadN
	PORT (
	clk : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	en : IN STD_LOGIC;
	load : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	sin : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ShiftRegisterLoadN
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataIn => dataIn,
	dataOut => dataOut,
	en => en,
	load => load,
	reset => reset,
	sin => sin
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		clk <= '0';
		WAIT FOR 15000 ps;
		clk <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- dataIn[7]
t_prcs_dataIn_7: PROCESS
BEGIN
	dataIn(7) <= '1';
	WAIT FOR 210000 ps;
	dataIn(7) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_7;
-- dataIn[6]
t_prcs_dataIn_6: PROCESS
BEGIN
	dataIn(6) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_6;
-- dataIn[5]
t_prcs_dataIn_5: PROCESS
BEGIN
	dataIn(5) <= '1';
	WAIT FOR 210000 ps;
	dataIn(5) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_5;
-- dataIn[4]
t_prcs_dataIn_4: PROCESS
BEGIN
	dataIn(4) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_4;
-- dataIn[3]
t_prcs_dataIn_3: PROCESS
BEGIN
	dataIn(3) <= '1';
	WAIT FOR 210000 ps;
	dataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_3;
-- dataIn[2]
t_prcs_dataIn_2: PROCESS
BEGIN
	dataIn(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_2;
-- dataIn[1]
t_prcs_dataIn_1: PROCESS
BEGIN
	dataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_1;
-- dataIn[0]
t_prcs_dataIn_0: PROCESS
BEGIN
	dataIn(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '1';
WAIT;
END PROCESS t_prcs_en;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '1';
	WAIT FOR 180000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;

-- sin
t_prcs_sin: PROCESS
BEGIN
	sin <= '1';
WAIT;
END PROCESS t_prcs_sin;
END ShiftRegisterLoadN_arch;
