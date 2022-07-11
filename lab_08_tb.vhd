library ieee; 
use ieee.std_logic_1164.all;

entity lab_08_tb is
end entity lab_08_tb;

architecture arch of lab_08_tb is
  signal clock  : std_logic :='0';
  signal reset  : std_logic :='0';

  signal i : std_logic_vector(3 downto 0);
  
  constant T : time := 100 ns; 
  signal finished : std_logic := '0';

begin
  dut: entity work.lab_08
    port map (
      clk => clock,
      rst => reset,
      dp_out => i
    );

  clock <= not clock after T/2 when finished /= '1' else '0';
  reset <= '1', '0' after 50 ns;

  stimulus:  process begin
    finished <= '0';
    wait until (reset = '0');
    wait until (i = "1010");
	 wait for 2*T;
    finished <= '1';
    wait;
  end process stimulus;
end arch;