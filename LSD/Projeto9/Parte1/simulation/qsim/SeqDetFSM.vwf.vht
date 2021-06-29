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
-- Generated on "05/20/2021 18:27:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SeqDetFSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SeqDetFSM_vhd_vec_tst IS
END SeqDetFSM_vhd_vec_tst;
ARCHITECTURE SeqDetFSM_arch OF SeqDetFSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL Xin : STD_LOGIC;
SIGNAL Yout : STD_LOGIC;
SIGNAL Zout : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT SeqDetFSM
	PORT (
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	Xin : IN STD_LOGIC;
	Yout : OUT STD_LOGIC;
	Zout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SeqDetFSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset => reset,
	Xin => Xin,
	Yout => Yout,
	Zout => Zout
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- Xin
t_prcs_Xin: PROCESS
BEGIN
	Xin <= '1';
	WAIT FOR 90000 ps;
	Xin <= '0';
	WAIT FOR 70000 ps;
	Xin <= '1';
	WAIT FOR 50000 ps;
	Xin <= '0';
	WAIT FOR 90000 ps;
	Xin <= '1';
	WAIT FOR 140000 ps;
	Xin <= '0';
	WAIT FOR 100000 ps;
	Xin <= '1';
	WAIT FOR 70000 ps;
	Xin <= '0';
	WAIT FOR 90000 ps;
	Xin <= '1';
	WAIT FOR 110000 ps;
	Xin <= '0';
WAIT;
END PROCESS t_prcs_Xin;
END SeqDetFSM_arch;
