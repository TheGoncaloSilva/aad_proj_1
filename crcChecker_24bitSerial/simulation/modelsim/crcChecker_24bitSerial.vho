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

-- DATE "11/17/2023 23:53:57"

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

ENTITY 	LinarFeedback_ShiftRegister IS
    PORT (
	clk : IN std_logic;
	nGRst : IN std_logic;
	dIn : IN std_logic;
	dOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END LinarFeedback_ShiftRegister;

-- Design Ports Information
-- dOut[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[7]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LinarFeedback_ShiftRegister IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_nGRst : std_logic;
SIGNAL ww_dIn : std_logic;
SIGNAL ww_dOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \dIn~input_o\ : std_logic;
SIGNAL \xor1|y~combout\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \ff2|Q~q\ : std_logic;
SIGNAL \ff8|Q~q\ : std_logic;
SIGNAL \xor2|y~combout\ : std_logic;
SIGNAL \ff3|Q~q\ : std_logic;
SIGNAL \xor3|y~combout\ : std_logic;
SIGNAL \ff4|Q~q\ : std_logic;
SIGNAL \ff5|Q~feeder_combout\ : std_logic;
SIGNAL \ff5|Q~q\ : std_logic;
SIGNAL \xor4|y~combout\ : std_logic;
SIGNAL \ff6|Q~q\ : std_logic;
SIGNAL \ff7|Q~feeder_combout\ : std_logic;
SIGNAL \ff7|Q~q\ : std_logic;
SIGNAL \ff8|Q~DUPLICATE_q\ : std_logic;
SIGNAL \xor0|y~combout\ : std_logic;
SIGNAL \ff1|Q~q\ : std_logic;
SIGNAL \ff7|Q~DUPLICATE_q\ : std_logic;
SIGNAL \ff8|ALT_INV_Q~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_dIn~input_o\ : std_logic;
SIGNAL \ff8|ALT_INV_Q~q\ : std_logic;
SIGNAL \ff6|ALT_INV_Q~q\ : std_logic;
SIGNAL \ff5|ALT_INV_Q~q\ : std_logic;
SIGNAL \ff4|ALT_INV_Q~q\ : std_logic;
SIGNAL \ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \ff1|ALT_INV_Q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_nGRst <= nGRst;
ww_dIn <= dIn;
dOut <= ww_dOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ff8|ALT_INV_Q~DUPLICATE_q\ <= NOT \ff8|Q~DUPLICATE_q\;
\ALT_INV_dIn~input_o\ <= NOT \dIn~input_o\;
\ff8|ALT_INV_Q~q\ <= NOT \ff8|Q~q\;
\ff6|ALT_INV_Q~q\ <= NOT \ff6|Q~q\;
\ff5|ALT_INV_Q~q\ <= NOT \ff5|Q~q\;
\ff4|ALT_INV_Q~q\ <= NOT \ff4|Q~q\;
\ff3|ALT_INV_Q~q\ <= NOT \ff3|Q~q\;
\ff2|ALT_INV_Q~q\ <= NOT \ff2|Q~q\;
\ff1|ALT_INV_Q~q\ <= NOT \ff1|Q~q\;

-- Location: IOOBUF_X89_Y38_N56
\dOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff1|Q~q\,
	devoe => ww_devoe,
	o => ww_dOut(0));

-- Location: IOOBUF_X89_Y38_N39
\dOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff2|Q~q\,
	devoe => ww_devoe,
	o => ww_dOut(1));

-- Location: IOOBUF_X89_Y36_N22
\dOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff3|Q~q\,
	devoe => ww_devoe,
	o => ww_dOut(2));

-- Location: IOOBUF_X89_Y36_N39
\dOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff4|Q~q\,
	devoe => ww_devoe,
	o => ww_dOut(3));

-- Location: IOOBUF_X89_Y35_N96
\dOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff5|Q~q\,
	devoe => ww_devoe,
	o => ww_dOut(4));

-- Location: IOOBUF_X89_Y36_N56
\dOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff6|Q~q\,
	devoe => ww_devoe,
	o => ww_dOut(5));

-- Location: IOOBUF_X89_Y37_N56
\dOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff7|Q~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_dOut(6));

-- Location: IOOBUF_X89_Y36_N5
\dOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff8|Q~q\,
	devoe => ww_devoe,
	o => ww_dOut(7));

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

-- Location: IOIBUF_X89_Y35_N44
\dIn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn,
	o => \dIn~input_o\);

