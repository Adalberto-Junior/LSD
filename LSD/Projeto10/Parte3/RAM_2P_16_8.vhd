library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAM_2P_16_8 is
					port(clk			    : in std_logic;
						  writeEnable   : in std_logic;
						  Write_address : in std_logic_vector(3 downto 0);
						  writeData	    : in std_logic_vector(7 downto 0);
						  read_address	 : in std_logic_vector(3 downto 0);
						  readData	    : out std_logic_vector(7 downto 0));
end RAM_2P_16_8;
----------------

architecture Shell of RAM_2P_16_8 is 
		
		constant nun_words : integer := 16;
		subtype TDataWord is std_logic_vector(7 downto 0);
		type TRAM	is array (0 to nun_words-1 ) of TDataWord;
		Signal s_memory : TRAM;
		
begin 
	
		process(clk)
			begin
				if(rising_edge(clk)) then
					if(writeEnable = '1') then
						s_memory(to_integer(unsigned(Write_address))) <= writeData;
					end if;
				end if;
			end process;
			
			readData <= s_memory(to_integer(unsigned(read_address)));

end Shell;
---------