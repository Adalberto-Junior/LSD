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
-- Generated on "06/10/2021 02:09:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          modoDeAcu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY modoDeAcu_vhd_vec_tst IS
END modoDeAcu_vhd_vec_tst;
ARCHITECTURE modoDeAcu_arch OF modoDeAcu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL maisAc : STD_LOGIC;
SIGNAL menusAc : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL selBar : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL selModAc : STD_LOGIC;
COMPONENT modoDeAcu
	PORT (
	clk : IN STD_LOGIC;
	maisAc : IN STD_LOGIC;
	menusAc : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	selBar : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	selModAc : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : modoDeAcu
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	maisAc => maisAc,
	menusAc => menusAc,
	reset => reset,
	selBar => selBar,
	selModAc => selModAc
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

-- selModAc
t_prcs_selModAc: PROCESS
BEGIN
	selModAc <= '0';
	WAIT FOR 140000 ps;
	selModAc <= '1';
	WAIT FOR 720000 ps;
	selModAc <= '0';
WAIT;
END PROCESS t_prcs_selModAc;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 150000 ps;
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
	WAIT FOR 310000 ps;
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- maisAc
t_prcs_maisAc: PROCESS
BEGIN
	maisAc <= '0';
	WAIT FOR 60000 ps;
	maisAc <= '1';
	WAIT FOR 40000 ps;
	maisAc <= '0';
	WAIT FOR 180000 ps;
	maisAc <= '1';
	WAIT FOR 40000 ps;
	maisAc <= '0';
	WAIT FOR 100000 ps;
	maisAc <= '1';
	WAIT FOR 90000 ps;
	maisAc <= '0';
	WAIT FOR 40000 ps;
	maisAc <= '1';
	WAIT FOR 170000 ps;
	maisAc <= '0';
	WAIT FOR 70000 ps;
	maisAc <= '1';
	WAIT FOR 150000 ps;
	maisAc <= '0';
WAIT;
END PROCESS t_prcs_maisAc;

-- menusAc
t_prcs_menusAc: PROCESS
BEGIN
	menusAc <= '0';
	WAIT FOR 330000 ps;
	menusAc <= '1';
	WAIT FOR 90000 ps;
	menusAc <= '0';
	WAIT FOR 90000 ps;
	menusAc <= '1';
	WAIT FOR 40000 ps;
	menusAc <= '0';
	WAIT FOR 170000 ps;
	menusAc <= '1';
	WAIT FOR 100000 ps;
	menusAc <= '0';
WAIT;
END PROCESS t_prcs_menusAc;
END modoDeAcu_arch;
