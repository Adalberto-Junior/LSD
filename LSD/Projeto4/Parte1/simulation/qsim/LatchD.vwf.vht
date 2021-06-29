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
-- Generated on "04/11/2021 13:45:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LatchD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LatchD_vhd_vec_tst IS
END LatchD_vhd_vec_tst;
ARCHITECTURE LatchD_arch OF LatchD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dataIn : STD_LOGIC;
SIGNAL dataOut : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
COMPONENT LatchD
	PORT (
	dataIn : IN STD_LOGIC;
	dataOut : OUT STD_LOGIC;
	enable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : LatchD
	PORT MAP (
-- list connections between master ports and signals
	dataIn => dataIn,
	dataOut => dataOut,
	enable => enable
	);

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 130000 ps;
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- dataIn
t_prcs_dataIn: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		dataIn <= '0';
		WAIT FOR 30000 ps;
		dataIn <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	dataIn <= '0';
	WAIT FOR 30000 ps;
	dataIn <= '1';
WAIT;
END PROCESS t_prcs_dataIn;
END LatchD_arch;
