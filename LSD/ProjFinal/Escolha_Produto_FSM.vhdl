library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Escolha_Produto_FSM is
	port(reset			: in  std_logic;
		  clk   			: in  std_logic;
		  
		  fanta			: in  std_logic;
		  SumoLim	   : in  std_logic;
		  SumoPes		: in  std_logic;
		  Sel_Gelo		: in  std_logic;
		  
		  timeExp 		: in  std_logic;
		  newTime 		: out std_logic;
		  timeVal 		: out std_logic_vector(7 downto 0);
		  timerEnable	: out std_logic;
		  
		  sel_word 		: out std_logic_vector(15 downto 0);
		  
		  LED_R 			: out std_logic;
		  LED_G 			: out std_logic;
		  
		  sel_modo_Gel	: out std_logic;
		  blink 			: out std_logic
		  );
end Escolha_Produto_FSM;



architecture Behavior of Escolha_Produto_FSM is

	-- O prof disse que podemos usar underscore com o b antes para ajudar na leitura
	constant TempoInicial	: std_logic_vector(7 downto 0)  := b"0000_0110"; -- 6 s
	constant TempoPrep		: std_logic_vector(7 downto 0)  := b"0000_1000"; -- 8 s
	constant msg_HIHI			: std_logic_vector(15 downto 0) := b"0000_0001_0000_0001";
	constant msg_FAN			: std_logic_vector(15 downto 0) := b"1111_0100_0011_0010";
	constant msg_SOLI			: std_logic_vector(15 downto 0) := b"0000_0111_0110_0101";
	constant msg_SPES			: std_logic_vector(15 downto 0) := b"0101_1101_1100_0101";
	constant msg_EREF			: std_logic_vector(15 downto 0) := b"0010_1101_1110_1101";
	
 
	type TState is (Thihi, ThihiEspera, TEref, TFan, TSoli, TSpes, TDoneTFan, TDoneTSoli, TDoneTSpes);
	signal PS, NS	: TState := Thihi;
	

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				PS <= Thihi;
			else
				PS	<= NS;
			end if;
		end if;
	end process;

	comb_proc : process(all)
	begin
		blink <= '0';
		timeVal <= (others => '0');
		LED_R <= '0';
		LED_G <= '0';
		sel_modo_Gel <= '0';
		
		case (PS) is
			
		when Thihi =>
			sel_word <= b"1111_1111_1111_1111";
			timerEnable <= '1';
			newTime <= '1';
			timeVal <= TempoInicial;
			NS <= ThihiEspera;
			
		when ThihiEspera =>
			blink <= '1';
			sel_word <= msg_HIHI;
			timerEnable <= '1';
			newTime <= '0';
			if(timeExp = '1') then
				NS <= TEref;
			else
				NS <= ThihiEspera;
			end if;
			
		when TEref =>
			sel_word <= msg_EREF;
			timerEnable <= '1';
			newTime <= '0';
			timeVal <= TempoPrep;
			
			if(fanta = '1') then
				newTime <= '1';
				NS <= TFan;
			elsif(SumoLim = '1') then 
				newTime <= '1';
				NS <= TSoli;
			elsif(SumoPes = '1') then
				newTime <= '1';	
				NS <= TSpes;
			else
				NS <= TEref;
			end if;
			
		when TFan =>
			newTime <= '0';
			LED_R <= '1';
			sel_word <= msg_FAN;
			timerEnable <= '1';
			
			if(Sel_Gelo = '1') then
				timerEnable  <= '0'; --para o tempo
				sel_modo_Gel <= '1';
				NS <= TFan;
			elsif(timeExp = '1') then
				--newTime <= '1';
				NS <= TDoneTFan;
			elsif(fanta = '0') then
				NS <= TEref;
			else
				NS <= TFan;
			end if;
			
		when TDoneTFan =>
			sel_word <= msg_FAN;
			timerEnable <= '0';
			newTime <= '0';
			LED_G <= '1';
			if(fanta	 = '0') then
				NS <= TEref;
			else
				NS <= TDoneTFan;
			end if;
				
		when TSoli =>
			newTime <= '0';
			LED_R <= '1';
			sel_word <= msg_SOLI;
			timerEnable <= '1';
			--timeVal <= TempoPrep;
			if(Sel_Gelo = '1') then
				timerEnable  <= '0'; --para o tempo
				sel_modo_Gel <= '1';
				NS <= TSoli;
			elsif(timeExp = '1') then
				--newTime <= '1';
				NS <= TDoneTSoli;
			elsif(SumoLim = '0') then
				NS <= TEref;
			else
				NS <= TSoli;
			end if;
			
		when TDoneTSoli =>
			sel_word <= msg_SOLI;
			timerEnable <= '0';
			newTime <= '0';
			LED_G <= '1';
			if(SumoLim = '0') then
				NS <= TEref;
			else
				NS <= TDoneTSoli;
			end if;
			
		when TSpes =>
			newTime <= '0';
			LED_R <= '1';
			sel_word <= msg_SPES;
			timerEnable <= '1';
			if(Sel_Gelo = '1') then
				timerEnable  <= '0'; --para o tempo
				sel_modo_Gel <= '1';
				NS <= TSpes;
			elsif(timeExp = '1') then
				--newTime <= '1';
				NS <= TDoneTSpes;
			elsif(SumoPes = '0') then
				NS <= TEref;
			else
				NS <= TSpes;
			end if;
				
		--Para aparecer o ledg	
		when TDoneTSpes =>
			sel_word <= msg_SPES;
			timerEnable <= '0';
			newTime <= '0';
			LED_G <= '1';
			if(SumoPes = '0') then
				NS <= TEref;
			else
				NS <= TDoneTSpes;
			end if;
		when others =>
			timerEnable  <= '0'; 
			newTime     <= '0';
			NS <= Thihi;	
		end case;
	end process;
	
end Behavior;