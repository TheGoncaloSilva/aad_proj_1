LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY storeDev;
USE storeDev.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

ENTITY LinarFeedback_ShiftRegister IS
  PORT (nGRst: IN STD_LOGIC;
        clk:   IN STD_LOGIC;
        dIn:   IN STD_LOGIC;
        dOut:  OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END LinarFeedback_ShiftRegister;

ARCHITECTURE structure OF LinarFeedback_ShiftRegister IS
  COMPONENT gateXor2
	 PORT (x1, x2: IN STD_LOGIC;
			  y:     OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT FlipFlopD
	 port(clk : in std_logic;   
			rst : in std_logic;
			d   : in  std_logic;
			Q   : out std_logic);
  END COMPONENT;
BEGIN
  
  
END structure;
