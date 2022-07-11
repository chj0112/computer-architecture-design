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

-- DATE "05/26/2022 15:55:44"

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

ENTITY 	mp_EC2 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	enter : IN std_logic;
	input : IN std_logic_vector(7 DOWNTO 0);
	output : OUT std_logic_vector(7 DOWNTO 0);
	halt : OUT std_logic
	);
END mp_EC2;

-- Design Ports Information
-- output[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- halt	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enter	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mp_EC2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enter : std_logic;
SIGNAL ww_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_halt : std_logic;
SIGNAL \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \halt~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC[0]~5_combout\ : std_logic;
SIGNAL \IR[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \enter~input_o\ : std_logic;
SIGNAL \PC[0]~6\ : std_logic;
SIGNAL \PC[1]~9_combout\ : std_logic;
SIGNAL \PC[1]~10\ : std_logic;
SIGNAL \PC[2]~11_combout\ : std_logic;
SIGNAL \PC[2]~12\ : std_logic;
SIGNAL \PC[3]~13_combout\ : std_logic;
SIGNAL \state.s_decode~q\ : std_logic;
SIGNAL \state.s_decode2~q\ : std_logic;
SIGNAL \state.s_decode3~q\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.s_load~q\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.s_add~q\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_cout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \A[1]~1_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \state.s_input~q\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.s_sub~q\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \A[2]~2_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \A[3]~3_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \A[5]~5_combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \A[6]~6_combout\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \A[7]~7_combout\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \A[4]~4_combout\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \IR[6]~feeder_combout\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \state.s_jz~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \PC[0]~7_combout\ : std_logic;
SIGNAL \PC[0]~8_combout\ : std_logic;
SIGNAL \PC[3]~14\ : std_logic;
SIGNAL \PC[4]~15_combout\ : std_logic;
SIGNAL \IR[4]~feeder_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \memory_address[0]~0_combout\ : std_logic;
SIGNAL \IR[3]~feeder_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \IR[2]~feeder_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \IR[1]~feeder_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \IR[5]~feeder_combout\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.s_jpos~q\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \state.s_start~q\ : std_logic;
SIGNAL \state.s_start2~0_combout\ : std_logic;
SIGNAL \state.s_start2~feeder_combout\ : std_logic;
SIGNAL \state.s_start2~q\ : std_logic;
SIGNAL \state.s_start3~feeder_combout\ : std_logic;
SIGNAL \state.s_start3~q\ : std_logic;
SIGNAL \state.s_fetch~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \IR[7]~feeder_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state.s_store~q\ : std_logic;
SIGNAL \state.s_store2~q\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \MemWr~q\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \A[0]~0_combout\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \state.s_halt~0_combout\ : std_logic;
SIGNAL \state.s_halt~q\ : std_logic;
SIGNAL \halt~0_combout\ : std_logic;
SIGNAL \halt~reg0_q\ : std_logic;
SIGNAL memory_address : std_logic_vector(4 DOWNTO 0);
SIGNAL PC : std_logic_vector(4 DOWNTO 0);
SIGNAL IR : std_logic_vector(7 DOWNTO 0);
SIGNAL A : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_state.s_fetch~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_enter <= enter;
ww_input <= input;
output <= ww_output;
halt <= ww_halt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & A(7) & A(6) & A(5) & A(4) & A(3) & A(2) & A(1) & A(0));

\memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (memory_address(4) & memory_address(3) & memory_address(2) & memory_address(1) & memory_address(0));

\memory|sram|ram_block|auto_generated|q_a\(0) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memory|sram|ram_block|auto_generated|q_a\(1) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memory|sram|ram_block|auto_generated|q_a\(2) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memory|sram|ram_block|auto_generated|q_a\(3) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memory|sram|ram_block|auto_generated|q_a\(4) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memory|sram|ram_block|auto_generated|q_a\(5) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memory|sram|ram_block|auto_generated|q_a\(6) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memory|sram|ram_block|auto_generated|q_a\(7) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_state.s_fetch~q\ <= NOT \state.s_fetch~q\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X34_Y4_N23
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(5),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(6),
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(7),
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\halt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \halt~reg0_q\,
	devoe => ww_devoe,
	o => \halt~output_o\);

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

