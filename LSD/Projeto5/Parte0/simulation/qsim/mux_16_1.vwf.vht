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
-- Generated on "04/23/2021 00:36:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_16_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_16_1_vhd_vec_tst IS
END mux_16_1_vhd_vec_tst;
ARCHITECTURE mux_16_1_arch OF mux_16_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL imput : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Muxout : STD_LOGIC;
SIGNAL Sel : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT mux_16_1
	PORT (
	imput : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Muxout : OUT STD_LOGIC;
	Sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux_16_1
	PORT MAP (
-- list connections between master ports and signals
	imput => imput,
	Muxout => Muxout,
	Sel => Sel
	);
-- imput[15]
t_prcs_imput_15: PROCESS
BEGIN
	imput(15) <= '1';
	WAIT FOR 120000 ps;
	imput(15) <= '0';
	WAIT FOR 60000 ps;
	imput(15) <= '1';
	WAIT FOR 60000 ps;
	imput(15) <= '0';
	WAIT FOR 30000 ps;
	imput(15) <= '1';
	WAIT FOR 180000 ps;
	imput(15) <= '0';
	WAIT FOR 30000 ps;
	imput(15) <= '1';
	WAIT FOR 30000 ps;
	imput(15) <= '0';
	WAIT FOR 30000 ps;
	imput(15) <= '1';
	WAIT FOR 30000 ps;
	imput(15) <= '0';
	WAIT FOR 30000 ps;
	imput(15) <= '1';
	WAIT FOR 60000 ps;
	imput(15) <= '0';
	WAIT FOR 30000 ps;
	imput(15) <= '1';
	WAIT FOR 120000 ps;
	imput(15) <= '0';
	WAIT FOR 60000 ps;
	imput(15) <= '1';
	WAIT FOR 30000 ps;
	imput(15) <= '0';
	WAIT FOR 90000 ps;
	imput(15) <= '1';
WAIT;
END PROCESS t_prcs_imput_15;
-- imput[14]
t_prcs_imput_14: PROCESS
BEGIN
	imput(14) <= '0';
	WAIT FOR 30000 ps;
	imput(14) <= '1';
	WAIT FOR 30000 ps;
	imput(14) <= '0';
	WAIT FOR 30000 ps;
	imput(14) <= '1';
	WAIT FOR 30000 ps;
	imput(14) <= '0';
	WAIT FOR 30000 ps;
	imput(14) <= '1';
	WAIT FOR 30000 ps;
	imput(14) <= '0';
	WAIT FOR 30000 ps;
	imput(14) <= '1';
	WAIT FOR 60000 ps;
	imput(14) <= '0';
	WAIT FOR 30000 ps;
	imput(14) <= '1';
	WAIT FOR 30000 ps;
	imput(14) <= '0';
	WAIT FOR 90000 ps;
	imput(14) <= '1';
	WAIT FOR 30000 ps;
	imput(14) <= '0';
	WAIT FOR 150000 ps;
	imput(14) <= '1';
	WAIT FOR 120000 ps;
	imput(14) <= '0';
	WAIT FOR 150000 ps;
	imput(14) <= '1';
	WAIT FOR 30000 ps;
	imput(14) <= '0';
	WAIT FOR 30000 ps;
	imput(14) <= '1';
	WAIT FOR 30000 ps;
	imput(14) <= '0';
	WAIT FOR 30000 ps;
	imput(14) <= '1';
WAIT;
END PROCESS t_prcs_imput_14;
-- imput[13]
t_prcs_imput_13: PROCESS
BEGIN
	imput(13) <= '0';
	WAIT FOR 30000 ps;
	imput(13) <= '1';
	WAIT FOR 90000 ps;
	imput(13) <= '0';
	WAIT FOR 150000 ps;
	imput(13) <= '1';
	WAIT FOR 30000 ps;
	imput(13) <= '0';
	WAIT FOR 30000 ps;
	imput(13) <= '1';
	WAIT FOR 270000 ps;
	imput(13) <= '0';
	WAIT FOR 30000 ps;
	imput(13) <= '1';
	WAIT FOR 30000 ps;
	imput(13) <= '0';
	WAIT FOR 60000 ps;
	imput(13) <= '1';
	WAIT FOR 30000 ps;
	imput(13) <= '0';
	WAIT FOR 30000 ps;
	imput(13) <= '1';
	WAIT FOR 60000 ps;
	imput(13) <= '0';
	WAIT FOR 30000 ps;
	imput(13) <= '1';
	WAIT FOR 30000 ps;
	imput(13) <= '0';
WAIT;
END PROCESS t_prcs_imput_13;
-- imput[12]
t_prcs_imput_12: PROCESS
BEGIN
	imput(12) <= '1';
	WAIT FOR 30000 ps;
	imput(12) <= '0';
	WAIT FOR 30000 ps;
	imput(12) <= '1';
	WAIT FOR 30000 ps;
	imput(12) <= '0';
	WAIT FOR 120000 ps;
	imput(12) <= '1';
	WAIT FOR 60000 ps;
	imput(12) <= '0';
	WAIT FOR 30000 ps;
	imput(12) <= '1';
	WAIT FOR 90000 ps;
	imput(12) <= '0';
	WAIT FOR 30000 ps;
	imput(12) <= '1';
	WAIT FOR 60000 ps;
	imput(12) <= '0';
	WAIT FOR 180000 ps;
	imput(12) <= '1';
	WAIT FOR 90000 ps;
	imput(12) <= '0';
	WAIT FOR 60000 ps;
	imput(12) <= '1';
	WAIT FOR 30000 ps;
	imput(12) <= '0';
	WAIT FOR 30000 ps;
	imput(12) <= '1';
	WAIT FOR 30000 ps;
	imput(12) <= '0';
	WAIT FOR 90000 ps;
	imput(12) <= '1';
WAIT;
END PROCESS t_prcs_imput_12;
-- imput[11]
t_prcs_imput_11: PROCESS
BEGIN
	imput(11) <= '0';
	WAIT FOR 60000 ps;
	imput(11) <= '1';
	WAIT FOR 30000 ps;
	imput(11) <= '0';
	WAIT FOR 90000 ps;
	imput(11) <= '1';
	WAIT FOR 30000 ps;
	imput(11) <= '0';
	WAIT FOR 30000 ps;
	imput(11) <= '1';
	WAIT FOR 30000 ps;
	imput(11) <= '0';
	WAIT FOR 30000 ps;
	imput(11) <= '1';
	WAIT FOR 30000 ps;
	imput(11) <= '0';
	WAIT FOR 180000 ps;
	imput(11) <= '1';
	WAIT FOR 90000 ps;
	imput(11) <= '0';
	WAIT FOR 30000 ps;
	imput(11) <= '1';
	WAIT FOR 30000 ps;
	imput(11) <= '0';
	WAIT FOR 30000 ps;
	imput(11) <= '1';
	WAIT FOR 60000 ps;
	imput(11) <= '0';
	WAIT FOR 60000 ps;
	imput(11) <= '1';
	WAIT FOR 30000 ps;
	imput(11) <= '0';
	WAIT FOR 30000 ps;
	imput(11) <= '1';
	WAIT FOR 30000 ps;
	imput(11) <= '0';
WAIT;
END PROCESS t_prcs_imput_11;
-- imput[10]
t_prcs_imput_10: PROCESS
BEGIN
	imput(10) <= '1';
	WAIT FOR 30000 ps;
	imput(10) <= '0';
	WAIT FOR 30000 ps;
	imput(10) <= '1';
	WAIT FOR 30000 ps;
	imput(10) <= '0';
	WAIT FOR 30000 ps;
	imput(10) <= '1';
	WAIT FOR 60000 ps;
	imput(10) <= '0';
	WAIT FOR 30000 ps;
	imput(10) <= '1';
	WAIT FOR 60000 ps;
	imput(10) <= '0';
	WAIT FOR 60000 ps;
	imput(10) <= '1';
	WAIT FOR 30000 ps;
	imput(10) <= '0';
	WAIT FOR 60000 ps;
	imput(10) <= '1';
	WAIT FOR 30000 ps;
	imput(10) <= '0';
	WAIT FOR 30000 ps;
	imput(10) <= '1';
	WAIT FOR 30000 ps;
	imput(10) <= '0';
	WAIT FOR 30000 ps;
	imput(10) <= '1';
	WAIT FOR 30000 ps;
	imput(10) <= '0';
	WAIT FOR 30000 ps;
	imput(10) <= '1';
	WAIT FOR 60000 ps;
	imput(10) <= '0';
	WAIT FOR 60000 ps;
	imput(10) <= '1';
	WAIT FOR 30000 ps;
	imput(10) <= '0';
	WAIT FOR 120000 ps;
	imput(10) <= '1';
	WAIT FOR 120000 ps;
	imput(10) <= '0';
WAIT;
END PROCESS t_prcs_imput_10;
-- imput[9]
t_prcs_imput_9: PROCESS
BEGIN
	imput(9) <= '1';
	WAIT FOR 60000 ps;
	imput(9) <= '0';
	WAIT FOR 60000 ps;
	imput(9) <= '1';
	WAIT FOR 30000 ps;
	imput(9) <= '0';
	WAIT FOR 30000 ps;
	imput(9) <= '1';
	WAIT FOR 30000 ps;
	imput(9) <= '0';
	WAIT FOR 270000 ps;
	imput(9) <= '1';
	WAIT FOR 30000 ps;
	imput(9) <= '0';
	WAIT FOR 30000 ps;
	imput(9) <= '1';
	WAIT FOR 30000 ps;
	imput(9) <= '0';
	WAIT FOR 30000 ps;
	imput(9) <= '1';
	WAIT FOR 60000 ps;
	imput(9) <= '0';
	WAIT FOR 90000 ps;
	imput(9) <= '1';
	WAIT FOR 30000 ps;
	imput(9) <= '0';
	WAIT FOR 30000 ps;
	imput(9) <= '1';
	WAIT FOR 60000 ps;
	imput(9) <= '0';
	WAIT FOR 60000 ps;
	imput(9) <= '1';
WAIT;
END PROCESS t_prcs_imput_9;
-- imput[8]
t_prcs_imput_8: PROCESS
BEGIN
	imput(8) <= '0';
	WAIT FOR 90000 ps;
	imput(8) <= '1';
	WAIT FOR 30000 ps;
	imput(8) <= '0';
	WAIT FOR 30000 ps;
	imput(8) <= '1';
	WAIT FOR 30000 ps;
	imput(8) <= '0';
	WAIT FOR 90000 ps;
	imput(8) <= '1';
	WAIT FOR 120000 ps;
	imput(8) <= '0';
	WAIT FOR 60000 ps;
	imput(8) <= '1';
	WAIT FOR 30000 ps;
	imput(8) <= '0';
	WAIT FOR 30000 ps;
	imput(8) <= '1';
	WAIT FOR 30000 ps;
	imput(8) <= '0';
	WAIT FOR 30000 ps;
	imput(8) <= '1';
	WAIT FOR 90000 ps;
	imput(8) <= '0';
	WAIT FOR 90000 ps;
	imput(8) <= '1';
	WAIT FOR 30000 ps;
	imput(8) <= '0';
	WAIT FOR 30000 ps;
	imput(8) <= '1';
	WAIT FOR 30000 ps;
	imput(8) <= '0';
	WAIT FOR 30000 ps;
	imput(8) <= '1';
	WAIT FOR 30000 ps;
	imput(8) <= '0';
	WAIT FOR 30000 ps;
	imput(8) <= '1';
	WAIT FOR 60000 ps;
	imput(8) <= '0';
WAIT;
END PROCESS t_prcs_imput_8;
-- imput[7]
t_prcs_imput_7: PROCESS
BEGIN
	imput(7) <= '0';
	WAIT FOR 150000 ps;
	imput(7) <= '1';
	WAIT FOR 30000 ps;
	imput(7) <= '0';
	WAIT FOR 30000 ps;
	imput(7) <= '1';
	WAIT FOR 90000 ps;
	imput(7) <= '0';
	WAIT FOR 30000 ps;
	imput(7) <= '1';
	WAIT FOR 30000 ps;
	imput(7) <= '0';
	WAIT FOR 210000 ps;
	imput(7) <= '1';
	WAIT FOR 150000 ps;
	imput(7) <= '0';
	WAIT FOR 60000 ps;
	imput(7) <= '1';
	WAIT FOR 60000 ps;
	imput(7) <= '0';
	WAIT FOR 60000 ps;
	imput(7) <= '1';
	WAIT FOR 60000 ps;
	imput(7) <= '0';
	WAIT FOR 30000 ps;
	imput(7) <= '1';
WAIT;
END PROCESS t_prcs_imput_7;
-- imput[6]
t_prcs_imput_6: PROCESS
BEGIN
	imput(6) <= '1';
	WAIT FOR 30000 ps;
	imput(6) <= '0';
	WAIT FOR 90000 ps;
	imput(6) <= '1';
	WAIT FOR 60000 ps;
	imput(6) <= '0';
	WAIT FOR 60000 ps;
	imput(6) <= '1';
	WAIT FOR 30000 ps;
	imput(6) <= '0';
	WAIT FOR 210000 ps;
	imput(6) <= '1';
	WAIT FOR 60000 ps;
	imput(6) <= '0';
	WAIT FOR 60000 ps;
	imput(6) <= '1';
	WAIT FOR 180000 ps;
	imput(6) <= '0';
WAIT;
END PROCESS t_prcs_imput_6;
-- imput[5]
t_prcs_imput_5: PROCESS
BEGIN
	imput(5) <= '1';
	WAIT FOR 30000 ps;
	imput(5) <= '0';
	WAIT FOR 30000 ps;
	imput(5) <= '1';
	WAIT FOR 30000 ps;
	imput(5) <= '0';
	WAIT FOR 90000 ps;
	imput(5) <= '1';
	WAIT FOR 30000 ps;
	imput(5) <= '0';
	WAIT FOR 60000 ps;
	imput(5) <= '1';
	WAIT FOR 30000 ps;
	imput(5) <= '0';
	WAIT FOR 30000 ps;
	imput(5) <= '1';
	WAIT FOR 90000 ps;
	imput(5) <= '0';
	WAIT FOR 30000 ps;
	imput(5) <= '1';
	WAIT FOR 90000 ps;
	imput(5) <= '0';
	WAIT FOR 60000 ps;
	imput(5) <= '1';
	WAIT FOR 30000 ps;
	imput(5) <= '0';
	WAIT FOR 30000 ps;
	imput(5) <= '1';
	WAIT FOR 30000 ps;
	imput(5) <= '0';
	WAIT FOR 30000 ps;
	imput(5) <= '1';
	WAIT FOR 30000 ps;
	imput(5) <= '0';
	WAIT FOR 30000 ps;
	imput(5) <= '1';
	WAIT FOR 30000 ps;
	imput(5) <= '0';
	WAIT FOR 30000 ps;
	imput(5) <= '1';
WAIT;
END PROCESS t_prcs_imput_5;
-- imput[4]
t_prcs_imput_4: PROCESS
BEGIN
	imput(4) <= '0';
	WAIT FOR 30000 ps;
	imput(4) <= '1';
	WAIT FOR 60000 ps;
	imput(4) <= '0';
	WAIT FOR 210000 ps;
	imput(4) <= '1';
	WAIT FOR 90000 ps;
	imput(4) <= '0';
	WAIT FOR 90000 ps;
	imput(4) <= '1';
	WAIT FOR 30000 ps;
	imput(4) <= '0';
	WAIT FOR 120000 ps;
	imput(4) <= '1';
	WAIT FOR 60000 ps;
	imput(4) <= '0';
	WAIT FOR 30000 ps;
	imput(4) <= '1';
	WAIT FOR 60000 ps;
	imput(4) <= '0';
	WAIT FOR 30000 ps;
	imput(4) <= '1';
	WAIT FOR 30000 ps;
	imput(4) <= '0';
	WAIT FOR 60000 ps;
	imput(4) <= '1';
	WAIT FOR 30000 ps;
	imput(4) <= '0';
	WAIT FOR 60000 ps;
	imput(4) <= '1';
WAIT;
END PROCESS t_prcs_imput_4;
-- imput[3]
t_prcs_imput_3: PROCESS
BEGIN
	imput(3) <= '0';
	WAIT FOR 150000 ps;
	imput(3) <= '1';
	WAIT FOR 60000 ps;
	imput(3) <= '0';
	WAIT FOR 60000 ps;
	imput(3) <= '1';
	WAIT FOR 30000 ps;
	imput(3) <= '0';
	WAIT FOR 30000 ps;
	imput(3) <= '1';
	WAIT FOR 90000 ps;
	imput(3) <= '0';
	WAIT FOR 90000 ps;
	imput(3) <= '1';
	WAIT FOR 30000 ps;
	imput(3) <= '0';
	WAIT FOR 30000 ps;
	imput(3) <= '1';
	WAIT FOR 30000 ps;
	imput(3) <= '0';
	WAIT FOR 120000 ps;
	imput(3) <= '1';
	WAIT FOR 30000 ps;
	imput(3) <= '0';
	WAIT FOR 120000 ps;
	imput(3) <= '1';
	WAIT FOR 60000 ps;
	imput(3) <= '0';
	WAIT FOR 30000 ps;
	imput(3) <= '1';
WAIT;
END PROCESS t_prcs_imput_3;
-- imput[2]
t_prcs_imput_2: PROCESS
BEGIN
	imput(2) <= '0';
	WAIT FOR 30000 ps;
	imput(2) <= '1';
	WAIT FOR 60000 ps;
	imput(2) <= '0';
	WAIT FOR 30000 ps;
	imput(2) <= '1';
	WAIT FOR 60000 ps;
	imput(2) <= '0';
	WAIT FOR 30000 ps;
	imput(2) <= '1';
	WAIT FOR 150000 ps;
	imput(2) <= '0';
	WAIT FOR 30000 ps;
	imput(2) <= '1';
	WAIT FOR 30000 ps;
	imput(2) <= '0';
	WAIT FOR 30000 ps;
	imput(2) <= '1';
	WAIT FOR 120000 ps;
	imput(2) <= '0';
	WAIT FOR 150000 ps;
	imput(2) <= '1';
	WAIT FOR 30000 ps;
	imput(2) <= '0';
	WAIT FOR 30000 ps;
	imput(2) <= '1';
	WAIT FOR 60000 ps;
	imput(2) <= '0';
	WAIT FOR 30000 ps;
	imput(2) <= '1';
	WAIT FOR 30000 ps;
	imput(2) <= '0';
	WAIT FOR 60000 ps;
	imput(2) <= '1';
WAIT;
END PROCESS t_prcs_imput_2;
-- imput[1]
t_prcs_imput_1: PROCESS
BEGIN
	imput(1) <= '0';
	WAIT FOR 30000 ps;
	imput(1) <= '1';
	WAIT FOR 30000 ps;
	imput(1) <= '0';
	WAIT FOR 150000 ps;
	imput(1) <= '1';
	WAIT FOR 30000 ps;
	imput(1) <= '0';
	WAIT FOR 60000 ps;
	imput(1) <= '1';
	WAIT FOR 30000 ps;
	imput(1) <= '0';
	WAIT FOR 30000 ps;
	imput(1) <= '1';
	WAIT FOR 150000 ps;
	imput(1) <= '0';
	WAIT FOR 360000 ps;
	imput(1) <= '1';
	WAIT FOR 60000 ps;
	imput(1) <= '0';
	WAIT FOR 30000 ps;
	imput(1) <= '1';
	WAIT FOR 30000 ps;
	imput(1) <= '0';
WAIT;
END PROCESS t_prcs_imput_1;
-- imput[0]
t_prcs_imput_0: PROCESS
BEGIN
	imput(0) <= '1';
	WAIT FOR 60000 ps;
	imput(0) <= '0';
	WAIT FOR 30000 ps;
	imput(0) <= '1';
	WAIT FOR 60000 ps;
	imput(0) <= '0';
	WAIT FOR 60000 ps;
	imput(0) <= '1';
	WAIT FOR 60000 ps;
	imput(0) <= '0';
	WAIT FOR 60000 ps;
	imput(0) <= '1';
	WAIT FOR 60000 ps;
	imput(0) <= '0';
	WAIT FOR 30000 ps;
	imput(0) <= '1';
	WAIT FOR 60000 ps;
	imput(0) <= '0';
	WAIT FOR 30000 ps;
	imput(0) <= '1';
	WAIT FOR 30000 ps;
	imput(0) <= '0';
	WAIT FOR 60000 ps;
	imput(0) <= '1';
	WAIT FOR 120000 ps;
	imput(0) <= '0';
	WAIT FOR 30000 ps;
	imput(0) <= '1';
	WAIT FOR 30000 ps;
	imput(0) <= '0';
	WAIT FOR 90000 ps;
	imput(0) <= '1';
	WAIT FOR 30000 ps;
	imput(0) <= '0';
	WAIT FOR 90000 ps;
	imput(0) <= '1';
WAIT;
END PROCESS t_prcs_imput_0;
-- Sel[3]
t_prcs_Sel_3: PROCESS
BEGIN
	Sel(3) <= '0';
	WAIT FOR 60000 ps;
	Sel(3) <= '1';
	WAIT FOR 90000 ps;
	Sel(3) <= '0';
	WAIT FOR 30000 ps;
	Sel(3) <= '1';
	WAIT FOR 30000 ps;
	Sel(3) <= '0';
	WAIT FOR 120000 ps;
	Sel(3) <= '1';
	WAIT FOR 30000 ps;
	Sel(3) <= '0';
	WAIT FOR 30000 ps;
	Sel(3) <= '1';
	WAIT FOR 60000 ps;
	Sel(3) <= '0';
	WAIT FOR 30000 ps;
	Sel(3) <= '1';
	WAIT FOR 30000 ps;
	Sel(3) <= '0';
	WAIT FOR 60000 ps;
	Sel(3) <= '1';
	WAIT FOR 30000 ps;
	Sel(3) <= '0';
	WAIT FOR 30000 ps;
	Sel(3) <= '1';
	WAIT FOR 60000 ps;
	Sel(3) <= '0';
	WAIT FOR 120000 ps;
	Sel(3) <= '1';
	WAIT FOR 60000 ps;
	Sel(3) <= '0';
	WAIT FOR 90000 ps;
	Sel(3) <= '1';
	WAIT FOR 30000 ps;
	Sel(3) <= '0';
WAIT;
END PROCESS t_prcs_Sel_3;
-- Sel[2]
t_prcs_Sel_2: PROCESS
BEGIN
	Sel(2) <= '1';
	WAIT FOR 90000 ps;
	Sel(2) <= '0';
	WAIT FOR 30000 ps;
	Sel(2) <= '1';
	WAIT FOR 120000 ps;
	Sel(2) <= '0';
	WAIT FOR 30000 ps;
	Sel(2) <= '1';
	WAIT FOR 30000 ps;
	Sel(2) <= '0';
	WAIT FOR 30000 ps;
	Sel(2) <= '1';
	WAIT FOR 60000 ps;
	Sel(2) <= '0';
	WAIT FOR 60000 ps;
	Sel(2) <= '1';
	WAIT FOR 60000 ps;
	Sel(2) <= '0';
	WAIT FOR 30000 ps;
	Sel(2) <= '1';
	WAIT FOR 60000 ps;
	Sel(2) <= '0';
	WAIT FOR 30000 ps;
	Sel(2) <= '1';
	WAIT FOR 30000 ps;
	Sel(2) <= '0';
	WAIT FOR 30000 ps;
	Sel(2) <= '1';
	WAIT FOR 60000 ps;
	Sel(2) <= '0';
	WAIT FOR 30000 ps;
	Sel(2) <= '1';
	WAIT FOR 150000 ps;
	Sel(2) <= '0';
WAIT;
END PROCESS t_prcs_Sel_2;
-- Sel[1]
t_prcs_Sel_1: PROCESS
BEGIN
	Sel(1) <= '1';
	WAIT FOR 30000 ps;
	Sel(1) <= '0';
	WAIT FOR 90000 ps;
	Sel(1) <= '1';
	WAIT FOR 120000 ps;
	Sel(1) <= '0';
	WAIT FOR 60000 ps;
	Sel(1) <= '1';
	WAIT FOR 60000 ps;
	Sel(1) <= '0';
	WAIT FOR 60000 ps;
	Sel(1) <= '1';
	WAIT FOR 90000 ps;
	Sel(1) <= '0';
	WAIT FOR 30000 ps;
	Sel(1) <= '1';
	WAIT FOR 30000 ps;
	Sel(1) <= '0';
	WAIT FOR 30000 ps;
	Sel(1) <= '1';
	WAIT FOR 30000 ps;
	Sel(1) <= '0';
	WAIT FOR 180000 ps;
	Sel(1) <= '1';
	WAIT FOR 60000 ps;
	Sel(1) <= '0';
	WAIT FOR 30000 ps;
	Sel(1) <= '1';
	WAIT FOR 30000 ps;
	Sel(1) <= '0';
	WAIT FOR 60000 ps;
	Sel(1) <= '1';
WAIT;
END PROCESS t_prcs_Sel_1;
-- Sel[0]
t_prcs_Sel_0: PROCESS
BEGIN
	Sel(0) <= '1';
	WAIT FOR 90000 ps;
	Sel(0) <= '0';
	WAIT FOR 90000 ps;
	Sel(0) <= '1';
	WAIT FOR 30000 ps;
	Sel(0) <= '0';
	WAIT FOR 60000 ps;
	Sel(0) <= '1';
	WAIT FOR 30000 ps;
	Sel(0) <= '0';
	WAIT FOR 120000 ps;
	Sel(0) <= '1';
	WAIT FOR 30000 ps;
	Sel(0) <= '0';
	WAIT FOR 120000 ps;
	Sel(0) <= '1';
	WAIT FOR 30000 ps;
	Sel(0) <= '0';
	WAIT FOR 60000 ps;
	Sel(0) <= '1';
	WAIT FOR 30000 ps;
	Sel(0) <= '0';
	WAIT FOR 30000 ps;
	Sel(0) <= '1';
	WAIT FOR 30000 ps;
	Sel(0) <= '0';
	WAIT FOR 30000 ps;
	Sel(0) <= '1';
	WAIT FOR 30000 ps;
	Sel(0) <= '0';
	WAIT FOR 30000 ps;
	Sel(0) <= '1';
	WAIT FOR 30000 ps;
	Sel(0) <= '0';
	WAIT FOR 60000 ps;
	Sel(0) <= '1';
	WAIT FOR 30000 ps;
	Sel(0) <= '0';
	WAIT FOR 30000 ps;
	Sel(0) <= '1';
WAIT;
END PROCESS t_prcs_Sel_0;
END mux_16_1_arch;
