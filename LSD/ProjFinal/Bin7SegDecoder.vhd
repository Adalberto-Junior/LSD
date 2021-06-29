library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port(
			binInput	: in  std_logic_vector(3 downto 0);
			enable   : in  std_logic;
			decOut_n	: out std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
  signal s_decOut_n : std_logic_vector(6 downto 0);
begin
	decOut_n <= s_decOut_n when enable = '1' else "1111111";
	with binInput select
		s_decOut_n <= "1111001" when "0000",	--I
						  "0001001" when "0001",   --H
						  "0001110" when "0010",	--F	
						  "0001000" when "0011",	--A
						  "0101011" when "0100",   --N pequeno
						  "0010010" when "0101",	--S
						  "1000000" when "0110",   --0
						  "1000111" when "0111",   --L
						  "0001100" when "1100",	--P
						  "0000110" when "1101",	--E
						  "0101111" when "1110",   --R pequeno
						  "1111111" when "1111",   --Vazio para diferentes tamanhos da palavra
						  "0111111" when others;	--Fazer traço quando n escolhe nada do pretendido
end Behavioral;