-----------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
-----------

--entity vazia;

entity countDowUp_TB  is

end countDowUp_TB;
------------------

architecture  Shell of countDowUp_TB is 

	---Sinais para ligação de entrada;
		
	Signal s_clk, s_reset		 : std_logic;
	Signal s_enable, s_updown_n : std_logic;
	
	----Sinal para saída;
	Signal s_cntOut : std_logic_vector(3 downto 0);
	
begin 
	
		----instaciamento de uut;
	uut : entity work.countDowUp(basico)
									port map(clk      => s_clk,
												reset    => s_reset,
												enable   => s_enable,
												updown_n => s_updown_n,
												cntOut   => s_cntOut);
				----process para clock;
				
	Clock_proc : process 
		begin
			s_clk <= '0'; wait for 100 ns;
			s_clk <= '1'; wait for 100 ns;
		end process;
		
				--- Stim process;
	stim_proc : process
		begin
			s_reset    <= '1';
			s_enable   <= '0';
			s_updown_n <= '1';
				wait for 320 ns;
				
			s_reset    <= '0';
				wait for 20 ns;
			
			s_enable   <= '1';
				wait for 925 ns;
			s_enable   <= '0';
				wait for 375 ns;
				
			s_undown_n <= '0';
			s_enable   <= '1';
				wait for 975 ns;
				
			s_enable   <= '0';
				wait for 125 ns;
				
		end process;
		
end Shell;			
	