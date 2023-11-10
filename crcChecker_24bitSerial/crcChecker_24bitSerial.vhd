LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY control;
USE control.all;

LIBRARY storeDev;
USE storeDev.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

ENTITY crcChecker_24bitSerial IS
  PORT (nGRst: IN STD_LOGIC;
        clk:   IN STD_LOGIC;
        dIn:   IN STD_LOGIC;
        err: OUT STD_LOGIC);
END crcChecker_24bitSerial;

ARCHITECTURE structure OF crcChecker_24bitSerial IS
  SIGNAL iNSet, iNRst, iDIn, clkO: STD_LOGIC;
  SIGNAL start: STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL tCntO: STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL s_err:  STD_LOGIC;
  COMPONENT flipFlopDPET
	 PORT (clk, D: IN STD_LOGIC;
			 nSet, nRst: IN STD_LOGIC;
			 Q, nQ: OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT binCounter_6bit
	 PORT (nRst: IN STD_LOGIC;
			 clk:  IN STD_LOGIC;
			 c:    OUT STD_LOGIC_VECTOR (5 DOWNTO 0));
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
	bc:  binCounter_5bit PORT MAP (iNRst, clk, stat);
	con: control  PORT MAP (nGRst, clk, stat, iNRst, INSet, clkO);
	ff:  flipFlopDPET PORT MAP (clk, dIn, '1', iNRst, iDIn);
  
  
END structure;
