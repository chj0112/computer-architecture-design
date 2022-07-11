-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/28/2022 01:03:09"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab_03 IS
    PORT (
	reset_n : IN std_logic;
	clock : IN std_logic;
	load_a : IN std_logic;
	start : IN std_logic;
	data : IN std_logic_vector(7 DOWNTO 0);
	A : BUFFER std_logic_vector(7 DOWNTO 0);
	B : BUFFER std_logic_vector(3 DOWNTO 0);
	state : BUFFER std_logic_vector(1 DOWNTO 0);
	done : BUFFER std_logic
	);
END lab_03;

-- Design Ports Information
-- A[0]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_a	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_03 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_load_a : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_state : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \load_a~input_o\ : std_logic;
SIGNAL \A[0]~0_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \A[7]~2_combout\ : std_logic;
SIGNAL \A[7]~3_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \A[7]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \A[0]~1_combout\ : std_logic;
SIGNAL \A[6]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \A[5]~reg0_q\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \A[4]~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \A[3]~reg0_q\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \A[2]~reg0_q\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \A[1]~reg0_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \done~reg0_q\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \state[0]~2_combout\ : std_logic;
SIGNAL \state[0]~5_combout\ : std_logic;
SIGNAL \state[0]~reg0_q\ : std_logic;
SIGNAL \state[0]~3_combout\ : std_logic;
SIGNAL \state[1]~4_combout\ : std_logic;
SIGNAL \state[1]~reg0_q\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \A[0]~reg0_q\ : std_logic;
SIGNAL \B[0]~4_combout\ : std_logic;
SIGNAL \B[0]~6_combout\ : std_logic;
SIGNAL \B[0]~reg0_q\ : std_logic;
SIGNAL \B[0]~5\ : std_logic;
SIGNAL \B[1]~7_combout\ : std_logic;
SIGNAL \B[1]~reg0_q\ : std_logic;
SIGNAL \B[1]~8\ : std_logic;
SIGNAL \B[2]~9_combout\ : std_logic;
SIGNAL \B[2]~reg0_q\ : std_logic;
SIGNAL \B[2]~10\ : std_logic;
SIGNAL \B[3]~11_combout\ : std_logic;
SIGNAL \B[3]~reg0_q\ : std_logic;

BEGIN

