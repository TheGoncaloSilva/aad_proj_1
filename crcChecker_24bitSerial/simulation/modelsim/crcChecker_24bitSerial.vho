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

-- DATE "11/18/2023 13:06:23"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	crcChecker_24bitSerial IS
    PORT (
	nGRst : IN std_logic;
	clk : IN std_logic;
	dIn : IN std_logic;
	err : BUFFER std_logic
	);
END crcChecker_24bitSerial;

-- Design Ports Information
-- err	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF crcChecker_24bitSerial IS
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
SIGNAL ww_dIn : std_logic;
SIGNAL ww_err : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \bc|ff0|Q~0_combout\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \bc|ff1|Q~0_combout\ : std_logic;
SIGNAL \bc|ff1|Q~q\ : std_logic;
SIGNAL \bc|ff2|Q~0_combout\ : std_logic;
SIGNAL \bc|ff2|Q~q\ : std_logic;
SIGNAL \bc|ff3|Q~0_combout\ : std_logic;
SIGNAL \bc|ff3|Q~q\ : std_logic;
SIGNAL \con|nad2|y~0_combout\ : std_logic;
SIGNAL \con|nad2|y~1_combout\ : std_logic;
SIGNAL \bc|ff0|Q~q\ : std_logic;
SIGNAL \bc|ff4|Q~0_combout\ : std_logic;
SIGNAL \bc|ff4|Q~q\ : std_logic;
SIGNAL \con|nord|y~0_combout\ : std_logic;
SIGNAL \lsfr|ff7|Q~q\ : std_logic;
SIGNAL \lsfr|ff6|Q~q\ : std_logic;
SIGNAL \lsfr|ff7|Q~0_combout\ : std_logic;
SIGNAL \lsfr|ff7|Q~DUPLICATE_q\ : std_logic;
SIGNAL \dIn~input_o\ : std_logic;
SIGNAL \lsfr|xor0|y~combout\ : std_logic;
SIGNAL \lsfr|ff0|Q~q\ : std_logic;
SIGNAL \lsfr|xor1|y~combout\ : std_logic;
SIGNAL \lsfr|ff1|Q~DUPLICATE_q\ : std_logic;
SIGNAL \lsfr|xor2|y~combout\ : std_logic;
SIGNAL \lsfr|ff2|Q~DUPLICATE_q\ : std_logic;
SIGNAL \lsfr|ff3|Q~DUPLICATE_q\ : std_logic;
SIGNAL \lsfr|ff4|Q~q\ : std_logic;
SIGNAL \lsfr|xor3|y~combout\ : std_logic;
SIGNAL \lsfr|ff5|Q~q\ : std_logic;
SIGNAL \lsfr|ff2|Q~q\ : std_logic;
SIGNAL \lsfr|ff1|Q~q\ : std_logic;
SIGNAL \lsfr|ff3|Q~q\ : std_logic;
SIGNAL \comp|or7|y~0_combout\ : std_logic;
SIGNAL \comp|or7|y~combout\ : std_logic;
SIGNAL \con|nad4|y~0_combout\ : std_logic;
SIGNAL \ffP|Q~q\ : std_logic;
SIGNAL \lsfr|ff1|ALT_INV_Q~DUPLICATE_q\ : std_logic;
SIGNAL \lsfr|ff7|ALT_INV_Q~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_dIn~input_o\ : std_logic;
SIGNAL \ALT_INV_nGRst~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \con|nad2|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \con|nad4|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \bc|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \bc|ff4|ALT_INV_Q~q\ : std_logic;
SIGNAL \bc|ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \con|nad2|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \bc|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \bc|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \comp|or7|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \lsfr|ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \lsfr|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \lsfr|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \lsfr|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \lsfr|ff7|ALT_INV_Q~q\ : std_logic;
SIGNAL \lsfr|ff6|ALT_INV_Q~q\ : std_logic;
SIGNAL \lsfr|ff5|ALT_INV_Q~q\ : std_logic;
SIGNAL \lsfr|ff4|ALT_INV_Q~q\ : std_logic;
SIGNAL \ffP|ALT_INV_Q~q\ : std_logic;

BEGIN

