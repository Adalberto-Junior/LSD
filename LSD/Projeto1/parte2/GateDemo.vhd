--Blibliotecas--
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--Interface (portos)
entity GateDemo is
		port(SW	 : in std_logic_vector(1 downto 0);
		LEDR : out std_logic_vector(1 downto 0));
end GateDemo;

--Implementação (descrição do funcionalidade)

architecture Shell of GateDemo is 
begin 
	System_core : entity work.AND2Gate(Behavioral)
									port map(inPort0 => SW(0),
												inPort1 => SW(1),
												outPort => LEDR(0));
	
end Shell;
	