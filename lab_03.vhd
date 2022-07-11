LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab_03 IS
	PORT	(	reset_n	:	IN			std_logic;
				clock		:	IN			std_logic;
				load_a	:	IN			std_logic;
				start		:	IN			std_logic;
				data		:	IN			std_logic_vector(7 downto 0);
				A			:	BUFFER	std_logic_vector(7 downto 0);
				B			:	BUFFER	std_logic_vector(3 downto 0);
				state		:	BUFFER	std_logic_vector(1 downto 0);
				done		:	BUFFER	std_logic);
END lab_03;

ARCHITECTURE behavior OF lab_03 IS

BEGIN
	PROCESS (reset_n, clock)
	BEGIN
		IF reset_n = '0' THEN
			A <= (others => '0');
			B <= (others => '0');
			state <= "00";
			done <= '0';
		ELSIF (clock'event and clock = '1') THEN
			state <= state + 1;
			CASE (state) IS
				WHEN "00" => IF load_a = '0' THEN
						state <= "00";
					ELSE
						A <= data;
					END IF;
				WHEN "01" => IF start = '0' THEN
						state <= "01";
					END IF;
				WHEN "10" => IF A /= "00000000" THEN
						state <= "10";
						IF A(0) = '1' THEN
							B <= B + 1;
						END IF;
						A(0) <= A(1);
						A(1) <= A(2);
						A(2) <= A(3);
						A(3) <= A(4);
						A(4) <= A(5);
						A(5) <= A(6);
						A(6) <= A(7);
						A(7) <= '0';
					ELSE
						done <= '1';
					END IF;
				WHEN OTHERS => IF done = '1' THEN
						state <= "11";
					END IF;
			END CASE;
		END IF;
	END PROCESS;
END behavior;