ww_nGRst <= nGRst;
ww_clk <= clk;
ww_dIn <= dIn;
err <= ww_err;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\lsfr|ff1|ALT_INV_Q~DUPLICATE_q\ <= NOT \lsfr|ff1|Q~DUPLICATE_q\;
\lsfr|ff7|ALT_INV_Q~DUPLICATE_q\ <= NOT \lsfr|ff7|Q~DUPLICATE_q\;
\ALT_INV_dIn~input_o\ <= NOT \dIn~input_o\;
\ALT_INV_nGRst~input_o\ <= NOT \nGRst~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\con|nad2|ALT_INV_y~1_combout\ <= NOT \con|nad2|y~1_combout\;
\con|nad4|ALT_INV_y~0_combout\ <= NOT \con|nad4|y~0_combout\;
\bc|ff0|ALT_INV_Q~q\ <= NOT \bc|ff0|Q~q\;
\bc|ff4|ALT_INV_Q~q\ <= NOT \bc|ff4|Q~q\;
\bc|ff3|ALT_INV_Q~q\ <= NOT \bc|ff3|Q~q\;
\con|nad2|ALT_INV_y~0_combout\ <= NOT \con|nad2|y~0_combout\;
\bc|ff2|ALT_INV_Q~q\ <= NOT \bc|ff2|Q~q\;
\bc|ff1|ALT_INV_Q~q\ <= NOT \bc|ff1|Q~q\;
\comp|or7|ALT_INV_y~0_combout\ <= NOT \comp|or7|y~0_combout\;
\lsfr|ff3|ALT_INV_Q~q\ <= NOT \lsfr|ff3|Q~q\;
\lsfr|ff2|ALT_INV_Q~q\ <= NOT \lsfr|ff2|Q~q\;
\lsfr|ff1|ALT_INV_Q~q\ <= NOT \lsfr|ff1|Q~q\;
\lsfr|ff0|ALT_INV_Q~q\ <= NOT \lsfr|ff0|Q~q\;
\lsfr|ff7|ALT_INV_Q~q\ <= NOT \lsfr|ff7|Q~q\;
\lsfr|ff6|ALT_INV_Q~q\ <= NOT \lsfr|ff6|Q~q\;
\lsfr|ff5|ALT_INV_Q~q\ <= NOT \lsfr|ff5|Q~q\;
\lsfr|ff4|ALT_INV_Q~q\ <= NOT \lsfr|ff4|Q~q\;
\ffP|ALT_INV_Q~q\ <= NOT \ffP|Q~q\;

-- Location: IOOBUF_X89_Y35_N79
\err~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ffP|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_err);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y35_N15
\bc|ff0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bc|ff0|Q~0_combout\ = !\bc|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bc|ff0|ALT_INV_Q~q\,
	combout => \bc|ff0|Q~0_combout\);

-- Location: IOIBUF_X89_Y35_N44
\nGRst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: LABCELL_X88_Y35_N39
\bc|ff1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bc|ff1|Q~0_combout\ = ( \bc|ff0|Q~q\ & ( !\bc|ff1|Q~q\ ) ) # ( !\bc|ff0|Q~q\ & ( \bc|ff1|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bc|ff1|ALT_INV_Q~q\,
	dataf => \bc|ff0|ALT_INV_Q~q\,
	combout => \bc|ff1|Q~0_combout\);

-- Location: FF_X88_Y35_N41
\bc|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bc|ff1|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff1|Q~q\);

-- Location: LABCELL_X88_Y35_N18
\bc|ff2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bc|ff2|Q~0_combout\ = ( \bc|ff1|Q~q\ & ( !\bc|ff0|Q~q\ $ (!\bc|ff2|Q~q\) ) ) # ( !\bc|ff1|Q~q\ & ( \bc|ff2|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bc|ff0|ALT_INV_Q~q\,
	datad => \bc|ff2|ALT_INV_Q~q\,
	dataf => \bc|ff1|ALT_INV_Q~q\,
	combout => \bc|ff2|Q~0_combout\);

-- Location: FF_X88_Y35_N20
\bc|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bc|ff2|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff2|Q~q\);

