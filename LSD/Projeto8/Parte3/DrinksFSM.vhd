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

-- Generated by Quartus Prime Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition
-- Created on Sun May 16 18:28:43 2021

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DrinksFSM IS
    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC := '0';
        M20 : IN STD_LOGIC := '0';
        M50 : IN STD_LOGIC := '0';
        Drink : OUT STD_LOGIC
    );
END DrinksFSM;

ARCHITECTURE BEHAVIOR OF DrinksFSM IS
    TYPE type_fstate IS (S0,S1,S2,S3,S4,S5);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clk,reg_fstate)
    BEGIN
        IF (clk='1' AND clk'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,M20,M50)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= S0;
            Drink <= '0';
        ELSE
            Drink <= '0';
            CASE fstate IS
                WHEN S0 =>
                    IF (((M20 = '1') AND NOT((M50 = '1')))) THEN
                        reg_fstate <= S1;
                    ELSIF ((NOT((M20 = '1')) AND (M50 = '1'))) THEN
                        reg_fstate <= S3;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= S0;
                    END IF;

                    Drink <= '0';
                WHEN S1 =>
                    IF (((M20 = '1') AND NOT((M50 = '1')))) THEN
                        reg_fstate <= S2;
                    ELSIF ((NOT((M20 = '1')) AND (M50 = '1'))) THEN
                        reg_fstate <= S4;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= S1;
                    END IF;

                    Drink <= '0';
                WHEN S2 =>
                    IF (((M20 = '1') AND NOT((M50 = '1')))) THEN
                        reg_fstate <= S3;
                    ELSIF ((NOT((M20 = '1')) AND (M50 = '1'))) THEN
                        reg_fstate <= S5;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= S2;
                    END IF;

                    Drink <= '0';
                WHEN S3 =>
                    IF (((M20 = '1') AND NOT((M50 = '1')))) THEN
                        reg_fstate <= S4;
                    ELSIF ((NOT((M20 = '1')) AND (M50 = '1'))) THEN
                        reg_fstate <= S5;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= S3;
                    END IF;

                    Drink <= '0';
                WHEN S4 =>
                    IF (((M20 = '1') OR (M50 = '1'))) THEN
                        reg_fstate <= S5;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= S4;
                    END IF;

                    Drink <= '0';
                WHEN S5 =>
                    reg_fstate <= S0;

                    Drink <= '1';
                WHEN OTHERS => 
                    Drink <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;