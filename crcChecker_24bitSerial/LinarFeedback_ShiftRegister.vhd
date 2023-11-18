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
	signal xor_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
	signal ff_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
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

	xor0: gateXor2 PORT MAP (dIn      , ff_out(7), xor_out(0));
	xor1: gateXor2 PORT MAP (ff_out(0), ff_out(7), xor_out(1));
	xor2: gateXor2 PORT MAP (ff_out(1), ff_out(7), xor_out(2));
	xor3: gateXor2 PORT MAP (ff_out(4), ff_out(7), xor_out(3));
	xor4: gateXor2 PORT MAP (ff_out(6), ff_out(7), xor_out(4));
	
	ff0: flipFlopDPET PORT MAP (clk, xor_out(0), '1', rst, ff_out(0));
	ff1: flipFlopDPET PORT MAP (clk, xor_out(1), '1', rst, ff_out(1));
	ff2: flipFlopDPET PORT MAP (clk, xor_out(2), '1', rst, ff_out(2));
	ff3: flipFlopDPET PORT MAP (clk, ff_out(2) , '1', rst, ff_out(3));
	ff4: flipFlopDPET PORT MAP (clk, ff_out(3) , '1', rst, ff_out(4));
	ff5: flipFlopDPET PORT MAP (clk, xor_out(3), '1', rst, ff_out(5));
	ff6: flipFlopDPET PORT MAP (clk, ff_out(5) , '1', rst, ff_out(6));
	ff7: flipFlopDPET PORT MAP (clk, xor_out(4), '1', rst, ff_out(7));
		
	dOut(7 DOWNTO 0) <= ff_out(7 DOWNTO 0);
END structure;
