library IEEE;
use IEEE.STD_LOGIC_1164.all;
------------

entity regist8_Demo is
					port(KEY  : in std_logic_vector(0 downto 0);
						  sw   : in std_logic_vector(8 downto 0);
						  LEDR : out std_logic_vector(7 downto 0));
end regist8_Demo;
----------------

architecture Nice of regist8_Demo is

begin
	
	regist8 : entity work.regist8(Sy)
									port map(clk     => KEY(0),
												reset   => SW(0),
												dataIn  => SW(8 downto 1),
												dataOut => LEDR(7 downto 0));
end Nice;
--------