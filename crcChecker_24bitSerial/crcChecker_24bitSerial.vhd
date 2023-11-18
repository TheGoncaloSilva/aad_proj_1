LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY control;
USE control.all;

LIBRARY storeDev;
USE storeDev.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

LIBRARY comparator;
USE comparator.all;

LIBRARY LinarFeedback_ShiftRegister;
USE LinarFeedback_ShiftRegister.all;

LIBRARY binCounter_5bit;
USE binCounter_5bit.all;

ENTITY crcChecker_24bitSerial IS
  PORT (nGRst: IN STD_LOGIC;
        clk:   IN STD_LOGIC;
        dIn:   IN STD_LOGIC;
        err: OUT STD_LOGIC);
END crcChecker_24bitSerial;

ARCHITECTURE structure OF crcChecker_24bitSerial IS
  SIGNAL iNSet, iNRst, iDIn, clkO: STD_LOGIC;
  SIGNAL stat: STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL lsfrOut: STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL s_err:  STD_LOGIC;
  COMPONENT flipFlopDPET
	 PORT (clk:  IN STD_LOGIC;
			 D:    IN STD_LOGIC;
			 nSet: IN STD_LOGIC;
			 nRst: IN STD_LOGIC;
			 Q:    OUT STD_LOGIC;
			 nQ:   OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT binCounter_5bit
	 PORT (nRst: IN STD_LOGIC;
			 clk:  IN STD_LOGIC;
			 c:    OUT STD_LOGIC_VECTOR (4 DOWNTO 0));
  END COMPONENT;
  COMPONENT LinarFeedback_ShiftRegister
	 PORT (clk:   IN STD_LOGIC;
			 nGRst: IN STD_LOGIC;
			 dIn:   IN STD_LOGIC;
			 dOut:  OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
  END COMPONENT;
  COMPONENT comparator
	 PORT (dIn: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
          dOut:  OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT control
	 PORT (nGRst: IN STD_LOGIC;
			 clk:   IN STD_LOGIC;
			 add:   IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			 nRst:  OUT STD_LOGIC;
			 nSetO: OUT STD_LOGIC;
			 clkO:  OUT STD_LOGIC);
  END COMPONENT;
BEGIN
	bc:   binCounter_5bit PORT MAP (iNRst, clk, stat);
	con:  control  PORT MAP (nGRst, clk, stat, iNRst, INSet, clkO);
	lsfr: LinarFeedback_ShiftRegister PORT MAP(clk, iNRst, dIn, lsfrOut);
	comp: comparator PORT MAP(lsfrOut, s_err);
	ffP:  flipFlopDPET PORT MAP (clkO, s_err, iNSet, '1', err);
	
END structure;
