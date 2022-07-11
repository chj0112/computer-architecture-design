library ieee; 
use ieee.std_logic_1164.all;

entity lab_08_dp_tb is
end entity lab_08_dp_tb;

architecture arch of lab_08_dp_tb is
  signal clock  : std_logic :='0';
  signal reset  : std_logic :='0';

  signal sig : std_logic_vector(0 to 2);

  alias iload is sig(0);
  alias clear is sig(1);
  alias out_sel is sig(2);
  signal i : std_logic_vector(3 downto 0);
  signal iNOT10 : std_logic;
  
  constant T : time := 100 ns; 
  signal finished : std_logic := '0';

begin
 
  -- Instantiate the design under test
  dut: entity work.lab_08_dp
    port map (
      clk => clock,
      clear => reset,
      load => iload,
      out_sel => out_sel,
      dp_out => i,
		iNOT10 => iNOT10
    );
	 
-- Reset and clock

  clock <= not clock after T/2 when finished /= '1' else '0';
  reset <= '1', '0' after 50 ns;

-- Generate the test stimulus
  stimulus:  process begin
     finished <= '0';
  
    -- Wait for the Reset to be released before
    wait until (reset = '0');
 
    -- Generate each of in turn, waiting 2 clock periods between
    -- each iteration to allow for propagation times
    sig <= "010";
    wait for T;
    sig <= "100";
	 wait for T;
	 sig <= "101";
    wait until (iNOT10 = '0');
	 sig <= "001";
	 wait for T;
    -- Testing complete
    finished <= '1';
    wait;
  end process stimulus;
 
end arch;