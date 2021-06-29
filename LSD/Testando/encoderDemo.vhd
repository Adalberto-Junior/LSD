library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity encoderDemo is
				port(CLOCK_50   : in std_logic;
					  SW  		 : in std_logic_vector(2 downto 0);
					  HEX3		 : out std_logic_vector(6 downto 0));
					 -- HEX1		 : out std_logic_vector(6 downto 0);
					 -- HEX2		 : out std_logic_vector(6 downto 0);
					 -- HEX3		 : out std_logic_vector(6 downto 0));
end encoderDemo;
----------------

architecture babe of encoderDemo is 
		
		Signal s_clock : std_logic;
		Signal s_puts  : std_logic_vector(3 downto 0);

begin

	clkdiver : entity work.ClkDividerN(RTL)
								generic map(divFactor => 20000000)
								port map(clkIn => CLOCK_50,
											clkOut => s_clock);
											
	encoder  : entity work.encoder(Shell)
									port map(Inputs => SW(2 downto 0),
												OutPuts => s_puts);
												
	Bin7Seg  : entity work.Bin7SegDecoder(RTL)
									port map(enable   => s_clock,
										  binInput => s_puts,
										  decOut_n => HEX3(6 downto 0));
										  
end babe; 
										