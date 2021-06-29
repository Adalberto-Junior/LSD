library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegistarRefrigerantes is
    port(
			reset					: in     std_logic;
			clk					: in     std_logic;
			Fanta					: in     std_logic;
			SumoLim				: in     std_logic;
			SumoPes				: in     std_logic;
			Sel_Gelo				: in     std_logic;
			dataOut				: out std_logic_vector(4 downto 0));
end RegistarRefrigerantes;

architecture Behav of RegistarRefrigerantes is
   begin
      process(clk)
      begin
			if (rising_edge(clk)) then
				dataOut(0) <= reset;
				dataOut(1) <= Fanta;
				dataOut(2) <= SumoLim;
				dataOut(3) <= SumoPes;
				dataOut(4) <= Sel_Gelo;
			end if;
	 end process;
end Behav;