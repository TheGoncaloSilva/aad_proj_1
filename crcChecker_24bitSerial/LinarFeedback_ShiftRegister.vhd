LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY LinarFeedback_ShiftRegister IS
  PORT (
    clk, 
	 nGRst, 
	 dIn: IN STD_LOGIC;
    dOut: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY LinarFeedback_ShiftRegister;

ARCHITECTURE structure OF LinarFeedback_ShiftRegister IS
	SIGNAL interComp: STD_LOGIC_VECTOR(5 DOWNTO 0);
   SIGNAL tempOut: STD_LOGIC_VECTOR(7 DOWNTO 0);
	COMPONENT gateXor2
		PORT (x1, x2: IN STD_LOGIC;
			   y:     OUT STD_LOGIC);
	END COMPONENT;
	COMPONENT flipFlopD
		port(clk  : in std_logic;   
				rst : in std_logic;
				d   : in  std_logic;
				Q   : out std_logic);
	END COMPONENT;
BEGIN
	xor0: gateXor2 PORT MAP (tempOut(0)  , dIn		 , interComp(0));
	xor1: gateXor2 PORT MAP (interComp(0), tempOut(7), interComp(1));
	xor2: gateXor2 PORT MAP (interComp(0), tempOut(6), interComp(2));
	xor3: gateXor2 PORT MAP (interComp(0), tempOut(5), interComp(3));
	xor4: gateXor2 PORT MAP (interComp(0), tempOut(3), interComp(5));
	
	ff1: flipFlopD PORT MAP (clk, nGRst, interComp(0), tempOut(7));
	ff2: flipFlopD PORT MAP (clk, nGRst, interComp(1), tempOut(6));
	ff3: flipFlopD PORT MAP (clk, nGRst, interComp(2), tempOut(5));
	ff4: flipFlopD PORT MAP (clk, nGRst, interComp(3), tempOut(4));
	ff5: flipFlopD PORT MAP (clk, nGRst, tempOut(4)	, tempOut(3));
	ff6: flipFlopD PORT MAP (clk, nGRst, interComp(5), tempOut(2));
	ff7: flipFlopD PORT MAP (clk, nGRst, tempOut(2)	, tempOut(1));
	ff8: flipFlopD PORT MAP (clk, nGRst, tempOut(1)	, tempOut(0));


	dOut <= tempOut(0) & tempOut(1) & tempOut(2) & tempOut(3) & tempOut(4) & tempOut(5) & tempOut(6) & tempOut(7);
END structure;
