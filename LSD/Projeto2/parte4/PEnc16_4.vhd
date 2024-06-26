--------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--------------
entity PEnc16_4 is
					port(decodeIn   : in std_logic_vector(15 downto 0);
							validOut   : out std_logic;
							encodedOut : out std_logic_vector(4 downto 0));
end PEnc16_4;	

--------------
architecture cod_prio16_4 of PEnc16_4 is

begin
			process( decodeIn)
			begin
				
			
					if(decodeIn = '1' & (others =>'0')) then 
						encodedOut <= "1111";
						validOut   <= '1';
						
					elsif(decodeIn = "01" & (others =>'0')) then
						encodedOut <= "1000";
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
 end cod_prio16_4;