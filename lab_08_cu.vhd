LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab_08_cu IS
	PORT (clock : IN std_logic;
			reset : IN std_logic;
			iNOT10 : IN std_logic;
			load, clear, out_sel : OUT std_logic);
END lab_08_cu;

ARCHITECTURE behavior OF lab_08_cu IS
	TYPE state IS (s0, s1, s2, s3);
	SIGNAL y : state;
BEGIN
	PROCESS (reset, clock)
	BEGIN
		IF (reset = '1') THEN
			y <= s0;
			load <= '0';
			clear <= '1';
			out_sel <= '0';
		ELSIF (clock = '1' AND clock'event) THEN
			CASE y IS
				WHEN s0 =>
					IF reset = '0' THEN
						y <= s1;
						load <= '1';
						clear <= '0';
						out_sel <= '0';
					ELSE
						y <= s0;
					END IF;
				WHEN s1 =>
					y <= s2;
					load <= '1';
					clear <= '0';
					out_sel <= '1';
				WHEN s2 =>
					IF iNOT10 = '0' THEN
						y <= s3;
						load <= '0';
						clear <= '0';
						out_sel <= '0';
					ELSE
						y <= s2;
					END IF;
				WHEN s3 =>
					y <= s3;
			END CASE;
		END IF;
	END PROCESS;
END behavior;