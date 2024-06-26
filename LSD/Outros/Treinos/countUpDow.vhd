library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
------------

entity countUpDow is
						port(clk   : in std_logic;
							  reset : in std_logic;
							  upDow : in std_logic;
							  count : out std_logic_vector(3 downto 0));
end countUpDow;
--------------

architecture Helt of countUpDow is

	Signal s_count : unsigned(3 downto 0);
begin
			process(clk)
				begin
					if(rising_edge(clk)) then
						if(reset = '1') then
							s_count <= (others => '0');
						else
							if(upDow = '1') then
								s_count <= s_count + 1;
							else
							   s_count <= s_count - 1;
								
							end if;
						end if;
					end if;
				end process;
			count <= std_logic_vector(s_count);
end Helt;
--------