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

-- DATE "11/09/2023 11:57:16"

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

ENTITY 	cyclicRecCheck_24bitParallel IS
    PORT (
	fInput : IN std_logic_vector(15 DOWNTO 0);
	fOutput : OUT std_logic_vector(23 DOWNTO 0)
	);
END cyclicRecCheck_24bitParallel;

-- Design Ports Information
-- fOutput[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[8]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[10]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[11]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[12]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[13]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[14]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[15]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[16]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[17]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[18]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[19]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[20]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[21]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[22]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fOutput[23]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[13]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[14]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[9]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[15]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[7]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[3]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[10]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[11]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fInput[12]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cyclicRecCheck_24bitParallel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fInput : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_fOutput : std_logic_vector(23 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \fInput[6]~input_o\ : std_logic;
SIGNAL \fInput[14]~input_o\ : std_logic;
SIGNAL \fInput[4]~input_o\ : std_logic;
SIGNAL \fInput[2]~input_o\ : std_logic;
SIGNAL \fInput[0]~input_o\ : std_logic;
SIGNAL \fInput[1]~input_o\ : std_logic;
SIGNAL \remainderAlgo|xor30|y~0_combout\ : std_logic;
SIGNAL \fInput[13]~input_o\ : std_logic;
SIGNAL \fInput[8]~input_o\ : std_logic;
SIGNAL \remainderAlgo|xor30|y~combout\ : std_logic;
SIGNAL \fInput[15]~input_o\ : std_logic;
SIGNAL \fInput[9]~input_o\ : std_logic;
SIGNAL \remainderAlgo|xor40|y~0_combout\ : std_logic;
SIGNAL \fInput[7]~input_o\ : std_logic;
SIGNAL \fInput[3]~input_o\ : std_logic;
SIGNAL \fInput[5]~input_o\ : std_logic;
SIGNAL \remainderAlgo|xor17|y~combout\ : std_logic;
SIGNAL \remainderAlgo|xor40|y~combout\ : std_logic;
SIGNAL \remainderAlgo|xor32|y~0_combout\ : std_logic;
SIGNAL \remainderAlgo|xor32|y~combout\ : std_logic;
SIGNAL \fInput[10]~input_o\ : std_logic;
SIGNAL \fInput[11]~input_o\ : std_logic;
SIGNAL \remainderAlgo|xor33|y~0_combout\ : std_logic;
SIGNAL \remainderAlgo|xor33|y~combout\ : std_logic;
SIGNAL \fInput[12]~input_o\ : std_logic;
SIGNAL \remainderAlgo|xor34|y~0_combout\ : std_logic;
SIGNAL \remainderAlgo|xor34|y~combout\ : std_logic;
SIGNAL \remainderAlgo|xor39|y~combout\ : std_logic;
SIGNAL \remainderAlgo|xor38|y~0_combout\ : std_logic;
SIGNAL \remainderAlgo|xor38|y~combout\ : std_logic;
SIGNAL \remainderAlgo|xor37|y~combout\ : std_logic;
SIGNAL \ALT_INV_fInput[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_fInput[8]~input_o\ : std_logic;
SIGNAL \remainderAlgo|xor38|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \remainderAlgo|xor34|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \remainderAlgo|xor33|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \remainderAlgo|xor32|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \remainderAlgo|xor40|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \remainderAlgo|xor17|ALT_INV_y~combout\ : std_logic;
SIGNAL \remainderAlgo|xor30|ALT_INV_y~0_combout\ : std_logic;

BEGIN

ww_fInput <= fInput;
fOutput <= ww_fOutput;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_fInput[12]~input_o\ <= NOT \fInput[12]~input_o\;
\ALT_INV_fInput[11]~input_o\ <= NOT \fInput[11]~input_o\;
\ALT_INV_fInput[10]~input_o\ <= NOT \fInput[10]~input_o\;
\ALT_INV_fInput[5]~input_o\ <= NOT \fInput[5]~input_o\;
\ALT_INV_fInput[3]~input_o\ <= NOT \fInput[3]~input_o\;
\ALT_INV_fInput[7]~input_o\ <= NOT \fInput[7]~input_o\;
\ALT_INV_fInput[15]~input_o\ <= NOT \fInput[15]~input_o\;
\ALT_INV_fInput[9]~input_o\ <= NOT \fInput[9]~input_o\;
\ALT_INV_fInput[2]~input_o\ <= NOT \fInput[2]~input_o\;
\ALT_INV_fInput[0]~input_o\ <= NOT \fInput[0]~input_o\;
\ALT_INV_fInput[14]~input_o\ <= NOT \fInput[14]~input_o\;
\ALT_INV_fInput[1]~input_o\ <= NOT \fInput[1]~input_o\;
\ALT_INV_fInput[6]~input_o\ <= NOT \fInput[6]~input_o\;
\ALT_INV_fInput[4]~input_o\ <= NOT \fInput[4]~input_o\;
\ALT_INV_fInput[13]~input_o\ <= NOT \fInput[13]~input_o\;
\ALT_INV_fInput[8]~input_o\ <= NOT \fInput[8]~input_o\;
\remainderAlgo|xor38|ALT_INV_y~0_combout\ <= NOT \remainderAlgo|xor38|y~0_combout\;
\remainderAlgo|xor34|ALT_INV_y~0_combout\ <= NOT \remainderAlgo|xor34|y~0_combout\;
\remainderAlgo|xor33|ALT_INV_y~0_combout\ <= NOT \remainderAlgo|xor33|y~0_combout\;
\remainderAlgo|xor32|ALT_INV_y~0_combout\ <= NOT \remainderAlgo|xor32|y~0_combout\;
\remainderAlgo|xor40|ALT_INV_y~0_combout\ <= NOT \remainderAlgo|xor40|y~0_combout\;
\remainderAlgo|xor17|ALT_INV_y~combout\ <= NOT \remainderAlgo|xor17|y~combout\;
\remainderAlgo|xor30|ALT_INV_y~0_combout\ <= NOT \remainderAlgo|xor30|y~0_combout\;

-- Location: IOOBUF_X62_Y0_N36
\fOutput[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \remainderAlgo|xor30|y~combout\,
	devoe => ww_devoe,
	o => ww_fOutput(0));

-- Location: IOOBUF_X60_Y0_N53
\fOutput[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \remainderAlgo|xor40|y~combout\,
	devoe => ww_devoe,
	o => ww_fOutput(1));

-- Location: IOOBUF_X58_Y0_N76
\fOutput[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \remainderAlgo|xor32|y~combout\,
	devoe => ww_devoe,
	o => ww_fOutput(2));

-- Location: IOOBUF_X66_Y0_N76
\fOutput[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \remainderAlgo|xor33|y~combout\,
	devoe => ww_devoe,
	o => ww_fOutput(3));

-- Location: IOOBUF_X60_Y0_N2
\fOutput[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \remainderAlgo|xor34|y~combout\,
	devoe => ww_devoe,
	o => ww_fOutput(4));

-- Location: IOOBUF_X64_Y0_N53
\fOutput[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \remainderAlgo|xor39|y~combout\,
	devoe => ww_devoe,
	o => ww_fOutput(5));

-- Location: IOOBUF_X54_Y0_N53
\fOutput[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \remainderAlgo|xor38|y~combout\,
	devoe => ww_devoe,
	o => ww_fOutput(6));

-- Location: IOOBUF_X58_Y0_N93
\fOutput[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \remainderAlgo|xor37|y~combout\,
	devoe => ww_devoe,
	o => ww_fOutput(7));

-- Location: IOOBUF_X64_Y0_N2
\fOutput[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[0]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(8));

-- Location: IOOBUF_X52_Y0_N53
\fOutput[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[1]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(9));

-- Location: IOOBUF_X70_Y0_N53
\fOutput[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[2]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(10));

-- Location: IOOBUF_X64_Y0_N36
\fOutput[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[3]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(11));

-- Location: IOOBUF_X58_Y0_N59
\fOutput[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[4]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(12));

-- Location: IOOBUF_X62_Y0_N53
\fOutput[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[5]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(13));

-- Location: IOOBUF_X52_Y0_N2
\fOutput[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[6]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(14));

-- Location: IOOBUF_X70_Y0_N2
\fOutput[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[7]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(15));

-- Location: IOOBUF_X68_Y0_N2
\fOutput[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[8]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(16));

-- Location: IOOBUF_X56_Y0_N2
\fOutput[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[9]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(17));

-- Location: IOOBUF_X52_Y0_N36
\fOutput[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[10]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(18));

-- Location: IOOBUF_X54_Y0_N19
\fOutput[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[11]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(19));

-- Location: IOOBUF_X68_Y0_N53
\fOutput[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[12]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(20));

-- Location: IOOBUF_X66_Y0_N59
\fOutput[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[13]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(21));

-- Location: IOOBUF_X60_Y0_N19
\fOutput[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[14]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(22));

-- Location: IOOBUF_X54_Y0_N2
\fOutput[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fInput[15]~input_o\,
	devoe => ww_devoe,
	o => ww_fOutput(23));

-- Location: IOIBUF_X52_Y0_N18
\fInput[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(6),
	o => \fInput[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\fInput[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(14),
	o => \fInput[14]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\fInput[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(4),
	o => \fInput[4]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\fInput[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(2),
	o => \fInput[2]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\fInput[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(0),
	o => \fInput[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\fInput[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(1),
	o => \fInput[1]~input_o\);

-- Location: LABCELL_X60_Y1_N0
\remainderAlgo|xor30|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor30|y~0_combout\ = ( \fInput[0]~input_o\ & ( \fInput[1]~input_o\ & ( !\fInput[6]~input_o\ $ (!\fInput[14]~input_o\ $ (!\fInput[4]~input_o\ $ (!\fInput[2]~input_o\))) ) ) ) # ( !\fInput[0]~input_o\ & ( \fInput[1]~input_o\ & ( 
-- !\fInput[6]~input_o\ $ (!\fInput[14]~input_o\ $ (!\fInput[4]~input_o\ $ (\fInput[2]~input_o\))) ) ) ) # ( \fInput[0]~input_o\ & ( !\fInput[1]~input_o\ & ( !\fInput[6]~input_o\ $ (!\fInput[14]~input_o\ $ (!\fInput[4]~input_o\ $ (\fInput[2]~input_o\))) ) ) 
-- ) # ( !\fInput[0]~input_o\ & ( !\fInput[1]~input_o\ & ( !\fInput[6]~input_o\ $ (!\fInput[14]~input_o\ $ (!\fInput[4]~input_o\ $ (!\fInput[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fInput[6]~input_o\,
	datab => \ALT_INV_fInput[14]~input_o\,
	datac => \ALT_INV_fInput[4]~input_o\,
	datad => \ALT_INV_fInput[2]~input_o\,
	datae => \ALT_INV_fInput[0]~input_o\,
	dataf => \ALT_INV_fInput[1]~input_o\,
	combout => \remainderAlgo|xor30|y~0_combout\);

-- Location: IOIBUF_X66_Y0_N92
\fInput[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(13),
	o => \fInput[13]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\fInput[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(8),
	o => \fInput[8]~input_o\);

-- Location: LABCELL_X60_Y1_N6
\remainderAlgo|xor30|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor30|y~combout\ = ( \fInput[8]~input_o\ & ( !\remainderAlgo|xor30|y~0_combout\ $ (\fInput[13]~input_o\) ) ) # ( !\fInput[8]~input_o\ & ( !\remainderAlgo|xor30|y~0_combout\ $ (!\fInput[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \remainderAlgo|xor30|ALT_INV_y~0_combout\,
	datac => \ALT_INV_fInput[13]~input_o\,
	dataf => \ALT_INV_fInput[8]~input_o\,
	combout => \remainderAlgo|xor30|y~combout\);

-- Location: IOIBUF_X54_Y0_N35
\fInput[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(15),
	o => \fInput[15]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\fInput[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(9),
	o => \fInput[9]~input_o\);

-- Location: LABCELL_X60_Y1_N21
\remainderAlgo|xor40|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor40|y~0_combout\ = ( \fInput[8]~input_o\ & ( !\fInput[6]~input_o\ $ (\fInput[4]~input_o\) ) ) # ( !\fInput[8]~input_o\ & ( !\fInput[6]~input_o\ $ (!\fInput[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_fInput[6]~input_o\,
	datad => \ALT_INV_fInput[4]~input_o\,
	dataf => \ALT_INV_fInput[8]~input_o\,
	combout => \remainderAlgo|xor40|y~0_combout\);

-- Location: IOIBUF_X70_Y0_N18
\fInput[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(7),
	o => \fInput[7]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\fInput[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(3),
	o => \fInput[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\fInput[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(5),
	o => \fInput[5]~input_o\);

-- Location: LABCELL_X60_Y1_N42
\remainderAlgo|xor17|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor17|y~combout\ = ( \fInput[5]~input_o\ & ( !\fInput[13]~input_o\ $ (!\fInput[7]~input_o\ $ (!\fInput[3]~input_o\)) ) ) # ( !\fInput[5]~input_o\ & ( !\fInput[13]~input_o\ $ (!\fInput[7]~input_o\ $ (\fInput[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011001101001011010011001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fInput[13]~input_o\,
	datab => \ALT_INV_fInput[7]~input_o\,
	datac => \ALT_INV_fInput[3]~input_o\,
	datae => \ALT_INV_fInput[5]~input_o\,
	combout => \remainderAlgo|xor17|y~combout\);

-- Location: LABCELL_X60_Y1_N18
\remainderAlgo|xor40|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor40|y~combout\ = ( \remainderAlgo|xor17|y~combout\ & ( !\fInput[15]~input_o\ $ (!\fInput[9]~input_o\ $ (!\remainderAlgo|xor40|y~0_combout\ $ (\fInput[0]~input_o\))) ) ) # ( !\remainderAlgo|xor17|y~combout\ & ( !\fInput[15]~input_o\ $ 
-- (!\fInput[9]~input_o\ $ (!\remainderAlgo|xor40|y~0_combout\ $ (!\fInput[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fInput[15]~input_o\,
	datab => \ALT_INV_fInput[9]~input_o\,
	datac => \remainderAlgo|xor40|ALT_INV_y~0_combout\,
	datad => \ALT_INV_fInput[0]~input_o\,
	dataf => \remainderAlgo|xor17|ALT_INV_y~combout\,
	combout => \remainderAlgo|xor40|y~combout\);

-- Location: LABCELL_X60_Y1_N57
\remainderAlgo|xor32|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor32|y~0_combout\ = ( \fInput[5]~input_o\ & ( !\fInput[13]~input_o\ $ (!\fInput[7]~input_o\ $ (!\fInput[9]~input_o\)) ) ) # ( !\fInput[5]~input_o\ & ( !\fInput[13]~input_o\ $ (!\fInput[7]~input_o\ $ (\fInput[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011001101001011010011001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fInput[13]~input_o\,
	datab => \ALT_INV_fInput[7]~input_o\,
	datac => \ALT_INV_fInput[9]~input_o\,
	datae => \ALT_INV_fInput[5]~input_o\,
	combout => \remainderAlgo|xor32|y~0_combout\);

-- Location: LABCELL_X60_Y1_N33
\remainderAlgo|xor32|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor32|y~combout\ = ( \remainderAlgo|xor32|y~0_combout\ & ( \fInput[8]~input_o\ & ( !\fInput[6]~input_o\ $ (!\fInput[2]~input_o\ $ (\fInput[0]~input_o\)) ) ) ) # ( !\remainderAlgo|xor32|y~0_combout\ & ( \fInput[8]~input_o\ & ( 
-- !\fInput[6]~input_o\ $ (!\fInput[2]~input_o\ $ (!\fInput[0]~input_o\)) ) ) ) # ( \remainderAlgo|xor32|y~0_combout\ & ( !\fInput[8]~input_o\ & ( !\fInput[6]~input_o\ $ (!\fInput[2]~input_o\ $ (!\fInput[0]~input_o\)) ) ) ) # ( 
-- !\remainderAlgo|xor32|y~0_combout\ & ( !\fInput[8]~input_o\ & ( !\fInput[6]~input_o\ $ (!\fInput[2]~input_o\ $ (\fInput[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101101001010101101010100101010110100101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fInput[6]~input_o\,
	datac => \ALT_INV_fInput[2]~input_o\,
	datad => \ALT_INV_fInput[0]~input_o\,
	datae => \remainderAlgo|xor32|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_fInput[8]~input_o\,
	combout => \remainderAlgo|xor32|y~combout\);

-- Location: IOIBUF_X56_Y0_N35
\fInput[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(10),
	o => \fInput[10]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\fInput[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(11),
	o => \fInput[11]~input_o\);

-- Location: LABCELL_X60_Y1_N39
\remainderAlgo|xor33|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor33|y~0_combout\ = ( \fInput[3]~input_o\ & ( !\fInput[10]~input_o\ $ (\fInput[11]~input_o\) ) ) # ( !\fInput[3]~input_o\ & ( !\fInput[10]~input_o\ $ (!\fInput[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_fInput[10]~input_o\,
	datad => \ALT_INV_fInput[11]~input_o\,
	dataf => \ALT_INV_fInput[3]~input_o\,
	combout => \remainderAlgo|xor33|y~0_combout\);

-- Location: LABCELL_X60_Y1_N36
\remainderAlgo|xor33|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor33|y~combout\ = ( \fInput[8]~input_o\ & ( !\fInput[6]~input_o\ $ (!\remainderAlgo|xor33|y~0_combout\ $ (!\fInput[1]~input_o\ $ (\fInput[14]~input_o\))) ) ) # ( !\fInput[8]~input_o\ & ( !\fInput[6]~input_o\ $ 
-- (!\remainderAlgo|xor33|y~0_combout\ $ (!\fInput[1]~input_o\ $ (!\fInput[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fInput[6]~input_o\,
	datab => \remainderAlgo|xor33|ALT_INV_y~0_combout\,
	datac => \ALT_INV_fInput[1]~input_o\,
	datad => \ALT_INV_fInput[14]~input_o\,
	dataf => \ALT_INV_fInput[8]~input_o\,
	combout => \remainderAlgo|xor33|y~combout\);

-- Location: IOIBUF_X66_Y0_N41
\fInput[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fInput(12),
	o => \fInput[12]~input_o\);

-- Location: LABCELL_X60_Y1_N12
\remainderAlgo|xor34|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor34|y~0_combout\ = ( \fInput[12]~input_o\ & ( !\fInput[4]~input_o\ $ (\fInput[7]~input_o\) ) ) # ( !\fInput[12]~input_o\ & ( !\fInput[4]~input_o\ $ (!\fInput[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_fInput[4]~input_o\,
	datad => \ALT_INV_fInput[7]~input_o\,
	dataf => \ALT_INV_fInput[12]~input_o\,
	combout => \remainderAlgo|xor34|y~0_combout\);

-- Location: LABCELL_X60_Y1_N15
\remainderAlgo|xor34|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor34|y~combout\ = ( \remainderAlgo|xor34|y~0_combout\ & ( !\fInput[15]~input_o\ $ (!\fInput[9]~input_o\ $ (!\fInput[2]~input_o\ $ (\fInput[11]~input_o\))) ) ) # ( !\remainderAlgo|xor34|y~0_combout\ & ( !\fInput[15]~input_o\ $ 
-- (!\fInput[9]~input_o\ $ (!\fInput[2]~input_o\ $ (!\fInput[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fInput[15]~input_o\,
	datab => \ALT_INV_fInput[9]~input_o\,
	datac => \ALT_INV_fInput[2]~input_o\,
	datad => \ALT_INV_fInput[11]~input_o\,
	dataf => \remainderAlgo|xor34|ALT_INV_y~0_combout\,
	combout => \remainderAlgo|xor34|y~combout\);

-- Location: LABCELL_X60_Y1_N9
\remainderAlgo|xor39|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor39|y~combout\ = ( \fInput[12]~input_o\ & ( !\remainderAlgo|xor30|y~0_combout\ $ (!\fInput[3]~input_o\ $ (!\fInput[10]~input_o\ $ (\fInput[5]~input_o\))) ) ) # ( !\fInput[12]~input_o\ & ( !\remainderAlgo|xor30|y~0_combout\ $ 
-- (!\fInput[3]~input_o\ $ (!\fInput[10]~input_o\ $ (!\fInput[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \remainderAlgo|xor30|ALT_INV_y~0_combout\,
	datab => \ALT_INV_fInput[3]~input_o\,
	datac => \ALT_INV_fInput[10]~input_o\,
	datad => \ALT_INV_fInput[5]~input_o\,
	dataf => \ALT_INV_fInput[12]~input_o\,
	combout => \remainderAlgo|xor39|y~combout\);

-- Location: LABCELL_X60_Y1_N48
\remainderAlgo|xor38|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor38|y~0_combout\ = ( \fInput[6]~input_o\ & ( !\fInput[15]~input_o\ $ (!\fInput[1]~input_o\ $ (!\fInput[4]~input_o\)) ) ) # ( !\fInput[6]~input_o\ & ( !\fInput[15]~input_o\ $ (!\fInput[1]~input_o\ $ (\fInput[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_fInput[15]~input_o\,
	datac => \ALT_INV_fInput[1]~input_o\,
	datad => \ALT_INV_fInput[4]~input_o\,
	dataf => \ALT_INV_fInput[6]~input_o\,
	combout => \remainderAlgo|xor38|y~0_combout\);

-- Location: LABCELL_X60_Y1_N51
\remainderAlgo|xor38|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor38|y~combout\ = ( \remainderAlgo|xor17|y~combout\ & ( !\remainderAlgo|xor38|y~0_combout\ $ (!\fInput[11]~input_o\ $ (!\fInput[2]~input_o\)) ) ) # ( !\remainderAlgo|xor17|y~combout\ & ( !\remainderAlgo|xor38|y~0_combout\ $ 
-- (!\fInput[11]~input_o\ $ (\fInput[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \remainderAlgo|xor38|ALT_INV_y~0_combout\,
	datac => \ALT_INV_fInput[11]~input_o\,
	datad => \ALT_INV_fInput[2]~input_o\,
	dataf => \remainderAlgo|xor17|ALT_INV_y~combout\,
	combout => \remainderAlgo|xor38|y~combout\);

-- Location: LABCELL_X60_Y1_N27
\remainderAlgo|xor37|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \remainderAlgo|xor37|y~combout\ = ( \fInput[0]~input_o\ & ( \fInput[12]~input_o\ & ( !\fInput[1]~input_o\ $ (!\remainderAlgo|xor17|y~combout\) ) ) ) # ( !\fInput[0]~input_o\ & ( \fInput[12]~input_o\ & ( !\fInput[1]~input_o\ $ 
-- (\remainderAlgo|xor17|y~combout\) ) ) ) # ( \fInput[0]~input_o\ & ( !\fInput[12]~input_o\ & ( !\fInput[1]~input_o\ $ (\remainderAlgo|xor17|y~combout\) ) ) ) # ( !\fInput[0]~input_o\ & ( !\fInput[12]~input_o\ & ( !\fInput[1]~input_o\ $ 
-- (!\remainderAlgo|xor17|y~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010110100101101001010101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_fInput[1]~input_o\,
	datac => \remainderAlgo|xor17|ALT_INV_y~combout\,
	datae => \ALT_INV_fInput[0]~input_o\,
	dataf => \ALT_INV_fInput[12]~input_o\,
	combout => \remainderAlgo|xor37|y~combout\);

-- Location: LABCELL_X75_Y60_N3
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


