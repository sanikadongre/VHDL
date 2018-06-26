3-bit shift-register/shifter
-----------------------------------
library ieee;
use ieee.std_logic_1164.all;
-------------------------------------
entity shift_register is
port( I: in std_logic;
      clock: in std_logic;
      Shift_signal: in std_logic;
      Q: out std_logic
);
end shift_register;
--------------------------------------
architecture behv of shift_register is
signal S: std_logic_vector(2 downto 0): = "111";

begin 

process(I, clock, Shift_signal, S)

begin 

if clock'event and clock = '1' then 
  if Shift_register = '1'then
  S <= I & S(2 downto 1);
 end if;
end if;

end process;

Q <= S(0);

end behv;