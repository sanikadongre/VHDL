library ieee;
use ieee.std_logic_1164.all;
----------------------------------------
entity D_Flipflop is
port ( Din: in std_logic;
       enable: in std_logic;   
       Dout: out std_logic
);
end D_Flipflop;
-------------------------------------------
architecture behv of D_Flipflop is
begin
    process(Din, enable)
    begin
    if (enable = '1') then
     Dout <= Din;
    end if;
   end process;
end behv;