LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY LinarFeedback_ShiftRegister IS
  PORT (
    clk: IN STD_LOGIC;
    nGRst: IN STD_LOGIC;
    dIn: IN STD_LOGIC;
    dOut: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END LinarFeedback_ShiftRegister;

ARCHITECTURE structure OF LinarFeedback_ShiftRegister IS
  SIGNAL dff_out: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
  PROCESS (clk, nGRst)
  BEGIN
    IF nGRst = '0' THEN
      dff_out <= (OTHERS => '0');
    ELSIF RISING_EDGE(clk) THEN
		
		dff_out(6 DOWNTO 0) <= dff_out(5 DOWNTO 0) & '0';
      dff_out(7) <= dff_out(6) XOR dff_out(3) XOR dff_out(2) XOR dff_out(0) XOR dIn;  -- Polynomial: x^3 + x^2 + x^0
    END IF;
  END PROCESS;

  dOut <= dff_out;
END structure;
