--------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
--------------

entity AccN is
				generic(N			: positive:= 8);
					port(dataIn		: in  std_logic_vector(N-1 downto 0);
							reset		: in  std_logic;
							enable	: in  std_logic;
							clk		: in  std_logic;
						  dataOut 	: out std_logic_vector(N-1 downto 0));
end AccN;
--------------

architecture Behavioral of AccN is

	signal s_adderOut, s_regOut : std_logic_vector(N-1 downto 0);
	
begin
			
		adder: entity work.AdderN(Behavioral)
							generic map(N => N)
								port map( operand0 =>   dataIn,
											 operand1 => s_regOut,
											 result   => s_adderOut);
											 
		 regN: entity work.RegN(Shell)
									generic map(N => N)
										port map(wrEn    => enable,
													reset   => reset,
													clk	  => clk,
													dataIn  => s_adderOut,
													dataOut => s_regOut);
													
													
			dataOut <= s_regOut;
		 
											 

end Behavioral;
---------------