-------- Remainder Calculation --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY basic_logic;
USE basic_logic.all;

ENTITY remainder_algorithm IS
  PORT (input: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			output: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END remainder_algorithm;

ARCHITECTURE structure OF remainder_algorithm IS
	COMPONENT gateXOr2
		PORT (x0, x1: IN STD_LOGIC;
		  y: OUT STD_LOGIC);
	END COMPONENT;
BEGIN

END structure;

-------- CRC 16 Encoder --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY basic_logic;
USE basic_logic.all;

ENTITY cyclicRecCheck_24bitParallel IS
  PORT (input: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			output: OUT STD_LOGIC_VECTOR (23 DOWNTO 0));
END cyclicRecCheck_24bitParallel;

ARCHITECTURE structure OF cyclicRecCheck_24bitParallel IS
	COMPONENT remainder_algorithm
		  PORT (input: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					output: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
	END COMPONENT;
BEGIN

END structure;