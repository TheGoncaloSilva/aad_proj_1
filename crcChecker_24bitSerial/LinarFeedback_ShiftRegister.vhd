LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY LinarFeedback_ShiftRegister IS
  PORT (
    clk:	IN STD_LOGIC;
	 nGRst: IN STD_LOGIC;
	 dIn: IN STD_LOGIC;
    dOut: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY LinarFeedback_ShiftRegister;

ARCHITECTURE structure OF LinarFeedback_ShiftRegister IS
	SIGNAL interComp: STD_LOGIC_VECTOR(4 DOWNTO 0);
   SIGNAL tempOut: STD_LOGIC_VECTOR(7 DOWNTO 0);
	COMPONENT gateXor2
		PORT (x1, x2: IN STD_LOGIC;
			   y:     OUT STD_LOGIC);
	END COMPONENT;
	COMPONENT flipFlopDPET
		PORT (clk	:  IN STD_LOGIC;
			 D			:  IN STD_LOGIC;
			 nSet		: 	IN STD_LOGIC;
			 nRst		:  IN STD_LOGIC;
			 Q			:  OUT STD_LOGIC;
			 nQ		:  OUT STD_LOGIC);
	END COMPONENT;
BEGIN
	xor0: gateXor2 PORT MAP (tempOut(0)  , dIn		 , interComp(0));
	xor1: gateXor2 PORT MAP (interComp(0), tempOut(7), interComp(1));
	xor2: gateXor2 PORT MAP (interComp(0), tempOut(6), interComp(2));
	xor3: gateXor2 PORT MAP (interComp(0), tempOut(5), interComp(3));
	xor4: gateXor2 PORT MAP (interComp(0), tempOut(3), interComp(4));
	
	ff1: flipFlopDPET PORT MAP (clk, interComp(0), '1', nGRst, tempOut(7));
	ff2: flipFlopDPET PORT MAP (clk, interComp(1), '1', nGRst, tempOut(6));
	ff3: flipFlopDPET PORT MAP (clk, interComp(2), '1', nGRst, tempOut(5));
	ff4: flipFlopDPET PORT MAP (clk, interComp(3), '1', nGRst, tempOut(4));
	ff5: flipFlopDPET PORT MAP (clk, tempOut(4)  , '1', nGRst, tempOut(3));
	ff6: flipFlopDPET PORT MAP (clk, interComp(4), '1', nGRst, tempOut(2));
	ff7: flipFlopDPET PORT MAP (clk, tempOut(2), '1', nGRst, tempOut(1));
	ff8: flipFlopDPET PORT MAP (clk, tempOut(1), '1', nGRst, tempOut(0));

	dOut <= tempOut(0) & tempOut(1) & tempOut(2) & tempOut(3) & tempOut(4) & tempOut(5) & tempOut(6) & tempOut(7);
END structure;
