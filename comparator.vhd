entity Comp is
port( A: in std_logic_vector(n-1 downto 0);
      B: in std_logic_vector(n-1 downto 0);
      less: out std_logic;
      equal: out std_logic;
      greater: out std_logic
);
end Comp;

-----------------------------------------------
architecture behv of Comp is

begin
  
   process(A,B)
   begin
       if(A<B) then
       less <= '1';
       equal <= '0';
       greater<= '0';
       if(A=B) then
       less <= '0';
       equal <= '1';
       greater <='0';
       if(A>B) then
       less <= '0';
       equal <= '0';
       greater <= '1';
      end if;
    end process;

end behv;