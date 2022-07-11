library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab_04 is
	port (clk		:	in		std_logic;
			input		:	in		std_logic_vector	(2 downto 0);
			output	:	out	std_logic);
end lab_04;

architecture sample of lab_04 is
	component rom_lab_04
		port
			(	address	:	in		std_logic_vector	(2 downto 0);
				clock		:	in		std_logic := '1';
				q			:	out	std_logic);
	end component;
	begin
		rom_lab_04_inst : rom_lab_04 port map (
			address	=> input,
			clock		=> clk,
			q			=> output);
end sample;