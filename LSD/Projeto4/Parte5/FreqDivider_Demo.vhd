-----------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
-----------

entity FreqDivider_Demo is
						 port(CLOCK_50	: in std_logic;
								SW 		: in std_logic_vector(2 downto 0);
								HEX0     : out std_logic_vector(6 downto 0);
								LEDR		: out std_logic_vector(0 downto 0));
end FreqDivider_Demo;
-------------

architecture Behavioral of FreqDivider_Demo is

		signal s_clok  : std_logic;
		signal s_count : std_logic_vector(3 downto 0);
		 
 begin
			
			LEDR(0) <= s_clok;
			
			
			
			
	 divider: entity work.FreqDivider(Behavioral) 
							
							port map(clkIn   => CLOCK_50,
										reset   => SW(0),
											k    => x"02FAF080",
										clkOut  => s_clok);
										
	Counter: entity work.CounterUpDown4(Behavioral)
			
							port map(clk    => s_clok,
										reset  => SW(1),
										UpDown => Sw(2),
										count  => s_count);
										
										
	Bin7: entity work.Bin7SegDecoder(Behavioral)
	
							port map(enable   => '1',
										binInput => s_count, 
										decOut_n => HEX0);

 
	
end Behavioral;
---------------