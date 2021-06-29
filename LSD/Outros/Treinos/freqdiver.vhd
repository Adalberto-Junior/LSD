library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
------------

entity freqdiver is
				port(clk   : in std_logic;
					  reset : in std_logic;
					  k     : in std_logic_vector(31 downto 0);
					  count : out std_logic);
end freqdiver;
-------------

architecture Orti of freqdiver is

	Signal s_count : unsigned(31 downto 0);
	Signal middle  : unsigned(31 downto 0);
	Signal final   : unsigned(31 downto 0);
begin 
		middle <= (unsigned(k) / 2);
		final  <= unsigned(k); 
		
		process(clk)
			begin
				if(rising_edge(clk)) then
				 if((reset = '1') or (s_count = final - 1)) then
					 count <= '0';
					 s_count <= (others => '0');
				else
					if( s_count = middle - 1) then
						count <= '1';
					end if;
				s_count <= s_count + 1;
				end if;
			end if;
		end process;
end Orti;
					