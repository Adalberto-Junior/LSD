library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity RAM_1P_Demo is
					port(KEY  : in std_logic_vector(0 downto 0);
						  SW   : in std_logic_vector(12 downto 0);
						  LEDR : out std_logic_vector(7 downto 0));
end RAM_1P_Demo;
----------------

architecture Behavioral of RAM_1P_Demo is 


begin 


	RAM : entity work.RAM_1P_16_8(Shell)
					
										port map(clk 			 => KEY(0),
													writeEnable  => SW(0),
													 address 	 => SW(4 downto 1),
													 writeData	 => SW(12 downto 5),
													 readData	 => LEDR(7 downto 0));

end Behavioral;
