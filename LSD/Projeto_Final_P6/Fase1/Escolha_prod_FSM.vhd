library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Escolha_prod_FSM is
							port(clk		    : in std_logic;
								  reset      : in std_logic;
								  cafe       : in std_logic;
								  cha        : in std_logic;
								  choc       : in std_logic;
								  Enable 	 : in std_logic; --Recebe frequancia de 5hz;
								  timeExp    : in std_logic;
								  newTime    : out std_logic;
								  timeEnable : out std_logic; --ativa ou desativa o TimerFSM;
								  ativad		 : out std_logic; --saida para display;
								  timeVal    : out std_logic_vector(7 downto 0);
								  selWord    : out std_logic_vector(2 downto 0);
								  Led        : out std_logic_vector(1 downto 0));
end Escolha_prod_FSM;
--------------------

architecture maquina of Escolha_prod_FSM is 
	
--Constantes para difinição das temporizações--
	Constant Blink_Time   : std_logic_vector(7 downto 0) := "00000101"; --5s
	Constant prepare_Time : std_logic_vector(7 downto 0) := "00001010"; --10s
	
--Sinais e tipos para os Estados--
	type Tstade is (Start, Helo, choose, Tcafe, Tcha, Tchoc, Ready_Cafe, Ready_Cha, Ready_Choc);
	Signal s_currentState, s_nextState : Tstade := Start;

begin 


maquina_proc : process(clk) 
						begin
							if (rising_edge(clk)) then
								if (reset = '1') then
									s_currentState <= Start;
								else
									s_currentState	<= s_nextState;
								end if;
							end if;
						end process;

		
comb_proc : process(all)
					begin

							Led		  <="00";
							timeVal <= (others => '0');
							ativad <= '1';
							
						case(	s_currentState) is
						
							when Start =>
									
									timeEnable  <= '1';
									newTime	   <= '1';
									timeVal     <= Blink_Time;
									s_nextState <= Helo;
									selWord     <= "000";
									
									
							when Helo =>
							
									selWord     <= "000";
									timeEnable  <= '1';
									newTime     <= '0';
									ativad      <= Enable;
									
							
								if(timeExp = '1') then
									s_nextState <= choose;
								else
									s_nextState <= Helo;
								end if;
								
							when choose =>
							
									   selWord    <= "001";
										timeEnable <= '1'; 
										timeVal    <= prepare_Time;
										
								if(cafe = '1') then
									s_nextState <= Tcafe;
									newTime     <= '1';
								elsif(cha = '1') then
									s_nextState <= Tcha;
									newTime     <= '1';
								elsif (choc = '1') then
									s_nextState <= Tchoc;
									newTime     <= '1';
								else
									s_nextState <= choose;
								end if;
								
							when Tcafe =>
							
									selWord    <= "010";
									led        <= "01";
								   newTime    <= '0';
								   timeEnable <= '1';
									
								if(timeExp = '1') then
									s_nextState <= Ready_Cafe;
								
								elsif(cafe = '0') then
									s_nextState <= choose;
								else
									s_nextState <= Tcafe;
								end if;
								
							when Tcha =>
							
									selWord    <= "111";
									led        <= "01";
									timeEnable <= '1';
									newTime    <= '0';
					
								if(timeExp = '1') then
									s_nextState <= Ready_Cha;
								elsif(cha = '0') then
									s_nextState <= choose;
								else
									s_nextState <= Tcha;
								end if;
								
							when Tchoc =>
							
									selWord    <= "011";
									led        <= "01";
									timeEnable <= '1';
									newTime    <= '0';
									
								if(timeExp = '1') then
									s_nextState <= Ready_Choc;
								elsif(choc = '0') then
									s_nextState <= choose;
								else
									s_nextState <= Tchoc;
								end if;
								
							when Ready_Cafe =>
							
									selWord    <= "010";
									timeEnable <= '0';
									newTime    <= '0';
									led		  <= "10";
									
								if(cafe = '0' and cha = '0' and choc = '0') then
									s_nextState <= choose;
								else
									s_nextState <= Ready_Cafe;
								end if;
							
							when Ready_Cha =>
							
									selWord    <= "111";
									timeEnable <= '0';
									newTime    <= '0';
									led		  <= "10";
									
								if(cafe = '0' and cha = '0' and choc = '0') then
									s_nextState <= choose;
								else
									s_nextState <= Ready_Cha;
								end if;
							
							when Ready_Choc =>
							
									selWord    <= "011";
									timeEnable <= '0';
									newTime    <= '0';
									led		  <= "10";
									
								if(cafe = '0' and cha = '0' and choc = '0') then
									s_nextState <= choose;
								else
									s_nextState <= Ready_Choc;
								end if;
								
							when others =>
									newTime    <= '0';
									s_nextState <= Start;	
						end case;
					end process;				
end maquina;
-----------