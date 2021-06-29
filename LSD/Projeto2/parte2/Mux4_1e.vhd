library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1e is
				port(sel     : in  std_logic_vector(1 downto 0);
					  dataIn0 : in  std_logic;
					  dataIn1 : in  std_logic;
					  dataIn2 : in  std_logic;
					  dataIn3 : in  std_logic;
					  dataOut : out std_logic);
end Mux4_1e;

architecture condicao of Mux4_1e is 

	begin
				dataOut <= dataIn0 when (sel = "00") else
							  dataIn1 when (sel = "01") else
							  dataIn2 when (sel = "10") else
							  dataIn3;
			
	end condicao;
		