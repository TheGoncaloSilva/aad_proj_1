-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/09/2023 11:57:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cyclicRecCheck_24bitParallel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cyclicRecCheck_24bitParallel_vhd_vec_tst IS
END cyclicRecCheck_24bitParallel_vhd_vec_tst;
ARCHITECTURE cyclicRecCheck_24bitParallel_arch OF cyclicRecCheck_24bitParallel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL fInput : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL fOutput : STD_LOGIC_VECTOR(23 DOWNTO 0);
COMPONENT cyclicRecCheck_24bitParallel
	PORT (
	fInput : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	fOutput : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : cyclicRecCheck_24bitParallel
	PORT MAP (
-- list connections between master ports and signals
	fInput => fInput,
	fOutput => fOutput
	);
-- fInput[15]
t_prcs_fInput_15: PROCESS
BEGIN
	fInput(15) <= '1';
WAIT;
END PROCESS t_prcs_fInput_15;
-- fInput[14]
t_prcs_fInput_14: PROCESS
BEGIN
	fInput(14) <= '0';
WAIT;
END PROCESS t_prcs_fInput_14;
-- fInput[13]
t_prcs_fInput_13: PROCESS
BEGIN
	fInput(13) <= '1';
WAIT;
END PROCESS t_prcs_fInput_13;
-- fInput[12]
t_prcs_fInput_12: PROCESS
BEGIN
	fInput(12) <= '0';
WAIT;
END PROCESS t_prcs_fInput_12;
-- fInput[11]
t_prcs_fInput_11: PROCESS
BEGIN
	fInput(11) <= '1';
WAIT;
END PROCESS t_prcs_fInput_11;
-- fInput[10]
t_prcs_fInput_10: PROCESS
BEGIN
	fInput(10) <= '0';
WAIT;
END PROCESS t_prcs_fInput_10;
-- fInput[9]
t_prcs_fInput_9: PROCESS
BEGIN
	fInput(9) <= '1';
WAIT;
END PROCESS t_prcs_fInput_9;
-- fInput[8]
t_prcs_fInput_8: PROCESS
BEGIN
	fInput(8) <= '0';
WAIT;
END PROCESS t_prcs_fInput_8;
-- fInput[7]
t_prcs_fInput_7: PROCESS
BEGIN
	fInput(7) <= '1';
WAIT;
END PROCESS t_prcs_fInput_7;
-- fInput[6]
t_prcs_fInput_6: PROCESS
BEGIN
	fInput(6) <= '0';
WAIT;
END PROCESS t_prcs_fInput_6;
-- fInput[5]
t_prcs_fInput_5: PROCESS
BEGIN
	fInput(5) <= '1';
WAIT;
END PROCESS t_prcs_fInput_5;
-- fInput[4]
t_prcs_fInput_4: PROCESS
BEGIN
	fInput(4) <= '0';
WAIT;
END PROCESS t_prcs_fInput_4;
-- fInput[3]
t_prcs_fInput_3: PROCESS
BEGIN
	fInput(3) <= '1';
WAIT;
END PROCESS t_prcs_fInput_3;
-- fInput[2]
t_prcs_fInput_2: PROCESS
BEGIN
	fInput(2) <= '0';
WAIT;
END PROCESS t_prcs_fInput_2;
-- fInput[1]
t_prcs_fInput_1: PROCESS
BEGIN
	fInput(1) <= '1';
WAIT;
END PROCESS t_prcs_fInput_1;
-- fInput[0]
t_prcs_fInput_0: PROCESS
BEGIN
	fInput(0) <= '0';
WAIT;
END PROCESS t_prcs_fInput_0;
END cyclicRecCheck_24bitParallel_arch;
