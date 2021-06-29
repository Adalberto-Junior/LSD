------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
------------

entity amor is 
			port(clk    : in std_logic;
				  reset  : in std_logic;
				  w      : in std_logic;
				  z      : out std_logic);
end amor;
----------

architecture beahavioral of amor is 
		type State_type is (S0, S1, S2);
		Signal S_y, S_y_next : State_type;
begin

		scron_proc : process(clk)
						begin
							if(rising_edge(clk)) then
								if(reset = '1') then
									S_y  <= S0;
								else
									S_y  <= S_y_next;
								 end if;
								end if;
						end process;
				
		comb_proc  : process(w, S_y)
						begin 
							case S_y is
								
								when S0 =>
										z <= '0';
									if(w = '0') then
										S_y_next <= S1;
									else
										S_y_next <= S0;
									end if;
								when S1 =>
										z <= '0';
									if(w = '1') then
										S_y_next <= S2;
									else 
										S_y_next <= S0;
									end if;
								when S2 =>
										z <= '1';
									if(w = '0') then
										S_y_next <= S2;
									else
										S_y_next <= S0;
									end if;
								when others =>
										z <= '0';
										S_y_next <= S0;
							end case;
						end process;
end beahavioral;
----------------

							
									