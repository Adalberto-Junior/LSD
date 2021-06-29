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
-- Generated on "04/29/2021 17:27:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TimerN_Demo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TimerN_Demo_vhd_vec_tst IS
END TimerN_Demo_vhd_vec_tst;
ARCHITECTURE TimerN_Demo_arch OF TimerN_Demo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT TimerN_Demo
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	LEDR : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TimerN_Demo
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	LEDR => LEDR,
	SW => SW
	);
END TimerN_Demo_arch;