-- Location: LABCELL_X88_Y35_N12
\bc|ff3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bc|ff3|Q~0_combout\ = ( \bc|ff1|Q~q\ & ( !\bc|ff3|Q~q\ $ (((!\bc|ff0|Q~q\) # (!\bc|ff2|Q~q\))) ) ) # ( !\bc|ff1|Q~q\ & ( \bc|ff3|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bc|ff0|ALT_INV_Q~q\,
	datac => \bc|ff2|ALT_INV_Q~q\,
	datad => \bc|ff3|ALT_INV_Q~q\,
	dataf => \bc|ff1|ALT_INV_Q~q\,
	combout => \bc|ff3|Q~0_combout\);

-- Location: FF_X88_Y35_N14
\bc|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bc|ff3|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff3|Q~q\);

-- Location: LABCELL_X88_Y35_N51
\con|nad2|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \con|nad2|y~0_combout\ = ( !\bc|ff2|Q~q\ & ( !\bc|ff1|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bc|ff1|ALT_INV_Q~q\,
	dataf => \bc|ff2|ALT_INV_Q~q\,
	combout => \con|nad2|y~0_combout\);

-- Location: LABCELL_X88_Y35_N45
\con|nad2|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \con|nad2|y~1_combout\ = ( \con|nad2|y~0_combout\ & ( \clk~input_o\ & ( (!\nGRst~input_o\) # ((\bc|ff4|Q~q\ & (\bc|ff3|Q~q\ & \bc|ff0|Q~q\))) ) ) ) # ( !\con|nad2|y~0_combout\ & ( \clk~input_o\ & ( !\nGRst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff4|ALT_INV_Q~q\,
	datab => \ALT_INV_nGRst~input_o\,
	datac => \bc|ff3|ALT_INV_Q~q\,
	datad => \bc|ff0|ALT_INV_Q~q\,
	datae => \con|nad2|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \con|nad2|y~1_combout\);

-- Location: FF_X88_Y35_N17
\bc|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bc|ff0|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N0
\bc|ff4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bc|ff4|Q~0_combout\ = ( \bc|ff1|Q~q\ & ( !\bc|ff4|Q~q\ $ (((!\bc|ff0|Q~q\) # ((!\bc|ff3|Q~q\) # (!\bc|ff2|Q~q\)))) ) ) # ( !\bc|ff1|Q~q\ & ( \bc|ff4|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff0|ALT_INV_Q~q\,
	datab => \bc|ff3|ALT_INV_Q~q\,
	datac => \bc|ff2|ALT_INV_Q~q\,
	datad => \bc|ff4|ALT_INV_Q~q\,
	dataf => \bc|ff1|ALT_INV_Q~q\,
	combout => \bc|ff4|Q~0_combout\);

-- Location: FF_X88_Y35_N2
\bc|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bc|ff4|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff4|Q~q\);

-- Location: LABCELL_X88_Y35_N33
\con|nord|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \con|nord|y~0_combout\ = LCELL(( !\clk~input_o\ & ( !\bc|ff0|Q~q\ & ( (\bc|ff4|Q~q\ & (!\bc|ff1|Q~q\ & (\bc|ff3|Q~q\ & !\bc|ff2|Q~q\))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff4|ALT_INV_Q~q\,
	datab => \bc|ff1|ALT_INV_Q~q\,
	datac => \bc|ff3|ALT_INV_Q~q\,
	datad => \bc|ff2|ALT_INV_Q~q\,
	datae => \ALT_INV_clk~input_o\,
	dataf => \bc|ff0|ALT_INV_Q~q\,
	combout => \con|nord|y~0_combout\);

-- Location: FF_X88_Y35_N58
\lsfr|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lsfr|ff7|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsfr|ff7|Q~q\);

-- Location: FF_X88_Y35_N11
\lsfr|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lsfr|ff5|Q~q\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsfr|ff6|Q~q\);

-- Location: LABCELL_X88_Y35_N24
\lsfr|ff7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lsfr|ff7|Q~0_combout\ = ( \lsfr|ff6|Q~q\ & ( !\lsfr|ff7|Q~q\ ) ) # ( !\lsfr|ff6|Q~q\ & ( \lsfr|ff7|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lsfr|ff7|ALT_INV_Q~q\,
	dataf => \lsfr|ff6|ALT_INV_Q~q\,
	combout => \lsfr|ff7|Q~0_combout\);

-- Location: FF_X88_Y35_N59
\lsfr|ff7|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lsfr|ff7|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsfr|ff7|Q~DUPLICATE_q\);

-- Location: IOIBUF_X89_Y35_N95
\dIn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn,
	o => \dIn~input_o\);

-- Location: LABCELL_X88_Y35_N6
\lsfr|xor0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \lsfr|xor0|y~combout\ = ( \dIn~input_o\ & ( !\lsfr|ff7|Q~DUPLICATE_q\ ) ) # ( !\dIn~input_o\ & ( \lsfr|ff7|Q~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lsfr|ff7|ALT_INV_Q~DUPLICATE_q\,
	datae => \ALT_INV_dIn~input_o\,
	combout => \lsfr|xor0|y~combout\);

-- Location: FF_X88_Y35_N8
\lsfr|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lsfr|xor0|y~combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsfr|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N3
\lsfr|xor1|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \lsfr|xor1|y~combout\ = !\lsfr|ff0|Q~q\ $ (!\lsfr|ff7|Q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lsfr|ff0|ALT_INV_Q~q\,
	datad => \lsfr|ff7|ALT_INV_Q~q\,
	combout => \lsfr|xor1|y~combout\);

-- Location: FF_X88_Y35_N4
\lsfr|ff1|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lsfr|xor1|y~combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsfr|ff1|Q~DUPLICATE_q\);

-- Location: LABCELL_X88_Y35_N21
\lsfr|xor2|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \lsfr|xor2|y~combout\ = ( \lsfr|ff1|Q~DUPLICATE_q\ & ( !\lsfr|ff7|Q~DUPLICATE_q\ ) ) # ( !\lsfr|ff1|Q~DUPLICATE_q\ & ( \lsfr|ff7|Q~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lsfr|ff7|ALT_INV_Q~DUPLICATE_q\,
	dataf => \lsfr|ff1|ALT_INV_Q~DUPLICATE_q\,
	combout => \lsfr|xor2|y~combout\);

-- Location: FF_X88_Y35_N31
\lsfr|ff2|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lsfr|xor2|y~combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsfr|ff2|Q~DUPLICATE_q\);

-- Location: FF_X88_Y35_N43
\lsfr|ff3|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lsfr|ff2|Q~DUPLICATE_q\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsfr|ff3|Q~DUPLICATE_q\);

-- Location: FF_X88_Y35_N23
\lsfr|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lsfr|ff3|Q~DUPLICATE_q\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsfr|ff4|Q~q\);

