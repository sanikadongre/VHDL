library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-----------------------------------
entity n_bit_counter is

generic(n: natural: = 2);

port( clock: in std_logic;
      clear: in std_logic;
      ccount: in std_logic;
       Qout:      out std_logic_vector(n-1 downto 0)
);
end n_bit_counter;

------------------------------------------------

architecture behv of counter is

signal Q: std_logic_vector(n-1 downto 0);

begin

process(clock,count,clear)

begin

if clear= 1 then

Q <= Q-Q;

elsif(clock = '1' and clock'event) then
if count = '1' then
Q <= Q+1;
end if;
end if;

end process;

Qout <= Q;

end behv;