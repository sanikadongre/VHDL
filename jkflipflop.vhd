library ieee;
use ieee.std_logic_1164.all;
-----------------------------------------
entity JK_Flipflop is
port( J: in std_logic;
      K: in std_logic;
      reset: in std_logic;
      Q: out std_logic;
      Qbar: out std_logic
);
end JK_Flipflop;

-----------------------------------------------
architecture behv of JK_Flipflop is 

   signal state: std_logic;
   signal input: std_logic_vector(1 downto 0);
 
begin
   
   input <= J & K;
   p: process(clock, reset) is 

begin

if (reset = '1') then 
   state <= '0';
  elsif(rising_edge(clock)) then
   case(input) is
    when "11" =>
      state <= not state;
     when "10" =>
      state <= '1';
     when "01" =>
      state <= "0";
    when others => null;
    end case;
end if;
end process;

Q <= state;
Qbar <= not state;

end behv;