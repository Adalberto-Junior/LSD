library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity Display_Decoded is
					  port(Enable      : in std_logic;
							 selWord     : in std_logic_vector(2 downto 0);
							 OutHex0 	 : out std_logic_vector(6 downto 0);
							 OutHex1		 : out std_logic_vector(6 downto 0);
							 OutHex2		 : out std_logic_vector(6 downto 0);
							 OutHex3		 : out std_logic_vector(6 downto 0));
end Display_Decoded; 
------------------------

architecture Display of Display_Decoded is 


begin 

	process(Enable, selWord)
		 begin
			 if(Enable = '0') then
					OutHex3 <= "1111111";	
					OutHex2 <= "1111111";	
					OutHex1 <= "1111111";	
					OutHex0 <= "1111111";	
			else
					if(selWord = "000")then
						OutHex3 <= "0001001";	--H
						OutHex2 <= "0000110";	--E
						OutHex1 <= "1000111";	--L
						OutHex0 <= "1000000";	--O
			
				elsif(selWord = "001") then
						OutHex3 <= "0000110";	--E
						OutHex2 <= "0000011";	--b
						OutHex1 <= "0000110";	--E
						OutHex0 <= "0000011";	--b
					
				elsif(selWord = "010") then
						OutHex3 <= "1000110";	--C
						OutHex2 <= "0001000";	--A
						OutHex1 <= "0001110";	--F
						OutHex0 <= "0000110";	--E
					
				elsif(selWord = "011") then
						OutHex3 <= "1000110";	--C
						OutHex2 <= "0001001";	--H
						OutHex1 <= "1000000";	--O
						OutHex0 <= "1000110";	--C
						
				elsif(selword = "111") then
						OutHex3 <= "1000110";	--C
						OutHex2 <= "0001001";	--H
						OutHex1 <= "0001000";	--A
						OutHex0 <= "1111111";	---
				else
					OutHex3 <= "1111111";	
					OutHex2 <= "1111111";	
					OutHex1 <= "1111111";	
					OutHex0 <= "1111111";	
						
					end if;
				end if;
		 end process;
end Display;
------------