------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
------------

entity DrinksFSM is
					port(clk    : in std_logic;
						  reset  : in std_logic;
						  V		: in std_logic;
						  C		: in std_logic;
						  sout   : out std_logic_vector(2 downto 0);
						  Drink	: out std_logic);
end DrinksFSM;
-------------
architecture Shell of DrinksFSM is
	type state_type is(S0, S1, S2, S3, S4, S5);
	Signal s_pstate, state_next : state_type;
begin
		sinc: process(clk)
					begin
						if(rising_edge(clk)) then
							if(reset = '1') then
							s_pstate <= S0;
						else
							s_pstate <= state_next;
						end if;
					end if;
				end process;
		
		comb : process(C, V, s_pstate)
						begin
							
							case s_pstate is
								when S0 =>
									Drink <= '0';
									if( V = '1') then
										state_next <= S1;
									else
									  if( C = '1') then
											state_next <= S3;
										else
											state_next <= S0;
										end if;
									end if;
								when S1 =>
									Drink <= '0';
									if( V = '1') then
										state_next <= S2;
									else
									  if( C = '1') then
											state_next <= S4;
										else
											state_next <= S1;
										end if;
									end if;
								when S2 =>
									Drink <= '0';
									if( V = '1') then
										state_next <= S3;
									else
									  if( C = '1') then
											state_next <= S5;
										else
											state_next <= S2;
										end if;
									end if;
								when S3 =>
									Drink <= '0';
									if( V = '1') then
										state_next <= S4;
									else
									  if( C = '1') then
											state_next <= S5;
										else
											state_next <= S3;
										end if;
									end if;
								when S4 =>
									Drink <= '0';
									if( V = '1' or C = '1') then
										state_next <= S5;
									else
										state_next <= S4;
									end if;
								when S5 =>
									Drink 	  <= '1';
									state_next <= S0;
								when others =>
									Drink 	  <= '0';
									state_next <= S0;
							end case;
						end process;
						with s_pstate select
							sout <= "001" when S0,
									  "010" when S1,
									  "011" when S2,
									  "100" when S3,
									  "101" when S4,
									  "110" when S5,
									  "000" when others;
end Shell;
---------