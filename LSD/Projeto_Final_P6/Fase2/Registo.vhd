library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity Registo is 
				port(CLOCK_50  : in std_logic;
					  sw 			: in std_logic_vector(4 downto 0);
					  reset		: out std_logic;
					  cafe		: out std_logic;
					  cha			: out std_logic;
					  selModAc  : out std_logic;
					  choc		: out std_logic);
end Registo;

architecture Shell of Registo is 
	--Sinais para fazer registo;
	Signal s_reset : std_logic;
	Signal s_cafe  : std_logic;
	Signal s_cha	: std_logic;
	Signal s_choc  : std_logic; 
	Signal s_acucar: std_logic;
	
begin 
		process(CLOCK_50)
			begin
				if(rising_edge(CLOCK_50)) then
					s_cafe   <= sw(0);
					s_cha    <= sw(1);
					s_choc   <= SW(2);
					s_reset  <= sw(3);
					s_acucar <= SW(4);
				end if;
			end process;
		process(CLOCK_50)
			begin
				if(rising_edge(CLOCK_50)) then
					reset    <= s_reset;
					selModAc <= s_acucar;
					choc     <= s_choc;
					cha      <= s_cha;
					cafe     <= s_cafe;
				end if;
			end process;
end Shell;