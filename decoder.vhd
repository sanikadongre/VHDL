library ieee;
use ieee.std_logic_1164.all;
-------------------------------------
entity decoder is 
port (I: in std_logic_vector(1 downto 0);
      Output: out std_logic_vector(3 downto 0)
);
end decoder;
---------------------------------------
architecture behv of decoder is
 is
begin 
process(I)
 begin
	 case I is
		when "00" => Output <= "0001";
                when "01" => Output <= "0010";
                when "10" => Output <= "0100";
                when "11" => Output <= "1000";
                when others => Output <= "XXXX";
          end case;
    end process;

end behv;

architecture behv2 of decoder is
begin

Output <= "0001" when I = "00" else
           "0010" when I = "01" else
            "0100" when I = "10" else
            "1000" when I = "11" else
             "XXXX";
end when_else;


  
