-----------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
------------

entity contadorgray is
					port(clk     : in std_logic;
						  reset   : in std_logic;
						  dataIn  : in std_logic_vector(2 downto 0);
						  dataOut : out std_logic_vector(2 downto 0));
end contadorgray;
----------------

architecture Shell of contadorgray is
	
	type estados is (S000, S001, S010, S011, S100, S101, S110, S111);
	Signal pstaty, nextstaty : estados; 

begin 


	syc_proc : process(clk)
					 begin
						if(rising_edge(clk)) then
							if(reset = '0') then
								pstaty <= S000;
							else
								pstaty <= nextstaty;
							end if;
						 end if;
					end process;
					
	comb_proc : process(dataIn, pstaty)
						begin 
							
							case pstaty is
								
								when S000 =>
									if(dataIn = "000") then
										dataOut <= "001";
										nextstaty <= S001;
									else
										dataOut <= "---";
										nextstaty <= S000;
									end if;
								
								when S001 =>
									if(dataIn = "001") then
										dataOut <= "011";
										nextstaty <= S010;
									else
										dataOut <= "---";
										nextstaty <= S001;
									end if;
									
								when S010 =>
									if(dataIn = "010") then
										dataOut <= "110";
										nextstaty <= S011;
									else
										dataOut <= "---";
										nextstaty <= S010;
									end if;
									
								when S011 =>
									if(dataIn = "011") then
										dataOut <= "010";
										nextstaty <= S100;
									else
										dataOut <= "---";
										nextstaty <= S011;
									end if;
									
								when S100 =>
									if(dataIn = "100") then
										dataOut <= "000";
										nextstaty <= S101;
									else
										dataOut <= "---";
										nextstaty <= S100;
									end if;
									
								when S101 =>
									if(dataIn = "101") then
										dataOut <= "100";
										nextstaty <= S110;
									else
										dataOut <= "---";
										nextstaty <= S101;
									end if;
									
								when S110 =>
									if(dataIn = "110") then
										dataOut <= "111";
										nextstaty <= S111;
									else
										dataOut <= "---";
										nextstaty <= S110;
									end if;
									
								when S111 =>
									if(dataIn = "111") then
										dataOut <= "101";
										nextstaty <= S000;
									else
										dataOut <= "---";
										nextstaty <= S111;
									end if;
								end case;
							end process;
end Shell;
----------
										
							