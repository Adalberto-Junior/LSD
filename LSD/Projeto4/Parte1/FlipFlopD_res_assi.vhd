------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
-----------

entity FlipFlopD_res_assi is
					 port(clk  : in std_logic;
								d : in std_logic;
							set  : in std_logic;
							reset: in std_logic;
								q : out std_logic);
end FlipFlopD_res_assi;
-------------
architecture assincrono of FlipFlopD_res_assi is
	begin
	 process(reset, clk)
	 begin
		 
		 if(reset = '1')  then
				q <= '0';
		 elsif (rising_edge(clk)) then
		 	
			if(set = '1') then
				q <= '1';
	
			else
			   q <= d;
				
		  end if;
		 end if;
	 end process;
end assincrono;
--------------