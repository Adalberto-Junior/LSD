-----------
library IEEE;
USE IEEE.STD_LOGIC_1164.all;
-------------

entity ShiftRegister_Demo is
						generic(size     : positive := 8);
							port(CLOCK_50 : in std_logic;
								  SW		  : in std_logic_vector(0 downto 0);
								  LEDR	  : out std_logic_vector(size-1 downto 0));
end ShiftRegister_Demo;
--------------

architecture  Shell of ShiftRegister_Demo is 
			signal s_diver : std_logic; 

begin 
	
		shiftN: entity work.ShiftRegisterN(Silva)
		
										generic map(Size => Size)
										port map(clk     => s_diver,
													sin 	  => SW(0),
													dataOut => LEDR);
													
		Clkdiver: entity work.ClkDividerN(Behavioral)
		
										generic map(K => 50000000)
										port map(clkIn  => CLOCK_50,
													clkOut => s_diver);
													
													
end Shell;
----------