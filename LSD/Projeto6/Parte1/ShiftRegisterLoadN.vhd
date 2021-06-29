-----------
library IEEE;
USE IEEE.STD_LOGIC_1164.all;
-------------

entity ShiftRegisterLoadN is
							generic(size : positive := 8);  
							port(clk     : in std_logic;
								  sin     : in std_logic;
								  reset   : in std_logic;
								  load    : in std_logic;
								  en		 : in std_logic;
								  dataIn  : in std_logic_vector(size -1 downto 0);
								  dataOut : out std_logic_vector(size-1 downto 0));
end ShiftRegisterLoadN;
--------------------

architecture prototico of ShiftRegisterLoadN is 
	signal s_shif : std_logic_vector(size-1 downto 0);

begin 
		
		process(clk)
		
		begin 
			if(rising_edge(clk)) then
			  if(reset = '1') then
					s_shif <= ( others => '0');
					if(load = '1') then
						s_shif <= dataIn;
					elsif(en = '1') then
						s_shif <= s_shif( size-2 downto 0) & sin;
				  end if;
				end if;
			end if;
		end process;
		
		dataOut <= s_shif;
end prototico;
-----------------------