-----------
library IEEE;
USE IEEE.STD_LOGIC_1164.all;
-------------

entity ShiftRegisterN is
							generic(size : positive := 8);  
							port(clk     : in std_logic;
								  sin     : in std_logic;
								  dataOut : out std_logic_vector(size-1 downto 0));
end ShiftRegisterN;
--------------------

architecture Silva of ShiftRegisterN is 
	signal s_shif : std_logic_vector(size-1 downto 0);

begin 
		
		process(clk)
		
		begin 
			if(rising_edge(clk)) then
			s_shif <= s_shif(size-2 downto 0) & sin;
		end if;
	end process;
		
		dataOut <= s_shif;
end silva;
-----------------------
					