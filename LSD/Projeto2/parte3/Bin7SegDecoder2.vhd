library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder2 is
						port(SW    : in  std_logic_vector(3 downto 0);
							  KEY   : in  std_logic_vector(3 downto 0);
							  HEX0  : out std_logic_vector(6 downto 0);
							  LEDR  : out std_logic_vector(6 downto 0);
							  LEDG  : out std_logic_vector(3 downto 0));
end Bin7SegDecoder2;


architecture Behavi of Bin7SegDecoder2 is
	signal S_aux : std_logic_vector(6 downto 0);
begin 
			 Disp : entity work.Bin7SegDecoder(Behavioral)
													port map( enable   => KEY(0),
																 binInput => SW,
																 decOut_n => S_aux);
						
		HEX0(6 downto 0) <= S_aux;
		LEDG(3 downto 0) <= SW;
		LEDR(6 downto 0) <= S_aux;
end Behavi;