----------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
-----------------------

entity ROM_16_8 is
				port(address : in std_logic_vector(3 downto 0);
					  dataOut : out std_logic_vector(7 downto 0));
					  
end ROM_16_8;
------------

architecture Behavioral of ROM_16_8 is 

		subtype TDataWord is std_logic_vector(7 downto 0);
		type TROM is array (0 to 15) of TDataWord;
		constant c_memory : TROM := ("00000000", "00000010", "00000100", "00001000", "00001100", 
											  "00010000", "01100000", "00100000", "01000000", "10000000", 
											  "11111111", "00011000", "11011000", "11011011", "11011001",
											  "01010101");--posso colocar em hexadecimal x"01";
begin 

			dataOut <= c_memory(to_integer(unsigned(address)));
		
end Behavioral;
--------------											  