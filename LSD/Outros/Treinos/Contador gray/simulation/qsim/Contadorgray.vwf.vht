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
-- Generated on "05/17/2021 17:49:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contadorgray
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contadorgray_vhd_vec_tst IS
END contadorgray_vhd_vec_tst;
ARCHITECTURE contadorgray_arch OF contadorgray_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dataIn : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT contadorgray
	PORT (
	clk : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contadorgray
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataIn => dataIn,
	dataOut => dataOut,
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
	reset <= '0';
	WAIT FOR 70000 ps;
	reset <= '1';
	WAIT FOR 620000 ps;
	reset <= '0';
	WAIT FOR 190000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
-- dataIn[2]
t_prcs_dataIn_2: PROCESS
BEGIN
	dataIn(2) <= '0';
	WAIT FOR 280000 ps;
	dataIn(2) <= '1';
	WAIT FOR 390000 ps;
	dataIn(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_2;
-- dataIn[1]
t_prcs_dataIn_1: PROCESS
BEGIN
	dataIn(1) <= '0';
	WAIT FOR 180000 ps;
	dataIn(1) <= '1';
	WAIT FOR 100000 ps;
	dataIn(1) <= '0';
	WAIT FOR 150000 ps;
	dataIn(1) <= '1';
	WAIT FOR 240000 ps;
	dataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_1;
-- dataIn[0]
t_prcs_dataIn_0: PROCESS
BEGIN
	dataIn(0) <= '0';
	WAIT FOR 120000 ps;
	dataIn(0) <= '1';
	WAIT FOR 60000 ps;
	dataIn(0) <= '0';
	WAIT FOR 50000 ps;
	dataIn(0) <= '1';
	WAIT FOR 50000 ps;
	dataIn(0) <= '0';
	WAIT FOR 70000 ps;
	dataIn(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn(0) <= '0';
	WAIT FOR 100000 ps;
	dataIn(0) <= '1';
	WAIT FOR 140000 ps;
	dataIn(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_0;
END contadorgray_arch;