-- Location: LABCELL_X88_Y35_N36
\lsfr|xor3|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \lsfr|xor3|y~combout\ = !\lsfr|ff4|Q~q\ $ (!\lsfr|ff7|Q~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lsfr|ff4|ALT_INV_Q~q\,
	datad => \lsfr|ff7|ALT_INV_Q~DUPLICATE_q\,
	combout => \lsfr|xor3|y~combout\);

-- Location: FF_X88_Y35_N26
\lsfr|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lsfr|xor3|y~combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsfr|ff5|Q~q\);

-- Location: FF_X88_Y35_N32
\lsfr|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lsfr|xor2|y~combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsfr|ff2|Q~q\);

-- Location: FF_X88_Y35_N5
\lsfr|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \lsfr|xor1|y~combout\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsfr|ff1|Q~q\);

-- Location: FF_X88_Y35_N44
\lsfr|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \lsfr|ff2|Q~DUPLICATE_q\,
	clrn => \con|nad2|ALT_INV_y~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsfr|ff3|Q~q\);

-- Location: LABCELL_X88_Y35_N27
\comp|or7|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|or7|y~0_combout\ = ( !\lsfr|ff3|Q~q\ & ( (!\lsfr|ff0|Q~q\ & (!\lsfr|ff2|Q~q\ & !\lsfr|ff1|Q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lsfr|ff0|ALT_INV_Q~q\,
	datac => \lsfr|ff2|ALT_INV_Q~q\,
	datad => \lsfr|ff1|ALT_INV_Q~q\,
	dataf => \lsfr|ff3|ALT_INV_Q~q\,
	combout => \comp|or7|y~0_combout\);

-- Location: LABCELL_X88_Y35_N48
\comp|or7|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|or7|y~combout\ = ( \comp|or7|y~0_combout\ & ( (!\lsfr|ff5|Q~q\ & (!\lsfr|ff6|Q~q\ & (!\lsfr|ff4|Q~q\ & !\lsfr|ff7|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lsfr|ff5|ALT_INV_Q~q\,
	datab => \lsfr|ff6|ALT_INV_Q~q\,
	datac => \lsfr|ff4|ALT_INV_Q~q\,
	datad => \lsfr|ff7|ALT_INV_Q~q\,
	dataf => \comp|or7|ALT_INV_y~0_combout\,
	combout => \comp|or7|y~combout\);

-- Location: LABCELL_X88_Y35_N54
\con|nad4|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \con|nad4|y~0_combout\ = ( \bc|ff0|Q~q\ & ( \con|nad2|y~0_combout\ & ( (\clk~input_o\ & ((!\nGRst~input_o\) # ((!\bc|ff4|Q~q\ & !\bc|ff3|Q~q\)))) ) ) ) # ( !\bc|ff0|Q~q\ & ( \con|nad2|y~0_combout\ & ( (\clk~input_o\ & !\nGRst~input_o\) ) ) ) # ( 
-- \bc|ff0|Q~q\ & ( !\con|nad2|y~0_combout\ & ( (\clk~input_o\ & !\nGRst~input_o\) ) ) ) # ( !\bc|ff0|Q~q\ & ( !\con|nad2|y~0_combout\ & ( (\clk~input_o\ & !\nGRst~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000101010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \ALT_INV_nGRst~input_o\,
	datac => \bc|ff4|ALT_INV_Q~q\,
	datad => \bc|ff3|ALT_INV_Q~q\,
	datae => \bc|ff0|ALT_INV_Q~q\,
	dataf => \con|nad2|ALT_INV_y~0_combout\,
	combout => \con|nad4|y~0_combout\);

-- Location: FF_X88_Y35_N49
\ffP|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \con|nord|y~0_combout\,
	d => \comp|or7|y~combout\,
	clrn => \con|nad4|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ffP|Q~q\);

-- Location: LABCELL_X74_Y15_N0
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


