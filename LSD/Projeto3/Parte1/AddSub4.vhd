--------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
--------------

entity AddSub4 is
				port(a, b : in std_logic_vector(3 downto 0);
					  sub  : in std_logic;
					  s    : out std_logic_vector(3 downto 0);
					  cout : out std_logic);
end AddSub4;
--------------
architecture  Structural of AddSub4 is

		Signal s_b : std_logic_vector(3 downto 0);
begin
	
		s_b <= b when (sub = '0') else not b;
		
		corpo: entity work.adder4(Structural)
											port map(a    => a(3 downto 0),
														b    => s_b,
														cin  => sub,
														s    => s(3 downto 0), 
														cout => cout);

		

end Structural;
-----------------