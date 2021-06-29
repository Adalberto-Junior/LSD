library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity modoDeAcu is
				port(clk      : in std_logic;
					  reset    : in std_logic;
					  selModAc : in std_logic;
					  maisAc   : in std_logic;
					  menosAc  : in std_logic;
					  Enable   : out std_logic_vector(3 downto 0); --Enable para ativar o Bin7SegDecoder;
					  selBar   : out std_logic_vector(15 downto 0));
end modoDeAcu;
-------------

architecture RTL of modoDeAcu is

--Sinais e tipos para estados;
	type estados is (Inicio, zeroBar, oneBar, twoBar, threeBar, fourBar);
	Signal s_currentState, s_nextState : estados := Inicio;
--Constantes para selBar;
	 constant One_Bar            : std_logic_vector(15 downto 0) := b"0000_0000_0000_0001";
    constant TwoBars            : std_logic_vector(15 downto 0) := b"0000_0000_0001_0001";
    constant ThreeBars          : std_logic_vector(15 downto 0) := b"0000_0001_0001_0001";
    constant FourBars           : std_logic_vector(15 downto 0) := b"0001_0001_0001_0001";

begin 

sync_proc  : process(clk)
						begin
							if(rising_edge(clk)) then
								if(reset = '1') then
									s_currentState <= Inicio;
								
								else
									s_currentState <= s_nextState;
								end if;
						end if;
					end process;
							

comb_proc : process(all)
					begin
					
						Enable <= "0000";
						
					  case(s_currentState) is
								
							when Inicio =>
							
									selBar <= (others => '0');
								
								 if(selModAc = '1') then
								 
										s_nextState <= oneBar;
									else
											s_nextState <= Inicio;
									 end if;
									 
							when zeroBar =>
								
									selBar <= (others => '0');
									
								if((maisAc = '1') and (selModAc ='1')) then
									s_nextState <= oneBar;
								elsif(selModAc ='0') then
									s_nextState <= Inicio;
								else
								   s_nextState <= zeroBar;
								end if;
								
							when oneBar =>
								Enable <= "0001";
								 selBar <= One_Bar;
								 
								if((maisAc = '1') and (selModAc ='1')) then --tem que garantir que o selModAc ='1'
									s_nextState <= twoBar;
								elsif((menosAc = '1') and (selModAc ='1')) then
									s_nextState <= ZeroBar;
								elsif(selModAc ='0') then
									s_nextState <= Inicio;
								else
									s_nextState <= oneBar;
								end if;
							
							when twoBar =>
								 Enable <= "0011";
								 selBar <= TwoBars;
								 
								if((maisAc = '1') and (selModAc = '1')) then
									s_nextState <= threeBar;
								elsif((menosAc = '1') and (selModAc ='1')) then
									s_nextState <= oneBar;
								elsif(selModAc ='0') then
									s_nextState <= Inicio;
								else
									s_nextState <= twoBar;
								end if;
								
							when threeBar =>
								
									Enable <= "0111";
									selBar <= ThreeBars;
									
								if((maisAc = '1') and (selModAc = '1')) then
									s_nextState <= fourBar;
								elsif((menosAc = '1') and (selModAc ='1')) then
									s_nextState <= twoBar;
								elsif(selModAc ='0') then
									s_nextState <= Inicio;
								else
									s_nextState <= threeBar;
								end if;
								
							when fourBar =>
							
									Enable <= "1111";
									selBar <= FourBars;
									
								if((menosAc = '1') and (selModAc ='1')) then
									s_nextState <= threeBar;
								elsif(selModAc ='0') then
									s_nextState <= Inicio;
								else
									s_nextState <= fourBar;
								end if;
								
							when others =>
								selBar <= (others => '-');
								s_nextState <= Inicio;
							end case;
						end process;
end RTL;
-------