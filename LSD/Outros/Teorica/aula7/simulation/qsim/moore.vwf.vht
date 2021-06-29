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
-- Generated on "05/10/2021 19:13:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          amor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY amor_vhd_vec_tst IS
END amor_vhd_vec_tst;
ARCHITECTURE amor_arch OF amor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL w : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT amor
	PORT (
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	w : IN STD_LOGIC;
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : amor
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset => reset,
	w => w,
	z => z
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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 70000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- w
t_prcs_w: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		w <= '0';
		WAIT FOR 30000 ps;
		w <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	w <= '0';
	WAIT FOR 30000 ps;
	w <= '1';
WAIT;
END PROCESS t_prcs_w;
END amor_arch;
