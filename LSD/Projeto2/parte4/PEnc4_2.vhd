--------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--------------
entity PEnc4_2 is
					port(decodeIn   : in std_logic_vector(3 downto 0);
							validOut   : out std_logic;
							encodedOut : out std_logic_vector(1 downto 0));
end PEnc4_2;	

--------------
architecture prioridade of PEnc4_2 is

begin
			process( decodeIn)
			begin
				
			
					if(decodeIn = "1000") then 
						encodedOut <= "11";
						validOut   <= '1';
						
					elsif(decodeIn = "0100") then
						encodedOut <= "10";
						validOut   <= '1';
						
					elsif(decodeIn = "0010") then
						encodedOut <= "01";
						validOut   <= '1';
					elsif(decodeIn = "0001") then 
						encodedOut <= "00";
						validOut   <= '1';
					else
						validOut <= '0';
				end if;
			end process;
 end prioridade;