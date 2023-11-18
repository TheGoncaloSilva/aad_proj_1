------ Flip Flop D PET (two stable states) --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flipFlopDPET IS
  PORT (clk	:	IN STD_LOGIC;
		  D	:  IN STD_LOGIC;
        nSet:	IN STD_LOGIC; 
		  nRst: 	IN STD_LOGIC;
        Q	:	OUT STD_LOGIC;
		  nQ	:  OUT STD_LOGIC);
END flipFlopDPET;

ARCHITECTURE behavior OF flipFlopDPET IS
BEGIN
  PROCESS (clk, nSet, nRst)
  BEGIN
    IF (nRst = '0')
	    THEN Q <= '0';
		      nQ <= '1';
		 ELSIF (nSet = '0')
		       THEN Q <= '1';
		            nQ <= '0';
	          ELSIF (clk = '1') AND (clk'EVENT)
	                THEN Q <= D;
		                  nQ <= NOT D;

	 END IF;
  END PROCESS;
END behavior;

------ Flip Flop D --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity FlipFlopD is 
   port(clk  : in std_logic;   
			rst : in std_logic;
			d   : in  std_logic;
			Q   : out std_logic);
end FlipFlopD;
architecture structure of FlipFlopD is  
begin  
     process(clk, rst)
     begin 
	    if (rst = '0') then
		    Q <= '0';
        elsif(rising_edge(clk)) then
	        Q <= d; 
        end if;       
     end process;  
end structure; 
