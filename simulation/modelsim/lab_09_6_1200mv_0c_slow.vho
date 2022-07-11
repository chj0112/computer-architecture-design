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

-- DATE "05/22/2022 15:52:11"

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

ENTITY 	lab_09 IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	Input : IN std_logic_vector(7 DOWNTO 0);
	Output : BUFFER std_logic_vector(7 DOWNTO 0);
	Halt : BUFFER std_logic
	);
END lab_09;

-- Design Ports Information
-- Output[0]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Halt	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[6]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_09 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Halt : std_logic;
SIGNAL \U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Output[0]~output_o\ : std_logic;
SIGNAL \Output[1]~output_o\ : std_logic;
SIGNAL \Output[2]~output_o\ : std_logic;
SIGNAL \Output[3]~output_o\ : std_logic;
SIGNAL \Output[4]~output_o\ : std_logic;
SIGNAL \Output[5]~output_o\ : std_logic;
SIGNAL \Output[6]~output_o\ : std_logic;
SIGNAL \Output[7]~output_o\ : std_logic;
SIGNAL \Halt~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|U6_A|Q[0]~8_combout\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|U3_inc|Add0~1_combout\ : std_logic;
SIGNAL \U1|U1_JNZmux|Y[3]~3_combout\ : std_logic;
SIGNAL \U1|U6_A|Q[0]~9\ : std_logic;
SIGNAL \U1|U6_A|Q[1]~10_combout\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \U0|Mux8~0_combout\ : std_logic;
SIGNAL \U1|U6_A|Q[1]~11\ : std_logic;
SIGNAL \U1|U6_A|Q[2]~12_combout\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \U1|U6_A|Q[2]~13\ : std_logic;
SIGNAL \U1|U6_A|Q[3]~14_combout\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \U1|U6_A|Q[3]~15\ : std_logic;
SIGNAL \U1|U6_A|Q[4]~16_combout\ : std_logic;
SIGNAL \Input[4]~input_o\ : std_logic;
SIGNAL \U1|U6_A|Q[4]~17\ : std_logic;
SIGNAL \U1|U6_A|Q[5]~18_combout\ : std_logic;
SIGNAL \Input[5]~input_o\ : std_logic;
SIGNAL \U1|U6_A|Q[5]~19\ : std_logic;
SIGNAL \U1|U6_A|Q[6]~20_combout\ : std_logic;
SIGNAL \Input[6]~input_o\ : std_logic;
SIGNAL \U1|U6_A|Q[6]~21\ : std_logic;
SIGNAL \U1|U6_A|Q[7]~22_combout\ : std_logic;
SIGNAL \Input[7]~input_o\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U0|Mux6~0_combout\ : std_logic;
SIGNAL \U1|U3_inc|Add0~0_combout\ : std_logic;
SIGNAL \U1|U1_JNZmux|Y[2]~2_combout\ : std_logic;
SIGNAL \U0|Mux4~0_combout\ : std_logic;
SIGNAL \U0|Mux4~1_combout\ : std_logic;
SIGNAL \U0|Mux9~0_combout\ : std_logic;
SIGNAL \U1|U1_JNZmux|Y[1]~1_combout\ : std_logic;
SIGNAL \U1|U1_JNZmux|Y[0]~0_combout\ : std_logic;
SIGNAL \U0|Mux2~0_combout\ : std_logic;
SIGNAL \U0|Mux5~0_combout\ : std_logic;
SIGNAL \U0|Mux3~0_combout\ : std_logic;
SIGNAL \U0|Mux3~1_combout\ : std_logic;
SIGNAL \U0|Mux7~0_combout\ : std_logic;
SIGNAL \U0|Mux10~0_combout\ : std_logic;
SIGNAL \U0|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|U0_IR|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|U2_PC|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U6_A|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Input <= Input;
Output <= ww_Output;
Halt <= ww_Halt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U1|U2_PC|Q\(3) & \U1|U2_PC|Q\(2) & \U1|U2_PC|Q\(1) & \U1|U2_PC|Q\(0));

