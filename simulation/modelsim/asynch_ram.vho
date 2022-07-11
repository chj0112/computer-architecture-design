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

-- DATE "05/03/2022 23:01:15"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	asynch_ram IS
    PORT (
	data_in : IN std_logic_vector(3 DOWNTO 0);
	address : IN std_logic_vector(2 DOWNTO 0);
	wr : IN std_logic;
	data_out : OUT std_logic_vector(3 DOWNTO 0);
	m1 : OUT std_logic_vector(3 DOWNTO 0);
	m2 : OUT std_logic_vector(3 DOWNTO 0)
	);
END asynch_ram;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[1]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[3]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[3]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF asynch_ram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_wr : std_logic;
SIGNAL ww_data_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_m1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_m2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \wr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \m1[0]~output_o\ : std_logic;
SIGNAL \m1[1]~output_o\ : std_logic;
SIGNAL \m1[2]~output_o\ : std_logic;
SIGNAL \m1[3]~output_o\ : std_logic;
SIGNAL \m2[0]~output_o\ : std_logic;
SIGNAL \m2[1]~output_o\ : std_logic;
SIGNAL \m2[2]~output_o\ : std_logic;
SIGNAL \m2[3]~output_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~0clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[5][0]~combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~2clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[4][0]~combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~1clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[6][0]~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~3clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[7][0]~combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \Decoder0~7clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[3][0]~combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~4clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[2][0]~combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \Decoder0~5clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[1][0]~combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Decoder0~6clkctrl_outclk\ : std_logic;
SIGNAL \ram_block[0][0]~combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \ram_block[5][1]~combout\ : std_logic;
SIGNAL \ram_block[7][1]~combout\ : std_logic;
SIGNAL \ram_block[4][1]~combout\ : std_logic;
SIGNAL \ram_block[6][1]~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \ram_block[3][1]~combout\ : std_logic;
SIGNAL \ram_block[0][1]~combout\ : std_logic;
SIGNAL \ram_block[1][1]~combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \ram_block[2][1]~combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \ram_block[0][2]~combout\ : std_logic;
SIGNAL \ram_block[1][2]~combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \ram_block[2][2]~combout\ : std_logic;
SIGNAL \ram_block[3][2]~combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \ram_block[4][2]~combout\ : std_logic;
SIGNAL \ram_block[6][2]~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ram_block[7][2]~combout\ : std_logic;
SIGNAL \ram_block[5][2]~combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \ram_block[1][3]~combout\ : std_logic;
SIGNAL \ram_block[0][3]~combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \ram_block[3][3]~combout\ : std_logic;
SIGNAL \ram_block[2][3]~combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \ram_block[7][3]~combout\ : std_logic;
SIGNAL \ram_block[5][3]~combout\ : std_logic;
SIGNAL \ram_block[4][3]~combout\ : std_logic;
SIGNAL \ram_block[6][3]~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \wr~inputclkctrl_outclk\ : std_logic;
SIGNAL \m1[0]$latch~combout\ : std_logic;
SIGNAL \m1[1]$latch~combout\ : std_logic;
SIGNAL \m1[2]$latch~combout\ : std_logic;
SIGNAL \m1[3]$latch~combout\ : std_logic;
SIGNAL \m2[0]$latch~combout\ : std_logic;
SIGNAL \m2[1]$latch~combout\ : std_logic;
SIGNAL \m2[2]$latch~combout\ : std_logic;
SIGNAL \m2[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_wr~input_o\ : std_logic;

BEGIN

ww_data_in <= data_in;
ww_address <= address;
ww_wr <= wr;
data_out <= ww_data_out;
m1 <= ww_m1;
m2 <= ww_m2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Decoder0~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~3_combout\);

\Decoder0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~0_combout\);

\Decoder0~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~2_combout\);

\Decoder0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~1_combout\);

\wr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \wr~input_o\);

\Decoder0~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~5_combout\);

\Decoder0~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~4_combout\);

\Decoder0~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~7_combout\);

\Decoder0~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~6_combout\);
\ALT_INV_wr~input_o\ <= NOT \wr~input_o\;

