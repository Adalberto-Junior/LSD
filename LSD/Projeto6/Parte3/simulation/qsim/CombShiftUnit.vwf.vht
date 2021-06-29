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
-- Generated on "05/02/2021 15:47:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CombShiftUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CombShiftUnit_vhd_vec_tst IS
END CombShiftUnit_vhd_vec_tst;
ARCHITECTURE CombShiftUnit_arch OF CombShiftUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dataIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dirLeft : STD_LOGIC;
SIGNAL rotate : STD_LOGIC;
SIGNAL shAmount : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL shArith : STD_LOGIC;
COMPONENT CombShiftUnit
	PORT (
	dataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dirLeft : IN STD_LOGIC;
	rotate : IN STD_LOGIC;
	shAmount : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	shArith : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CombShiftUnit
	PORT MAP (
-- list connections between master ports and signals
	dataIn => dataIn,
	dataOut => dataOut,
	dirLeft => dirLeft,
	rotate => rotate,
	shAmount => shAmount,
	shArith => shArith
	);
-- dataIn[7]
t_prcs_dataIn_7: PROCESS
BEGIN
	dataIn(7) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_7;
-- dataIn[6]
t_prcs_dataIn_6: PROCESS
BEGIN
	dataIn(6) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_6;
-- dataIn[5]
t_prcs_dataIn_5: PROCESS
BEGIN
	dataIn(5) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_5;
-- dataIn[4]
t_prcs_dataIn_4: PROCESS
BEGIN
	dataIn(4) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_4;
-- dataIn[3]
t_prcs_dataIn_3: PROCESS
BEGIN
	dataIn(3) <= '1';
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
	dataIn(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_0;
-- shAmount[2]
t_prcs_shAmount_2: PROCESS
BEGIN
	shAmount(2) <= '1';
	WAIT FOR 490000 ps;
	shAmount(2) <= '0';
WAIT;
END PROCESS t_prcs_shAmount_2;
-- shAmount[1]
t_prcs_shAmount_1: PROCESS
BEGIN
	shAmount(1) <= '1';
	WAIT FOR 490000 ps;
	shAmount(1) <= '0';
WAIT;
END PROCESS t_prcs_shAmount_1;
-- shAmount[0]
t_prcs_shAmount_0: PROCESS
BEGIN
	shAmount(0) <= '0';
	WAIT FOR 490000 ps;
	shAmount(0) <= '1';
WAIT;
END PROCESS t_prcs_shAmount_0;

-- dirLeft
t_prcs_dirLeft: PROCESS
BEGIN
	dirLeft <= '1';
	WAIT FOR 120000 ps;
	dirLeft <= '0';
	WAIT FOR 80000 ps;
	dirLeft <= '1';
	WAIT FOR 50000 ps;
	dirLeft <= '0';
	WAIT FOR 30000 ps;
	dirLeft <= '1';
	WAIT FOR 70000 ps;
	dirLeft <= '0';
	WAIT FOR 180000 ps;
	dirLeft <= '1';
	WAIT FOR 160000 ps;
	dirLeft <= '0';
	WAIT FOR 130000 ps;
	dirLeft <= '1';
WAIT;
END PROCESS t_prcs_dirLeft;

-- rotate
t_prcs_rotate: PROCESS
BEGIN
	rotate <= '1';
	WAIT FOR 310000 ps;
	rotate <= '0';
WAIT;
END PROCESS t_prcs_rotate;

-- shArith
t_prcs_shArith: PROCESS
BEGIN
	shArith <= '0';
	WAIT FOR 310000 ps;
	shArith <= '1';
	WAIT FOR 340000 ps;
	shArith <= '0';
WAIT;
END PROCESS t_prcs_shArith;
END CombShiftUnit_arch;
