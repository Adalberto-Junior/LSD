------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
------------

entity SeqDetFSM is
					port(clk   : in std_logic;
						  reset : in std_logic;
						  Xin   : in std_logic;
						  Zout  : out std_logic_vector(3 downto 0);
						  Yout  : out std_logic);
end SeqDetFSM;
-------------
architecture MealyArch of SeqDetFSM is
	type estados is (S0, S1, S10, S100);
	Signal pstaty, nstaty : estados;

begin 

	sinc_proc : process(clk)
						begin
							if(rising_edge(clk)) then
								if(reset = '1') then
									pstaty <= S0;
								else
									pstaty <= nstaty;
								end if;
							end if;
						end process;
					
	comb_proc : process(Xin, pstaty)
						begin
						
							Yout   <= '0'; -- evitar lanch e  para facilitar;
							
							case pstaty is
							
								when S0 =>
									if(Xin = '1') then
										nstaty <= S1;
									else
										nstaty <= S0;
									end if;
									
								when S1 =>
									if(Xin = '1') then
										nstaty <= S1;
									else
										nstaty <= S10;
									end if;
									
								when S10 =>
									if(Xin = '1') then
										nstaty <= S1;
									else
										nstaty <= S100;
									end if;
									
								when S100 =>
									if(Xin = '1') then
										Yout <= '1';
										nstaty <= S1;
									else
										nstaty <= S0;
									end if;
								
								when others =>
										nstaty <= S0;
								end case;
							end process;
													with pstaty select 
													Zout <= 	"0001" when S0,
																"0010" when S1,
																"0100" when S10,
																"1000" when S100,
																"0000" when others;
end  MealyArch;
---------------
										