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
-- Generated on "03/29/2021 20:50:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALUDemo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALUDemo_vhd_vec_tst IS
END ALUDemo_vhd_vec_tst;
ARCHITECTURE ALUDemo_arch OF ALUDemo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL enable : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(10 DOWNTO 0);
COMPONENT ALUDemo
	PORT (
	enable : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ALUDemo
	PORT MAP (
-- list connections between master ports and signals
	enable => enable,
	HEX0 => HEX0,
	LEDR => LEDR,
	SW => SW
	);

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 140000 ps;
	enable <= '1';
	WAIT FOR 740000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;
-- SW[10]
t_prcs_SW_10: PROCESS
BEGIN
	SW(10) <= '0';
	WAIT FOR 70000 ps;
	SW(10) <= '1';
	WAIT FOR 70000 ps;
	SW(10) <= '0';
	WAIT FOR 210000 ps;
	SW(10) <= '1';
	WAIT FOR 70000 ps;
	SW(10) <= '0';
	WAIT FOR 70000 ps;
	SW(10) <= '1';
	WAIT FOR 210000 ps;
	SW(10) <= '0';
	WAIT FOR 70000 ps;
	SW(10) <= '1';
	WAIT FOR 70000 ps;
	SW(10) <= '0';
	WAIT FOR 70000 ps;
	SW(10) <= '1';
WAIT;
END PROCESS t_prcs_SW_10;
-- SW[9]
t_prcs_SW_9: PROCESS
BEGIN
	SW(9) <= '0';
	WAIT FOR 70000 ps;
	SW(9) <= '1';
	WAIT FOR 140000 ps;
	SW(9) <= '0';
	WAIT FOR 70000 ps;
	SW(9) <= '1';
	WAIT FOR 140000 ps;
	SW(9) <= '0';
	WAIT FOR 70000 ps;
	SW(9) <= '1';
	WAIT FOR 70000 ps;
	SW(9) <= '0';
	WAIT FOR 70000 ps;
	SW(9) <= '1';
	WAIT FOR 210000 ps;
	SW(9) <= '0';
	WAIT FOR 70000 ps;
	SW(9) <= '1';
	WAIT FOR 70000 ps;
	SW(9) <= '0';
WAIT;
END PROCESS t_prcs_SW_9;
-- SW[8]
t_prcs_SW_8: PROCESS
BEGIN
	SW(8) <= '0';
	WAIT FOR 210000 ps;
	SW(8) <= '1';
	WAIT FOR 70000 ps;
	SW(8) <= '0';
	WAIT FOR 70000 ps;
	SW(8) <= '1';
	WAIT FOR 70000 ps;
	SW(8) <= '0';
	WAIT FOR 70000 ps;
	SW(8) <= '1';
	WAIT FOR 140000 ps;
	SW(8) <= '0';
	WAIT FOR 140000 ps;
	SW(8) <= '1';
	WAIT FOR 70000 ps;
	SW(8) <= '0';
	WAIT FOR 70000 ps;
	SW(8) <= '1';
	WAIT FOR 70000 ps;
	SW(8) <= '0';
WAIT;
END PROCESS t_prcs_SW_8;
-- SW[7]
t_prcs_SW_7: PROCESS
BEGIN
	SW(7) <= '0';
	WAIT FOR 70000 ps;
	SW(7) <= '1';
	WAIT FOR 140000 ps;
	SW(7) <= '0';
	WAIT FOR 210000 ps;
	SW(7) <= '1';
	WAIT FOR 140000 ps;
	SW(7) <= '0';
	WAIT FOR 210000 ps;
	SW(7) <= '1';
	WAIT FOR 210000 ps;
	SW(7) <= '0';
WAIT;
END PROCESS t_prcs_SW_7;
-- SW[6]
t_prcs_SW_6: PROCESS
BEGIN
	SW(6) <= '0';
	WAIT FOR 70000 ps;
	SW(6) <= '1';
	WAIT FOR 70000 ps;
	SW(6) <= '0';
	WAIT FOR 70000 ps;
	SW(6) <= '1';
	WAIT FOR 70000 ps;
	SW(6) <= '0';
	WAIT FOR 70000 ps;
	SW(6) <= '1';
	WAIT FOR 70000 ps;
	SW(6) <= '0';
	WAIT FOR 70000 ps;
	SW(6) <= '1';
	WAIT FOR 140000 ps;
	SW(6) <= '0';
	WAIT FOR 140000 ps;
	SW(6) <= '1';
	WAIT FOR 70000 ps;
	SW(6) <= '0';
	WAIT FOR 70000 ps;
	SW(6) <= '1';
WAIT;
END PROCESS t_prcs_SW_6;
-- SW[5]
t_prcs_SW_5: PROCESS
BEGIN
	SW(5) <= '0';
	WAIT FOR 280000 ps;
	SW(5) <= '1';
	WAIT FOR 280000 ps;
	SW(5) <= '0';
	WAIT FOR 70000 ps;
	SW(5) <= '1';
	WAIT FOR 70000 ps;
	SW(5) <= '0';
	WAIT FOR 140000 ps;
	SW(5) <= '1';
	WAIT FOR 140000 ps;
	SW(5) <= '0';
WAIT;
END PROCESS t_prcs_SW_5;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	SW(4) <= '0';
	WAIT FOR 70000 ps;
	SW(4) <= '1';
	WAIT FOR 70000 ps;
	SW(4) <= '0';
	WAIT FOR 70000 ps;
	SW(4) <= '1';
	WAIT FOR 350000 ps;
	SW(4) <= '0';
	WAIT FOR 140000 ps;
	SW(4) <= '1';
	WAIT FOR 70000 ps;
	SW(4) <= '0';
WAIT;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '1';
	WAIT FOR 70000 ps;
	SW(3) <= '0';
	WAIT FOR 140000 ps;
	SW(3) <= '1';
	WAIT FOR 70000 ps;
	SW(3) <= '0';
	WAIT FOR 70000 ps;
	SW(3) <= '1';
	WAIT FOR 280000 ps;
	SW(3) <= '0';
	WAIT FOR 70000 ps;
	SW(3) <= '1';
	WAIT FOR 140000 ps;
	SW(3) <= '0';
	WAIT FOR 140000 ps;
	SW(3) <= '1';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
	WAIT FOR 210000 ps;
	SW(2) <= '1';
	WAIT FOR 70000 ps;
	SW(2) <= '0';
	WAIT FOR 280000 ps;
	SW(2) <= '1';
	WAIT FOR 70000 ps;
	SW(2) <= '0';
	WAIT FOR 140000 ps;
	SW(2) <= '1';
	WAIT FOR 70000 ps;
	SW(2) <= '0';
	WAIT FOR 70000 ps;
	SW(2) <= '1';
	WAIT FOR 70000 ps;
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '1';
	WAIT FOR 140000 ps;
	SW(1) <= '0';
	WAIT FOR 140000 ps;
	SW(1) <= '1';
	WAIT FOR 70000 ps;
	SW(1) <= '0';
	WAIT FOR 70000 ps;
	SW(1) <= '1';
	WAIT FOR 140000 ps;
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '0';
	WAIT FOR 70000 ps;
	SW(0) <= '1';
	WAIT FOR 70000 ps;
	SW(0) <= '0';
	WAIT FOR 210000 ps;
	SW(0) <= '1';
	WAIT FOR 70000 ps;
	SW(0) <= '0';
	WAIT FOR 210000 ps;
	SW(0) <= '1';
	WAIT FOR 70000 ps;
	SW(0) <= '0';
	WAIT FOR 70000 ps;
	SW(0) <= '1';
	WAIT FOR 140000 ps;
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END ALUDemo_arch;
