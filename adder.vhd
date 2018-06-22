library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADDER is
port( A: in std_logic_vector(n-1 down to 0);
      B: in std_logic_vector(n-1 down to 0);
      carry: out std_logic;
      sum: out std_logic_vector(n-1 down to 0);
end ADDER;

architecture behv of ADDER is 

signal result: std_logic_vector(n down to 0);

begin

result <= ('0' & A) + ('0' & B);
sum <= result(n-1 down to 0);
carry <= result(n);

end behv;

