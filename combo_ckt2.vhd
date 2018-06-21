library ieee;
use ieee.std_logic_1164.all;
entity AND_GATE is
port( B: in std_logic;
      F2: in std_logic;
      F3: out std_logic
);
end AND_GATE;

architecture behv of AND_GATE is
begin
process(B,F2);
 begin
    F3 <= B and F2;
end process;
end behv;
////////////////////////////////////
entity XOR_GATE is 
port( F1: in std_logic;
      C: in std_logic;
      F2: out std_logic
);
end XOR_GATE;

architecture behv of XOR_GATE is 
begin
process(F1,C);
begin
  F2 <= F1 xor C;
end process;
end behv;
/////////////////////////////////////
entity OR_GATE is 
port( A: in std_logic;
      B: in std_logic;
      F1: out std_logic
);
end OR_GATE;

architecture behv of OR_GATE is
begin
process(A,B)
begin
  F1 <= A or B;
end process;
end behv;
////////////////////////////////////
library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity combo_ckt is
port( input1: in std_logic;
      input2: in std_logic;
      input3: in std_logic;
      output: out std_logic
);
end combo_ckt;
architecture struct of combo_ckt is

component OR_GATE is
port( A: in std_logic;
      B: in std_logic;
      F1: out std_logic
);
end component;
      
component XOR_GATE is
port( F1: in std_logic;
      C: in std_logic;
      F2: out std_logic
);
end component;
      component OR_GATE is
port( B: in std_logic;
      F2: in std_logic;
      F3: out std_logic
);
end component;

signal wire: std_logic;


begin

Gate1: OR_GATE port map( A=> input1, B => input2, F1 => wire );
Gate2: XOR_GATE port map( F1 => wire, C => input2, F2 => wire);
Gate3: AND_GATE port map( F2 => wire, B=> input, F3 => output);

end struct;
      
