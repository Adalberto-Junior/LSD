library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Maquina_AutoTop is
						port(CLOCK_50	: in  std_logic;
							  SW		   : in std_logic_vector(4 downto 0);
							  KEY			: in std_logic_vector(1 downto 0);
							  HEX0		: out std_logic_vector(6 downto 0);
							  HEX1		: out std_logic_vector(6 downto 0);
							  HEX2		: out std_logic_vector(6 downto 0);
							  HEX3		: out std_logic_vector(6 downto 0);
							  HEX4		: out std_logic_vector(6 downto 0);
							  HEX5		: out std_logic_vector(6 downto 0);
							  HEX6		: out std_logic_vector(6 downto 0);
							  HEX7		: out std_logic_vector(6 downto 0);
							  LEDG		: out std_logic_vector(0 downto 0);
							  LEDR		: out std_logic_vector(0 downto 0));
end Maquina_AutoTop;
-------------------

architecture Structural of Maquina_AutoTop is

--Sinais---
	signal s_clk1Hz					: std_logic;
	signal s_newTime, s_timeExp	: std_logic;
	Signal s_ativad					: std_logic;
	Signal s_timeEnable				: std_logic;
	Signal s_maisAc					: std_logic;
	Signal s_menosAc					: std_logic;
	Signal s_selModAc 				: std_logic;
	Signal s_acucar					: std_logic;
	Signal s_enable					: std_logic_vector(3  downto 0);
	Signal s_selBar					: std_logic_vector(15 downto 0);
	Signal s_selWord					: std_logic_vector(2  downto 0);
	signal s_timeVal					: std_logic_vector(7  downto 0);
	
	--Sinais para registo--
	Signal s_reset, s_cafe : std_logic;
	Signal s_cha, s_choc  : std_logic;
	Signal s_sel_acucar    : std_logic;
	
	
	
begin



Registo_proc : process(CLOCK_50)
						begin
							if(rising_edge(CLOCK_50)) then
								s_sel_acucar <= SW(4);
								s_reset      <= SW(3);
								s_choc       <= SW(2);
								s_cha        <= Sw(1);
								s_cafe       <= SW(0);
							end if;
						end process;
						

clkDivider : entity work.ClkDividerN(RTL)
							generic map(divFactor    => 10000000)
								port map(clkIn			 => CLOCK_50,
											clkOut		 => s_clk1Hz);
											

											
Display_Decoded : entity work.Display_Decoded(Display)
									port map(Enable     => s_ativad,
												selWord    => s_selWord,
												OutHex0    => HEX0,
												OutHex1    => HEX1,
												OutHex2    => HEX2,
												OutHex3    => HEX3);
												
TimerFSM : entity work.TimerFSM(Behavioral)
									port map(clk        => CLOCK_50,
												reset      => s_reset,
												newTime    => s_newTime,
												timeEnable => s_timeEnable,
												timeExp 	  => s_timeExp,
												timeVal    => s_timeVal);
												
Escolha_pro : entity work.Escolha_prod_FSM(maquina)
									port map(clk        => CLOCK_50,
												reset      => s_reset,
											   sel_acucar => s_sel_acucar,
												choc       => s_choc,
												cha        => s_cha,
												cafe       => s_cafe,
												timeExp    => s_timeExp,
												newTime    => s_newTime,
												timeVal    => s_timeVal,
											   timeEnable => s_timeEnable,
											   ativad     => s_ativad,
												selWord    => s_selWord,
												selModAc   => s_selModAc,
												Enable     => s_clk1Hz,
												LedR  	  => LEDR(0),
												LedG       => LEDG(0));	
	
Debouncer1  : entity work.DebounceUnit(Behavioral)
										generic map(kHzClkFreq		=> 50000,
													   mSecMinInWidth	=> 100,
													   inPolarity		=> '1',
													   outPolarity		=> '1')
										port map(refClk		      => CLOCK_50,
													dirtyIn           => KEY(0),	
													pulsedOut         => s_maisAc);
													
Debouncer2  : entity work.DebounceUnit(Behavioral)
										generic map(kHzClkFreq		=> 50000,
													   mSecMinInWidth	=> 100,
													   inPolarity		=> '1',
													   outPolarity		=> '1')
										port map(refClk				=> CLOCK_50,
													dirtyIn  		   => KEY(1),	
													pulsedOut 			=> s_menosAc);
													
Modo_de_Acucar : entity work.modoDeAcu(RTL)
										port map(clk      => CLOCK_50,
													Enable   => s_enable,
													reset    => s_reset,
													selModAc => s_selModAc,
													maisAc   => s_maisAc,
													menosAc  => s_menosAc,
													selBar   => s_selBar);
										
Display  : entity work.Bin7SegDecoder(RTL)
										port map(enable   => s_enable(0),
													binInput => s_selBar(3 downto 0),
													decOut_n => HEX4);
													
Display1  : entity work.Bin7SegDecoder(RTL)
										port map(enable   => s_enable(1),
													binInput => s_selBar(7 downto 4),
													decOut_n => HEX5);
													
Display2  : entity work.Bin7SegDecoder(RTL)
										port map(enable   => s_enable(2),
													binInput => s_selBar(11 downto 8),
													decOut_n => HEX6);
													
Display3  : entity work.Bin7SegDecoder(RTL)
										port map(enable   => s_enable(3),
													binInput => s_selBar(15 downto 12),
													decOut_n => HEX7);
	
end Structural;