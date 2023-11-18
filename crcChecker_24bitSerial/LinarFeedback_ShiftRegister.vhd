LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY LinarFeedback_ShiftRegister IS
  PORT (
    clk:	IN STD_LOGIC;
	 rst: IN STD_LOGIC;
	 dIn: IN STD_LOGIC;
    dOut: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY LinarFeedback_ShiftRegister;

ARCHITECTURE structure OF LinarFeedback_ShiftRegister IS
--	SIGNAL interComp: STD_LOGIC_VECTOR(4 DOWNTO 0);
--   SIGNAL tempOut: STD_LOGIC_VECTOR(7 DOWNTO 0);
--	COMPONENT gateXor2
--		PORT (x1, x2: IN STD_LOGIC;
--			   y:     OUT STD_LOGIC);
--	END COMPONENT;
--	COMPONENT flipFlopDPET
--		PORT (clk	:	IN STD_LOGIC;
--				  D	:  IN STD_LOGIC;
--				  nSet:	IN STD_LOGIC; 
--				  nRst: 	IN STD_LOGIC;
--				  Q	:	OUT STD_LOGIC;
--				  nQ	:  OUT STD_LOGIC);
--	END COMPONENT;
--BEGIN
--	xor0: gateXor2 PORT MAP (tempOut(0)  , dIn		 , interComp(0));
--	xor1: gateXor2 PORT MAP (interComp(0), tempOut(7), interComp(1));
--	xor2: gateXor2 PORT MAP (interComp(0), tempOut(6), interComp(2));
--	xor3: gateXor2 PORT MAP (interComp(0), tempOut(5), interComp(3));
--	xor4: gateXor2 PORT MAP (interComp(0), tempOut(3), interComp(4));
--	
--	ff7: flipFlopDPET PORT MAP (clk, interComp(0), '1', rst, tempOut(7));
--	ff6: flipFlopDPET PORT MAP (clk, interComp(1), '1', rst, tempOut(6));
--	ff5: flipFlopDPET PORT MAP (clk, interComp(2), '1', rst, tempOut(5));
--	ff4: flipFlopDPET PORT MAP (clk, interComp(3), '1', rst, tempOut(4));
--	ff3: flipFlopDPET PORT MAP (clk, tempOut(4)  , '1', rst, tempOut(3));
--	ff2: flipFlopDPET PORT MAP (clk, interComp(4), '1', rst, tempOut(2));
--	ff1: flipFlopDPET PORT MAP (clk, tempOut(2)	, '1', rst, tempOut(1));
--	ff0: flipFlopDPET PORT MAP (clk, tempOut(1)	, '1', rst, tempOut(0));

	--dOut(7 DOWNTO 0) <= tempOut(7 DOWNTO 0);
	signal X0, X1, X2, X5, X7 : std_logic;
	signal dff0_out, dff1_out, dff2_out, dff3_out, dff4_out, dff5_out, dff6_out, dff7_out : std_logic;
	
	COMPONENT gateXor2
	PORT (x1, x2: IN STD_LOGIC;
			y:      OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT flipFlopDPET
		PORT (clk	:	IN STD_LOGIC;
				  D	:  IN STD_LOGIC;
				  nSet:	IN STD_LOGIC; 
				  nRst: 	IN STD_LOGIC;
				  Q	:	OUT STD_LOGIC;
				  nQ	:  OUT STD_LOGIC);
	END COMPONENT;
begin

	xor0: gateXor2 PORT MAP (dIn     , dff7_out, X0);
	xor1: gateXor2 PORT MAP (dff0_out, dff7_out, X1);
	xor2: gateXor2 PORT MAP (dff1_out, dff7_out, X2);
	xor3: gateXor2 PORT MAP (dff4_out, dff7_out, X5);
	xor4: gateXor2 PORT MAP (dff6_out, dff7_out, x7);
	
	ff0: flipFlopDPET PORT MAP (clk, X0			, '1', rst, dff0_out);
	ff1: flipFlopDPET PORT MAP (clk, X1			, '1', rst, dff1_out);
	ff2: flipFlopDPET PORT MAP (clk, X2			, '1', rst, dff2_out);
	ff3: flipFlopDPET PORT MAP (clk, dff2_out	, '1', rst, dff3_out);
	ff4: flipFlopDPET PORT MAP (clk, dff3_out	, '1', rst, dff4_out);
	ff5: flipFlopDPET PORT MAP (clk, x5			, '1', rst, dff5_out);
	ff6: flipFlopDPET PORT MAP (clk, dff5_out	, '1', rst, dff6_out);
	ff7: flipFlopDPET PORT MAP (clk, x7			, '1', rst, dff7_out);
		
	dOut <= dff0_out & dff1_out & dff2_out & dff3_out & dff4_out & dff5_out & dff6_out & dff7_out;
END structure;
