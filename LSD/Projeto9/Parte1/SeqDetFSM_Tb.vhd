------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
------------

entity SeqDetFSM_Tb is

end SeqDetFSM_Tb;

architecture simulus of SeqDetFSM_Tb is 
	
	--Sinais para ligar as entradas;
	Signal s_clk, s_reset : std_logic;
	Signal s_Xin 			: std_logic;
	--------------------------------
	--Sinal para ligar as saidas;
	Signal s_Yout : std_logic;
	Signal s_Zout : std_logic_vector(3 downto 0);
	----------------------------
	
begin 

	seqDet : entity work.SeqDetFSM(MealyArch)
							port map (clk => s_clk,
								  reset => s_reset,
								  Xin	  => s_Xin,
								  Yout  => s_Yout,
								  Zout  => s_Zout);
								  
	clock_process : process
							begin 
								s_clk <= '0'; wait for 100 ns;
								s_clk <= '1'; wait for 100 ns;
							end process;

							
	comb_process  : process
							begin
							
								wait for 50 ns;
								s_reset <= '1';
								wait for 100 ns;
								
								s_reset <= '0';
								wait for 50 ns;
							
								wait for 100 ns;
								s_Xin <= '1';
								wait for 100 ns;
								s_Xin <= '0';
								wait for 100 ns;
							end process;
end simulus;					
	