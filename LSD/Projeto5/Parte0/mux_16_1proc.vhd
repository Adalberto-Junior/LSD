library IEEE;
use IEEE.STD_LOGIC_1164.all;
----------------

entity mux_16_1proc is 
					port(sel     : in std_logic_vector(3 downto 0);
							input  : in std_logic_vector(15 downto 0);
							enable : in std_logic;
							muxout : out std_logic);
end mux_16_1proc;
----------------

architecture Shell of mux_16_1proc is 

begin 

	process(enable, sel, input)
		begin
			
			if(enable = '1') then
				muxout <= '0';
			else
			 if(sel = "0000")    then
				muxout <= input(0);
		    elsif(sel = "0001") then
				muxout <= input(1);
			 elsif(sel = "0010") then
				muxout <= input(2);
			 elsif(sel = "0011") then
				muxout <= input(3);
			 elsif(sel = "0100") then
				muxout <= input(4);
			 elsif(sel = "0101") then
				muxout <= input(5);
			 elsif(sel = "0110") then
				muxout <= input(6);
			 elsif(sel = "0111") then
				muxout <= input(7);
			 elsif(sel = "1000") then
				muxout <= input(8);
			 elsif(sel = "1001") then
				muxout <= input(9);
			 elsif(sel = "1010") then
				muxout <= input(10);
			 elsif(sel = "1011") then
				muxout <= input(11);
			 elsif(sel = "1100") then
				muxout <= input(12);
			 elsif(sel = "1101") then
				muxout <= input(13);
			 elsif(sel = "1110") then
				muxout <= input(14);
			else
				muxout <= input(15);
				
		  end if;
		end if;
	 end process;
 end Shell;
 -----------------
		
			