LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab_08 IS
	PORT (clk : IN std_logic;
			rst : IN std_logic;
			dp_out : OUT std_logic_vector(3 downto 0));
END lab_08;

ARCHITECTURE structural OF lab_08 IS

SIGNAL load : std_logic;
SIGNAL clear : std_logic;
SIGNAL out_sel : std_logic;
SIGNAL iNOT10 : std_logic;

COMPONENT lab_08_dp IS
	PORT (clk    : IN STD_LOGIC ;
			load    : IN STD_LOGIC ;
			clear    : IN STD_LOGIC ;
			out_sel	: IN std_logic ;
			iNOT10 	: out std_logic;
			dp_out	: out std_logic_vector(3 downto 0));
END COMPONENT;

COMPONENT lab_08_cu IS
	PORT (clock : IN std_logic;
			reset : IN std_logic;
			iNOT10 : IN std_logic;
			load, clear, out_sel : OUT std_logic);
END COMPONENT;

BEGIN
	DP : lab_08_dp
			PORT MAP (clk => clk, load => load, clear => clear, out_sel => out_sel, 
			iNOT10 => iNOT10, dp_out => dp_out);
	CU : lab_08_cu
			PORT MAP (clock => clk, reset => rst, iNOT10 => iNOT10, 
			load => load, clear => clear, out_sel => out_sel);
END structural;