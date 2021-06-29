---------------
library IEEE;
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
---------------

entity ALUN is
			generic(N :	positive:= 8);
			port(a, b : in std_logic_vector(N-1 downto 0);
				 op 	 : in std_logic_vector(2 downto 0);
				 r, m  : out std_logic_vector(N-1 downto 0));
end ALUN;
--------------

architecture Behavioral of ALUN is

	signal s_a, s_b, s_r : unsigned(N-1 downto 0);
	signal s_m           : unsigned((2 * N)-1 downto 0);
	
begin
				 s_a <= unsigned(a);
				 s_b <= unsigned(b);
				 s_m <= s_a * s_b; 
				 
				
				 s_r <= s_a + s_b         when (op = "000") else
						  s_a - s_b         when (op = "001") else
						  s_m(N-1 downto 0) when (op = "010") else
						  s_a / s_b   		  when (op = "011") else
						  s_a rem s_b       when (op = "100") else
						  s_a and s_b       when (op = "101") else
						  s_a or s_b  		  when (op = "110") else
						  s_a xor s_b       when (op = "111");
				 r <= std_logic_vector(s_r);
				 m <= std_logic_vector(s_m((2 * N)-1 downto N)) when (op = "010") else
				 (others => '0');
end Behavioral;
--------------