-- Location: IOOBUF_X0_Y8_N16
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	oe => \ALT_INV_wr~input_o\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	oe => \ALT_INV_wr~input_o\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	oe => \ALT_INV_wr~input_o\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	oe => \ALT_INV_wr~input_o\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\m1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \m1[0]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\m1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \m1[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\m1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m1[2]$latch~combout\,
	devoe => ww_devoe,
	o => \m1[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\m1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m1[3]$latch~combout\,
	devoe => ww_devoe,
	o => \m1[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\m2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \m2[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\m2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \m2[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\m2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m2[2]$latch~combout\,
	devoe => ww_devoe,
	o => \m2[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\m2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m2[3]$latch~combout\,
	devoe => ww_devoe,
	o => \m2[3]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\wr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr,
	o => \wr~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X1_Y11_N2
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\address[1]~input_o\ & (\address[2]~input_o\ & (\wr~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: CLKCTRL_G6
\Decoder0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~0clkctrl_outclk\);

-- Location: LCCOMB_X4_Y10_N0
\ram_block[5][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[5][0]~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\ram_block[5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[0]~input_o\,
	datac => \Decoder0~0clkctrl_outclk\,
	datad => \ram_block[5][0]~combout\,
	combout => \ram_block[5][0]~combout\);

-- Location: LCCOMB_X1_Y11_N8
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\address[1]~input_o\ & (\address[2]~input_o\ & (\wr~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: CLKCTRL_G8
\Decoder0~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~2clkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N12
\ram_block[4][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[4][0]~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\ram_block[4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[0]~input_o\,
	datac => \Decoder0~2clkctrl_outclk\,
	datad => \ram_block[4][0]~combout\,
	combout => \ram_block[4][0]~combout\);

-- Location: LCCOMB_X1_Y11_N28
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\address[1]~input_o\ & (\address[2]~input_o\ & (\wr~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: CLKCTRL_G0
\Decoder0~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~1clkctrl_outclk\);

-- Location: LCCOMB_X2_Y7_N28
\ram_block[6][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[6][0]~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\ram_block[6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \ram_block[6][0]~combout\,
	combout => \ram_block[6][0]~combout\);

-- Location: LCCOMB_X1_Y11_N30
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\address[1]~input_o\ & (((\ram_block[6][0]~combout\) # (\address[0]~input_o\)))) # (!\address[1]~input_o\ & (\ram_block[4][0]~combout\ & ((!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[4][0]~combout\,
	datab => \ram_block[6][0]~combout\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y11_N6
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\address[1]~input_o\ & (\address[2]~input_o\ & (\wr~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: CLKCTRL_G7
\Decoder0~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~3clkctrl_outclk\);

-- Location: LCCOMB_X5_Y7_N24
\ram_block[7][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[7][0]~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\ram_block[7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datac => \Decoder0~3clkctrl_outclk\,
	datad => \ram_block[7][0]~combout\,
	combout => \ram_block[7][0]~combout\);

-- Location: LCCOMB_X1_Y11_N10
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\address[0]~input_o\ & ((\Mux3~0_combout\ & ((\ram_block[7][0]~combout\))) # (!\Mux3~0_combout\ & (\ram_block[5][0]~combout\)))) # (!\address[0]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[5][0]~combout\,
	datab => \address[0]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \ram_block[7][0]~combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X1_Y11_N16
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\address[1]~input_o\ & (!\address[2]~input_o\ & (\wr~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~7_combout\);

-- Location: CLKCTRL_G3
\Decoder0~7clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~7clkctrl_outclk\);

-- Location: LCCOMB_X2_Y10_N0
\ram_block[3][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[3][0]~combout\ = (GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((\ram_block[3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[0]~input_o\,
	datac => \Decoder0~7clkctrl_outclk\,
	datad => \ram_block[3][0]~combout\,
	combout => \ram_block[3][0]~combout\);

-- Location: LCCOMB_X1_Y11_N22
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\address[1]~input_o\ & (!\address[2]~input_o\ & (\wr~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: CLKCTRL_G1
\Decoder0~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~4clkctrl_outclk\);

-- Location: LCCOMB_X8_Y6_N6
\ram_block[2][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[2][0]~combout\ = (GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((\ram_block[2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datac => \ram_block[2][0]~combout\,
	datad => \Decoder0~4clkctrl_outclk\,
	combout => \ram_block[2][0]~combout\);

-- Location: LCCOMB_X1_Y11_N14
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\address[1]~input_o\ & (!\address[2]~input_o\ & (\wr~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: CLKCTRL_G4
\Decoder0~5clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~5clkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N0
\ram_block[1][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[1][0]~combout\ = (GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((\ram_block[1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[0]~input_o\,
	datac => \ram_block[1][0]~combout\,
	datad => \Decoder0~5clkctrl_outclk\,
	combout => \ram_block[1][0]~combout\);

-- Location: LCCOMB_X1_Y11_N4
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\address[1]~input_o\ & (!\address[2]~input_o\ & (\wr~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \wr~input_o\,
	datad => \address[0]~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: CLKCTRL_G5
\Decoder0~6clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~6clkctrl_outclk\);

-- Location: LCCOMB_X2_Y11_N8
\ram_block[0][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[0][0]~combout\ = (GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data_in[0]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((\ram_block[0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datac => \ram_block[0][0]~combout\,
	datad => \Decoder0~6clkctrl_outclk\,
	combout => \ram_block[0][0]~combout\);

-- Location: LCCOMB_X1_Y11_N18
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\ram_block[1][0]~combout\)) # (!\address[0]~input_o\ & ((\ram_block[0][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[1][0]~combout\,
	datab => \ram_block[0][0]~combout\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X1_Y11_N24
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\address[1]~input_o\ & ((\Mux3~2_combout\ & (\ram_block[3][0]~combout\)) # (!\Mux3~2_combout\ & ((\ram_block[2][0]~combout\))))) # (!\address[1]~input_o\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[3][0]~combout\,
	datab => \address[1]~input_o\,
	datac => \ram_block[2][0]~combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X1_Y11_N26
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\address[2]~input_o\ & (\Mux3~1_combout\)) # (!\address[2]~input_o\ & ((\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~3_combout\,
	datad => \address[2]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: IOIBUF_X0_Y18_N15
\data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X2_Y9_N22
\ram_block[5][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[5][1]~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\ram_block[5][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datac => \ram_block[5][1]~combout\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \ram_block[5][1]~combout\);

-- Location: LCCOMB_X2_Y9_N18
\ram_block[7][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[7][1]~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\ram_block[7][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datab => \ram_block[7][1]~combout\,
	datad => \Decoder0~3clkctrl_outclk\,
	combout => \ram_block[7][1]~combout\);

-- Location: LCCOMB_X1_Y9_N4
\ram_block[4][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[4][1]~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\ram_block[4][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[1]~input_o\,
	datac => \ram_block[4][1]~combout\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \ram_block[4][1]~combout\);

-- Location: LCCOMB_X2_Y9_N28
\ram_block[6][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[6][1]~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\ram_block[6][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \ram_block[6][1]~combout\,
	combout => \ram_block[6][1]~combout\);

-- Location: LCCOMB_X2_Y9_N24
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\ram_block[6][1]~combout\))) # (!\address[1]~input_o\ & (\ram_block[4][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[4][1]~combout\,
	datab => \address[0]~input_o\,
	datac => \address[1]~input_o\,
	datad => \ram_block[6][1]~combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X2_Y9_N26
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\ram_block[7][1]~combout\) # (!\address[0]~input_o\)))) # (!\Mux2~0_combout\ & (\ram_block[5][1]~combout\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[5][1]~combout\,
	datab => \ram_block[7][1]~combout\,
	datac => \Mux2~0_combout\,
	datad => \address[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X3_Y7_N0
\ram_block[3][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[3][1]~combout\ = (GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((\ram_block[3][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datac => \Decoder0~7clkctrl_outclk\,
	datad => \ram_block[3][1]~combout\,
	combout => \ram_block[3][1]~combout\);

-- Location: LCCOMB_X4_Y6_N26
\ram_block[0][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[0][1]~combout\ = (GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((\ram_block[0][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datac => \ram_block[0][1]~combout\,
	datad => \Decoder0~6clkctrl_outclk\,
	combout => \ram_block[0][1]~combout\);

-- Location: LCCOMB_X4_Y6_N12
\ram_block[1][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[1][1]~combout\ = (GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((\ram_block[1][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datac => \ram_block[1][1]~combout\,
	datad => \Decoder0~5clkctrl_outclk\,
	combout => \ram_block[1][1]~combout\);

-- Location: LCCOMB_X4_Y6_N20
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\ram_block[1][1]~combout\))) # (!\address[0]~input_o\ & (\ram_block[0][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[0][1]~combout\,
	datab => \address[1]~input_o\,
	datac => \ram_block[1][1]~combout\,
	datad => \address[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X5_Y6_N6
\ram_block[2][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[2][1]~combout\ = (GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data_in[1]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((\ram_block[2][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[1]~input_o\,
	datac => \ram_block[2][1]~combout\,
	datad => \Decoder0~4clkctrl_outclk\,
	combout => \ram_block[2][1]~combout\);

-- Location: LCCOMB_X3_Y6_N24
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\address[1]~input_o\ & ((\Mux2~2_combout\ & (\ram_block[3][1]~combout\)) # (!\Mux2~2_combout\ & ((\ram_block[2][1]~combout\))))) # (!\address[1]~input_o\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[3][1]~combout\,
	datab => \address[1]~input_o\,
	datac => \Mux2~2_combout\,
	datad => \ram_block[2][1]~combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X2_Y9_N12
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\address[2]~input_o\ & (\Mux2~1_combout\)) # (!\address[2]~input_o\ & ((\Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~3_combout\,
	datac => \address[2]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: IOIBUF_X3_Y0_N1
\data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X4_Y6_N14
\ram_block[0][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[0][2]~combout\ = (GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((\ram_block[0][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \ram_block[0][2]~combout\,
	datad => \Decoder0~6clkctrl_outclk\,
	combout => \ram_block[0][2]~combout\);

-- Location: LCCOMB_X4_Y6_N16
\ram_block[1][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[1][2]~combout\ = (GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((\ram_block[1][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datab => \ram_block[1][2]~combout\,
	datad => \Decoder0~5clkctrl_outclk\,
	combout => \ram_block[1][2]~combout\);

-- Location: LCCOMB_X4_Y6_N22
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\address[0]~input_o\ & (((\ram_block[1][2]~combout\) # (\address[1]~input_o\)))) # (!\address[0]~input_o\ & (\ram_block[0][2]~combout\ & ((!\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[0][2]~combout\,
	datab => \ram_block[1][2]~combout\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X3_Y6_N12
\ram_block[2][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[2][2]~combout\ = (GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((\ram_block[2][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[2]~input_o\,
	datac => \ram_block[2][2]~combout\,
	datad => \Decoder0~4clkctrl_outclk\,
	combout => \ram_block[2][2]~combout\);

-- Location: LCCOMB_X4_Y7_N20
\ram_block[3][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[3][2]~combout\ = (GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((\ram_block[3][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datab => \ram_block[3][2]~combout\,
	datad => \Decoder0~7clkctrl_outclk\,
	combout => \ram_block[3][2]~combout\);

-- Location: LCCOMB_X4_Y6_N28
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & (((\ram_block[3][2]~combout\) # (!\address[1]~input_o\)))) # (!\Mux1~2_combout\ & (\ram_block[2][2]~combout\ & ((\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \ram_block[2][2]~combout\,
	datac => \ram_block[3][2]~combout\,
	datad => \address[1]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X4_Y5_N14
\ram_block[4][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[4][2]~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\ram_block[4][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \ram_block[4][2]~combout\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \ram_block[4][2]~combout\);

-- Location: LCCOMB_X4_Y7_N24
\ram_block[6][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[6][2]~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\ram_block[6][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \ram_block[6][2]~combout\,
	combout => \ram_block[6][2]~combout\);

-- Location: LCCOMB_X4_Y6_N30
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\ram_block[6][2]~combout\))) # (!\address[1]~input_o\ & (\ram_block[4][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[4][2]~combout\,
	datab => \ram_block[6][2]~combout\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X4_Y7_N30
\ram_block[7][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[7][2]~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\ram_block[7][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \ram_block[7][2]~combout\,
	datad => \Decoder0~3clkctrl_outclk\,
	combout => \ram_block[7][2]~combout\);

-- Location: LCCOMB_X4_Y5_N12
\ram_block[5][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[5][2]~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data_in[2]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\ram_block[5][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datac => \Decoder0~0clkctrl_outclk\,
	datad => \ram_block[5][2]~combout\,
	combout => \ram_block[5][2]~combout\);

-- Location: LCCOMB_X4_Y6_N24
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\ram_block[7][2]~combout\)) # (!\address[0]~input_o\))) # (!\Mux1~0_combout\ & (\address[0]~input_o\ & ((\ram_block[5][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \address[0]~input_o\,
	datac => \ram_block[7][2]~combout\,
	datad => \ram_block[5][2]~combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X4_Y6_N18
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\address[2]~input_o\ & ((\Mux1~1_combout\))) # (!\address[2]~input_o\ & (\Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datac => \Mux1~3_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~4_combout\);

-- Location: IOIBUF_X0_Y7_N1
\data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X1_Y6_N18
\ram_block[1][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[1][3]~combout\ = (GLOBAL(\Decoder0~5clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~5clkctrl_outclk\) & ((\ram_block[1][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datac => \ram_block[1][3]~combout\,
	datad => \Decoder0~5clkctrl_outclk\,
	combout => \ram_block[1][3]~combout\);

-- Location: LCCOMB_X1_Y10_N12
\ram_block[0][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[0][3]~combout\ = (GLOBAL(\Decoder0~6clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~6clkctrl_outclk\) & ((\ram_block[0][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	datac => \Decoder0~6clkctrl_outclk\,
	datad => \ram_block[0][3]~combout\,
	combout => \ram_block[0][3]~combout\);

-- Location: LCCOMB_X1_Y6_N24
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\address[0]~input_o\ & ((\ram_block[1][3]~combout\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((\ram_block[0][3]~combout\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[1][3]~combout\,
	datab => \address[0]~input_o\,
	datac => \ram_block[0][3]~combout\,
	datad => \address[1]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X1_Y10_N14
\ram_block[3][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[3][3]~combout\ = (GLOBAL(\Decoder0~7clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~7clkctrl_outclk\) & ((\ram_block[3][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	datac => \ram_block[3][3]~combout\,
	datad => \Decoder0~7clkctrl_outclk\,
	combout => \ram_block[3][3]~combout\);

-- Location: LCCOMB_X1_Y6_N20
\ram_block[2][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[2][3]~combout\ = (GLOBAL(\Decoder0~4clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~4clkctrl_outclk\) & ((\ram_block[2][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datab => \ram_block[2][3]~combout\,
	datad => \Decoder0~4clkctrl_outclk\,
	combout => \ram_block[2][3]~combout\);

-- Location: LCCOMB_X1_Y6_N30
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & (((\ram_block[3][3]~combout\)) # (!\address[1]~input_o\))) # (!\Mux0~2_combout\ & (\address[1]~input_o\ & ((\ram_block[2][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \address[1]~input_o\,
	datac => \ram_block[3][3]~combout\,
	datad => \ram_block[2][3]~combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X1_Y9_N6
\ram_block[7][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[7][3]~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\ram_block[7][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	datac => \Decoder0~3clkctrl_outclk\,
	datad => \ram_block[7][3]~combout\,
	combout => \ram_block[7][3]~combout\);

-- Location: LCCOMB_X2_Y9_N8
\ram_block[5][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[5][3]~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\ram_block[5][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datac => \ram_block[5][3]~combout\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \ram_block[5][3]~combout\);

-- Location: LCCOMB_X1_Y9_N8
\ram_block[4][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[4][3]~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\ram_block[4][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	datac => \ram_block[4][3]~combout\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \ram_block[4][3]~combout\);

-- Location: LCCOMB_X1_Y9_N2
\ram_block[6][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_block[6][3]~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_in[3]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\ram_block[6][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \ram_block[6][3]~combout\,
	combout => \ram_block[6][3]~combout\);

-- Location: LCCOMB_X1_Y9_N28
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\) # (\ram_block[6][3]~combout\)))) # (!\address[1]~input_o\ & (\ram_block[4][3]~combout\ & (!\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram_block[4][3]~combout\,
	datac => \address[0]~input_o\,
	datad => \ram_block[6][3]~combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y9_N26
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\address[0]~input_o\ & ((\Mux0~0_combout\ & (\ram_block[7][3]~combout\)) # (!\Mux0~0_combout\ & ((\ram_block[5][3]~combout\))))) # (!\address[0]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_block[7][3]~combout\,
	datab => \ram_block[5][3]~combout\,
	datac => \address[0]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X1_Y5_N16
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\address[2]~input_o\ & ((\Mux0~1_combout\))) # (!\address[2]~input_o\ & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~4_combout\);

-- Location: CLKCTRL_G2
\wr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \wr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \wr~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N20
\m1[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1[0]$latch~combout\ = (GLOBAL(\wr~inputclkctrl_outclk\) & (\m1[0]$latch~combout\)) # (!GLOBAL(\wr~inputclkctrl_outclk\) & ((\ram_block[1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1[0]$latch~combout\,
	datac => \wr~inputclkctrl_outclk\,
	datad => \ram_block[1][0]~combout\,
	combout => \m1[0]$latch~combout\);

-- Location: LCCOMB_X4_Y6_N4
\m1[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1[1]$latch~combout\ = (GLOBAL(\wr~inputclkctrl_outclk\) & (\m1[1]$latch~combout\)) # (!GLOBAL(\wr~inputclkctrl_outclk\) & ((\ram_block[1][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1[1]$latch~combout\,
	datac => \wr~inputclkctrl_outclk\,
	datad => \ram_block[1][1]~combout\,
	combout => \m1[1]$latch~combout\);

-- Location: LCCOMB_X4_Y6_N10
\m1[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1[2]$latch~combout\ = (GLOBAL(\wr~inputclkctrl_outclk\) & (\m1[2]$latch~combout\)) # (!GLOBAL(\wr~inputclkctrl_outclk\) & ((\ram_block[1][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1[2]$latch~combout\,
	datac => \wr~inputclkctrl_outclk\,
	datad => \ram_block[1][2]~combout\,
	combout => \m1[2]$latch~combout\);

-- Location: LCCOMB_X1_Y6_N16
\m1[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1[3]$latch~combout\ = (GLOBAL(\wr~inputclkctrl_outclk\) & (\m1[3]$latch~combout\)) # (!GLOBAL(\wr~inputclkctrl_outclk\) & ((\ram_block[1][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1[3]$latch~combout\,
	datac => \wr~inputclkctrl_outclk\,
	datad => \ram_block[1][3]~combout\,
	combout => \m1[3]$latch~combout\);

-- Location: LCCOMB_X8_Y6_N12
\m2[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2[0]$latch~combout\ = (GLOBAL(\wr~inputclkctrl_outclk\) & (\m2[0]$latch~combout\)) # (!GLOBAL(\wr~inputclkctrl_outclk\) & ((\ram_block[2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2[0]$latch~combout\,
	datac => \wr~inputclkctrl_outclk\,
	datad => \ram_block[2][0]~combout\,
	combout => \m2[0]$latch~combout\);

-- Location: LCCOMB_X5_Y6_N12
\m2[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2[1]$latch~combout\ = (GLOBAL(\wr~inputclkctrl_outclk\) & (\m2[1]$latch~combout\)) # (!GLOBAL(\wr~inputclkctrl_outclk\) & ((\ram_block[2][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2[1]$latch~combout\,
	datac => \wr~inputclkctrl_outclk\,
	datad => \ram_block[2][1]~combout\,
	combout => \m2[1]$latch~combout\);

-- Location: LCCOMB_X3_Y6_N6
\m2[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2[2]$latch~combout\ = (GLOBAL(\wr~inputclkctrl_outclk\) & (\m2[2]$latch~combout\)) # (!GLOBAL(\wr~inputclkctrl_outclk\) & ((\ram_block[2][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2[2]$latch~combout\,
	datac => \wr~inputclkctrl_outclk\,
	datad => \ram_block[2][2]~combout\,
	combout => \m2[2]$latch~combout\);

-- Location: LCCOMB_X1_Y6_N22
\m2[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2[3]$latch~combout\ = (GLOBAL(\wr~inputclkctrl_outclk\) & (\m2[3]$latch~combout\)) # (!GLOBAL(\wr~inputclkctrl_outclk\) & ((\ram_block[2][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2[3]$latch~combout\,
	datac => \wr~inputclkctrl_outclk\,
	datad => \ram_block[2][3]~combout\,
	combout => \m2[3]$latch~combout\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_m1(0) <= \m1[0]~output_o\;

ww_m1(1) <= \m1[1]~output_o\;

ww_m1(2) <= \m1[2]~output_o\;

ww_m1(3) <= \m1[3]~output_o\;

ww_m2(0) <= \m2[0]~output_o\;

ww_m2(1) <= \m2[1]~output_o\;

ww_m2(2) <= \m2[2]~output_o\;

ww_m2(3) <= \m2[3]~output_o\;
END structure;


