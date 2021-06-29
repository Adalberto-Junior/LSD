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
-- Generated on "03/30/2021 12:55:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bin2BCD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bin2BCD_vhd_vec_tst IS
END Bin2BCD_vhd_vec_tst;
ARCHITECTURE Bin2BCD_arch OF Bin2BCD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inPut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Put : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL st : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Bin2BCD
	PORT (
	inPut : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Put : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	st : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Bin2BCD
	PORT MAP (
-- list connections between master ports and signals
	inPut => inPut,
	Put => Put,
	st => st
	);
-- inPut[3]
t_prcs_inPut_3: PROCESS
BEGIN
	inPut(3) <= '1';
	WAIT FOR 180000 ps;
	inPut(3) <= '0';
WAIT;
END PROCESS t_prcs_inPut_3;
-- inPut[2]
t_prcs_inPut_2: PROCESS
BEGIN
	inPut(2) <= '1';
	WAIT FOR 180000 ps;
	inPut(2) <= '0';
	WAIT FOR 320000 ps;
	inPut(2) <= '1';
	WAIT FOR 100000 ps;
	inPut(2) <= '0';
	WAIT FOR 110000 ps;
	inPut(2) <= '1';
	WAIT FOR 240000 ps;
	inPut(2) <= '0';
WAIT;
END PROCESS t_prcs_inPut_2;
-- inPut[1]
t_prcs_inPut_1: PROCESS
BEGIN
	inPut(1) <= '0';
	WAIT FOR 90000 ps;
	inPut(1) <= '1';
	WAIT FOR 90000 ps;
	inPut(1) <= '0';
	WAIT FOR 320000 ps;
	inPut(1) <= '1';
	WAIT FOR 100000 ps;
	inPut(1) <= '0';
	WAIT FOR 110000 ps;
	inPut(1) <= '1';
	WAIT FOR 240000 ps;
	inPut(1) <= '0';
WAIT;
END PROCESS t_prcs_inPut_1;
-- inPut[0]
t_prcs_inPut_0: PROCESS
BEGIN
	inPut(0) <= '0';
	WAIT FOR 90000 ps;
	inPut(0) <= '1';
	WAIT FOR 90000 ps;
	inPut(0) <= '0';
	WAIT FOR 530000 ps;
	inPut(0) <= '1';
	WAIT FOR 240000 ps;
	inPut(0) <= '0';
WAIT;
END PROCESS t_prcs_inPut_0;
END Bin2BCD_arch;