-- Location: LABCELL_X88_Y36_N15
\xor1|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor1|y~combout\ = ( \ff1|Q~q\ & ( !\dIn~input_o\ $ (\ff8|Q~DUPLICATE_q\) ) ) # ( !\ff1|Q~q\ & ( !\dIn~input_o\ $ (!\ff8|Q~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn~input_o\,
	datac => \ff8|ALT_INV_Q~DUPLICATE_q\,
	dataf => \ff1|ALT_INV_Q~q\,
	combout => \xor1|y~combout\);

-- Location: IOIBUF_X89_Y35_N78
\nGRst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: FF_X88_Y36_N17
\ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xor1|y~combout\,
	clrn => \nGRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2|Q~q\);

-- Location: FF_X88_Y36_N43
\ff8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ff7|Q~q\,
	clrn => \nGRst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff8|Q~q\);

-- Location: LABCELL_X88_Y36_N45
\xor2|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor2|y~combout\ = ( \dIn~input_o\ & ( \ff8|Q~q\ & ( \ff2|Q~q\ ) ) ) # ( !\dIn~input_o\ & ( \ff8|Q~q\ & ( !\ff2|Q~q\ ) ) ) # ( \dIn~input_o\ & ( !\ff8|Q~q\ & ( !\ff2|Q~q\ ) ) ) # ( !\dIn~input_o\ & ( !\ff8|Q~q\ & ( \ff2|Q~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ff2|ALT_INV_Q~q\,
	datae => \ALT_INV_dIn~input_o\,
	dataf => \ff8|ALT_INV_Q~q\,
	combout => \xor2|y~combout\);

-- Location: FF_X88_Y36_N47
\ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xor2|y~combout\,
	clrn => \nGRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|Q~q\);

-- Location: LABCELL_X88_Y36_N30
\xor3|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor3|y~combout\ = ( \ff3|Q~q\ & ( !\dIn~input_o\ $ (\ff8|Q~DUPLICATE_q\) ) ) # ( !\ff3|Q~q\ & ( !\dIn~input_o\ $ (!\ff8|Q~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn~input_o\,
	datab => \ff8|ALT_INV_Q~DUPLICATE_q\,
	dataf => \ff3|ALT_INV_Q~q\,
	combout => \xor3|y~combout\);

-- Location: FF_X88_Y36_N32
\ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xor3|y~combout\,
	clrn => \nGRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff4|Q~q\);

-- Location: LABCELL_X88_Y36_N54
\ff5|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ff5|Q~feeder_combout\ = ( \ff4|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ff4|ALT_INV_Q~q\,
	combout => \ff5|Q~feeder_combout\);

-- Location: FF_X88_Y36_N55
\ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ff5|Q~feeder_combout\,
	clrn => \nGRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff5|Q~q\);

-- Location: LABCELL_X88_Y36_N33
\xor4|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor4|y~combout\ = ( \ff5|Q~q\ & ( !\dIn~input_o\ $ (\ff8|Q~DUPLICATE_q\) ) ) # ( !\ff5|Q~q\ & ( !\dIn~input_o\ $ (!\ff8|Q~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn~input_o\,
	datac => \ff8|ALT_INV_Q~DUPLICATE_q\,
	dataf => \ff5|ALT_INV_Q~q\,
	combout => \xor4|y~combout\);

-- Location: FF_X88_Y36_N35
\ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xor4|y~combout\,
	clrn => \nGRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff6|Q~q\);

-- Location: LABCELL_X88_Y36_N57
\ff7|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ff7|Q~feeder_combout\ = ( \ff6|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ff6|ALT_INV_Q~q\,
	combout => \ff7|Q~feeder_combout\);

-- Location: FF_X88_Y36_N59
\ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ff7|Q~feeder_combout\,
	clrn => \nGRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff7|Q~q\);

-- Location: FF_X88_Y36_N44
\ff8|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ff7|Q~q\,
	clrn => \nGRst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff8|Q~DUPLICATE_q\);

-- Location: LABCELL_X88_Y36_N12
\xor0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor0|y~combout\ = ( \ff8|Q~DUPLICATE_q\ & ( !\dIn~input_o\ ) ) # ( !\ff8|Q~DUPLICATE_q\ & ( \dIn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn~input_o\,
	dataf => \ff8|ALT_INV_Q~DUPLICATE_q\,
	combout => \xor0|y~combout\);

-- Location: FF_X88_Y36_N14
\ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \xor0|y~combout\,
	clrn => \nGRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|Q~q\);

-- Location: FF_X88_Y36_N58
\ff7|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ff7|Q~feeder_combout\,
	clrn => \nGRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff7|Q~DUPLICATE_q\);

-- Location: LABCELL_X29_Y18_N0
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


