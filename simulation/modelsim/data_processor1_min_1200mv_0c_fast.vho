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

-- DATE "05/03/2022 23:01:57"

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

ENTITY 	data_processor1 IS
    PORT (
	input : IN std_logic_vector(3 DOWNTO 0);
	MAR_in : IN std_logic_vector(2 DOWNTO 0);
	alu_sel : IN std_logic_vector(2 DOWNTO 0);
	input_sel : IN std_logic;
	ac_load : IN std_logic;
	ram_load : IN std_logic;
	mar_load : IN std_logic;
	clock : IN std_logic;
	output : BUFFER std_logic_vector(3 DOWNTO 0);
	m1_out : BUFFER std_logic_vector(3 DOWNTO 0);
	m2_out : BUFFER std_logic_vector(3 DOWNTO 0);
	data_chk : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END data_processor1;

-- Design Ports Information
-- output[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_out[0]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_out[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_out[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_out[3]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_out[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_out[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_out[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_out[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_chk[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_chk[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_chk[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_chk[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[2]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sel	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ac_load	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_load	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_in[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar_load	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_in[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_in[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF data_processor1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MAR_in : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_alu_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_input_sel : std_logic;
SIGNAL ww_ac_load : std_logic;
SIGNAL ww_ram_load : std_logic;
SIGNAL ww_mar_load : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_m1_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_m2_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_chk : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ram_load~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|Decoder0~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \m1_out[0]~output_o\ : std_logic;
SIGNAL \m1_out[1]~output_o\ : std_logic;
SIGNAL \m1_out[2]~output_o\ : std_logic;
SIGNAL \m1_out[3]~output_o\ : std_logic;
SIGNAL \m2_out[0]~output_o\ : std_logic;
SIGNAL \m2_out[1]~output_o\ : std_logic;
SIGNAL \m2_out[2]~output_o\ : std_logic;
SIGNAL \m2_out[3]~output_o\ : std_logic;
SIGNAL \data_chk[0]~output_o\ : std_logic;
SIGNAL \data_chk[1]~output_o\ : std_logic;
SIGNAL \data_chk[2]~output_o\ : std_logic;
SIGNAL \data_chk[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \input_sel~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \alu_sel[1]~input_o\ : std_logic;
SIGNAL \ac_load~input_o\ : std_logic;
SIGNAL \alu_sel[0]~input_o\ : std_logic;
SIGNAL \MAR_in[1]~input_o\ : std_logic;
SIGNAL \mar_load~input_o\ : std_logic;
SIGNAL \ram_load~input_o\ : std_logic;
SIGNAL \MAR_in[0]~input_o\ : std_logic;
SIGNAL \MAR_in[2]~input_o\ : std_logic;
SIGNAL \MAR[2]~feeder_combout\ : std_logic;
SIGNAL \RAM|Decoder0~7_combout\ : std_logic;
SIGNAL \RAM|Decoder0~7clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[7][0]~combout\ : std_logic;
SIGNAL \RAM|Decoder0~4_combout\ : std_logic;
SIGNAL \RAM|Decoder0~4clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[5][0]~combout\ : std_logic;
SIGNAL \RAM|Decoder0~6_combout\ : std_logic;
SIGNAL \RAM|Decoder0~6clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[4][0]~combout\ : std_logic;
SIGNAL \RAM|Decoder0~5_combout\ : std_logic;
SIGNAL \RAM|Decoder0~5clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[6][0]~combout\ : std_logic;
SIGNAL \RAM|Mux3~2_combout\ : std_logic;
SIGNAL \RAM|Mux3~3_combout\ : std_logic;
SIGNAL \RAM|Decoder0~0_combout\ : std_logic;
SIGNAL \RAM|Decoder0~0clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[2][0]~combout\ : std_logic;
SIGNAL \RAM|Decoder0~3_combout\ : std_logic;
SIGNAL \RAM|Decoder0~3clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[3][0]~combout\ : std_logic;
SIGNAL \RAM|Decoder0~1_combout\ : std_logic;
SIGNAL \RAM|Decoder0~1clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[1][0]~combout\ : std_logic;
SIGNAL \RAM|Decoder0~2_combout\ : std_logic;
SIGNAL \RAM|Decoder0~2clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block[0][0]~combout\ : std_logic;
SIGNAL \RAM|Mux3~0_combout\ : std_logic;
SIGNAL \RAM|Mux3~1_combout\ : std_logic;
SIGNAL \RAM|Mux3~4_combout\ : std_logic;
SIGNAL \ALU|Mux3~3_combout\ : std_logic;
SIGNAL \alu_sel[2]~input_o\ : std_logic;
SIGNAL \ALU|Mux3~0_combout\ : std_logic;
SIGNAL \ALU|Mux3~1_combout\ : std_logic;
SIGNAL \ALU|Mux3~2_combout\ : std_logic;
SIGNAL \ALU|Add0~0_combout\ : std_logic;
SIGNAL \ALU|Add0~2_cout\ : std_logic;
SIGNAL \ALU|Add0~3_combout\ : std_logic;
SIGNAL \ALU|Mux3~4_combout\ : std_logic;
SIGNAL \mux_ac[0]~0_combout\ : std_logic;
SIGNAL \output[0]~reg0_q\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \RAM|ram_block[7][1]~combout\ : std_logic;
SIGNAL \RAM|ram_block[5][1]~combout\ : std_logic;
SIGNAL \RAM|ram_block[4][1]~combout\ : std_logic;
SIGNAL \RAM|ram_block[6][1]~combout\ : std_logic;
SIGNAL \RAM|Mux2~0_combout\ : std_logic;
SIGNAL \RAM|Mux2~1_combout\ : std_logic;
SIGNAL \RAM|ram_block[2][1]~combout\ : std_logic;
SIGNAL \RAM|ram_block[3][1]~combout\ : std_logic;
SIGNAL \RAM|ram_block[1][1]~combout\ : std_logic;
SIGNAL \RAM|ram_block[0][1]~combout\ : std_logic;
SIGNAL \RAM|Mux2~2_combout\ : std_logic;
SIGNAL \RAM|Mux2~3_combout\ : std_logic;
SIGNAL \RAM|Mux2~4_combout\ : std_logic;
SIGNAL \ALU|Mux2~1_combout\ : std_logic;
SIGNAL \ALU|Add0~5_combout\ : std_logic;
SIGNAL \ALU|Add0~4\ : std_logic;
SIGNAL \ALU|Add0~6_combout\ : std_logic;
SIGNAL \ALU|Mux2~0_combout\ : std_logic;
SIGNAL \ALU|Mux2~2_combout\ : std_logic;
SIGNAL \mux_ac[1]~1_combout\ : std_logic;
SIGNAL \output[1]~reg0_q\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \RAM|ram_block[7][2]~combout\ : std_logic;
SIGNAL \RAM|ram_block[6][2]~combout\ : std_logic;
SIGNAL \RAM|ram_block[4][2]~combout\ : std_logic;
SIGNAL \RAM|Mux1~2_combout\ : std_logic;
SIGNAL \RAM|ram_block[5][2]~combout\ : std_logic;
SIGNAL \RAM|Mux1~3_combout\ : std_logic;
SIGNAL \RAM|ram_block[3][2]~combout\ : std_logic;
SIGNAL \RAM|ram_block[2][2]~combout\ : std_logic;
SIGNAL \RAM|ram_block[0][2]~combout\ : std_logic;
SIGNAL \RAM|ram_block[1][2]~combout\ : std_logic;
SIGNAL \RAM|Mux1~0_combout\ : std_logic;
SIGNAL \RAM|Mux1~1_combout\ : std_logic;
SIGNAL \RAM|Mux1~4_combout\ : std_logic;
SIGNAL \ALU|Mux1~0_combout\ : std_logic;
SIGNAL \ALU|Mux1~1_combout\ : std_logic;
SIGNAL \ALU|Add0~8_combout\ : std_logic;
SIGNAL \ALU|Add0~7\ : std_logic;
SIGNAL \ALU|Add0~9_combout\ : std_logic;
SIGNAL \ALU|Mux1~2_combout\ : std_logic;
SIGNAL \mux_ac[2]~2_combout\ : std_logic;
SIGNAL \output[2]~reg0_q\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \RAM|ram_block[7][3]~combout\ : std_logic;
SIGNAL \RAM|ram_block[5][3]~combout\ : std_logic;
SIGNAL \RAM|ram_block[4][3]~combout\ : std_logic;
SIGNAL \RAM|ram_block[6][3]~combout\ : std_logic;
SIGNAL \RAM|Mux0~0_combout\ : std_logic;
SIGNAL \RAM|Mux0~1_combout\ : std_logic;
SIGNAL \RAM|ram_block[3][3]~combout\ : std_logic;
SIGNAL \RAM|ram_block[2][3]~combout\ : std_logic;
SIGNAL \RAM|ram_block[0][3]~combout\ : std_logic;
SIGNAL \RAM|ram_block[1][3]~combout\ : std_logic;
SIGNAL \RAM|Mux0~2_combout\ : std_logic;
SIGNAL \RAM|Mux0~3_combout\ : std_logic;
SIGNAL \RAM|Mux0~4_combout\ : std_logic;
SIGNAL \ALU|Mux0~1_combout\ : std_logic;
SIGNAL \ALU|Add0~11_combout\ : std_logic;
SIGNAL \ALU|Add0~10\ : std_logic;
SIGNAL \ALU|Add0~12_combout\ : std_logic;
SIGNAL \ALU|Mux0~0_combout\ : std_logic;
SIGNAL \ALU|Mux0~2_combout\ : std_logic;
SIGNAL \mux_ac[3]~3_combout\ : std_logic;
SIGNAL \output[3]~reg0_q\ : std_logic;
SIGNAL \ram_load~inputclkctrl_outclk\ : std_logic;
SIGNAL op1 : std_logic_vector(3 DOWNTO 0);
SIGNAL MAR : std_logic_vector(2 DOWNTO 0);
SIGNAL \RAM|m2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|m1\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_input <= input;
ww_MAR_in <= MAR_in;
ww_alu_sel <= alu_sel;
ww_input_sel <= input_sel;
ww_ac_load <= ac_load;
ww_ram_load <= ram_load;
ww_mar_load <= mar_load;
ww_clock <= clock;
output <= ww_output;
m1_out <= ww_m1_out;
m2_out <= ww_m2_out;
data_chk <= ww_data_chk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM|Decoder0~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~2_combout\);

\RAM|Decoder0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~0_combout\);

\RAM|Decoder0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~1_combout\);

\ram_load~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ram_load~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\RAM|Decoder0~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~4_combout\);

\RAM|Decoder0~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~3_combout\);

\RAM|Decoder0~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~7_combout\);

\RAM|Decoder0~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~6_combout\);

\RAM|Decoder0~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RAM|Decoder0~5_combout\);

-- Location: IOOBUF_X18_Y24_N16
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[0]~reg0_q\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[1]~reg0_q\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[2]~reg0_q\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[3]~reg0_q\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\m1_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|m1\(0),
	devoe => ww_devoe,
	o => \m1_out[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\m1_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|m1\(1),
	devoe => ww_devoe,
	o => \m1_out[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\m1_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|m1\(2),
	devoe => ww_devoe,
	o => \m1_out[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\m1_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|m1\(3),
	devoe => ww_devoe,
	o => \m1_out[3]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\m2_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|m2\(0),
	devoe => ww_devoe,
	o => \m2_out[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\m2_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|m2\(1),
	devoe => ww_devoe,
	o => \m2_out[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\m2_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|m2\(2),
	devoe => ww_devoe,
	o => \m2_out[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\m2_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|m2\(3),
	devoe => ww_devoe,
	o => \m2_out[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\data_chk[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \data_chk[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\data_chk[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \data_chk[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\data_chk[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \data_chk[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\data_chk[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \data_chk[3]~output_o\);

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

-- Location: IOIBUF_X34_Y9_N15
\input_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sel,
	o => \input_sel~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\alu_sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(1),
	o => \alu_sel[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\ac_load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ac_load,
	o => \ac_load~input_o\);

-- Location: FF_X18_Y9_N9
\op1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_ac[0]~0_combout\,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op1(0));

-- Location: IOIBUF_X16_Y0_N1
\alu_sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(0),
	o => \alu_sel[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\MAR_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAR_in(1),
	o => \MAR_in[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\mar_load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mar_load,
	o => \mar_load~input_o\);

-- Location: FF_X16_Y9_N17
\MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \MAR_in[1]~input_o\,
	sload => VCC,
	ena => \mar_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(1));

-- Location: IOIBUF_X0_Y11_N15
\ram_load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_load,
	o => \ram_load~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\MAR_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAR_in(0),
	o => \MAR_in[0]~input_o\);

-- Location: FF_X16_Y9_N3
\MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \MAR_in[0]~input_o\,
	sload => VCC,
	ena => \mar_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(0));

-- Location: IOIBUF_X0_Y8_N15
\MAR_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAR_in(2),
	o => \MAR_in[2]~input_o\);

-- Location: LCCOMB_X13_Y9_N16
\MAR[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR[2]~feeder_combout\ = \MAR_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MAR_in[2]~input_o\,
	combout => \MAR[2]~feeder_combout\);

-- Location: FF_X13_Y9_N17
\MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MAR[2]~feeder_combout\,
	ena => \mar_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(2));

-- Location: LCCOMB_X13_Y9_N28
\RAM|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~7_combout\ = (MAR(1) & (\ram_load~input_o\ & (MAR(0) & MAR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \ram_load~input_o\,
	datac => MAR(0),
	datad => MAR(2),
	combout => \RAM|Decoder0~7_combout\);

-- Location: CLKCTRL_G0
\RAM|Decoder0~7clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~7clkctrl_outclk\);

-- Location: LCCOMB_X14_Y9_N18
\RAM|ram_block[7][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[7][0]~combout\ = (GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & (\RAM|ram_block[7][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[7][0]~combout\,
	datac => \ALU|Mux3~4_combout\,
	datad => \RAM|Decoder0~7clkctrl_outclk\,
	combout => \RAM|ram_block[7][0]~combout\);

-- Location: LCCOMB_X13_Y9_N22
\RAM|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~4_combout\ = (!MAR(1) & (\ram_load~input_o\ & (MAR(0) & MAR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \ram_load~input_o\,
	datac => MAR(0),
	datad => MAR(2),
	combout => \RAM|Decoder0~4_combout\);

-- Location: CLKCTRL_G1
\RAM|Decoder0~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~4clkctrl_outclk\);

-- Location: LCCOMB_X17_Y10_N16
\RAM|ram_block[5][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[5][0]~combout\ = (GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & (\RAM|ram_block[5][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[5][0]~combout\,
	datac => \RAM|Decoder0~4clkctrl_outclk\,
	datad => \ALU|Mux3~4_combout\,
	combout => \RAM|ram_block[5][0]~combout\);

-- Location: LCCOMB_X13_Y9_N14
\RAM|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~6_combout\ = (!MAR(1) & (\ram_load~input_o\ & (!MAR(0) & MAR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \ram_load~input_o\,
	datac => MAR(0),
	datad => MAR(2),
	combout => \RAM|Decoder0~6_combout\);

-- Location: CLKCTRL_G3
\RAM|Decoder0~6clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~6clkctrl_outclk\);

-- Location: LCCOMB_X16_Y9_N16
\RAM|ram_block[4][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[4][0]~combout\ = (GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & (\RAM|ram_block[4][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[4][0]~combout\,
	datab => \ALU|Mux3~4_combout\,
	datad => \RAM|Decoder0~6clkctrl_outclk\,
	combout => \RAM|ram_block[4][0]~combout\);

-- Location: LCCOMB_X13_Y9_N20
\RAM|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~5_combout\ = (MAR(1) & (\ram_load~input_o\ & (!MAR(0) & MAR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \ram_load~input_o\,
	datac => MAR(0),
	datad => MAR(2),
	combout => \RAM|Decoder0~5_combout\);

-- Location: CLKCTRL_G7
\RAM|Decoder0~5clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~5clkctrl_outclk\);

-- Location: LCCOMB_X18_Y9_N24
\RAM|ram_block[6][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[6][0]~combout\ = (GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & (\RAM|ram_block[6][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[6][0]~combout\,
	datac => \ALU|Mux3~4_combout\,
	datad => \RAM|Decoder0~5clkctrl_outclk\,
	combout => \RAM|ram_block[6][0]~combout\);

-- Location: LCCOMB_X16_Y9_N10
\RAM|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux3~2_combout\ = (MAR(0) & (((MAR(1))))) # (!MAR(0) & ((MAR(1) & ((\RAM|ram_block[6][0]~combout\))) # (!MAR(1) & (\RAM|ram_block[4][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[4][0]~combout\,
	datab => MAR(0),
	datac => \RAM|ram_block[6][0]~combout\,
	datad => MAR(1),
	combout => \RAM|Mux3~2_combout\);

-- Location: LCCOMB_X16_Y9_N6
\RAM|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux3~3_combout\ = (MAR(0) & ((\RAM|Mux3~2_combout\ & (\RAM|ram_block[7][0]~combout\)) # (!\RAM|Mux3~2_combout\ & ((\RAM|ram_block[5][0]~combout\))))) # (!MAR(0) & (((\RAM|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[7][0]~combout\,
	datab => MAR(0),
	datac => \RAM|ram_block[5][0]~combout\,
	datad => \RAM|Mux3~2_combout\,
	combout => \RAM|Mux3~3_combout\);

-- Location: LCCOMB_X13_Y9_N30
\RAM|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~0_combout\ = (MAR(1) & (\ram_load~input_o\ & (!MAR(0) & !MAR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \ram_load~input_o\,
	datac => MAR(0),
	datad => MAR(2),
	combout => \RAM|Decoder0~0_combout\);

-- Location: CLKCTRL_G6
\RAM|Decoder0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~0clkctrl_outclk\);

-- Location: LCCOMB_X18_Y10_N18
\RAM|ram_block[2][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[2][0]~combout\ = (GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & (\ALU|Mux3~4_combout\)) # (!GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & ((\RAM|ram_block[2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~4_combout\,
	datab => \RAM|ram_block[2][0]~combout\,
	datad => \RAM|Decoder0~0clkctrl_outclk\,
	combout => \RAM|ram_block[2][0]~combout\);

-- Location: LCCOMB_X13_Y9_N8
\RAM|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~3_combout\ = (MAR(1) & (\ram_load~input_o\ & (MAR(0) & !MAR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \ram_load~input_o\,
	datac => MAR(0),
	datad => MAR(2),
	combout => \RAM|Decoder0~3_combout\);

-- Location: CLKCTRL_G5
\RAM|Decoder0~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~3clkctrl_outclk\);

-- Location: LCCOMB_X18_Y9_N12
\RAM|ram_block[3][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[3][0]~combout\ = (GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & (\RAM|ram_block[3][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[3][0]~combout\,
	datab => \RAM|Decoder0~3clkctrl_outclk\,
	datad => \ALU|Mux3~4_combout\,
	combout => \RAM|ram_block[3][0]~combout\);

-- Location: LCCOMB_X13_Y9_N4
\RAM|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~1_combout\ = (!MAR(1) & (\ram_load~input_o\ & (MAR(0) & !MAR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \ram_load~input_o\,
	datac => MAR(0),
	datad => MAR(2),
	combout => \RAM|Decoder0~1_combout\);

-- Location: CLKCTRL_G8
\RAM|Decoder0~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~1clkctrl_outclk\);

-- Location: LCCOMB_X16_Y9_N20
\RAM|ram_block[1][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[1][0]~combout\ = (GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & (\ALU|Mux3~4_combout\)) # (!GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & ((\RAM|ram_block[1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~1clkctrl_outclk\,
	datab => \ALU|Mux3~4_combout\,
	datad => \RAM|ram_block[1][0]~combout\,
	combout => \RAM|ram_block[1][0]~combout\);

-- Location: LCCOMB_X13_Y9_N6
\RAM|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~2_combout\ = (!MAR(1) & (\ram_load~input_o\ & (!MAR(0) & !MAR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \ram_load~input_o\,
	datac => MAR(0),
	datad => MAR(2),
	combout => \RAM|Decoder0~2_combout\);

-- Location: CLKCTRL_G9
\RAM|Decoder0~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RAM|Decoder0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RAM|Decoder0~2clkctrl_outclk\);

-- Location: LCCOMB_X18_Y9_N2
\RAM|ram_block[0][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[0][0]~combout\ = (GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & (\RAM|ram_block[0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[0][0]~combout\,
	datac => \RAM|Decoder0~2clkctrl_outclk\,
	datad => \ALU|Mux3~4_combout\,
	combout => \RAM|ram_block[0][0]~combout\);

-- Location: LCCOMB_X16_Y9_N14
\RAM|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux3~0_combout\ = (MAR(1) & (((MAR(0))))) # (!MAR(1) & ((MAR(0) & (\RAM|ram_block[1][0]~combout\)) # (!MAR(0) & ((\RAM|ram_block[0][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \RAM|ram_block[1][0]~combout\,
	datac => \RAM|ram_block[0][0]~combout\,
	datad => MAR(0),
	combout => \RAM|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y9_N12
\RAM|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux3~1_combout\ = (MAR(1) & ((\RAM|Mux3~0_combout\ & ((\RAM|ram_block[3][0]~combout\))) # (!\RAM|Mux3~0_combout\ & (\RAM|ram_block[2][0]~combout\)))) # (!MAR(1) & (((\RAM|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \RAM|ram_block[2][0]~combout\,
	datac => \RAM|ram_block[3][0]~combout\,
	datad => \RAM|Mux3~0_combout\,
	combout => \RAM|Mux3~1_combout\);

-- Location: LCCOMB_X18_Y9_N26
\RAM|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux3~4_combout\ = (MAR(2) & (\RAM|Mux3~3_combout\)) # (!MAR(2) & ((\RAM|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux3~3_combout\,
	datab => MAR(2),
	datad => \RAM|Mux3~1_combout\,
	combout => \RAM|Mux3~4_combout\);

-- Location: LCCOMB_X18_Y9_N22
\ALU|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~3_combout\ = (\alu_sel[1]~input_o\ & (op1(0) $ (((\alu_sel[0]~input_o\) # (\RAM|Mux3~4_combout\))))) # (!\alu_sel[1]~input_o\ & ((op1(0) & ((\alu_sel[0]~input_o\) # (\RAM|Mux3~4_combout\))) # (!op1(0) & (\alu_sel[0]~input_o\ & 
-- \RAM|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => op1(0),
	datac => \alu_sel[0]~input_o\,
	datad => \RAM|Mux3~4_combout\,
	combout => \ALU|Mux3~3_combout\);

-- Location: IOIBUF_X18_Y0_N15
\alu_sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(2),
	o => \alu_sel[2]~input_o\);

-- Location: LCCOMB_X18_Y7_N12
\ALU|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~0_combout\ = (\alu_sel[2]~input_o\) # (\alu_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel[2]~input_o\,
	datad => \alu_sel[1]~input_o\,
	combout => \ALU|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y7_N14
\ALU|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~1_combout\ = (\alu_sel[2]~input_o\) # ((\alu_sel[0]~input_o\ & !\alu_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[0]~input_o\,
	datac => \alu_sel[2]~input_o\,
	datad => \alu_sel[1]~input_o\,
	combout => \ALU|Mux3~1_combout\);

-- Location: LCCOMB_X18_Y9_N28
\ALU|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~2_combout\ = (\ALU|Mux3~0_combout\ & (((\ALU|Mux3~1_combout\)))) # (!\ALU|Mux3~0_combout\ & ((\ALU|Mux3~1_combout\ & ((\RAM|Mux3~4_combout\))) # (!\ALU|Mux3~1_combout\ & (op1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~0_combout\,
	datab => op1(0),
	datac => \ALU|Mux3~1_combout\,
	datad => \RAM|Mux3~4_combout\,
	combout => \ALU|Mux3~2_combout\);

-- Location: LCCOMB_X17_Y9_N30
\ALU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~0_combout\ = \alu_sel[0]~input_o\ $ (((MAR(2) & (\RAM|Mux3~3_combout\)) # (!MAR(2) & ((\RAM|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(2),
	datab => \alu_sel[0]~input_o\,
	datac => \RAM|Mux3~3_combout\,
	datad => \RAM|Mux3~1_combout\,
	combout => \ALU|Add0~0_combout\);

-- Location: LCCOMB_X17_Y9_N2
\ALU|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~2_cout\ = CARRY(\alu_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[0]~input_o\,
	datad => VCC,
	cout => \ALU|Add0~2_cout\);

-- Location: LCCOMB_X17_Y9_N4
\ALU|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~3_combout\ = (\ALU|Add0~0_combout\ & ((op1(0) & (\ALU|Add0~2_cout\ & VCC)) # (!op1(0) & (!\ALU|Add0~2_cout\)))) # (!\ALU|Add0~0_combout\ & ((op1(0) & (!\ALU|Add0~2_cout\)) # (!op1(0) & ((\ALU|Add0~2_cout\) # (GND)))))
-- \ALU|Add0~4\ = CARRY((\ALU|Add0~0_combout\ & (!op1(0) & !\ALU|Add0~2_cout\)) # (!\ALU|Add0~0_combout\ & ((!\ALU|Add0~2_cout\) # (!op1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~0_combout\,
	datab => op1(0),
	datad => VCC,
	cin => \ALU|Add0~2_cout\,
	combout => \ALU|Add0~3_combout\,
	cout => \ALU|Add0~4\);

-- Location: LCCOMB_X18_Y9_N16
\ALU|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~4_combout\ = (\ALU|Mux3~2_combout\ & ((\ALU|Mux3~3_combout\) # ((!\ALU|Mux3~0_combout\)))) # (!\ALU|Mux3~2_combout\ & (((\ALU|Add0~3_combout\ & \ALU|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~3_combout\,
	datab => \ALU|Mux3~2_combout\,
	datac => \ALU|Add0~3_combout\,
	datad => \ALU|Mux3~0_combout\,
	combout => \ALU|Mux3~4_combout\);

-- Location: LCCOMB_X18_Y9_N8
\mux_ac[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ac[0]~0_combout\ = (\input_sel~input_o\ & (\input[0]~input_o\)) # (!\input_sel~input_o\ & ((\ALU|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_sel~input_o\,
	datac => \input[0]~input_o\,
	datad => \ALU|Mux3~4_combout\,
	combout => \mux_ac[0]~0_combout\);

-- Location: FF_X18_Y9_N13
\output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mux_ac[0]~0_combout\,
	sload => VCC,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[0]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N22
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X16_Y7_N6
\RAM|ram_block[7][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[7][1]~combout\ = (GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & (\RAM|ram_block[7][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[7][1]~combout\,
	datac => \RAM|Decoder0~7clkctrl_outclk\,
	datad => \ALU|Mux2~2_combout\,
	combout => \RAM|ram_block[7][1]~combout\);

-- Location: LCCOMB_X16_Y8_N14
\RAM|ram_block[5][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[5][1]~combout\ = (GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & (\RAM|ram_block[5][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[5][1]~combout\,
	datac => \ALU|Mux2~2_combout\,
	datad => \RAM|Decoder0~4clkctrl_outclk\,
	combout => \RAM|ram_block[5][1]~combout\);

-- Location: LCCOMB_X17_Y9_N22
\RAM|ram_block[4][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[4][1]~combout\ = (GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & (\ALU|Mux2~2_combout\)) # (!GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & ((\RAM|ram_block[4][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mux2~2_combout\,
	datac => \RAM|ram_block[4][1]~combout\,
	datad => \RAM|Decoder0~6clkctrl_outclk\,
	combout => \RAM|ram_block[4][1]~combout\);

-- Location: LCCOMB_X18_Y9_N6
\RAM|ram_block[6][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[6][1]~combout\ = (GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & (\ALU|Mux2~2_combout\)) # (!GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & ((\RAM|ram_block[6][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux2~2_combout\,
	datab => \RAM|ram_block[6][1]~combout\,
	datad => \RAM|Decoder0~5clkctrl_outclk\,
	combout => \RAM|ram_block[6][1]~combout\);

-- Location: LCCOMB_X16_Y9_N24
\RAM|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux2~0_combout\ = (MAR(1) & (((MAR(0)) # (\RAM|ram_block[6][1]~combout\)))) # (!MAR(1) & (\RAM|ram_block[4][1]~combout\ & (!MAR(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[4][1]~combout\,
	datab => MAR(1),
	datac => MAR(0),
	datad => \RAM|ram_block[6][1]~combout\,
	combout => \RAM|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y9_N26
\RAM|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux2~1_combout\ = (MAR(0) & ((\RAM|Mux2~0_combout\ & (\RAM|ram_block[7][1]~combout\)) # (!\RAM|Mux2~0_combout\ & ((\RAM|ram_block[5][1]~combout\))))) # (!MAR(0) & (((\RAM|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[7][1]~combout\,
	datab => MAR(0),
	datac => \RAM|ram_block[5][1]~combout\,
	datad => \RAM|Mux2~0_combout\,
	combout => \RAM|Mux2~1_combout\);

-- Location: LCCOMB_X16_Y8_N0
\RAM|ram_block[2][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[2][1]~combout\ = (GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & (\RAM|ram_block[2][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[2][1]~combout\,
	datac => \ALU|Mux2~2_combout\,
	datad => \RAM|Decoder0~0clkctrl_outclk\,
	combout => \RAM|ram_block[2][1]~combout\);

-- Location: LCCOMB_X18_Y9_N0
\RAM|ram_block[3][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[3][1]~combout\ = (GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & (\ALU|Mux2~2_combout\)) # (!GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & ((\RAM|ram_block[3][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux2~2_combout\,
	datab => \RAM|ram_block[3][1]~combout\,
	datad => \RAM|Decoder0~3clkctrl_outclk\,
	combout => \RAM|ram_block[3][1]~combout\);

-- Location: LCCOMB_X16_Y7_N28
\RAM|ram_block[1][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[1][1]~combout\ = (GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & (\ALU|Mux2~2_combout\)) # (!GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & ((\RAM|ram_block[1][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~1clkctrl_outclk\,
	datac => \ALU|Mux2~2_combout\,
	datad => \RAM|ram_block[1][1]~combout\,
	combout => \RAM|ram_block[1][1]~combout\);

-- Location: LCCOMB_X18_Y9_N18
\RAM|ram_block[0][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[0][1]~combout\ = (GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & (\ALU|Mux2~2_combout\)) # (!GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & ((\RAM|ram_block[0][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux2~2_combout\,
	datac => \RAM|Decoder0~2clkctrl_outclk\,
	datad => \RAM|ram_block[0][1]~combout\,
	combout => \RAM|ram_block[0][1]~combout\);

-- Location: LCCOMB_X16_Y9_N12
\RAM|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux2~2_combout\ = (MAR(0) & ((MAR(1)) # ((\RAM|ram_block[1][1]~combout\)))) # (!MAR(0) & (!MAR(1) & ((\RAM|ram_block[0][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(0),
	datab => MAR(1),
	datac => \RAM|ram_block[1][1]~combout\,
	datad => \RAM|ram_block[0][1]~combout\,
	combout => \RAM|Mux2~2_combout\);

-- Location: LCCOMB_X16_Y9_N18
\RAM|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux2~3_combout\ = (MAR(1) & ((\RAM|Mux2~2_combout\ & ((\RAM|ram_block[3][1]~combout\))) # (!\RAM|Mux2~2_combout\ & (\RAM|ram_block[2][1]~combout\)))) # (!MAR(1) & (((\RAM|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[2][1]~combout\,
	datab => MAR(1),
	datac => \RAM|ram_block[3][1]~combout\,
	datad => \RAM|Mux2~2_combout\,
	combout => \RAM|Mux2~3_combout\);

-- Location: LCCOMB_X14_Y9_N16
\RAM|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux2~4_combout\ = (MAR(2) & (\RAM|Mux2~1_combout\)) # (!MAR(2) & ((\RAM|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(2),
	datac => \RAM|Mux2~1_combout\,
	datad => \RAM|Mux2~3_combout\,
	combout => \RAM|Mux2~4_combout\);

-- Location: FF_X18_Y9_N31
\op1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_ac[1]~1_combout\,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op1(1));

-- Location: LCCOMB_X14_Y9_N22
\ALU|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux2~1_combout\ = (\alu_sel[1]~input_o\ & (op1(1) $ (((\alu_sel[0]~input_o\) # (\RAM|Mux2~4_combout\))))) # (!\alu_sel[1]~input_o\ & ((\alu_sel[0]~input_o\ & ((op1(1)) # (\RAM|Mux2~4_combout\))) # (!\alu_sel[0]~input_o\ & (op1(1) & 
-- \RAM|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[0]~input_o\,
	datab => \alu_sel[1]~input_o\,
	datac => op1(1),
	datad => \RAM|Mux2~4_combout\,
	combout => \ALU|Mux2~1_combout\);

-- Location: LCCOMB_X16_Y9_N0
\ALU|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~5_combout\ = \alu_sel[0]~input_o\ $ (((MAR(2) & (\RAM|Mux2~1_combout\)) # (!MAR(2) & ((\RAM|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(2),
	datab => \alu_sel[0]~input_o\,
	datac => \RAM|Mux2~1_combout\,
	datad => \RAM|Mux2~3_combout\,
	combout => \ALU|Add0~5_combout\);

-- Location: LCCOMB_X17_Y9_N6
\ALU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~6_combout\ = ((\ALU|Add0~5_combout\ $ (op1(1) $ (!\ALU|Add0~4\)))) # (GND)
-- \ALU|Add0~7\ = CARRY((\ALU|Add0~5_combout\ & ((op1(1)) # (!\ALU|Add0~4\))) # (!\ALU|Add0~5_combout\ & (op1(1) & !\ALU|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~5_combout\,
	datab => op1(1),
	datad => VCC,
	cin => \ALU|Add0~4\,
	combout => \ALU|Add0~6_combout\,
	cout => \ALU|Add0~7\);

-- Location: LCCOMB_X17_Y9_N0
\ALU|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux2~0_combout\ = (\ALU|Mux3~0_combout\ & (((\ALU|Mux3~1_combout\) # (\ALU|Add0~6_combout\)))) # (!\ALU|Mux3~0_combout\ & (op1(1) & (!\ALU|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~0_combout\,
	datab => op1(1),
	datac => \ALU|Mux3~1_combout\,
	datad => \ALU|Add0~6_combout\,
	combout => \ALU|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y9_N26
\ALU|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux2~2_combout\ = (\ALU|Mux3~1_combout\ & ((\ALU|Mux2~0_combout\ & ((\ALU|Mux2~1_combout\))) # (!\ALU|Mux2~0_combout\ & (\RAM|Mux2~4_combout\)))) # (!\ALU|Mux3~1_combout\ & (((\ALU|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux2~4_combout\,
	datab => \ALU|Mux2~1_combout\,
	datac => \ALU|Mux3~1_combout\,
	datad => \ALU|Mux2~0_combout\,
	combout => \ALU|Mux2~2_combout\);

-- Location: LCCOMB_X18_Y9_N30
\mux_ac[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ac[1]~1_combout\ = (\input_sel~input_o\ & (\input[1]~input_o\)) # (!\input_sel~input_o\ & ((\ALU|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => \input_sel~input_o\,
	datac => \ALU|Mux2~2_combout\,
	combout => \mux_ac[1]~1_combout\);

-- Location: FF_X18_Y9_N7
\output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mux_ac[1]~1_combout\,
	sload => VCC,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[1]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N8
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X14_Y9_N10
\RAM|ram_block[7][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[7][2]~combout\ = (GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & (\RAM|ram_block[7][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[7][2]~combout\,
	datac => \ALU|Mux1~2_combout\,
	datad => \RAM|Decoder0~7clkctrl_outclk\,
	combout => \RAM|ram_block[7][2]~combout\);

-- Location: LCCOMB_X14_Y9_N24
\RAM|ram_block[6][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[6][2]~combout\ = (GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & (\RAM|ram_block[6][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[6][2]~combout\,
	datac => \ALU|Mux1~2_combout\,
	datad => \RAM|Decoder0~5clkctrl_outclk\,
	combout => \RAM|ram_block[6][2]~combout\);

-- Location: LCCOMB_X17_Y9_N24
\RAM|ram_block[4][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[4][2]~combout\ = (GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & (\RAM|ram_block[4][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[4][2]~combout\,
	datab => \RAM|Decoder0~6clkctrl_outclk\,
	datad => \ALU|Mux1~2_combout\,
	combout => \RAM|ram_block[4][2]~combout\);

-- Location: LCCOMB_X16_Y9_N22
\RAM|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux1~2_combout\ = (MAR(0) & (((MAR(1))))) # (!MAR(0) & ((MAR(1) & (\RAM|ram_block[6][2]~combout\)) # (!MAR(1) & ((\RAM|ram_block[4][2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[6][2]~combout\,
	datab => MAR(0),
	datac => \RAM|ram_block[4][2]~combout\,
	datad => MAR(1),
	combout => \RAM|Mux1~2_combout\);

-- Location: LCCOMB_X16_Y10_N30
\RAM|ram_block[5][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[5][2]~combout\ = (GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & (\ALU|Mux1~2_combout\)) # (!GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & ((\RAM|ram_block[5][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux1~2_combout\,
	datac => \RAM|ram_block[5][2]~combout\,
	datad => \RAM|Decoder0~4clkctrl_outclk\,
	combout => \RAM|ram_block[5][2]~combout\);

-- Location: LCCOMB_X16_Y9_N8
\RAM|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux1~3_combout\ = (MAR(0) & ((\RAM|Mux1~2_combout\ & (\RAM|ram_block[7][2]~combout\)) # (!\RAM|Mux1~2_combout\ & ((\RAM|ram_block[5][2]~combout\))))) # (!MAR(0) & (((\RAM|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[7][2]~combout\,
	datab => MAR(0),
	datac => \RAM|Mux1~2_combout\,
	datad => \RAM|ram_block[5][2]~combout\,
	combout => \RAM|Mux1~3_combout\);

-- Location: LCCOMB_X17_Y8_N8
\RAM|ram_block[3][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[3][2]~combout\ = (GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & (\ALU|Mux1~2_combout\)) # (!GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & ((\RAM|ram_block[3][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux1~2_combout\,
	datac => \RAM|ram_block[3][2]~combout\,
	datad => \RAM|Decoder0~3clkctrl_outclk\,
	combout => \RAM|ram_block[3][2]~combout\);

-- Location: LCCOMB_X16_Y8_N2
\RAM|ram_block[2][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[2][2]~combout\ = (GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & (\RAM|ram_block[2][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[2][2]~combout\,
	datac => \ALU|Mux1~2_combout\,
	datad => \RAM|Decoder0~0clkctrl_outclk\,
	combout => \RAM|ram_block[2][2]~combout\);

-- Location: LCCOMB_X16_Y10_N0
\RAM|ram_block[0][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[0][2]~combout\ = (GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & (\ALU|Mux1~2_combout\)) # (!GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & ((\RAM|ram_block[0][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux1~2_combout\,
	datab => \RAM|ram_block[0][2]~combout\,
	datad => \RAM|Decoder0~2clkctrl_outclk\,
	combout => \RAM|ram_block[0][2]~combout\);

-- Location: LCCOMB_X13_Y9_N2
\RAM|ram_block[1][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[1][2]~combout\ = (GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & (\RAM|ram_block[1][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[1][2]~combout\,
	datac => \ALU|Mux1~2_combout\,
	datad => \RAM|Decoder0~1clkctrl_outclk\,
	combout => \RAM|ram_block[1][2]~combout\);

-- Location: LCCOMB_X16_Y9_N28
\RAM|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux1~0_combout\ = (MAR(1) & (MAR(0))) # (!MAR(1) & ((MAR(0) & ((\RAM|ram_block[1][2]~combout\))) # (!MAR(0) & (\RAM|ram_block[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => MAR(0),
	datac => \RAM|ram_block[0][2]~combout\,
	datad => \RAM|ram_block[1][2]~combout\,
	combout => \RAM|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y9_N4
\RAM|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux1~1_combout\ = (MAR(1) & ((\RAM|Mux1~0_combout\ & (\RAM|ram_block[3][2]~combout\)) # (!\RAM|Mux1~0_combout\ & ((\RAM|ram_block[2][2]~combout\))))) # (!MAR(1) & (((\RAM|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \RAM|ram_block[3][2]~combout\,
	datac => \RAM|ram_block[2][2]~combout\,
	datad => \RAM|Mux1~0_combout\,
	combout => \RAM|Mux1~1_combout\);

-- Location: LCCOMB_X18_Y9_N4
\RAM|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux1~4_combout\ = (MAR(2) & (\RAM|Mux1~3_combout\)) # (!MAR(2) & ((\RAM|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MAR(2),
	datac => \RAM|Mux1~3_combout\,
	datad => \RAM|Mux1~1_combout\,
	combout => \RAM|Mux1~4_combout\);

-- Location: FF_X17_Y9_N29
\op1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_ac[2]~2_combout\,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op1(2));

-- Location: LCCOMB_X18_Y9_N10
\ALU|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux1~0_combout\ = (\ALU|Mux3~0_combout\ & (\ALU|Mux3~1_combout\)) # (!\ALU|Mux3~0_combout\ & ((\ALU|Mux3~1_combout\ & (\RAM|Mux1~4_combout\)) # (!\ALU|Mux3~1_combout\ & ((op1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~0_combout\,
	datab => \ALU|Mux3~1_combout\,
	datac => \RAM|Mux1~4_combout\,
	datad => op1(2),
	combout => \ALU|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y9_N20
\ALU|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux1~1_combout\ = (\alu_sel[1]~input_o\ & (op1(2) $ (((\alu_sel[0]~input_o\) # (\RAM|Mux1~4_combout\))))) # (!\alu_sel[1]~input_o\ & ((\alu_sel[0]~input_o\ & ((\RAM|Mux1~4_combout\) # (op1(2)))) # (!\alu_sel[0]~input_o\ & (\RAM|Mux1~4_combout\ & 
-- op1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[0]~input_o\,
	datab => \alu_sel[1]~input_o\,
	datac => \RAM|Mux1~4_combout\,
	datad => op1(2),
	combout => \ALU|Mux1~1_combout\);

-- Location: LCCOMB_X16_Y9_N30
\ALU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~8_combout\ = \alu_sel[0]~input_o\ $ (((MAR(2) & ((\RAM|Mux1~3_combout\))) # (!MAR(2) & (\RAM|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(2),
	datab => \RAM|Mux1~1_combout\,
	datac => \RAM|Mux1~3_combout\,
	datad => \alu_sel[0]~input_o\,
	combout => \ALU|Add0~8_combout\);

-- Location: LCCOMB_X17_Y9_N8
\ALU|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~9_combout\ = (op1(2) & ((\ALU|Add0~8_combout\ & (\ALU|Add0~7\ & VCC)) # (!\ALU|Add0~8_combout\ & (!\ALU|Add0~7\)))) # (!op1(2) & ((\ALU|Add0~8_combout\ & (!\ALU|Add0~7\)) # (!\ALU|Add0~8_combout\ & ((\ALU|Add0~7\) # (GND)))))
-- \ALU|Add0~10\ = CARRY((op1(2) & (!\ALU|Add0~8_combout\ & !\ALU|Add0~7\)) # (!op1(2) & ((!\ALU|Add0~7\) # (!\ALU|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => op1(2),
	datab => \ALU|Add0~8_combout\,
	datad => VCC,
	cin => \ALU|Add0~7\,
	combout => \ALU|Add0~9_combout\,
	cout => \ALU|Add0~10\);

-- Location: LCCOMB_X17_Y9_N14
\ALU|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux1~2_combout\ = (\ALU|Mux3~0_combout\ & ((\ALU|Mux1~0_combout\ & (\ALU|Mux1~1_combout\)) # (!\ALU|Mux1~0_combout\ & ((\ALU|Add0~9_combout\))))) # (!\ALU|Mux3~0_combout\ & (\ALU|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~0_combout\,
	datab => \ALU|Mux1~0_combout\,
	datac => \ALU|Mux1~1_combout\,
	datad => \ALU|Add0~9_combout\,
	combout => \ALU|Mux1~2_combout\);

-- Location: LCCOMB_X17_Y9_N28
\mux_ac[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ac[2]~2_combout\ = (\input_sel~input_o\ & (\input[2]~input_o\)) # (!\input_sel~input_o\ & ((\ALU|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input_sel~input_o\,
	datac => \ALU|Mux1~2_combout\,
	combout => \mux_ac[2]~2_combout\);

-- Location: FF_X17_Y9_N9
\output[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mux_ac[2]~2_combout\,
	sload => VCC,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[2]~reg0_q\);

-- Location: IOIBUF_X16_Y24_N8
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X14_Y9_N8
\RAM|ram_block[7][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[7][3]~combout\ = (GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & ((\ALU|Mux0~2_combout\))) # (!GLOBAL(\RAM|Decoder0~7clkctrl_outclk\) & (\RAM|ram_block[7][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block[7][3]~combout\,
	datac => \RAM|Decoder0~7clkctrl_outclk\,
	datad => \ALU|Mux0~2_combout\,
	combout => \RAM|ram_block[7][3]~combout\);

-- Location: LCCOMB_X16_Y8_N16
\RAM|ram_block[5][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[5][3]~combout\ = (GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & ((\ALU|Mux0~2_combout\))) # (!GLOBAL(\RAM|Decoder0~4clkctrl_outclk\) & (\RAM|ram_block[5][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~4clkctrl_outclk\,
	datab => \RAM|ram_block[5][3]~combout\,
	datad => \ALU|Mux0~2_combout\,
	combout => \RAM|ram_block[5][3]~combout\);

-- Location: LCCOMB_X14_Y9_N26
\RAM|ram_block[4][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[4][3]~combout\ = (GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & ((\ALU|Mux0~2_combout\))) # (!GLOBAL(\RAM|Decoder0~6clkctrl_outclk\) & (\RAM|ram_block[4][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[4][3]~combout\,
	datac => \RAM|Decoder0~6clkctrl_outclk\,
	datad => \ALU|Mux0~2_combout\,
	combout => \RAM|ram_block[4][3]~combout\);

-- Location: LCCOMB_X14_Y9_N4
\RAM|ram_block[6][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[6][3]~combout\ = (GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & ((\ALU|Mux0~2_combout\))) # (!GLOBAL(\RAM|Decoder0~5clkctrl_outclk\) & (\RAM|ram_block[6][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|Decoder0~5clkctrl_outclk\,
	datac => \RAM|ram_block[6][3]~combout\,
	datad => \ALU|Mux0~2_combout\,
	combout => \RAM|ram_block[6][3]~combout\);

-- Location: LCCOMB_X14_Y9_N20
\RAM|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux0~0_combout\ = (MAR(0) & (((MAR(1))))) # (!MAR(0) & ((MAR(1) & ((\RAM|ram_block[6][3]~combout\))) # (!MAR(1) & (\RAM|ram_block[4][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[4][3]~combout\,
	datab => \RAM|ram_block[6][3]~combout\,
	datac => MAR(0),
	datad => MAR(1),
	combout => \RAM|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y9_N30
\RAM|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux0~1_combout\ = (MAR(0) & ((\RAM|Mux0~0_combout\ & (\RAM|ram_block[7][3]~combout\)) # (!\RAM|Mux0~0_combout\ & ((\RAM|ram_block[5][3]~combout\))))) # (!MAR(0) & (((\RAM|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[7][3]~combout\,
	datab => MAR(0),
	datac => \RAM|ram_block[5][3]~combout\,
	datad => \RAM|Mux0~0_combout\,
	combout => \RAM|Mux0~1_combout\);

-- Location: LCCOMB_X18_Y9_N14
\RAM|ram_block[3][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[3][3]~combout\ = (GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & (\ALU|Mux0~2_combout\)) # (!GLOBAL(\RAM|Decoder0~3clkctrl_outclk\) & ((\RAM|ram_block[3][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~2_combout\,
	datac => \RAM|ram_block[3][3]~combout\,
	datad => \RAM|Decoder0~3clkctrl_outclk\,
	combout => \RAM|ram_block[3][3]~combout\);

-- Location: LCCOMB_X16_Y8_N10
\RAM|ram_block[2][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[2][3]~combout\ = (GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & ((\ALU|Mux0~2_combout\))) # (!GLOBAL(\RAM|Decoder0~0clkctrl_outclk\) & (\RAM|ram_block[2][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[2][3]~combout\,
	datac => \RAM|Decoder0~0clkctrl_outclk\,
	datad => \ALU|Mux0~2_combout\,
	combout => \RAM|ram_block[2][3]~combout\);

-- Location: LCCOMB_X17_Y8_N6
\RAM|ram_block[0][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[0][3]~combout\ = (GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & ((\ALU|Mux0~2_combout\))) # (!GLOBAL(\RAM|Decoder0~2clkctrl_outclk\) & (\RAM|ram_block[0][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[0][3]~combout\,
	datac => \ALU|Mux0~2_combout\,
	datad => \RAM|Decoder0~2clkctrl_outclk\,
	combout => \RAM|ram_block[0][3]~combout\);

-- Location: LCCOMB_X19_Y9_N6
\RAM|ram_block[1][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block[1][3]~combout\ = (GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & ((\ALU|Mux0~2_combout\))) # (!GLOBAL(\RAM|Decoder0~1clkctrl_outclk\) & (\RAM|ram_block[1][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[1][3]~combout\,
	datac => \RAM|Decoder0~1clkctrl_outclk\,
	datad => \ALU|Mux0~2_combout\,
	combout => \RAM|ram_block[1][3]~combout\);

-- Location: LCCOMB_X14_Y9_N28
\RAM|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux0~2_combout\ = (MAR(1) & (((MAR(0))))) # (!MAR(1) & ((MAR(0) & ((\RAM|ram_block[1][3]~combout\))) # (!MAR(0) & (\RAM|ram_block[0][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[0][3]~combout\,
	datab => \RAM|ram_block[1][3]~combout\,
	datac => MAR(1),
	datad => MAR(0),
	combout => \RAM|Mux0~2_combout\);

-- Location: LCCOMB_X14_Y9_N2
\RAM|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux0~3_combout\ = (MAR(1) & ((\RAM|Mux0~2_combout\ & (\RAM|ram_block[3][3]~combout\)) # (!\RAM|Mux0~2_combout\ & ((\RAM|ram_block[2][3]~combout\))))) # (!MAR(1) & (((\RAM|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block[3][3]~combout\,
	datab => MAR(1),
	datac => \RAM|ram_block[2][3]~combout\,
	datad => \RAM|Mux0~2_combout\,
	combout => \RAM|Mux0~3_combout\);

-- Location: LCCOMB_X14_Y9_N12
\RAM|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux0~4_combout\ = (MAR(2) & (\RAM|Mux0~1_combout\)) # (!MAR(2) & ((\RAM|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MAR(2),
	datac => \RAM|Mux0~1_combout\,
	datad => \RAM|Mux0~3_combout\,
	combout => \RAM|Mux0~4_combout\);

-- Location: FF_X17_Y9_N21
\op1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_ac[3]~3_combout\,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op1(3));

-- Location: LCCOMB_X14_Y9_N0
\ALU|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~1_combout\ = (\alu_sel[1]~input_o\ & (op1(3) $ (((\alu_sel[0]~input_o\) # (\RAM|Mux0~4_combout\))))) # (!\alu_sel[1]~input_o\ & ((op1(3) & ((\alu_sel[0]~input_o\) # (\RAM|Mux0~4_combout\))) # (!op1(3) & (\alu_sel[0]~input_o\ & 
-- \RAM|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => op1(3),
	datac => \alu_sel[0]~input_o\,
	datad => \RAM|Mux0~4_combout\,
	combout => \ALU|Mux0~1_combout\);

-- Location: LCCOMB_X14_Y9_N14
\ALU|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~11_combout\ = \alu_sel[0]~input_o\ $ (((MAR(2) & (\RAM|Mux0~1_combout\)) # (!MAR(2) & ((\RAM|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[0]~input_o\,
	datab => MAR(2),
	datac => \RAM|Mux0~1_combout\,
	datad => \RAM|Mux0~3_combout\,
	combout => \ALU|Add0~11_combout\);

-- Location: LCCOMB_X17_Y9_N10
\ALU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~12_combout\ = op1(3) $ (\ALU|Add0~10\ $ (!\ALU|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => op1(3),
	datad => \ALU|Add0~11_combout\,
	cin => \ALU|Add0~10\,
	combout => \ALU|Add0~12_combout\);

-- Location: LCCOMB_X17_Y9_N18
\ALU|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~0_combout\ = (\ALU|Mux3~0_combout\ & ((\ALU|Mux3~1_combout\) # ((\ALU|Add0~12_combout\)))) # (!\ALU|Mux3~0_combout\ & (!\ALU|Mux3~1_combout\ & (op1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~0_combout\,
	datab => \ALU|Mux3~1_combout\,
	datac => op1(3),
	datad => \ALU|Add0~12_combout\,
	combout => \ALU|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y9_N16
\ALU|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~2_combout\ = (\ALU|Mux3~1_combout\ & ((\ALU|Mux0~0_combout\ & ((\ALU|Mux0~1_combout\))) # (!\ALU|Mux0~0_combout\ & (\RAM|Mux0~4_combout\)))) # (!\ALU|Mux3~1_combout\ & (((\ALU|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux0~4_combout\,
	datab => \ALU|Mux3~1_combout\,
	datac => \ALU|Mux0~1_combout\,
	datad => \ALU|Mux0~0_combout\,
	combout => \ALU|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y9_N20
\mux_ac[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ac[3]~3_combout\ = (\input_sel~input_o\ & (\input[3]~input_o\)) # (!\input_sel~input_o\ & ((\ALU|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_sel~input_o\,
	datac => \input[3]~input_o\,
	datad => \ALU|Mux0~2_combout\,
	combout => \mux_ac[3]~3_combout\);

-- Location: FF_X17_Y9_N25
\output[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mux_ac[3]~3_combout\,
	sload => VCC,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[3]~reg0_q\);

-- Location: CLKCTRL_G4
\ram_load~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ram_load~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ram_load~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y9_N2
\RAM|m1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|m1\(0) = (GLOBAL(\ram_load~inputclkctrl_outclk\) & (\RAM|m1\(0))) # (!GLOBAL(\ram_load~inputclkctrl_outclk\) & ((\RAM|ram_block[1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|m1\(0),
	datab => \ram_load~inputclkctrl_outclk\,
	datad => \RAM|ram_block[1][0]~combout\,
	combout => \RAM|m1\(0));

-- Location: LCCOMB_X16_Y7_N16
\RAM|m1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|m1\(1) = (GLOBAL(\ram_load~inputclkctrl_outclk\) & (\RAM|m1\(1))) # (!GLOBAL(\ram_load~inputclkctrl_outclk\) & ((\RAM|ram_block[1][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|m1\(1),
	datac => \ram_load~inputclkctrl_outclk\,
	datad => \RAM|ram_block[1][1]~combout\,
	combout => \RAM|m1\(1));

-- Location: LCCOMB_X13_Y9_N26
\RAM|m1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|m1\(2) = (GLOBAL(\ram_load~inputclkctrl_outclk\) & (\RAM|m1\(2))) # (!GLOBAL(\ram_load~inputclkctrl_outclk\) & ((\RAM|ram_block[1][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|m1\(2),
	datac => \ram_load~inputclkctrl_outclk\,
	datad => \RAM|ram_block[1][2]~combout\,
	combout => \RAM|m1\(2));

-- Location: LCCOMB_X19_Y9_N20
\RAM|m1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|m1\(3) = (GLOBAL(\ram_load~inputclkctrl_outclk\) & (\RAM|m1\(3))) # (!GLOBAL(\ram_load~inputclkctrl_outclk\) & ((\RAM|ram_block[1][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|m1\(3),
	datac => \ram_load~inputclkctrl_outclk\,
	datad => \RAM|ram_block[1][3]~combout\,
	combout => \RAM|m1\(3));

-- Location: LCCOMB_X18_Y10_N12
\RAM|m2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|m2\(0) = (GLOBAL(\ram_load~inputclkctrl_outclk\) & (\RAM|m2\(0))) # (!GLOBAL(\ram_load~inputclkctrl_outclk\) & ((\RAM|ram_block[2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|m2\(0),
	datac => \ram_load~inputclkctrl_outclk\,
	datad => \RAM|ram_block[2][0]~combout\,
	combout => \RAM|m2\(0));

-- Location: LCCOMB_X16_Y8_N4
\RAM|m2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|m2\(1) = (GLOBAL(\ram_load~inputclkctrl_outclk\) & (\RAM|m2\(1))) # (!GLOBAL(\ram_load~inputclkctrl_outclk\) & ((\RAM|ram_block[2][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|m2\(1),
	datac => \ram_load~inputclkctrl_outclk\,
	datad => \RAM|ram_block[2][1]~combout\,
	combout => \RAM|m2\(1));

-- Location: LCCOMB_X16_Y8_N26
\RAM|m2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|m2\(2) = (GLOBAL(\ram_load~inputclkctrl_outclk\) & (\RAM|m2\(2))) # (!GLOBAL(\ram_load~inputclkctrl_outclk\) & ((\RAM|ram_block[2][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|m2\(2),
	datac => \ram_load~inputclkctrl_outclk\,
	datad => \RAM|ram_block[2][2]~combout\,
	combout => \RAM|m2\(2));

-- Location: LCCOMB_X16_Y8_N8
\RAM|m2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|m2\(3) = (GLOBAL(\ram_load~inputclkctrl_outclk\) & (\RAM|m2\(3))) # (!GLOBAL(\ram_load~inputclkctrl_outclk\) & ((\RAM|ram_block[2][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|m2\(3),
	datac => \ram_load~inputclkctrl_outclk\,
	datad => \RAM|ram_block[2][3]~combout\,
	combout => \RAM|m2\(3));

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_m1_out(0) <= \m1_out[0]~output_o\;

ww_m1_out(1) <= \m1_out[1]~output_o\;

ww_m1_out(2) <= \m1_out[2]~output_o\;

ww_m1_out(3) <= \m1_out[3]~output_o\;

ww_m2_out(0) <= \m2_out[0]~output_o\;

ww_m2_out(1) <= \m2_out[1]~output_o\;

ww_m2_out(2) <= \m2_out[2]~output_o\;

ww_m2_out(3) <= \m2_out[3]~output_o\;

ww_data_chk(0) <= \data_chk[0]~output_o\;

ww_data_chk(1) <= \data_chk[1]~output_o\;

ww_data_chk(2) <= \data_chk[2]~output_o\;

ww_data_chk(3) <= \data_chk[3]~output_o\;
END structure;


