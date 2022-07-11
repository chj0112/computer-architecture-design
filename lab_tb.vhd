library ieee; 
use ieee.std_logic_1164.all;

entity lab_tb is
end entity lab_tb;

architecture arch of lab_tb is
  signal clock  : std_logic :='0';
  signal reset  : std_logic :='0';
  signal enter : std_logic :='0';
  signal input : std_logic_vector(7 downto 0) := "00000100";
  signal output : std_logic_vector(7 downto 0);
  
  signal halt : std_logic;
  
  constant T : time := 100 ns; 
  signal finished : std_logic := '0';

begin
  dut: entity work.lab
    port map (
      clock => clock,
      reset => reset,
		enter => enter,
      input => input,
		output => output,
		halt => halt
    );

  clock <= not clock after T/2 when finished /= '1' else '0';
  reset <= '1', '0' after 50 ns;

  stimulus:  process begin
    finished <= '0';
	 wait until (reset = '0');
    wait for 34*T;
	 enter <= '1';
	 wait for 2*T;
	 enter <= '0';
    wait until (halt = '1');
	 wait for 2*T;
    finished <= '1';
    wait;
  end process stimulus;
end arch;