\U1|U0_IR|Q\(0) <= \U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U1|U0_IR|Q\(1) <= \U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U1|U0_IR|Q\(2) <= \U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U1|U0_IR|Q\(3) <= \U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U1|U0_IR|Q\(5) <= \U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U1|U0_IR|Q\(6) <= \U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U1|U0_IR|Q\(7) <= \U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X33_Y15_N2
\Output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U6_A|Q\(0),
	devoe => ww_devoe,
	o => \Output[0]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\Output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U6_A|Q\(1),
	devoe => ww_devoe,
	o => \Output[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\Output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U6_A|Q\(2),
	devoe => ww_devoe,
	o => \Output[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\Output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U6_A|Q\(3),
	devoe => ww_devoe,
	o => \Output[3]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\Output[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U6_A|Q\(4),
	devoe => ww_devoe,
	o => \Output[4]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\Output[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U6_A|Q\(5),
	devoe => ww_devoe,
	o => \Output[5]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\Output[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U6_A|Q\(6),
	devoe => ww_devoe,
	o => \Output[6]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\Output[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U6_A|Q\(7),
	devoe => ww_devoe,
	o => \Output[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Halt~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \Halt~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\Clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G17
\Clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X9_Y16_N12
\U1|U6_A|Q[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U6_A|Q[0]~8_combout\ = \U1|U6_A|Q\(0) $ (VCC)
-- \U1|U6_A|Q[0]~9\ = CARRY(\U1|U6_A|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U6_A|Q\(0),
	datad => VCC,
	combout => \U1|U6_A|Q[0]~8_combout\,
	cout => \U1|U6_A|Q[0]~9\);

-- Location: IOIBUF_X33_Y16_N8
\Input[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\Reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G19
\Reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: M9K_X7_Y16_N0
\U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000007F001840050001000030",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "program.mif",
	init_file_layout => "port_a",
	logical_ram_name => "dp:U1|lpm_rom:U4_ROM|altrom:srom|altsyncram:rom_block|altsyncram_8e01:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock~inputclkctrl_outclk\,
	ena0 => \U0|Mux5~0_combout\,
	clr0 => \Reset~inputclkctrl_outclk\,
	portaaddr => \U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U1|U4_ROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X10_Y16_N6
\U1|U3_inc|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U3_inc|Add0~1_combout\ = \U1|U2_PC|Q\(3) $ (((\U1|U2_PC|Q\(2) & (\U1|U2_PC|Q\(0) & \U1|U2_PC|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2_PC|Q\(2),
	datab => \U1|U2_PC|Q\(0),
	datac => \U1|U2_PC|Q\(3),
	datad => \U1|U2_PC|Q\(1),
	combout => \U1|U3_inc|Add0~1_combout\);

-- Location: LCCOMB_X9_Y16_N4
\U1|U1_JNZmux|Y[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U1_JNZmux|Y[3]~3_combout\ = (\U0|Mux9~0_combout\ & (\U1|U0_IR|Q\(3))) # (!\U0|Mux9~0_combout\ & ((\U1|U3_inc|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux9~0_combout\,
	datac => \U1|U0_IR|Q\(3),
	datad => \U1|U3_inc|Add0~1_combout\,
	combout => \U1|U1_JNZmux|Y[3]~3_combout\);

-- Location: LCCOMB_X9_Y16_N14
\U1|U6_A|Q[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U6_A|Q[1]~10_combout\ = (\U1|U6_A|Q\(1) & (\U1|U6_A|Q[0]~9\ & VCC)) # (!\U1|U6_A|Q\(1) & (!\U1|U6_A|Q[0]~9\))
-- \U1|U6_A|Q[1]~11\ = CARRY((!\U1|U6_A|Q\(1) & !\U1|U6_A|Q[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U6_A|Q\(1),
	datad => VCC,
	cin => \U1|U6_A|Q[0]~9\,
	combout => \U1|U6_A|Q[1]~10_combout\,
	cout => \U1|U6_A|Q[1]~11\);

-- Location: IOIBUF_X33_Y16_N1
\Input[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: LCCOMB_X9_Y16_N0
\U0|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|Mux8~0_combout\ = (\U0|state\(0) & (\U0|state\(2) $ (\U0|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|state\(2),
	datac => \U0|state\(1),
	datad => \U0|state\(0),
	combout => \U0|Mux8~0_combout\);

-- Location: FF_X9_Y16_N15
\U1|U6_A|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|U6_A|Q[1]~10_combout\,
	asdata => \Input[1]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => \U0|Mux7~0_combout\,
	ena => \U0|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6_A|Q\(1));

-- Location: LCCOMB_X9_Y16_N16
\U1|U6_A|Q[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U6_A|Q[2]~12_combout\ = (\U1|U6_A|Q\(2) & ((GND) # (!\U1|U6_A|Q[1]~11\))) # (!\U1|U6_A|Q\(2) & (\U1|U6_A|Q[1]~11\ $ (GND)))
-- \U1|U6_A|Q[2]~13\ = CARRY((\U1|U6_A|Q\(2)) # (!\U1|U6_A|Q[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U6_A|Q\(2),
	datad => VCC,
	cin => \U1|U6_A|Q[1]~11\,
	combout => \U1|U6_A|Q[2]~12_combout\,
	cout => \U1|U6_A|Q[2]~13\);

-- Location: IOIBUF_X14_Y0_N1
\Input[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: FF_X9_Y16_N17
\U1|U6_A|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|U6_A|Q[2]~12_combout\,
	asdata => \Input[2]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => \U0|Mux7~0_combout\,
	ena => \U0|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6_A|Q\(2));

-- Location: LCCOMB_X9_Y16_N18
\U1|U6_A|Q[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U6_A|Q[3]~14_combout\ = (\U1|U6_A|Q\(3) & (\U1|U6_A|Q[2]~13\ & VCC)) # (!\U1|U6_A|Q\(3) & (!\U1|U6_A|Q[2]~13\))
-- \U1|U6_A|Q[3]~15\ = CARRY((!\U1|U6_A|Q\(3) & !\U1|U6_A|Q[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U6_A|Q\(3),
	datad => VCC,
	cin => \U1|U6_A|Q[2]~13\,
	combout => \U1|U6_A|Q[3]~14_combout\,
	cout => \U1|U6_A|Q[3]~15\);

-- Location: IOIBUF_X33_Y14_N8
\Input[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: FF_X9_Y16_N19
\U1|U6_A|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|U6_A|Q[3]~14_combout\,
	asdata => \Input[3]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => \U0|Mux7~0_combout\,
	ena => \U0|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6_A|Q\(3));

-- Location: LCCOMB_X9_Y16_N20
\U1|U6_A|Q[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U6_A|Q[4]~16_combout\ = (\U1|U6_A|Q\(4) & ((GND) # (!\U1|U6_A|Q[3]~15\))) # (!\U1|U6_A|Q\(4) & (\U1|U6_A|Q[3]~15\ $ (GND)))
-- \U1|U6_A|Q[4]~17\ = CARRY((\U1|U6_A|Q\(4)) # (!\U1|U6_A|Q[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U6_A|Q\(4),
	datad => VCC,
	cin => \U1|U6_A|Q[3]~15\,
	combout => \U1|U6_A|Q[4]~16_combout\,
	cout => \U1|U6_A|Q[4]~17\);

-- Location: IOIBUF_X14_Y31_N8
\Input[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(4),
	o => \Input[4]~input_o\);

-- Location: FF_X9_Y16_N21
\U1|U6_A|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|U6_A|Q[4]~16_combout\,
	asdata => \Input[4]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => \U0|Mux7~0_combout\,
	ena => \U0|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6_A|Q\(4));

-- Location: LCCOMB_X9_Y16_N22
\U1|U6_A|Q[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U6_A|Q[5]~18_combout\ = (\U1|U6_A|Q\(5) & (\U1|U6_A|Q[4]~17\ & VCC)) # (!\U1|U6_A|Q\(5) & (!\U1|U6_A|Q[4]~17\))
-- \U1|U6_A|Q[5]~19\ = CARRY((!\U1|U6_A|Q\(5) & !\U1|U6_A|Q[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U6_A|Q\(5),
	datad => VCC,
	cin => \U1|U6_A|Q[4]~17\,
	combout => \U1|U6_A|Q[5]~18_combout\,
	cout => \U1|U6_A|Q[5]~19\);

-- Location: IOIBUF_X10_Y31_N1
\Input[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(5),
	o => \Input[5]~input_o\);

-- Location: FF_X9_Y16_N23
\U1|U6_A|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|U6_A|Q[5]~18_combout\,
	asdata => \Input[5]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => \U0|Mux7~0_combout\,
	ena => \U0|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6_A|Q\(5));

-- Location: LCCOMB_X9_Y16_N24
\U1|U6_A|Q[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U6_A|Q[6]~20_combout\ = (\U1|U6_A|Q\(6) & ((GND) # (!\U1|U6_A|Q[5]~19\))) # (!\U1|U6_A|Q\(6) & (\U1|U6_A|Q[5]~19\ $ (GND)))
-- \U1|U6_A|Q[6]~21\ = CARRY((\U1|U6_A|Q\(6)) # (!\U1|U6_A|Q[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U6_A|Q\(6),
	datad => VCC,
	cin => \U1|U6_A|Q[5]~19\,
	combout => \U1|U6_A|Q[6]~20_combout\,
	cout => \U1|U6_A|Q[6]~21\);

-- Location: IOIBUF_X10_Y0_N8
\Input[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(6),
	o => \Input[6]~input_o\);

-- Location: FF_X9_Y16_N25
\U1|U6_A|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|U6_A|Q[6]~20_combout\,
	asdata => \Input[6]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => \U0|Mux7~0_combout\,
	ena => \U0|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6_A|Q\(6));

-- Location: LCCOMB_X9_Y16_N26
\U1|U6_A|Q[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U6_A|Q[7]~22_combout\ = \U1|U6_A|Q\(7) $ (!\U1|U6_A|Q[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U6_A|Q\(7),
	cin => \U1|U6_A|Q[6]~21\,
	combout => \U1|U6_A|Q[7]~22_combout\);

-- Location: IOIBUF_X33_Y15_N8
\Input[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(7),
	o => \Input[7]~input_o\);

-- Location: FF_X9_Y16_N27
\U1|U6_A|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|U6_A|Q[7]~22_combout\,
	asdata => \Input[7]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => \U0|Mux7~0_combout\,
	ena => \U0|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6_A|Q\(7));

-- Location: LCCOMB_X9_Y16_N8
\U1|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (!\U1|U6_A|Q\(5) & (!\U1|U6_A|Q\(6) & (!\U1|U6_A|Q\(7) & !\U1|U6_A|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U6_A|Q\(5),
	datab => \U1|U6_A|Q\(6),
	datac => \U1|U6_A|Q\(7),
	datad => \U1|U6_A|Q\(4),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y16_N30
\U1|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (!\U1|U6_A|Q\(0) & (!\U1|U6_A|Q\(2) & (!\U1|U6_A|Q\(1) & !\U1|U6_A|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U6_A|Q\(0),
	datab => \U1|U6_A|Q\(2),
	datac => \U1|U6_A|Q\(1),
	datad => \U1|U6_A|Q\(3),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y16_N2
\U0|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|Mux6~0_combout\ = (\U0|Mux5~0_combout\) # ((\U0|Mux9~0_combout\ & ((!\U1|Equal0~0_combout\) # (!\U1|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux9~0_combout\,
	datab => \U1|Equal0~1_combout\,
	datac => \U1|Equal0~0_combout\,
	datad => \U0|Mux5~0_combout\,
	combout => \U0|Mux6~0_combout\);

-- Location: FF_X9_Y16_N5
\U1|U2_PC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|U1_JNZmux|Y[3]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \U0|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2_PC|Q\(3));

-- Location: LCCOMB_X10_Y16_N4
\U1|U3_inc|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U3_inc|Add0~0_combout\ = \U1|U2_PC|Q\(2) $ (((\U1|U2_PC|Q\(0) & \U1|U2_PC|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2_PC|Q\(2),
	datac => \U1|U2_PC|Q\(0),
	datad => \U1|U2_PC|Q\(1),
	combout => \U1|U3_inc|Add0~0_combout\);

-- Location: LCCOMB_X9_Y16_N10
\U1|U1_JNZmux|Y[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U1_JNZmux|Y[2]~2_combout\ = (\U0|Mux9~0_combout\ & (\U1|U0_IR|Q\(2))) # (!\U0|Mux9~0_combout\ & ((\U1|U3_inc|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux9~0_combout\,
	datac => \U1|U0_IR|Q\(2),
	datad => \U1|U3_inc|Add0~0_combout\,
	combout => \U1|U1_JNZmux|Y[2]~2_combout\);

-- Location: FF_X9_Y16_N11
\U1|U2_PC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|U1_JNZmux|Y[2]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \U0|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2_PC|Q\(2));

-- Location: LCCOMB_X8_Y16_N18
\U0|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|Mux4~0_combout\ = (\U1|U0_IR|Q\(5) & ((\U1|U0_IR|Q\(6)) # (\U1|U0_IR|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0_IR|Q\(6),
	datac => \U1|U0_IR|Q\(7),
	datad => \U1|U0_IR|Q\(5),
	combout => \U0|Mux4~0_combout\);

-- Location: LCCOMB_X8_Y16_N24
\U0|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|Mux4~1_combout\ = (\U0|state\(2) & (\U0|state\(1) & (\U0|state\(0)))) # (!\U0|state\(2) & (!\U0|state\(0) & ((\U0|Mux4~0_combout\) # (!\U0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state\(2),
	datab => \U0|state\(1),
	datac => \U0|state\(0),
	datad => \U0|Mux4~0_combout\,
	combout => \U0|Mux4~1_combout\);

-- Location: FF_X8_Y16_N25
\U0|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U0|Mux4~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|state\(0));

-- Location: LCCOMB_X8_Y16_N8
\U0|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|Mux9~0_combout\ = (\U0|state\(2) & (\U0|state\(1) & !\U0|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state\(2),
	datac => \U0|state\(1),
	datad => \U0|state\(0),
	combout => \U0|Mux9~0_combout\);

-- Location: LCCOMB_X9_Y16_N28
\U1|U1_JNZmux|Y[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U1_JNZmux|Y[1]~1_combout\ = (\U0|Mux9~0_combout\ & (\U1|U0_IR|Q\(1))) # (!\U0|Mux9~0_combout\ & ((\U1|U2_PC|Q\(1) $ (\U1|U2_PC|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux9~0_combout\,
	datab => \U1|U0_IR|Q\(1),
	datac => \U1|U2_PC|Q\(1),
	datad => \U1|U2_PC|Q\(0),
	combout => \U1|U1_JNZmux|Y[1]~1_combout\);

-- Location: FF_X9_Y16_N29
\U1|U2_PC|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|U1_JNZmux|Y[1]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \U0|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2_PC|Q\(1));

-- Location: LCCOMB_X9_Y16_N6
\U1|U1_JNZmux|Y[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U1_JNZmux|Y[0]~0_combout\ = (\U0|Mux9~0_combout\ & (\U1|U0_IR|Q\(0))) # (!\U0|Mux9~0_combout\ & ((!\U1|U2_PC|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0_IR|Q\(0),
	datac => \U1|U2_PC|Q\(0),
	datad => \U0|Mux9~0_combout\,
	combout => \U1|U1_JNZmux|Y[0]~0_combout\);

-- Location: FF_X9_Y16_N7
\U1|U2_PC|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|U1_JNZmux|Y[0]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \U0|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2_PC|Q\(0));

-- Location: LCCOMB_X8_Y16_N30
\U0|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|Mux2~0_combout\ = (\U0|state\(1) & ((\U0|state\(2) & ((\U0|state\(0)))) # (!\U0|state\(2) & (\U1|U0_IR|Q\(7) & !\U0|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0_IR|Q\(7),
	datab => \U0|state\(1),
	datac => \U0|state\(2),
	datad => \U0|state\(0),
	combout => \U0|Mux2~0_combout\);

-- Location: FF_X8_Y16_N31
\U0|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U0|Mux2~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|state\(2));

-- Location: LCCOMB_X8_Y16_N22
\U0|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|Mux5~0_combout\ = (!\U0|state\(2) & (!\U0|state\(1) & \U0|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state\(2),
	datac => \U0|state\(1),
	datad => \U0|state\(0),
	combout => \U0|Mux5~0_combout\);

-- Location: LCCOMB_X8_Y16_N28
\U0|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|Mux3~0_combout\ = (\U0|state\(0) & (\U0|state\(2) $ ((\U0|state\(1))))) # (!\U0|state\(0) & ((\U0|state\(2)) # ((!\U1|U0_IR|Q\(6)) # (!\U0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state\(2),
	datab => \U0|state\(0),
	datac => \U0|state\(1),
	datad => \U1|U0_IR|Q\(6),
	combout => \U0|Mux3~0_combout\);

-- Location: LCCOMB_X8_Y16_N4
\U0|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|Mux3~1_combout\ = (!\U0|Mux3~0_combout\ & ((\U1|U0_IR|Q\(5)) # ((\U0|state\(0)) # (\U1|U0_IR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0_IR|Q\(5),
	datab => \U0|state\(0),
	datac => \U1|U0_IR|Q\(7),
	datad => \U0|Mux3~0_combout\,
	combout => \U0|Mux3~1_combout\);

-- Location: FF_X8_Y16_N5
\U0|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U0|Mux3~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|state\(1));

-- Location: LCCOMB_X8_Y16_N16
\U0|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|Mux7~0_combout\ = (\U0|state\(1) & (!\U0|state\(2) & \U0|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|state\(1),
	datac => \U0|state\(2),
	datad => \U0|state\(0),
	combout => \U0|Mux7~0_combout\);

-- Location: FF_X9_Y16_N13
\U1|U6_A|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|U6_A|Q[0]~8_combout\,
	asdata => \Input[0]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => \U0|Mux7~0_combout\,
	ena => \U0|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6_A|Q\(0));

-- Location: LCCOMB_X8_Y16_N26
\U0|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U0|Mux10~0_combout\ = (\U0|state\(0) & (\U0|state\(2) & \U0|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|state\(0),
	datac => \U0|state\(2),
	datad => \U0|state\(1),
	combout => \U0|Mux10~0_combout\);

ww_Output(0) <= \Output[0]~output_o\;

ww_Output(1) <= \Output[1]~output_o\;

ww_Output(2) <= \Output[2]~output_o\;

ww_Output(3) <= \Output[3]~output_o\;

ww_Output(4) <= \Output[4]~output_o\;

ww_Output(5) <= \Output[5]~output_o\;

ww_Output(6) <= \Output[6]~output_o\;

ww_Output(7) <= \Output[7]~output_o\;

ww_Halt <= \Halt~output_o\;
END structure;


