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
	SIGNAL l1: STD_LOGIC_VECTOR(16 DOWNTO 0);	-- 17 xors in this level
	SIGNAL l2: STD_LOGIC_VECTOR(12 DOWNTO 0);	-- 13 xors in this level
	SIGNAL l3: STD_LOGIC_VECTOR(6 DOWNTO 0);	-- 7 xors in this level
	SIGNAL l4: STD_LOGIC_VECTOR(1 DOWNTO 0);	-- 2 xors in this level
	COMPONENT gateXOr2
		PORT (x0, x1: IN STD_LOGIC;
		  y: OUT STD_LOGIC);
	END COMPONENT;
BEGIN

	-------------- Level 1 --------------
	xor1: gateXOr2 PORT MAP (input(0),  input(1),  l1(0));
	xor2: gateXOr2 PORT MAP (input(2),  input(3),  l1(1));
	xor3: gateXOr2 PORT MAP (input(4),  input(5),  l1(2));
	xor4: gateXOr2 PORT MAP (input(7),  input(13),  l1(3));
	xor6: gateXOr2 PORT MAP (input(8),  input(14),  l1(4));
	xor7: gateXOr2 PORT MAP (input(2),  input(4),  l1(5));
	xor8: gateXOr2 PORT MAP (input(9),  input(15),  l1(6));
	xor9: gateXOr2 PORT MAP (input(6),  input(13),  l1(7));
	xor10: gateXOr2 PORT MAP (input(1),  input(11),  l1(8));
	xor11: gateXOr2 PORT MAP (input(3),  input(5),  l1(9));
	xor12: gateXOr2 PORT MAP (input(3),  input(6),  l1(10));
	xor13: gateXOr2 PORT MAP (input(2),  input(5),  l1(11));
	xor14: gateXOr2 PORT MAP (input(0),  input(8),  l1(12));
	xor15: gateXOr2 PORT MAP (input(9),  input(10),  l1(13));
	xor16: gateXOr2 PORT MAP (input(11),  input(12),  l1(14));
	xor17: gateXOr2 PORT MAP (input(10),  input(12),  l1(15));
	xor18: gateXOr2 PORT MAP (input(6),  input(15),  l1(16));
	
	-------------- Level 2 --------------

	xor19: gateXOr2 PORT MAP (l1(1),  l1(2),  l2(0));
	xor20: gateXOr2 PORT MAP (l1(0),  l1(7),  l2(1));
	xor21: gateXOr2 PORT MAP (l1(3),  l1(9),  l2(2));
	xor22: gateXOr2 PORT MAP (l1(0),  l1(10),  l2(3));
	xor23: gateXOr2 PORT MAP (l1(3),  l1(8),  l2(4));
	xor24: gateXOr2 PORT MAP (l1(5),  l1(6),  l2(5));
	xor25: gateXOr2 PORT MAP (l1(12),  input(7),  l2(6));
	xor26: gateXOr2 PORT MAP (l1(4),  l1(8),  l2(7));
	xor27: gateXOr2 PORT MAP (l1(10),  input(10),  l2(8));
	xor28: gateXOr2 PORT MAP (l1(3),  l1(11),  l2(9));
	xor29: gateXOr2 PORT MAP (l1(13),  input(0),  l2(10));
	xor30: gateXOr2 PORT MAP (l1(6),  input(12),  l2(11));
	xor31: gateXOr2 PORT MAP (l1(4),  input(5),  l2(12));

	-------------- Level 3 --------------

	xor32: gateXOr2 PORT MAP (l2(2),  l2(3),  l3(0));
	xor33: gateXOr2 PORT MAP (l1(16),  l2(0),  l3(1));
	xor34: gateXOr2 PORT MAP (l2(0),  l2(1),  l3(2));
	xor35: gateXOr2 PORT MAP (l2(5),  l2(6),  l3(3));
	xor36: gateXOr2 PORT MAP (l2(7),  l2(8),  l3(4));
	xor37: gateXOr2 PORT MAP (l1(1),  l1(2),  l3(5));
	xor38: gateXOr2 PORT MAP (l2(2),  l2(11),  l3(6));
	xor39: gateXOr2 PORT MAP (l2(1),  l2(12),  l3(7));
	
	-------------- Level 4 --------------
	xor40: gateXOr2 PORT MAP (l2(4),  l3(1),  l4(0));
	xor41: gateXOr2 PORT MAP (l1(15),  l3(2),  l4(1));

END structure;

-------- CRC 16 Encoder --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY basic_logic;
USE basic_logic.all;

ENTITY cyclicRecCheck_24bitParallel IS
  PORT (fInput: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			fOutput: OUT STD_LOGIC_VECTOR (23 DOWNTO 0));
END cyclicRecCheck_24bitParallel;

ARCHITECTURE structure OF cyclicRecCheck_24bitParallel IS
	COMPONENT remainder_algorithm
		  PORT (input: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					ouput: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
	END COMPONENT;
BEGIN

	-- remainder values are already placed in the output signal 
		-- occupying their assigned number of 8 bits
	remainderAlgo: remainder_algorithm port map (
			fInput (15 downto 0), -- data
			fOutput (7 downto 0) -- remainder
		);

	fOutput (23 downto 8) <= fInput; -- original data
END structure;