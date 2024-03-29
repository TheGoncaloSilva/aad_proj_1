-------- AND GATE --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateAnd2 IS
  PORT (x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateAnd2;

ARCHITECTURE logicFunction OF gateAnd2 IS
BEGIN
  y <= x0 AND x1;
END logicFunction;

------ OR GATE --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateOr2 IS
  PORT (x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateOr2;

ARCHITECTURE logicFunction OF gateOr2 IS
BEGIN
  y <= x0 OR x1;
END logicFunction;

-------- XOR GATE --------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateXOr2 IS
  PORT (x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateXOr2;

ARCHITECTURE logicFunction OF gateXOr2 IS
BEGIN
  y <= x0 XOR x1;
END logicFunction;