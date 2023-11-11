LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY storeDev;
USE storeDev.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

ENTITY LinarFeedback_ShiftRegister IS
  PORT (
    clk: IN STD_LOGIC;
    nGRst: IN STD_LOGIC;
    dIn: IN STD_LOGIC;
    dOut: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END LinarFeedback_ShiftRegister;

ARCHITECTURE structure OF LinarFeedback_ShiftRegister IS
  COMPONENT gateXor2
    PORT (
      x1, x2: IN STD_LOGIC;
      y: OUT STD_LOGIC
    );
  END COMPONENT;
  
  COMPONENT FlipFlopD
    PORT (
      clk: IN STD_LOGIC;
      rst: IN STD_LOGIC;
      d: IN STD_LOGIC;
      Q: OUT STD_LOGIC
    );
  END COMPONENT;

  SIGNAL X08, X1, X2, X3, X5: STD_LOGIC;
  SIGNAL dff0_out, dff1_out, dff2_out, dff3_out, dff4_out, dff5_out, dff6_out, dff7_out: STD_LOGIC;
BEGIN
  xor0: gateXor2 PORT MAP (dff0_out, dIn, X08);
  xor1: gateXor2 PORT MAP (X08, dff7_out, X1);
  xor2: gateXor2 PORT MAP (X08, dff6_out, X2);
  xor3: gateXor2 PORT MAP (X08, dff5_out, X3);
  xor4: gateXor2 PORT MAP (X08, dff3_out, X5);
  
  dff7: FlipFlopD PORT MAP (clk, nGRst, X08, dff7_out);
  dff6: FlipFlopD PORT MAP (clk, nGRst, X1, dff6_out);
  dff5: FlipFlopD PORT MAP (clk, nGRst, X2, dff5_out);
  dff4: FlipFlopD PORT MAP (clk, nGRst, X3, dff4_out);
  dff3: FlipFlopD PORT MAP (clk, nGRst, dff4_out, dff3_out);
  dff2: FlipFlopD PORT MAP (clk, nGRst, X5, dff2_out);
  dff1: FlipFlopD PORT MAP (clk, nGRst, dff2_out, dff1_out);
  dff0: FlipFlopD PORT MAP (clk, nGRst, dff1_out, dff0_out);
  
  dOut <= dff0_out & dff1_out & dff2_out & dff3_out & dff4_out & dff5_out & dff6_out & dff7_out;
END structure;
