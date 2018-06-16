#include <stdio.h>
entity AND_gate is
port { x: in std_logic;
       y: in std_logic;
       F: out std_logic
     };

    end AND_gate;
architecture AND_behv of AND_gate is
begin
process(x,y)
 begin
if(x = '1' & y = '1') then
F< = '1';
else 
F <= '0';
end if;
end process;
end AND_behv;

architecture behv of AND_gate is
begin

F <= x and y;

end behv;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

entity OR_gate is
port { x: in std_logic;
       y: in std_logic;
       F: out std_logic
     };

    end OR_gate;
architecture OR_behv of OR_gate is
begin
process(x,y)
 begin
if(x = '0' & y = '0') then
F< = '0';
else 
F <= '1';
end if;
end process;
end AND_behv;

architecture behv of OR_gate is
begin

F <= x or y;
end behv;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



entity XOR_gate is
port { x: in std_logic;
       y: in std_logic;
       F: out std_logic
     };

    end XOR_gate;
architecture XOR_behv of OR_gate is
begin
process(x,y)
 begin
if(x\=y) then
F< = '1';
else 
F <= '0';
end if;
end process;
end XOR_behv;

architecture behv of XOR_gate is
begin

F <= x xor y;
end behv;



end behv;
