library IEEE;
use IEEE.STD_LOGIC_1164.all;
------------

entity FlipflopDemo is
					port(KEY  : in std_logic_vector(0 downto 0);
						  sw	 : in std_logic_vector(2 downto 0);
						  LEDR : out std_logic_vector(0 downto 0));
end FlipflopDemo;
----------------

architecture comportamental of FlipflopDemo is

begin

	flip: entity work.flipflop(Shell)
							port map(clk   => KEY(0),
										reset => SW(0),
										set   => SW(1),
										D		=> SW(2),
										Q		=> LEDR(0));
end comportamental;