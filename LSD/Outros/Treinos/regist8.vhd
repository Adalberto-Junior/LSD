library IEEE;
use IEEE.STD_LOGIC_1164.all;
-----------

entity regist8 is
				port(clk     : in std_logic;
					  reset   : in std_logic;
					  dataIn  : in std_logic_vector(7 downto 0);
					  dataOut : out std_logic_vector(7 downto 0));
end regist8;
-----------

architecture Sy of regist8 is


begin
		process(clk)
			begin
				if(rising_edge(clk)) then
					if(reset = '1') then
						dataOut <= (others => '0');
					else
						dataOut <= dataIn;
					end if;
				end if;
			end process;
end Sy;
------