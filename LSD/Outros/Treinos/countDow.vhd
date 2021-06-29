library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
------------

entity countDow is
					port(clk  : in std_logic;
						 reset : in std_logic;
						 count : out std_logic_vector(3 downto 0));
						 
end countDow;
------------

architecture Jay of countDow is 
		signal s_countvalue : unsigned(3 downto 0);
		
begin 

			process(clk)
				begin
					if(rising_edge(clk)) then
						if(reset = '1') then
							s_countvalue <= (others => '0' );
						else
							s_countValue <= s_countvalue - 1;
						end if;
					end if;
				end process;
			count <= std_logic_vector(s_countvalue);
end Jay;
-------