LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY LinarFeedback_ShiftRegister IS
  PORT (
    clk, nGRst, dIn: IN STD_LOGIC;
    dOut: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY LinarFeedback_ShiftRegister;

ARCHITECTURE structure OF LinarFeedback_ShiftRegister IS
  SIGNAL dff_out: STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  -- Initializing the shift register
BEGIN
  PROCESS (clk, nGRst)
  BEGIN
    IF nGRst = '0' THEN
      dff_out <= (OTHERS => '0');  -- Reset the shift register to zeros
    ELSIF rising_edge(clk) THEN
      dff_out <= dff_out(6 DOWNTO 0) & '0'; -- Shifting right and adding '0' at the LSB

      dff_out(7) <= dff_out(6) XOR dff_out(3) XOR dff_out(2) XOR dff_out(0) XOR dIn;  -- XOR feedback

      -- Shifting in the input at the LSB
      dff_out(0) <= dIn;  
    END IF;
  END PROCESS;

  dOut <= dff_out;  -- Output the shift register
END structure;
