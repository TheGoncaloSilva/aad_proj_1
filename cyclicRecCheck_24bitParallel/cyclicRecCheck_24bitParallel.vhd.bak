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
	SIGNAL l1: STD_LOGIC_VECTOR(17 DOWNTO 0);	-- 18 xors in this level
	SIGNAL l2: STC_LOGIC_VECTOR(11 DOWNTO 0);	-- 12 xors in this level
	SIGNAL l3: STC_LOGIC_VECTOR(6 DOWNTO 0);	-- 7 xors in this level
	SIGNAL l4: STC_LOGIC_VECTOR(1 DOWNTO 0);	-- 2 xors in this level
	COMPONENT gateXOr2
		PORT (x0, x1: IN STD_LOGIC;
		  y: OUT STD_LOGIC);
	END COMPONENT;
BEGIN

	-------------- Level 1 --------------
	xor1: gateXOr2 PORT MAP (input(0),  input(1),  l1(0));
	xor2: gateXOr2 PORT MAP (input(2),  input(3),  l1(1));
	xor3: gateXOr2 PORT MAP (input(4),  input(5),  l1(2));
	--- .
	--- .
	--- .

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
		  PORT (rInput: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					rOutput: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
	END COMPONENT;
BEGIN

	-- remainder values are already placed in the output signal 
		-- occupying their assigned number of 8 bits
	remainderAlgo: remainder_algorithm port map (
			input (15 downto 0), -- data
			output (7 downto 0) -- remainder
		)

	rOutput (23 downto 8) <= input; -- original data
END structure;