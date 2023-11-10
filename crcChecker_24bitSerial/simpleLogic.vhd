------ AND GATE --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateAnd2 IS
  PORT (x1, x2: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
END gateAnd2;

ARCHITECTURE logicFunction OF gateAnd2 IS
BEGIN
  y <= x1 AND x2;
END logicFunction;

------ NAND GATE --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateNand2 IS
  PORT (x1, x2: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
END gateNand2;

ARCHITECTURE logicFunction OF gateNand2 IS
BEGIN
  y <= NOT (x1 AND x2);
END logicFunction;

------ NOR GATE --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateNor2 IS
  PORT (x1, x2: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
END gateNor2;

ARCHITECTURE logicFunction OF gateNor2 IS
BEGIN
  y <= NOT (x1 OR x2);
END logicFunction;

------ XOR GATE --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateXor2 IS
  PORT (x1, x2: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
END gateXor2;

ARCHITECTURE logicFunction OF gateXor2 IS
BEGIN
  y <= x1 XOR x2;
END logicFunction;

------ HA_1 GATE --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

ENTITY halfAdder_1bit IS
  PORT (a, cI:  IN STD_LOGIC;
        s, cO:  OUT STD_LOGIC);
END halfAdder_1bit;

ARCHITECTURE structure OF halfAdder_1bit IS
  COMPONENT gateAnd2
    PORT (x1, x2: IN STD_LOGIC;
          y: OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT gateXOr2
    PORT (x1, x2: IN STD_LOGIC;
          y: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  xor20: gateXOr2 PORT MAP (cI, a, s);
  and20: gateAnd2 PORT MAP (cI, a, cO);
END structure;

------ HA_5 GATE --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY halfAdder_5bit IS
  PORT (a:  IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        cI: IN STD_LOGIC;
        s:  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
        cO: OUT STD_LOGIC);
END halfAdder_5bit;

ARCHITECTURE structure OF halfAdder_5bit IS
  SIGNAL z0, z1, z2, z3: STD_LOGIC;
  COMPONENT halfAdder_1bit
    PORT (a, cI:  IN STD_LOGIC;
          s, cO: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  hA10: halfAdder_1bit PORT MAP (a(0), cI, s(0), z0);
  hA11: halfAdder_1bit PORT MAP (a(1), z0, s(1), z1);
  hA12: halfAdder_1bit PORT MAP (a(2), z1, s(2), z2);
  hA13: halfAdder_1bit PORT MAP (a(3), z2, s(3), z3);
  hA14: halfAdder_1bit PORT MAP (a(4), z3, s(4), cO);
END structure;