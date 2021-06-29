------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
------------

entity ampliadorde_bits is
							port(dataIn : in std_logic_vector(2 downto 0);
								  dataOut : out std_logic_vector(3 downto 0));
end ampliadorde_bits;
---------------------

architecture amizade of ampliadorde_bits is

begin 

		dataOut <= '0' & dataIn;
	
end amizade; 
------------