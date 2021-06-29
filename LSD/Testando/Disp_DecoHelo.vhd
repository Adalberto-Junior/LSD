library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Disp_DecoHelo is
					  port(enable  : in std_logic;
							 ativad	: in std_logic;
							 OutHex0 : out std_logic_vector(6 downto 0);
							 OutHex1 : out std_logic_vector(6 downto 0);
							 OutHex2 : out std_logic_vector(6 downto 0);
							 OutHex3 : out std_logic_vector(6 downto 0));
end Disp_DecoHelo; 
------------------------

architecture Shell of Disp_DecoHelo is 


begin 

	process(ativad, enable)
		 begin
			if(ativad = '0') then
					OutHex3 <= (others => '-');	
					OutHex2 <= (others => '-');	
					OutHex1 <= (others => '-');	
					OutHex0 <= (others => '-');	
			else
				 if(enable = '1') then
						OutHex3 <= "0001001";	--H
						OutHex2 <= "0000110";	--E
						OutHex1 <= "1000111";	--L
						OutHex0 <= "1000000";	--O
					else
						OutHex3 <= "1111111";	
						OutHex2 <= "1111111";	
						OutHex1 <= "1111111";	
						OutHex0 <= "1111111";		
					end if;
				end if;
		end process;
end Shell;
