------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
-----------

entity CombShiftUnit is
						port(dataIn    : in std_logic_vector(7 downto 0);
							  dirLeft   : in std_logic;
							  shAmount  : in std_logic_vector(2 downto 0);
							  shArith	: in std_logic;
							  rotate		: in std_logic;
							  dataOut   : out std_logic_vector(7 downto 0));
						

end CombShiftUnit;
-----------------

architecture Combinatorio of CombShiftUnit is

			Signal s_Shamout  : Natural;
			Signal s_shiftReg : std_logic_vector(7 downto 0);
				
begin

		s_Shamout <= to_integer(unsigned(Shamount));
		
		process(dataIn, dirLeft, rotate, shArith, s_Shamout)
			begin
				if(rotate = '1') then
					if(dirLeft = '1') then
						s_shiftReg <= std_logic_vector(rotate_left(unsigned(dataIn), s_Shamout));
					else
						s_shiftReg <= std_logic_vector(rotate_right(unsigned(dataIn), s_Shamout));
					 end if;
					 
					 elsif(shArith = '1') then
						if( dirLeft = '1') then
						s_shiftReg <= std_logic_vector(shift_left(signed(dataIn), s_Shamout));
					else
						s_shiftReg <= std_logic_vector(shift_right(signed(dataIn), s_Shamout));
					 end if;
					 
					else
						if(dirLeft = '1') then
						s_shiftReg <= std_logic_vector(shift_left(unsigned(dataIn), s_Shamout));
					else
						s_shiftReg <= std_logic_vector(shift_right(unsigned(dataIn), s_Shamout));
					 end if;
				end if;
		end process;
		
	dataOut <= s_shiftReg;
	
end combinatorio;
----------------