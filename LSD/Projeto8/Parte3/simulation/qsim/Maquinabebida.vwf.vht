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
-- Generated on "05/16/2021 18:41:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DrinksFSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DrinksFSM_vhd_vec_tst IS
END DrinksFSM_vhd_vec_tst;
ARCHITECTURE DrinksFSM_arch OF DrinksFSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Drink : STD_LOGIC;
SIGNAL M20 : STD_LOGIC;
SIGNAL M50 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT DrinksFSM
	PORT (
	clk : IN STD_LOGIC;
	Drink : OUT STD_LOGIC;
	M20 : IN STD_LOGIC;
	M50 : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DrinksFSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Drink => Drink,
	M20 => M20,
	M50 => M50,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 60000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- M20
t_prcs_M20: PROCESS
BEGIN
	M20 <= '1';
	WAIT FOR 60000 ps;
	M20 <= '0';
	WAIT FOR 20000 ps;
	M20 <= '1';
	WAIT FOR 60000 ps;
	M20 <= '0';
	WAIT FOR 20000 ps;
	M20 <= '1';
	WAIT FOR 60000 ps;
	M20 <= '0';
WAIT;
END PROCESS t_prcs_M20;

-- M50
t_prcs_M50: PROCESS
BEGIN
	M50 <= '0';
	WAIT FOR 220000 ps;
	M50 <= '1';
	WAIT FOR 60000 ps;
	M50 <= '0';
WAIT;
END PROCESS t_prcs_M50;
END DrinksFSM_arch;
