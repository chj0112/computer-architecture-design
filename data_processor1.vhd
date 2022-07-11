LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY data_processor1 IS
	PORT	(	input		:	IN			std_logic_vector(3 downto 0);
				MAR_in	:	IN			std_logic_vector(2 downto 0);
				alu_sel	:	IN			std_logic_vector(2 downto 0);
				input_sel, ac_load, ram_load, mar_load : IN	std_logic;
				clock		:	IN			std_logic;
				output	:	OUT		std_logic_vector(3 downto 0);
				m1_out, m2_out : OUT	std_logic_vector(3 downto 0);
				data_chk	:	OUT		std_logic_vector(3 downto 0));
END data_processor1;

ARCHITECTURE structural OF data_processor1 IS

SIGNAL	data_in	:	std_logic_vector(3 downto 0);
SIGNAL	op1		:	std_logic_vector(3 downto 0);
SIGNAL	op2		:	std_logic_vector(3 downto 0);
SIGNAL	mux_ac	:	std_logic_vector(3 downto 0);
SIGNAL	MAR		:	std_logic_vector(2 downto 0);

COMPONENT asynch_ram IS
	PORT	(	data_in: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				address: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
				wr: IN STD_LOGIC;
				data_out: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
				m1, m2: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;

COMPONENT simple_alu IS
	PORT	(	op1, op2 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
				sel: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				alu_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0) );
END COMPONENT;

BEGIN
	RAM : asynch_ram
			PORT MAP (data_in => data_in, address => MAR, wr => ram_load, data_out => op2, m1 => m1_out, m2 => m2_out);
	ALU : simple_alu
			PORT MAP (op1 => op1, op2 => op2, sel => alu_sel, alu_out => data_in);

	mux_ac <= input WHEN input_sel = '1' ELSE data_in;

	PROCESS(clock)
	BEGIN
		IF (clock'event AND clock = '1') THEN
			IF (ac_load = '1') THEN
				op1 <= mux_ac;
				output <= mux_ac;
			END IF;
			IF (mar_load = '1') THEN
				MAR <= mar_in;
			END IF;
		END IF;
	END PROCESS;
	data_chk <= data_in;
END structural;