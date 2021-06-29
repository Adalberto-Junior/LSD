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
-- Generated on "03/19/2021 11:00:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Dec2_4EnDemo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Dec2_4EnDemo_vhd_vec_tst IS
END Dec2_4EnDemo_vhd_vec_tst;
ARCHITECTURE Dec2_4EnDemo_arch OF Dec2_4EnDemo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL LEDG : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Dec2_4EnDemo
	PORT (
	LEDG : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Dec2_4EnDemo
	PORT MAP (
-- list connections between master ports and signals
	LEDG => LEDG,
	SW => SW
	);
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
	WAIT FOR 160000 ps;
	SW(2) <= '1';
	WAIT FOR 240000 ps;
	SW(2) <= '0';
	WAIT FOR 160000 ps;
	SW(2) <= '1';
	WAIT FOR 290000 ps;
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		SW(1) <= '0';
		WAIT FOR 40000 ps;
		SW(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	FOR i IN 1 TO 11
	LOOP
		SW(0) <= '0';
		WAIT FOR 45000 ps;
		SW(0) <= '1';
		WAIT FOR 45000 ps;
	END LOOP;
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END Dec2_4EnDemo_arch;
