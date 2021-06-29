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
-- Generated on "04/12/2021 14:39:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Register8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Register8_vhd_vec_tst IS
END Register8_vhd_vec_tst;
ARCHITECTURE Register8_arch OF Register8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dataIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL wrEn : STD_LOGIC;
COMPONENT Register8
	PORT (
	clk : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	wrEn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Register8
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataIn => dataIn,
	dataOut => dataOut,
	reset => reset,
	wrEn => wrEn
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 14
	LOOP
		clk <= '0';
		WAIT FOR 35000 ps;
		clk <= '1';
		WAIT FOR 35000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- wrEn
t_prcs_wrEn: PROCESS
BEGIN
	wrEn <= '0';
	WAIT FOR 70000 ps;
	wrEn <= '1';
	WAIT FOR 870000 ps;
	wrEn <= '0';
WAIT;
END PROCESS t_prcs_wrEn;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 90000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- dataIn[7]
t_prcs_dataIn_7: PROCESS
BEGIN
	FOR i IN 1 TO 14
	LOOP
		dataIn(7) <= '0';
		WAIT FOR 35000 ps;
		dataIn(7) <= '1';
		WAIT FOR 35000 ps;
	END LOOP;
	dataIn(7) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_7;
-- dataIn[6]
t_prcs_dataIn_6: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		dataIn(6) <= '0';
		WAIT FOR 30000 ps;
		dataIn(6) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	dataIn(6) <= '0';
	WAIT FOR 30000 ps;
	dataIn(6) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_6;
-- dataIn[5]
t_prcs_dataIn_5: PROCESS
BEGIN
LOOP
	dataIn(5) <= '0';
	WAIT FOR 25000 ps;
	dataIn(5) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_5;
-- dataIn[4]
t_prcs_dataIn_4: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		dataIn(4) <= '0';
		WAIT FOR 40000 ps;
		dataIn(4) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	dataIn(4) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_4;
-- dataIn[3]
t_prcs_dataIn_3: PROCESS
BEGIN
	FOR i IN 1 TO 11
	LOOP
		dataIn(3) <= '0';
		WAIT FOR 45000 ps;
		dataIn(3) <= '1';
		WAIT FOR 45000 ps;
	END LOOP;
	dataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_3;
-- dataIn[2]
t_prcs_dataIn_2: PROCESS
BEGIN
LOOP
	dataIn(2) <= '0';
	WAIT FOR 50000 ps;
	dataIn(2) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_2;
-- dataIn[1]
t_prcs_dataIn_1: PROCESS
BEGIN
LOOP
	dataIn(1) <= '0';
	WAIT FOR 20000 ps;
	dataIn(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_1;
-- dataIn[0]
t_prcs_dataIn_0: PROCESS
BEGIN
	FOR i IN 1 TO 9
	LOOP
		dataIn(0) <= '0';
		WAIT FOR 55000 ps;
		dataIn(0) <= '1';
		WAIT FOR 55000 ps;
	END LOOP;
	dataIn(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_0;
END Register8_arch;
