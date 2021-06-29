library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity  mux_16_1 is 
				port(Sel    : in  std_logic_vector(3  downto 0);
					  imput  : in  std_logic_vector(15 downto 0);
					  Muxout : out std_logic);
end mux_16_1;

architecture Equaction of mux_16_1 is 

	Signal s_sel: std_logic_vector(15 downto 0);

begin
		s_sel(0)  <= not sel(0) and not sel(1) and not sel(2) and not sel (3) and imput(0);
		s_sel(1)  <=  	  sel(0) and not sel(1) and not sel(2) and not sel (3) and imput(1);
		s_sel(2)  <= not sel(0) and     sel(1) and not sel(2) and not sel (3) and imput(2);
		s_sel(3)  <=     sel(0) and     sel(1) and not sel(2) and not sel (3) and imput(3);
		s_sel(4)  <= not sel(0) and not sel(1) and     sel(2) and not sel (3) and imput(4);
		s_sel(5)  <=     sel(0) and not sel(1) and     sel(2) and not sel (3) and imput(5);
		s_sel(6)  <= not sel(0) and     sel(1) and     sel(2) and not sel (3) and imput(6);
		s_sel(7)  <=     sel(0) and     sel(1) and     sel(2) and not sel (3) and imput(7);
		s_sel(8)  <= not sel(0) and not sel(1) and not sel(2) and     sel (3) and imput(8);
		s_sel(9)  <=     sel(0) and not sel(1) and not sel(2) and     sel (3) and imput(9);
		s_sel(10) <= not sel(0) and     sel(1) and not sel(2) and     sel (3) and imput(10);
		s_sel(11) <=     sel(0) and     sel(1) and not sel(2) and     sel (3) and imput(11);
		s_sel(12) <= not sel(0) and not sel(1) and     sel(2) and     sel (3) and imput(12);
		s_sel(13) <=     sel(0) and not sel(1) and     sel(2) and     sel (3) and imput(13);
		s_sel(14) <= not sel(0) and     sel(1) and     sel(2) and     sel (3) and imput(14);
		s_sel(15) <=     sel(0) and     sel(1) and     sel(2) and     sel (3) and imput(15);
		
		Muxout    <= s_sel(0) or s_sel(1) or s_sel(2) or s_sel(3) or s_sel(4) or s_sel(5)   or 
						 s_sel(6) or s_sel(7) or s_sel(8) or s_sel(9) or s_sel(10) or s_sel(11) or 
						 s_sel(12) or s_sel(13) or s_sel(14) or s_sel(15);
						 
end Equaction;