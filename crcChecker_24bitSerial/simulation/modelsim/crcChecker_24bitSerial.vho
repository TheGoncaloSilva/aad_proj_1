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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/18/2023 15:43:42"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control IS
    PORT (
	nGRst : IN std_logic;
	clk : IN std_logic;
	add : IN std_logic_vector(4 DOWNTO 0);
	nRst : OUT std_logic;
	nSetO : OUT std_logic;
	clkO : OUT std_logic
	);
END control;

-- Design Ports Information
-- nRst	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSetO	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkO	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nGRst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_add : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_nRst : std_logic;
SIGNAL ww_nSetO : std_logic;
SIGNAL ww_clkO : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \add[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \add[3]~input_o\ : std_logic;
SIGNAL \add[2]~input_o\ : std_logic;
SIGNAL \add[1]~input_o\ : std_logic;
SIGNAL \add[4]~input_o\ : std_logic;
SIGNAL \nad2|y~0_combout\ : std_logic;
SIGNAL \nad2|y~1_combout\ : std_logic;
SIGNAL \nad4|y~0_combout\ : std_logic;
SIGNAL \nad4|y~1_combout\ : std_logic;
SIGNAL \nord|y~0_combout\ : std_logic;
SIGNAL \ALT_INV_nGRst~input_o\ : std_logic;
SIGNAL \ALT_INV_add[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_add[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_add[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_add[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_add[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \nord|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \nad4|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \nad4|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \nad2|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \nad2|ALT_INV_y~0_combout\ : std_logic;

BEGIN

ww_nGRst <= nGRst;
ww_clk <= clk;
ww_add <= add;
nRst <= ww_nRst;
nSetO <= ww_nSetO;
clkO <= ww_clkO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_nGRst~input_o\ <= NOT \nGRst~input_o\;
\ALT_INV_add[2]~input_o\ <= NOT \add[2]~input_o\;
\ALT_INV_add[1]~input_o\ <= NOT \add[1]~input_o\;
\ALT_INV_add[4]~input_o\ <= NOT \add[4]~input_o\;
\ALT_INV_add[3]~input_o\ <= NOT \add[3]~input_o\;
\ALT_INV_add[0]~input_o\ <= NOT \add[0]~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\nord|ALT_INV_y~0_combout\ <= NOT \nord|y~0_combout\;
\nad4|ALT_INV_y~1_combout\ <= NOT \nad4|y~1_combout\;
\nad4|ALT_INV_y~0_combout\ <= NOT \nad4|y~0_combout\;
\nad2|ALT_INV_y~1_combout\ <= NOT \nad2|y~1_combout\;
\nad2|ALT_INV_y~0_combout\ <= NOT \nad2|y~0_combout\;

-- Location: IOOBUF_X89_Y35_N96
\nRst~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \nad2|ALT_INV_y~1_combout\,
	devoe => ww_devoe,
	o => ww_nRst);

-- Location: IOOBUF_X89_Y35_N45
\nSetO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \nad4|ALT_INV_y~1_combout\,
	devoe => ww_devoe,
	o => ww_nSetO);

-- Location: IOOBUF_X89_Y37_N22
\clkO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \nord|ALT_INV_y~0_combout\,
	devoe => ww_devoe,
	o => ww_clkO);

-- Location: IOIBUF_X89_Y38_N21
\add[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(0),
	o => \add[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\nGRst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\add[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(3),
	o => \add[3]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\add[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(2),
	o => \add[2]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\add[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(1),
	o => \add[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\add[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(4),
	o => \add[4]~input_o\);

-- Location: LABCELL_X88_Y36_N30
\nad2|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nad2|y~0_combout\ = ( \add[4]~input_o\ & ( (\add[3]~input_o\ & (!\add[2]~input_o\ & !\add[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add[3]~input_o\,
	datac => \ALT_INV_add[2]~input_o\,
	datad => \ALT_INV_add[1]~input_o\,
	dataf => \ALT_INV_add[4]~input_o\,
	combout => \nad2|y~0_combout\);

-- Location: LABCELL_X88_Y36_N33
\nad2|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nad2|y~1_combout\ = ( \nad2|y~0_combout\ & ( (\clk~input_o\ & ((!\nGRst~input_o\) # (\add[0]~input_o\))) ) ) # ( !\nad2|y~0_combout\ & ( (\clk~input_o\ & !\nGRst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[0]~input_o\,
	datac => \ALT_INV_clk~input_o\,
	datad => \ALT_INV_nGRst~input_o\,
	dataf => \nad2|ALT_INV_y~0_combout\,
	combout => \nad2|y~1_combout\);

-- Location: LABCELL_X88_Y36_N9
\nad4|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nad4|y~0_combout\ = ( !\add[4]~input_o\ & ( (\clk~input_o\ & (!\add[3]~input_o\ & \add[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => \ALT_INV_add[3]~input_o\,
	datad => \ALT_INV_add[0]~input_o\,
	dataf => \ALT_INV_add[4]~input_o\,
	combout => \nad4|y~0_combout\);

-- Location: LABCELL_X88_Y36_N6
\nad4|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \nad4|y~1_combout\ = ( \nad4|y~0_combout\ & ( (!\add[2]~input_o\ & ((!\add[1]~input_o\) # ((\clk~input_o\ & !\nGRst~input_o\)))) # (\add[2]~input_o\ & (\clk~input_o\ & (!\nGRst~input_o\))) ) ) # ( !\nad4|y~0_combout\ & ( (\clk~input_o\ & !\nGRst~input_o\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000010111010001100001011101000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[2]~input_o\,
	datab => \ALT_INV_clk~input_o\,
	datac => \ALT_INV_nGRst~input_o\,
	datad => \ALT_INV_add[1]~input_o\,
	dataf => \nad4|ALT_INV_y~0_combout\,
	combout => \nad4|y~1_combout\);

-- Location: LABCELL_X88_Y36_N42
\nord|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nord|y~0_combout\ = ( \clk~input_o\ & ( \add[0]~input_o\ ) ) # ( !\clk~input_o\ & ( \add[0]~input_o\ ) ) # ( \clk~input_o\ & ( !\add[0]~input_o\ ) ) # ( !\clk~input_o\ & ( !\add[0]~input_o\ & ( ((!\add[3]~input_o\) # ((!\add[4]~input_o\) # 
-- (\add[1]~input_o\))) # (\add[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[2]~input_o\,
	datab => \ALT_INV_add[3]~input_o\,
	datac => \ALT_INV_add[4]~input_o\,
	datad => \ALT_INV_add[1]~input_o\,
	datae => \ALT_INV_clk~input_o\,
	dataf => \ALT_INV_add[0]~input_o\,
	combout => \nord|y~0_combout\);

-- Location: LABCELL_X74_Y29_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


