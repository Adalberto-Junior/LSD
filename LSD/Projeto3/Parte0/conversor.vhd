library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
---------------
entity conversor is
			port(a,b    : in std_logic_vector(3 downto 0);
				  st,Put   : out std_logic_vector(3 downto 0));
end conversor;
--------------
architecture conversr of conversor is

	

begin

						st  <= std_logic_vector(unsigned(a) + unsigned(b));
						Put <= std_logic_vector(  signed(a) +   signed(b));
end conversr;
---------------