library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
					port(CLOCK_50 : in std_logic;
						  SW		  : in std_logic_vector(1  downto 0);
						  LEDR	  : out std_logic_vector(0 downto 0);
						  LEDG	  : out std_logic_vector(4 downto 0));
end SeqDetector;
---------------

architecture vibro of SeqDetector is 
		Signal s_clock : std_logic;

begin 

	ClkDivider : entity work.ClkDividerN(Behavioral)
													generic map(divFactor => 250000000)
															port map(clkIn  => CLOCK_50,
																		clkOut => s_clock);
																		
																		
																		
	SeqDet     : entity work.SeqDetFSM(MealyArch)
												 port map(clk => s_clock,
															 reset => SW(0),
															 Xin   => SW(1),
															 Yout  => LEDR(0),
															 Zout  => LEDG(4 downto 1));
															 
						 LEDG(0) <= s_clock;



end vibro;