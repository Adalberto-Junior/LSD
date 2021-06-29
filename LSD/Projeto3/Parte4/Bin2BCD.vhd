---------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
---------------
entity Bin2BCD is
			port(inPut    : in std_logic_vector(3 downto 0);
				  st,Put   : out std_logic_vector(3 downto 0));
end Bin2BCD;
--------------
architecture conversor of Bin2BCD is

	signal s_a, s_b, s_d,s_r : unsigned(3 downto 0); 

begin

						s_b <= to_unsigned(10,4);
						s_a <=   unsigned(inPut);
		
						s_d <= s_a / s_b;
						s_r <= s_a rem s_b;
						
						st  <= std_logic_vector(s_d);
						Put <= std_logic_vector(s_r);
end conversor;
---------------
						