-- Location: LCCOMB_X28_Y7_N16
\PC[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[0]~5_combout\ = PC(0) $ (VCC)
-- \PC[0]~6\ = CARRY(PC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(0),
	datad => VCC,
	combout => \PC[0]~5_combout\,
	cout => \PC[0]~6\);

-- Location: LCCOMB_X26_Y7_N16
\IR[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[0]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(0),
	combout => \IR[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y7_N1
\enter~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enter,
	o => \enter~input_o\);

-- Location: LCCOMB_X28_Y7_N18
\PC[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[1]~9_combout\ = (PC(1) & (!\PC[0]~6\)) # (!PC(1) & ((\PC[0]~6\) # (GND)))
-- \PC[1]~10\ = CARRY((!\PC[0]~6\) # (!PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(1),
	datad => VCC,
	cin => \PC[0]~6\,
	combout => \PC[1]~9_combout\,
	cout => \PC[1]~10\);

-- Location: LCCOMB_X28_Y7_N20
\PC[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[2]~11_combout\ = (PC(2) & (\PC[1]~10\ $ (GND))) # (!PC(2) & (!\PC[1]~10\ & VCC))
-- \PC[2]~12\ = CARRY((PC(2) & !\PC[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(2),
	datad => VCC,
	cin => \PC[1]~10\,
	combout => \PC[2]~11_combout\,
	cout => \PC[2]~12\);

-- Location: LCCOMB_X28_Y7_N22
\PC[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[3]~13_combout\ = (PC(3) & (!\PC[2]~12\)) # (!PC(3) & ((\PC[2]~12\) # (GND)))
-- \PC[3]~14\ = CARRY((!\PC[2]~12\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datad => VCC,
	cin => \PC[2]~12\,
	combout => \PC[3]~13_combout\,
	cout => \PC[3]~14\);

-- Location: FF_X29_Y7_N23
\state.s_decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_fetch~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_decode~q\);

-- Location: FF_X29_Y7_N9
\state.s_decode2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_decode~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_decode2~q\);

-- Location: FF_X29_Y7_N25
\state.s_decode3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_decode2~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_decode3~q\);

-- Location: LCCOMB_X29_Y7_N26
\state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (!IR(7) & (!IR(5) & (!IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~21_combout\);

-- Location: FF_X29_Y7_N27
\state.s_load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_load~q\);

-- Location: LCCOMB_X29_Y7_N10
\state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (!IR(7) & (!IR(5) & (IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~20_combout\);

-- Location: FF_X29_Y7_N11
\state.s_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_add~q\);

-- Location: LCCOMB_X25_Y7_N30
\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = \memory|sram|ram_block|auto_generated|q_a\(1) $ (\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|sram|ram_block|auto_generated|q_a\(1),
	datad => \state.s_add~q\,
	combout => \Add1~5_combout\);

-- Location: LCCOMB_X25_Y7_N4
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \state.s_add~q\ $ (\memory|sram|ram_block|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X25_Y7_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_cout\ = CARRY(!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_add~q\,
	datad => VCC,
	cout => \Add1~2_cout\);

-- Location: LCCOMB_X25_Y7_N12
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (A(0) & ((\Add1~0_combout\ & (!\Add1~2_cout\)) # (!\Add1~0_combout\ & (\Add1~2_cout\ & VCC)))) # (!A(0) & ((\Add1~0_combout\ & ((\Add1~2_cout\) # (GND))) # (!\Add1~0_combout\ & (!\Add1~2_cout\))))
-- \Add1~4\ = CARRY((A(0) & (\Add1~0_combout\ & !\Add1~2_cout\)) # (!A(0) & ((\Add1~0_combout\) # (!\Add1~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(0),
	datab => \Add1~0_combout\,
	datad => VCC,
	cin => \Add1~2_cout\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X25_Y7_N14
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = ((\Add1~5_combout\ $ (A(1) $ (\Add1~4\)))) # (GND)
-- \Add1~7\ = CARRY((\Add1~5_combout\ & (A(1) & !\Add1~4\)) # (!\Add1~5_combout\ & ((A(1)) # (!\Add1~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~5_combout\,
	datab => A(1),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X26_Y7_N10
\A[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[1]~1_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(1))) # (!\state.s_load~q\ & ((\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(1),
	datad => \Add1~6_combout\,
	combout => \A[1]~1_combout\);

-- Location: IOIBUF_X30_Y0_N8
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X28_Y7_N14
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.s_input~q\ & !\enter~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_input~q\,
	datad => \enter~input_o\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X29_Y7_N20
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (IR(7) & \state.s_decode3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datad => \state.s_decode3~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X29_Y7_N0
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((\Selector7~0_combout\ & (!IR(6) & !IR(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \Selector7~0_combout\,
	datac => IR(6),
	datad => IR(5),
	combout => \Selector6~1_combout\);

-- Location: FF_X29_Y7_N1
\state.s_input\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_input~q\);

-- Location: LCCOMB_X29_Y7_N2
\state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (!IR(7) & (IR(5) & (IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~22_combout\);

-- Location: FF_X29_Y7_N3
\state.s_sub\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_sub~q\);

-- Location: LCCOMB_X26_Y7_N18
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\state.s_load~q\) # ((\state.s_sub~q\) # ((\state.s_input~q\) # (\state.s_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \state.s_sub~q\,
	datac => \state.s_input~q\,
	datad => \state.s_add~q\,
	combout => \WideOr6~0_combout\);

-- Location: FF_X26_Y7_N11
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[1]~1_combout\,
	asdata => \input[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: LCCOMB_X26_Y7_N12
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = \memory|sram|ram_block|auto_generated|q_a\(2) $ (\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|sram|ram_block|auto_generated|q_a\(2),
	datad => \state.s_add~q\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X25_Y7_N16
\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (A(2) & ((\Add1~8_combout\ & (!\Add1~7\)) # (!\Add1~8_combout\ & (\Add1~7\ & VCC)))) # (!A(2) & ((\Add1~8_combout\ & ((\Add1~7\) # (GND))) # (!\Add1~8_combout\ & (!\Add1~7\))))
-- \Add1~10\ = CARRY((A(2) & (\Add1~8_combout\ & !\Add1~7\)) # (!A(2) & ((\Add1~8_combout\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(2),
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X26_Y7_N20
\A[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[2]~2_combout\ = (\state.s_load~q\ & ((\memory|sram|ram_block|auto_generated|q_a\(2)))) # (!\state.s_load~q\ & (\Add1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~9_combout\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(2),
	datad => \state.s_load~q\,
	combout => \A[2]~2_combout\);

-- Location: IOIBUF_X28_Y0_N22
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: FF_X26_Y7_N21
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[2]~2_combout\,
	asdata => \input[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: LCCOMB_X26_Y7_N2
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = \state.s_add~q\ $ (\memory|sram|ram_block|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(3),
	combout => \Add1~11_combout\);

-- Location: LCCOMB_X25_Y7_N18
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Add1~11_combout\ $ (A(3) $ (\Add1~10\)))) # (GND)
-- \Add1~13\ = CARRY((\Add1~11_combout\ & (A(3) & !\Add1~10\)) # (!\Add1~11_combout\ & ((A(3)) # (!\Add1~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~11_combout\,
	datab => A(3),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X25_Y7_N0
\A[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[3]~3_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(3))) # (!\state.s_load~q\ & ((\Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(3),
	datad => \Add1~12_combout\,
	combout => \A[3]~3_combout\);

-- Location: IOIBUF_X25_Y0_N1
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: FF_X25_Y7_N1
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[3]~3_combout\,
	asdata => \input[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: LCCOMB_X26_Y7_N30
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = \state.s_add~q\ $ (\memory|sram|ram_block|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(5),
	combout => \Add1~17_combout\);

-- Location: LCCOMB_X26_Y7_N8
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \state.s_add~q\ $ (\memory|sram|ram_block|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(4),
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X25_Y7_N20
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (A(4) & ((\Add1~14_combout\ & (!\Add1~13\)) # (!\Add1~14_combout\ & (\Add1~13\ & VCC)))) # (!A(4) & ((\Add1~14_combout\ & ((\Add1~13\) # (GND))) # (!\Add1~14_combout\ & (!\Add1~13\))))
-- \Add1~16\ = CARRY((A(4) & (\Add1~14_combout\ & !\Add1~13\)) # (!A(4) & ((\Add1~14_combout\) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(4),
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X25_Y7_N22
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = ((\Add1~17_combout\ $ (A(5) $ (\Add1~16\)))) # (GND)
-- \Add1~19\ = CARRY((\Add1~17_combout\ & (A(5) & !\Add1~16\)) # (!\Add1~17_combout\ & ((A(5)) # (!\Add1~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~17_combout\,
	datab => A(5),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X25_Y7_N8
\A[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[5]~5_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(5))) # (!\state.s_load~q\ & ((\Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(5),
	datad => \Add1~18_combout\,
	combout => \A[5]~5_combout\);

-- Location: IOIBUF_X23_Y0_N8
\input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: FF_X25_Y7_N9
\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[5]~5_combout\,
	asdata => \input[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

-- Location: LCCOMB_X26_Y7_N4
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = \memory|sram|ram_block|auto_generated|q_a\(6) $ (\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|sram|ram_block|auto_generated|q_a\(6),
	datad => \state.s_add~q\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X25_Y7_N24
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (\Add1~20_combout\ & ((A(6) & (!\Add1~19\)) # (!A(6) & ((\Add1~19\) # (GND))))) # (!\Add1~20_combout\ & ((A(6) & (\Add1~19\ & VCC)) # (!A(6) & (!\Add1~19\))))
-- \Add1~22\ = CARRY((\Add1~20_combout\ & ((!\Add1~19\) # (!A(6)))) # (!\Add1~20_combout\ & (!A(6) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => A(6),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X25_Y7_N2
\A[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[6]~6_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(6))) # (!\state.s_load~q\ & ((\Add1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(6),
	datad => \Add1~21_combout\,
	combout => \A[6]~6_combout\);

-- Location: IOIBUF_X21_Y0_N8
\input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: FF_X25_Y7_N3
\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[6]~6_combout\,
	asdata => \input[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

-- Location: LCCOMB_X26_Y7_N6
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = \memory|sram|ram_block|auto_generated|q_a\(7) $ (\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|sram|ram_block|auto_generated|q_a\(7),
	datad => \state.s_add~q\,
	combout => \Add1~23_combout\);

-- Location: LCCOMB_X25_Y7_N26
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = A(7) $ (\Add1~22\ $ (\Add1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => A(7),
	datad => \Add1~23_combout\,
	cin => \Add1~22\,
	combout => \Add1~24_combout\);

-- Location: LCCOMB_X25_Y7_N28
\A[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[7]~7_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(7))) # (!\state.s_load~q\ & ((\Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(7),
	datad => \Add1~24_combout\,
	combout => \A[7]~7_combout\);

-- Location: IOIBUF_X18_Y0_N22
\input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: FF_X25_Y7_N29
\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[7]~7_combout\,
	asdata => \input[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

-- Location: M9K_X27_Y7_N0
\memory|sram|ram_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000040000000000000000000000000000000000000000000000000003FC001E0031000FF0007800C5002B4003F001F4001F000F8005E0007C003F00200003E001F4001D",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "program_EC2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:memory|altram:sram|altsyncram:ram_block|altsyncram_74a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemWr~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => GND,
	portadatain => \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y7_N6
\A[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[4]~4_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(4))) # (!\state.s_load~q\ & ((\Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(4),
	datad => \Add1~15_combout\,
	combout => \A[4]~4_combout\);

-- Location: IOIBUF_X32_Y0_N22
\input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: FF_X25_Y7_N7
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[4]~4_combout\,
	asdata => \input[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: LCCOMB_X29_Y7_N30
\IR[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[6]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(6),
	combout => \IR[6]~feeder_combout\);

-- Location: FF_X29_Y7_N31
\IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(6));

-- Location: LCCOMB_X29_Y7_N6
\state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (IR(7) & (IR(5) & (!IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~25_combout\);

-- Location: FF_X29_Y7_N7
\state.s_jz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_jz~q\);

-- Location: LCCOMB_X28_Y7_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!A(0) & (!A(3) & (!A(1) & !A(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(0),
	datab => A(3),
	datac => A(1),
	datad => A(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X28_Y7_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!A(7) & (!A(4) & (!A(5) & !A(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(7),
	datab => A(4),
	datac => A(5),
	datad => A(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X29_Y7_N22
\PC[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[0]~7_combout\ = (\state.s_jpos~q\ & (((A(7))))) # (!\state.s_jpos~q\ & (!\state.s_jz~q\ & (!\state.s_fetch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_jz~q\,
	datab => \state.s_jpos~q\,
	datac => \state.s_fetch~q\,
	datad => A(7),
	combout => \PC[0]~7_combout\);

-- Location: LCCOMB_X28_Y7_N12
\PC[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[0]~8_combout\ = (!\PC[0]~7_combout\ & (((\Equal0~0_combout\ & \Equal0~1_combout\)) # (!\state.s_jz~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_jz~q\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \PC[0]~7_combout\,
	combout => \PC[0]~8_combout\);

-- Location: FF_X28_Y7_N23
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[3]~13_combout\,
	asdata => IR(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_state.s_fetch~q\,
	ena => \PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X28_Y7_N24
\PC[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[4]~15_combout\ = \PC[3]~14\ $ (!PC(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PC(4),
	cin => \PC[3]~14\,
	combout => \PC[4]~15_combout\);

-- Location: LCCOMB_X26_Y7_N24
\IR[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[4]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(4),
	combout => \IR[4]~feeder_combout\);

-- Location: FF_X26_Y7_N25
\IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(4));

-- Location: FF_X28_Y7_N25
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[4]~15_combout\,
	asdata => IR(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_state.s_fetch~q\,
	ena => \PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X28_Y7_N0
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.s_decode~q\ & ((IR(4)))) # (!\state.s_decode~q\ & (PC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datac => IR(4),
	datad => \state.s_decode~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X28_Y7_N4
\memory_address[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory_address[0]~0_combout\ = (!\reset~input_o\ & ((\state.s_decode~q\) # (!\state.s_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \state.s_start~q\,
	datad => \state.s_decode~q\,
	combout => \memory_address[0]~0_combout\);

-- Location: FF_X28_Y7_N1
\memory_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(4));

-- Location: LCCOMB_X26_Y7_N22
\IR[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[3]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(3),
	combout => \IR[3]~feeder_combout\);

-- Location: FF_X26_Y7_N23
\IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(3));

-- Location: LCCOMB_X28_Y7_N10
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.s_decode~q\ & (IR(3))) # (!\state.s_decode~q\ & ((PC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datac => PC(3),
	datad => \state.s_decode~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X28_Y7_N11
\memory_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(3));

-- Location: LCCOMB_X26_Y7_N28
\IR[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[2]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|sram|ram_block|auto_generated|q_a\(2),
	combout => \IR[2]~feeder_combout\);

-- Location: FF_X26_Y7_N29
\IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(2));

-- Location: FF_X28_Y7_N21
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[2]~11_combout\,
	asdata => IR(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_state.s_fetch~q\,
	ena => \PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X28_Y7_N8
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.s_decode~q\ & ((IR(2)))) # (!\state.s_decode~q\ & (PC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(2),
	datac => IR(2),
	datad => \state.s_decode~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X28_Y7_N9
\memory_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(2));

-- Location: LCCOMB_X26_Y7_N14
\IR[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[1]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(1),
	combout => \IR[1]~feeder_combout\);

-- Location: FF_X26_Y7_N15
\IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(1));

-- Location: FF_X28_Y7_N19
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[1]~9_combout\,
	asdata => IR(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_state.s_fetch~q\,
	ena => \PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X28_Y7_N30
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.s_decode~q\ & ((IR(1)))) # (!\state.s_decode~q\ & (PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(1),
	datac => IR(1),
	datad => \state.s_decode~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X28_Y7_N31
\memory_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(1));

-- Location: LCCOMB_X29_Y7_N16
\IR[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[5]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(5),
	combout => \IR[5]~feeder_combout\);

-- Location: FF_X29_Y7_N17
\IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(5));

-- Location: LCCOMB_X29_Y7_N28
\state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (IR(7) & (!IR(5) & (IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~24_combout\);

-- Location: FF_X29_Y7_N29
\state.s_jpos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_jpos~q\);

-- Location: LCCOMB_X28_Y7_N6
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\state.s_jpos~q\) # ((\state.s_jz~q\) # ((\enter~input_o\ & \state.s_input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enter~input_o\,
	datab => \state.s_jpos~q\,
	datac => \state.s_input~q\,
	datad => \state.s_jz~q\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X29_Y7_N18
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.s_sub~q\) # ((\state.s_load~q\) # ((\state.s_store2~q\) # (\state.s_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_sub~q\,
	datab => \state.s_load~q\,
	datac => \state.s_store2~q\,
	datad => \state.s_add~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X29_Y7_N12
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (!\Selector5~1_combout\ & !\Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector5~1_combout\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~2_combout\);

-- Location: FF_X29_Y7_N13
\state.s_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_start~q\);

-- Location: LCCOMB_X29_Y7_N24
\state.s_start2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s_start2~0_combout\ = !\state.s_start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_start~q\,
	combout => \state.s_start2~0_combout\);

-- Location: LCCOMB_X30_Y7_N0
\state.s_start2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s_start2~feeder_combout\ = \state.s_start2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_start2~0_combout\,
	combout => \state.s_start2~feeder_combout\);

-- Location: FF_X30_Y7_N1
\state.s_start2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_start2~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_start2~q\);

-- Location: LCCOMB_X30_Y7_N30
\state.s_start3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s_start3~feeder_combout\ = \state.s_start2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_start2~q\,
	combout => \state.s_start3~feeder_combout\);

-- Location: FF_X30_Y7_N31
\state.s_start3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_start3~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_start3~q\);

-- Location: FF_X29_Y7_N21
\state.s_fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_start3~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_fetch~q\);

-- Location: FF_X26_Y7_N17
\IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(0));

-- Location: FF_X28_Y7_N17
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[0]~5_combout\,
	asdata => IR(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_state.s_fetch~q\,
	ena => \PC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X28_Y7_N28
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.s_decode~q\ & ((IR(0)))) # (!\state.s_decode~q\ & (PC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(0),
	datac => IR(0),
	datad => \state.s_decode~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X28_Y7_N29
\memory_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(0));

-- Location: LCCOMB_X29_Y7_N4
\IR[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[7]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(7),
	combout => \IR[7]~feeder_combout\);

-- Location: FF_X29_Y7_N5
\IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(7));

-- Location: LCCOMB_X29_Y7_N14
\state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (!IR(7) & (IR(5) & (!IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~23_combout\);

-- Location: FF_X29_Y7_N15
\state.s_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_store~q\);

-- Location: FF_X29_Y7_N19
\state.s_store2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_store~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_store2~q\);

-- Location: LCCOMB_X30_Y7_N8
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\state.s_store~q\) # ((!\state.s_store2~q\ & \MemWr~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_store2~q\,
	datac => \MemWr~q\,
	datad => \state.s_store~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X30_Y7_N9
MemWr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemWr~q\);

-- Location: LCCOMB_X26_Y7_N0
\A[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[0]~0_combout\ = (\state.s_load~q\ & (\memory|sram|ram_block|auto_generated|q_a\(0))) # (!\state.s_load~q\ & ((\Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|sram|ram_block|auto_generated|q_a\(0),
	datab => \state.s_load~q\,
	datad => \Add1~3_combout\,
	combout => \A[0]~0_combout\);

-- Location: IOIBUF_X23_Y0_N15
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: FF_X26_Y7_N1
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \A[0]~0_combout\,
	asdata => \input[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_input~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: LCCOMB_X30_Y7_N26
\state.s_halt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s_halt~0_combout\ = (\state.s_halt~q\) # ((IR(5) & (IR(6) & \Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(5),
	datab => IR(6),
	datac => \state.s_halt~q\,
	datad => \Selector7~0_combout\,
	combout => \state.s_halt~0_combout\);

-- Location: FF_X30_Y7_N27
\state.s_halt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_halt~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_halt~q\);

-- Location: LCCOMB_X30_Y7_N16
\halt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \halt~0_combout\ = (\halt~reg0_q\) # (\state.s_halt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \halt~reg0_q\,
	datad => \state.s_halt~q\,
	combout => \halt~0_combout\);

-- Location: FF_X30_Y7_N17
\halt~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \halt~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \halt~reg0_q\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_halt <= \halt~output_o\;
END structure;


