library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------
entity MUX is
port( I3: in std_logic_vector(2 downto 0);
      I2: in std_logic_vector(2 downto 0)
      I1: in std_logic_vector(2 downto 0);
      I0: in std_logic_vector(2 downto 0);
       S:in std_logic_vector(1 downto 0);
       Output: out std_logic_vector(2 downto 0)
);
end Mux;
-------------------------------------------------
architecture behv1 of Mux is 
begin 
 process(I3,I2,I1,I0,S)
   begin
    case S is 
     when "00" => Output <= I0;
     when "01" => Output <= I1;
     when "10" => Output <= I2;
     when "11" => Output <= I3;
     when others => Output <= "ZZZ";
     end case;
end process;
end behv1;

architecture behv2 of Mux is
begin 
Output <= I0 when S="00" else
          I1 when S="01" else
          I2 when S="10" else
          I3 when S="11" else
          "ZZZ";

end behv2;