ww_reset_n <= reset_n;
ww_clock <= clock;
ww_load_a <= load_a;
ww_start <= start;
ww_data <= data;
A <= ww_A;
B <= ww_B;
state <= ww_state;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X34_Y17_N2
\A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[0]~reg0_q\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[1]~reg0_q\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[2]~reg0_q\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[3]~reg0_q\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~reg0_q\,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[5]~reg0_q\,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[6]~reg0_q\,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[7]~reg0_q\,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[0]~reg0_q\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[1]~reg0_q\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[2]~reg0_q\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[3]~reg0_q\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\state[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state[0]~reg0_q\,
	devoe => ww_devoe,
	o => \state[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\state[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state[1]~reg0_q\,
	devoe => ww_devoe,
	o => \state[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~reg0_q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X30_Y24_N22
\data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\load_a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_a,
	o => \load_a~input_o\);

-- Location: LCCOMB_X33_Y12_N30
\A[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[0]~0_combout\ = (!\state[0]~reg0_q\ & ((\load_a~input_o\) # (\state[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load_a~input_o\,
	datac => \state[0]~reg0_q\,
	datad => \state[1]~reg0_q\,
	combout => \A[0]~0_combout\);

-- Location: IOIBUF_X34_Y9_N8
\data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: LCCOMB_X33_Y12_N28
\A[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[7]~2_combout\ = (\data[7]~input_o\ & (\load_a~input_o\ & (!\state[0]~reg0_q\ & !\state[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[7]~input_o\,
	datab => \load_a~input_o\,
	datac => \state[0]~reg0_q\,
	datad => \state[1]~reg0_q\,
	combout => \A[7]~2_combout\);

-- Location: LCCOMB_X33_Y12_N4
\A[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[7]~3_combout\ = (\A[7]~2_combout\) # ((!\A[0]~0_combout\ & \A[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~0_combout\,
	datac => \A[7]~reg0_q\,
	datad => \A[7]~2_combout\,
	combout => \A[7]~3_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: CLKCTRL_G4
\reset_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: FF_X33_Y12_N5
\A[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[7]~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[7]~reg0_q\);

-- Location: LCCOMB_X32_Y12_N16
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\state[1]~reg0_q\ & ((\A[7]~reg0_q\))) # (!\state[1]~reg0_q\ & (\data[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[6]~input_o\,
	datac => \state[1]~reg0_q\,
	datad => \A[7]~reg0_q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X33_Y12_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\A[5]~reg0_q\ & (!\A[7]~reg0_q\ & (!\A[6]~reg0_q\ & !\A[4]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~reg0_q\,
	datab => \A[7]~reg0_q\,
	datac => \A[6]~reg0_q\,
	datad => \A[4]~reg0_q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y12_N24
\A[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[0]~1_combout\ = (\A[0]~0_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\state[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~reg0_q\,
	datab => \Equal0~1_combout\,
	datac => \A[0]~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \A[0]~1_combout\);

-- Location: FF_X32_Y12_N17
\A[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \A[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[6]~reg0_q\);

-- Location: LCCOMB_X32_Y12_N26
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\state[1]~reg0_q\ & ((\A[6]~reg0_q\))) # (!\state[1]~reg0_q\ & (\data[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~reg0_q\,
	datac => \data[5]~input_o\,
	datad => \A[6]~reg0_q\,
	combout => \Mux4~0_combout\);

-- Location: FF_X32_Y12_N27
\A[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \A[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[5]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N22
\data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: LCCOMB_X32_Y12_N28
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\state[1]~reg0_q\ & (\A[5]~reg0_q\)) # (!\state[1]~reg0_q\ & ((\data[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~reg0_q\,
	datab => \data[4]~input_o\,
	datac => \state[1]~reg0_q\,
	combout => \Mux5~0_combout\);

-- Location: FF_X32_Y12_N29
\A[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \A[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[4]~reg0_q\);

-- Location: LCCOMB_X32_Y12_N22
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\state[1]~reg0_q\ & ((\A[4]~reg0_q\))) # (!\state[1]~reg0_q\ & (\data[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~reg0_q\,
	datac => \data[3]~input_o\,
	datad => \A[4]~reg0_q\,
	combout => \Mux6~0_combout\);

-- Location: FF_X32_Y12_N23
\A[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \A[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[3]~reg0_q\);

-- Location: IOIBUF_X34_Y19_N15
\data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: LCCOMB_X32_Y12_N8
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\state[1]~reg0_q\ & (\A[3]~reg0_q\)) # (!\state[1]~reg0_q\ & ((\data[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~reg0_q\,
	datac => \state[1]~reg0_q\,
	datad => \data[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: FF_X32_Y12_N9
\A[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \A[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[2]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N8
\data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: LCCOMB_X32_Y12_N30
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\state[1]~reg0_q\ & (\A[2]~reg0_q\)) # (!\state[1]~reg0_q\ & ((\data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~reg0_q\,
	datac => \state[1]~reg0_q\,
	datad => \data[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: FF_X32_Y12_N31
\A[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \A[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[1]~reg0_q\);

-- Location: LCCOMB_X32_Y12_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\A[1]~reg0_q\ & (!\A[2]~reg0_q\ & (!\A[3]~reg0_q\ & !\A[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~reg0_q\,
	datab => \A[2]~reg0_q\,
	datac => \A[3]~reg0_q\,
	datad => \A[0]~reg0_q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X33_Y12_N16
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X33_Y12_N18
\done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \done~0_combout\ = (\done~reg0_q\) # ((!\state[0]~reg0_q\ & (\state[1]~reg0_q\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[0]~reg0_q\,
	datab => \state[1]~reg0_q\,
	datac => \done~reg0_q\,
	datad => \Equal0~2_combout\,
	combout => \done~0_combout\);

-- Location: FF_X33_Y12_N19
\done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \done~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~reg0_q\);

-- Location: IOIBUF_X34_Y18_N1
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X33_Y12_N6
\state[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[0]~2_combout\ = (\state[1]~reg0_q\ & (((\state[0]~reg0_q\) # (\Equal0~2_combout\)))) # (!\state[1]~reg0_q\ & (\load_a~input_o\ & (!\state[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~reg0_q\,
	datab => \load_a~input_o\,
	datac => \state[0]~reg0_q\,
	datad => \Equal0~2_combout\,
	combout => \state[0]~2_combout\);

-- Location: LCCOMB_X33_Y12_N22
\state[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[0]~5_combout\ = (\state[0]~reg0_q\ & ((\state[0]~2_combout\ & (\done~reg0_q\)) # (!\state[0]~2_combout\ & ((!\start~input_o\))))) # (!\state[0]~reg0_q\ & (((\state[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \done~reg0_q\,
	datab => \start~input_o\,
	datac => \state[0]~reg0_q\,
	datad => \state[0]~2_combout\,
	combout => \state[0]~5_combout\);

-- Location: FF_X33_Y12_N23
\state[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state[0]~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[0]~reg0_q\);

-- Location: LCCOMB_X33_Y12_N0
\state[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[0]~3_combout\ = (\state[0]~reg0_q\ & ((\state[0]~2_combout\ & (!\done~reg0_q\)) # (!\state[0]~2_combout\ & ((\start~input_o\))))) # (!\state[0]~reg0_q\ & (((\state[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[0]~reg0_q\,
	datab => \done~reg0_q\,
	datac => \start~input_o\,
	datad => \state[0]~2_combout\,
	combout => \state[0]~3_combout\);

-- Location: LCCOMB_X33_Y12_N20
\state[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[1]~4_combout\ = \state[1]~reg0_q\ $ (((\state[0]~reg0_q\ & \state[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[0]~reg0_q\,
	datac => \state[1]~reg0_q\,
	datad => \state[0]~3_combout\,
	combout => \state[1]~4_combout\);

-- Location: FF_X33_Y12_N21
\state[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state[1]~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[1]~reg0_q\);

-- Location: IOIBUF_X34_Y18_N15
\data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: LCCOMB_X32_Y12_N20
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\state[1]~reg0_q\ & ((\A[1]~reg0_q\))) # (!\state[1]~reg0_q\ & (\data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~reg0_q\,
	datac => \data[0]~input_o\,
	datad => \A[1]~reg0_q\,
	combout => \Mux9~0_combout\);

-- Location: FF_X32_Y12_N21
\A[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \A[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[0]~reg0_q\);

-- Location: LCCOMB_X33_Y12_N8
\B[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[0]~4_combout\ = (\B[0]~reg0_q\ & (\A[0]~reg0_q\ $ (VCC))) # (!\B[0]~reg0_q\ & (\A[0]~reg0_q\ & VCC))
-- \B[0]~5\ = CARRY((\B[0]~reg0_q\ & \A[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~reg0_q\,
	datab => \A[0]~reg0_q\,
	datad => VCC,
	combout => \B[0]~4_combout\,
	cout => \B[0]~5\);

-- Location: LCCOMB_X33_Y12_N26
\B[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[0]~6_combout\ = (\state[1]~reg0_q\ & (!\state[0]~reg0_q\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~reg0_q\,
	datab => \state[0]~reg0_q\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \B[0]~6_combout\);

-- Location: FF_X33_Y12_N9
\B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B[0]~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \B[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[0]~reg0_q\);

-- Location: LCCOMB_X33_Y12_N10
\B[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[1]~7_combout\ = (\B[1]~reg0_q\ & (!\B[0]~5\)) # (!\B[1]~reg0_q\ & ((\B[0]~5\) # (GND)))
-- \B[1]~8\ = CARRY((!\B[0]~5\) # (!\B[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~reg0_q\,
	datad => VCC,
	cin => \B[0]~5\,
	combout => \B[1]~7_combout\,
	cout => \B[1]~8\);

-- Location: FF_X33_Y12_N11
\B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B[1]~7_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \B[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[1]~reg0_q\);

-- Location: LCCOMB_X33_Y12_N12
\B[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[2]~9_combout\ = (\B[2]~reg0_q\ & (\B[1]~8\ $ (GND))) # (!\B[2]~reg0_q\ & (!\B[1]~8\ & VCC))
-- \B[2]~10\ = CARRY((\B[2]~reg0_q\ & !\B[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~reg0_q\,
	datad => VCC,
	cin => \B[1]~8\,
	combout => \B[2]~9_combout\,
	cout => \B[2]~10\);

-- Location: FF_X33_Y12_N13
\B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B[2]~9_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \B[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[2]~reg0_q\);

-- Location: LCCOMB_X33_Y12_N14
\B[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[3]~11_combout\ = \B[3]~reg0_q\ $ (\B[2]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~reg0_q\,
	cin => \B[2]~10\,
	combout => \B[3]~11_combout\);

-- Location: FF_X33_Y12_N15
\B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \B[3]~11_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \B[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[3]~reg0_q\);

ww_A(0) <= \A[0]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_state(0) <= \state[0]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_done <= \done~output_o\;
END structure;


