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
-- Generated on "06/16/2021 09:17:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Maquina_AutoTop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Maquina_AutoTop_vhd_vec_tst IS
END Maquina_AutoTop_vhd_vec_tst;
ARCHITECTURE Maquina_AutoTop_arch OF Maquina_AutoTop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LEDG : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Maquina_AutoTop
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	HEX0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	LEDG : BUFFER STD_LOGIC_VECTOR(0 DOWNTO 0);
	LEDR : BUFFER STD_LOGIC_VECTOR(0 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Maquina_AutoTop
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	LEDG => LEDG,
	LEDR => LEDR,
	SW => SW
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 25000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
	WAIT FOR 580000 ps;
	SW(3) <= '1';
	WAIT FOR 60000 ps;
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
	WAIT FOR 390000 ps;
	SW(2) <= '1';
	WAIT FOR 70000 ps;
	SW(2) <= '0';
	WAIT FOR 120000 ps;
	SW(2) <= '1';
	WAIT FOR 110000 ps;
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
	WAIT FOR 190000 ps;
	SW(1) <= '1';
	WAIT FOR 110000 ps;
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '1';
	WAIT FOR 100000 ps;
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END Maquina_AutoTop_arch;
