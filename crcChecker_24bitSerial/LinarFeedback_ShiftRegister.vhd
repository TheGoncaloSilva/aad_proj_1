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

  SIGNAL X, dff_out: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
  xor0: gateXor2 PORT MAP (dff_out(0), dIn, X(0));
  xor1: gateXor2 PORT MAP (X(0), dff_out(7), X(1));
  xor2: gateXor2 PORT MAP (X(0), dff_out(6), X(2));
  xor3: gateXor2 PORT MAP (X(0), dff_out(5), X(3));
  xor4: gateXor2 PORT MAP (X(0), dff_out(3), X(5));
  
  dff_process: process(clk, nGRst)
  begin
      if nGRst = '0' then
          dff_out <= (others => '0');
      elsif rising_edge(clk) then
          dff_out <= dff_out(6 downto 0) & dff_out(7);
      end if;
  end process dff_process;

  dOut <= dff_out;
END structure;
