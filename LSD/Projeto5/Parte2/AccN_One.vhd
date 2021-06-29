--------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
--------------

entity AccN_One is
				generic(N			: positive:= 8);
					port(dataIn		: in  std_logic_vector(N-1 downto 0);
							reset		: in  std_logic;
							enable	: in  std_logic;
							clk		: in  std_logic;
						  dataOut 	: out std_logic_vector(N-1 downto 0));
end AccN_One;
--------------

architecture Shell of AccN_One is

	signal s_adder : unsigned(N-1 downto 0);
	
begin
				
				dataOut 	 <= std_logic_vector(s_adder);
				
			process(clk)
			begin
			
				if(rising_edge (clk)) then
				
				 if(reset = '1') then
					s_adder <= (others => '0');
					
				 elsif(enable = '1') then
					s_adder <= unsigned(dataIn) + s_adder;
				
					
				 end if;
			   end if;
			end process;

end Shell;
---------------