LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

ENTITY comparator IS
  PORT (dIn: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        dOut:  OUT STD_LOGIC);
END comparator;

ARCHITECTURE structure OF comparator IS
	SIGNAL orResult: STD_LOGIC_VECTOR(6 DOWNTO 0);
	COMPONENT gateOr2
		PORT (x1, x2: IN STD_LOGIC;
			   y:     OUT STD_LOGIC);
	END COMPONENT;
BEGIN
  -- or with all dIn
  or1: gateOr2 PORT MAP (dIn(0), dIn(1)     , orResult(0));
  or2: gateOr2 PORT MAP (dIn(2), orResult(0), orResult(1));
  or3: gateOr2 PORT MAP (dIn(3), orResult(1), orResult(2));
  or4: gateOr2 PORT MAP (dIn(4), orResult(2), orResult(3));
  or5: gateOr2 PORT MAP (dIn(5), orResult(3), orResult(4));
  or6: gateOr2 PORT MAP (dIn(6), orResult(4), orResult(5));
  or7: gateOr2 PORT MAP (dIn(7), orResult(5), orResult(6));
  
  dOut <= orResult(6);
END structure;
