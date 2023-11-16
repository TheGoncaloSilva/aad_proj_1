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
	SIGNAL l1: STD_LOGIC_VECTOR(15 DOWNTO 0);	-- 16 xors in this level
	SIGNAL l2: STD_LOGIC_VECTOR(12 DOWNTO 0);	-- 13 xors in this level
	SIGNAL l3: STD_LOGIC_VECTOR(2 DOWNTO 0);	-- 7 xors in this level
	COMPONENT gateXOr2
		PORT (x0, x1: IN STD_LOGIC;
		  y: OUT STD_LOGIC);
	END COMPONENT;
BEGIN

	-------------- Level 1 --------------
	xor1: gateXOr2 PORT MAP (input(13),  input(7),  l1(0));
	xor2: gateXOr2 PORT MAP (input(6),  input(4),  l1(1));
	xor3: gateXOr2 PORT MAP (input(5),  input(3),  l1(2));
	xor4: gateXOr2 PORT MAP (input(14),  input(1),  l1(3));
	xor5: gateXOr2 PORT MAP (input(0),  input(2),  l1(4));
	xor6: gateXOr2 PORT MAP (input(2),  input(11),  l1(5));
	xor7: gateXOr2 PORT MAP (input(9),  input(15),  l1(6));
	xor8: gateXOr2 PORT MAP (input(0),  input(1),  l1(7));
	xor9: gateXOr2 PORT MAP (input(0),  input(8),  l1(8));
	xor10: gateXOr2 PORT MAP (input(8),  input(13),  l1(9));
	xor11: gateXOr2 PORT MAP (input(5),  input(9),  l1(10));
	xor12: gateXOr2 PORT MAP (input(10),  input(11),  l1(11));
	xor13: gateXOr2 PORT MAP (input(10),  input(12),  l1(12));
	xor14: gateXOr2 PORT MAP (input(6),  input(8),  l1(13));
	xor15: gateXOr2 PORT MAP (input(4),  input(7),  l1(14));
	xor16: gateXOr2 PORT MAP (input(15),  input(1),  l1(15));

	
	-------------- Level 2 --------------
	xor17: gateXOr2 PORT MAP (l1(0),  l1(2),  l2(0));
	xor18: gateXOr2 PORT MAP (l1(1),  l1(3),  l2(1));
	xor19: gateXOr2 PORT MAP (input(3),  l1(13),  l2(2));
	xor20: gateXOr2 PORT MAP (l1(0),  l1(4),  l2(3));
	xor21: gateXOr2 PORT MAP (l1(1),  l1(6),  l2(4));
	xor22: gateXOr2 PORT MAP (l1(4),  l1(9),  l2(5));
	xor23: gateXOr2 PORT MAP (l1(10),  input(10),  l2(6));
	xor24: gateXOr2 PORT MAP (l1(3),  l1(11),  l2(7));
	xor25: gateXOr2 PORT MAP (l1(5),  l1(6),  l2(8));
	xor26: gateXOr2 PORT MAP (l1(2),  l1(4),  l2(9));
	xor27: gateXOr2 PORT MAP (l1(14),  input(12),  l2(10));
	xor28: gateXOr2 PORT MAP (l1(5),  l1(1),  l2(11));
	xor29: gateXOr2 PORT MAP (l1(7),  input(12),  l2(12));

	-------------- Level 3 --------------
	xor30: gateXOr2 PORT MAP (l2(1),  l2(5),  output(0));-- R0 found!
	xor31: gateXOr2 PORT MAP (l2(4),  l1(8),  l3(0));
	xor32: gateXOr2 PORT MAP (l2(3),   l2(6),  output(2)); -- R2 found!
	xor33: gateXOr2 PORT MAP (l2(2),  l2(7),   output(3)); -- R3 found!
	xor34: gateXOr2 PORT MAP (l2(10),  l2(8),   output(4)); -- R4 found!
	xor35: gateXOr2 PORT MAP (l1(12),  l2(9),  l3(1)); 
	xor36: gateXOr2 PORT MAP (l2(11),  l1(15),  l3(2)); 
	xor37: gateXOr2 PORT MAP (l2(0),  l2(12),  output(7)); -- R7 found!
	
	-------------- Level 4 --------------
	xor38: gateXOr2 PORT MAP (l2(0),  l3(2),  output(6)); -- R6 found!
	xor39: gateXOr2 PORT MAP (l2(1),  l3(1),  output(5)); -- R5 found!
	xor40: gateXOr2 PORT MAP (l3(0),  l2(0),  output(1)); -- R1 found!

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
					output: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
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