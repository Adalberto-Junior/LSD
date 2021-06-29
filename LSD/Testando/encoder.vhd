library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity encoder is
				port(Inputs  : in std_logic_vector(2 downto 0);
					  OutPuts : out std_logic_vector(3 downto 0));
end encoder;
-----------

architecture shell of encoder is

	signal s_decOut_n : std_logic_vector(3 downto 0);
begin 
		with Inputs select
			s_decOut_n <= "0001" when "000",   --h
						     "1010" when "001", 	--A
						     "1011" when "010", 	--b
						     "1100" when "011",		--c
						     "1110" when "100",		--E
						     "1111" when "101",		--F
						     "0111" when "110",		--L
						     "1001" when "111";		--0
			
			OutPuts <= s_decOut_n;
								

end shell;