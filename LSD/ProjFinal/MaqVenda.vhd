library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MaqVenda is
	port(CLOCK_50	: in  std_logic;
		  SW			: in  std_logic_vector(4 downto 0);
		  KEY 		: in  std_logic_vector(1 downto 0);
		  LEDR		: out std_logic_vector(0 downto 0);
		  LEDG		: out std_logic_vector(0 downto 0);
		  HEX0		: out std_logic_vector(6 downto 0);
		  HEX1		: out std_logic_vector(6 downto 0);
		  HEX2		: out std_logic_vector(6 downto 0);
		  HEX3		: out std_logic_vector(6 downto 0);
		  HEX4		: out std_logic_vector(6 downto 0);
		  HEX5		: out std_logic_vector(6 downto 0);
		  HEX6		: out std_logic_vector(6 downto 0);
		  HEX7		: out std_logic_vector(6 downto 0)
		  );
end MaqVenda;

architecture Behav of MaqVenda is

	signal s_clk			   : std_logic;
	signal s_clk6			   : std_logic;
	signal s_reset 		   : std_logic;
	signal s_enable		   : std_logic;
	signal s_blink			   : std_logic;
	signal s_fanta 		   : std_logic;
	signal s_soli 			   : std_logic;
	signal s_spes 			   : std_logic;
	signal s_newTime  	   : std_logic;
	signal s_timeVal 		   : std_logic_vector(7 downto 0);
	signal s_timerEnable    : std_logic;
	signal s_timeExp		   : std_logic;
	signal s_sel_word		   : std_logic_vector(15 downto 0);
	signal s_Sel_Gelo		 	: std_logic;
	signal s_Sel_Bar		   : std_logic_vector(15 downto 0);
	signal s_pulsedOut1 	   : std_logic;
	signal s_pulsedOut2 	   : std_logic;
	signal s_enable2			: std_logic_vector(3 downto 0);
	
	

begin
	s_enable <= s_clk6 or not s_blink;		
--clk_div_1hz
	clock1_entrada : entity work.ClkDividerN(RTL)
		generic map(k => 50000000 / 1)
		port map(clkIn			 => CLOCK_50,
					clkOut		 => s_clk);
--clk_div_6hz
	clock6_entrada : entity work.ClkDividerN(RTL)
		generic map(k => 50000000 / 6)
		port map(clkIn			 => CLOCK_50,
					clkOut		 => s_clk6);
--register_ini
	conect_reg : entity work.RegistarRefrigerantes(Behav)
		port map(clk			=>	CLOCK_50,
					reset			=> SW(0),
					fanta			=> SW(1),
					SumoLim		=> SW(2),
					SumoPes		=>	SW(3),
					Sel_Gelo		=> SW(4),
					dataOut(0)	=> s_reset,
					dataOut(1)	=> s_fanta,
					dataOut(2)	=> s_soli,
					dataOut(3)	=> s_spes,
					dataOut(4)	=> s_Sel_Gelo
					);
--main_fsm
	reg_to_eref : entity work.Escolha_Produto_FSM(Behavior)
		port map(reset			=> s_reset,
					clk			=> CLOCK_50,
					blink       => s_blink,
					fanta			=> s_fanta,
					SumoLim		=> s_soli,
					SumoPes		=> s_spes,
					Sel_Gelo		=> s_Sel_Gelo,
					--Lado esquerdo está feito em cima
					newTime  	=> s_newTime,
					timeVal  	=> s_timeVal,
					timerEnable => s_timerEnable,
					timeExp		=> s_timeExp,
					sel_word		=> s_sel_word,
					LED_R			=> LEDR(0),
					LED_G			=> LEDG(0));	
--timer_fsm
	time_to_eref : entity work.Timer_FSM(Behavioral)
		port map(reset			=> s_reset,
					clk			=> CLOCK_50,
					newTime		=> s_newTime,
					timeVal		=> s_timeVal,
					timerEnable => s_timerEnable,
					timeExp		=> s_timeExp
					);
--bin7segdecoder
	Disp0 : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput	=> s_sel_word (15 downto 12),
					enable   => s_enable,
					decOut_n 	=> HEX0);
					
	Disp1 : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput	=> s_sel_word (11 downto 8),
					enable   => s_enable,
					decOut_n 	=> HEX1);
	
	Disp2 : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput	=> s_sel_word(7 downto 4),
					enable   => s_enable,
					decOut_n 	=> HEX2);
	
	Disp3 : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput	=> s_sel_word (3 downto 0),
					enable   => s_enable,
					decOut_n 	=> HEX3);

	Aumentar_Gelo: entity work.Debouncers(Behavioral)
		port map(AumDim 		=> KEY(0),
					refClk 		=> CLOCK_50,
					pulsedOut 	=> s_pulsedOut1);
	
	Diminuir_Gelo: entity work.Debouncers(Behavioral)
		port map(AumDim 		=> KEY(1),
					refClk 		=> CLOCK_50,
					pulsedOut 	=> s_pulsedOut2);

	deb_to_SelBlocos: entity work.Sel_Nblocos_gelo_FSM(Beh)
		port map(reset				=> s_reset,
					enable			=> s_enable2,
					clk				=> CLOCK_50,
					Sel_Modo_Gel	=> s_Sel_Gelo,
					aumentar			=> s_pulsedOut1,
					diminuir			=> s_pulsedOut2,
					Sel_Bar			=> s_Sel_Bar);
	display_cubo1: entity work.Bin7SegDecoder(Behavioral)
		port map(binInput	=> s_Sel_Bar(15 downto 12),
					enable   => s_enable2(0),
					decOut_n 	=> HEX4);
	display_cubo2: entity work.Bin7SegDecoder(Behavioral)
		port map(binInput	=> s_Sel_Bar(11 downto 8),
					enable   => s_enable2(1),
					decOut_n 	=> HEX5);
	display_cubo3: entity work.Bin7SegDecoder(Behavioral)
		port map(binInput	=> s_Sel_Bar(7 downto 4),
					enable   => s_enable2(2),
					decOut_n 	=> HEX6);
	display_cubo4: entity work.Bin7SegDecoder(Behavioral)
		port map(binInput	=> s_Sel_Bar(3 downto 0),
					enable   => s_enable2(3),
					decOut_n => HEX7);
end Behav;
	