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

-- DATE "05/15/2022 22:58:25"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab_08 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	dp_out : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END lab_08;

-- Design Ports Information
-- dp_out[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_08 IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_dp_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp_out[0]~output_o\ : std_logic;
SIGNAL \dp_out[1]~output_o\ : std_logic;
SIGNAL \dp_out[2]~output_o\ : std_logic;
SIGNAL \dp_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \CU|y.s0~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \CU|y.s0~q\ : std_logic;
SIGNAL \CU|y.s1~0_combout\ : std_logic;
SIGNAL \CU|y.s1~q\ : std_logic;
SIGNAL \DP|data[1]~1_combout\ : std_logic;
SIGNAL \CU|clear~feeder_combout\ : std_logic;
SIGNAL \CU|out_sel~0_combout\ : std_logic;
SIGNAL \CU|out_sel~1_combout\ : std_logic;
SIGNAL \CU|clear~q\ : std_logic;
SIGNAL \DP|data[2]~2_combout\ : std_logic;
SIGNAL \DP|data[3]~3_combout\ : std_logic;
SIGNAL \DP|data[3]~4_combout\ : std_logic;
SIGNAL \DP|Equal0~0_combout\ : std_logic;
SIGNAL \CU|Selector0~0_combout\ : std_logic;
SIGNAL \CU|y.s2~q\ : std_logic;
SIGNAL \CU|y.s3~0_combout\ : std_logic;
SIGNAL \CU|y.s3~q\ : std_logic;
SIGNAL \CU|Selector2~0_combout\ : std_logic;
SIGNAL \CU|load~q\ : std_logic;
SIGNAL \DP|data[0]~0_combout\ : std_logic;
SIGNAL \CU|out_sel~q\ : std_logic;
SIGNAL \DP|data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
dp_out <= ww_dp_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X14_Y0_N2
\dp_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|data\(0),
	oe => \CU|out_sel~q\,
	devoe => ww_devoe,
	o => \dp_out[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\dp_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|data\(1),
	oe => \CU|out_sel~q\,
	devoe => ww_devoe,
	o => \dp_out[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\dp_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|data\(2),
	oe => \CU|out_sel~q\,
	devoe => ww_devoe,
	o => \dp_out[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\dp_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|data\(3),
	oe => \CU|out_sel~q\,
	devoe => ww_devoe,
	o => \dp_out[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X14_Y1_N28
\CU|y.s0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|y.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CU|y.s0~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G19
\rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X14_Y1_N29
\CU|y.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|y.s0~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|y.s0~q\);

-- Location: LCCOMB_X14_Y1_N10
\CU|y.s1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|y.s1~0_combout\ = !\CU|y.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|y.s0~q\,
	combout => \CU|y.s1~0_combout\);

-- Location: FF_X14_Y1_N11
\CU|y.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|y.s1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|y.s1~q\);

-- Location: LCCOMB_X14_Y1_N12
\DP|data[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|data[1]~1_combout\ = \DP|data\(1) $ (((\CU|load~q\ & \DP|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|load~q\,
	datac => \DP|data\(1),
	datad => \DP|data\(0),
	combout => \DP|data[1]~1_combout\);

-- Location: LCCOMB_X14_Y1_N0
\CU|clear~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|clear~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CU|clear~feeder_combout\);

-- Location: LCCOMB_X14_Y1_N2
\CU|out_sel~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|out_sel~0_combout\ = (!\rst~input_o\ & (!\CU|y.s2~q\ & !\CU|y.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \CU|y.s2~q\,
	datad => \CU|y.s0~q\,
	combout => \CU|out_sel~0_combout\);

-- Location: LCCOMB_X14_Y1_N14
\CU|out_sel~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|out_sel~1_combout\ = \CU|y.s1~q\ $ (((\CU|out_sel~0_combout\) # ((\CU|y.s2~q\ & \DP|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|y.s2~q\,
	datab => \CU|out_sel~0_combout\,
	datac => \CU|y.s1~q\,
	datad => \DP|Equal0~0_combout\,
	combout => \CU|out_sel~1_combout\);

-- Location: FF_X14_Y1_N1
\CU|clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|clear~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \CU|out_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|clear~q\);

-- Location: FF_X14_Y1_N13
\DP|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|data[1]~1_combout\,
	clrn => \CU|clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|data\(1));

-- Location: LCCOMB_X14_Y1_N22
\DP|data[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|data[2]~2_combout\ = \DP|data\(2) $ (((\CU|load~q\ & (\DP|data\(0) & \DP|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|load~q\,
	datab => \DP|data\(0),
	datac => \DP|data\(2),
	datad => \DP|data\(1),
	combout => \DP|data[2]~2_combout\);

-- Location: FF_X14_Y1_N23
\DP|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|data[2]~2_combout\,
	clrn => \CU|clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|data\(2));

-- Location: LCCOMB_X14_Y1_N16
\DP|data[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|data[3]~3_combout\ = (\DP|data\(2) & (\DP|data\(1) & (\CU|load~q\ & \DP|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|data\(2),
	datab => \DP|data\(1),
	datac => \CU|load~q\,
	datad => \DP|data\(0),
	combout => \DP|data[3]~3_combout\);

-- Location: LCCOMB_X14_Y1_N20
\DP|data[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|data[3]~4_combout\ = \DP|data\(3) $ (\DP|data[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DP|data\(3),
	datad => \DP|data[3]~3_combout\,
	combout => \DP|data[3]~4_combout\);

-- Location: FF_X14_Y1_N21
\DP|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|data[3]~4_combout\,
	clrn => \CU|clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|data\(3));

-- Location: LCCOMB_X14_Y1_N6
\DP|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|Equal0~0_combout\ = (\DP|data\(1) & (!\DP|data\(0) & (!\DP|data\(2) & \DP|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|data\(1),
	datab => \DP|data\(0),
	datac => \DP|data\(2),
	datad => \DP|data\(3),
	combout => \DP|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y1_N4
\CU|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|Selector0~0_combout\ = (\CU|y.s1~q\) # ((\CU|y.s2~q\ & !\DP|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|y.s1~q\,
	datac => \CU|y.s2~q\,
	datad => \DP|Equal0~0_combout\,
	combout => \CU|Selector0~0_combout\);

-- Location: FF_X14_Y1_N5
\CU|y.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|y.s2~q\);

-- Location: LCCOMB_X14_Y1_N18
\CU|y.s3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|y.s3~0_combout\ = (\CU|y.s3~q\) # ((\CU|y.s2~q\ & \DP|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|y.s2~q\,
	datac => \CU|y.s3~q\,
	datad => \DP|Equal0~0_combout\,
	combout => \CU|y.s3~0_combout\);

-- Location: FF_X14_Y1_N19
\CU|y.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|y.s3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|y.s3~q\);

-- Location: LCCOMB_X14_Y1_N26
\CU|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|Selector2~0_combout\ = (\CU|y.s2~q\ & (((\CU|load~q\ & !\DP|Equal0~0_combout\)))) # (!\CU|y.s2~q\ & (((\CU|load~q\)) # (!\CU|y.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|y.s2~q\,
	datab => \CU|y.s3~q\,
	datac => \CU|load~q\,
	datad => \DP|Equal0~0_combout\,
	combout => \CU|Selector2~0_combout\);

-- Location: FF_X14_Y1_N27
\CU|load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|load~q\);

-- Location: LCCOMB_X14_Y1_N8
\DP|data[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|data[0]~0_combout\ = \CU|load~q\ $ (\DP|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|load~q\,
	datac => \DP|data\(0),
	combout => \DP|data[0]~0_combout\);

-- Location: FF_X14_Y1_N9
\DP|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|data[0]~0_combout\,
	clrn => \CU|clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|data\(0));

-- Location: FF_X14_Y1_N15
\CU|out_sel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|y.s1~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CU|out_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|out_sel~q\);

ww_dp_out(0) <= \dp_out[0]~output_o\;

ww_dp_out(1) <= \dp_out[1]~output_o\;

ww_dp_out(2) <= \dp_out[2]~output_o\;

ww_dp_out(3) <= \dp_out[3]~output_o\;
END structure;


