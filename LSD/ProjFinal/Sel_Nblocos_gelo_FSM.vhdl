library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Sel_Nblocos_gelo_FSM is
				port(clk				: in std_logic;
					  reset			: in std_logic;
					  Sel_Modo_Gel : in std_logic;
					  aumentar		: in std_logic;
					  diminuir		: in std_logic;
					  Sel_Bar		: out std_logic_vector(15 downto 0);
					  enable			: out std_logic_vector(3 downto 0));
					  
end Sel_Nblocos_gelo_FSM;

architecture Beh of Sel_Nblocos_gelo_FSM is

	constant vazia			: std_logic_vector(15 downto 0) := b"1111_1111_1111_1111";
	constant cubo1			: std_logic_vector(15 downto 0) := b"0110_1111_1111_1111";
	constant cubo2			: std_logic_vector(15 downto 0) := b"0110_0110_1111_1111";
	constant cubo3			: std_logic_vector(15 downto 0) := b"0110_0110_0110_1111";
	constant cubo4			: std_logic_vector(15 downto 0) := b"0110_0110_0110_0110";

--Sinais e tipos para estados;
	type TState is (Desligado, Inicio, T0cubos, T2cubos, T1cubo, T3cubos, T4cubos);
	Signal PS, NS : TState := Inicio;

begin

sync_proc  : process(clk)
		begin
			if(rising_edge(clk)) then
				if(reset = '1') then
					PS <= Inicio;
				else
					PS <= NS;
				end if;
			end if;
		end process;

comb_proc : process(PS, aumentar, diminuir)
		begin
		enable <= "0000";
		  case(PS) is
				when Inicio => 
					Sel_Bar <= (others => '0');
					if(Sel_Modo_Gel = '1') then
						NS <= T2cubos;
					else
						NS <= Inicio;
					end if;
				
				when T2cubos =>
					 Sel_Bar <= cubo2;
					 enable <= "0011";
					if(aumentar = '1' and Sel_Modo_Gel = '1') then
						NS <= T3cubos;
					elsif(diminuir = '1'  and Sel_Modo_Gel = '1') then
						NS <= T1cubo;
					elsif  (Sel_Modo_Gel = '0') then
						NS <= Inicio;
					else
						NS <= T2cubos;
					end if;
				
				when T0cubos =>
					Sel_Bar <= vazia;
					if(aumentar = '1'  and Sel_Modo_Gel = '1') then
						NS <= T1cubo;
					
					elsif  (Sel_Modo_Gel = '0') then
						NS <= Inicio;
					else
						NS <= T0cubos;
					end if;
					
				when T1cubo =>
					enable <= "0001";
					Sel_Bar <= cubo1;
					if(aumentar = '1' and Sel_Modo_Gel = '1') then
						NS <= T2cubos;
					elsif (diminuir = '1' and Sel_Modo_Gel = '1') then
						NS <= T0cubos;
					elsif  (Sel_Modo_Gel = '0') then
						NS <= Inicio;
					else
						NS <= T1cubo;
					end if;
				
				when T3cubos =>
						enable <= "0111";
						Sel_Bar <= cubo3;
					if(aumentar = '1' and Sel_Modo_Gel = '1') then
						NS <= T4cubos;
					elsif(diminuir = '1' and Sel_Modo_Gel = '1') then
						NS <= T2cubos;
					elsif  (Sel_Modo_Gel = '0') then
						NS <= Inicio;
					else
						NS <= T3cubos;
					end if;
					
				when T4cubos =>
						enable <= "1111";
						Sel_Bar <= cubo4;
					if(diminuir = '1' and Sel_Modo_Gel = '1') then
						NS <= T3cubos;
					elsif  (Sel_Modo_Gel = '0') then
						NS <= Inicio;
					else
						NS <= T4cubos;
					end if;
					
				when others =>
					Sel_Bar <= vazia;
					NS <= Inicio;
				end case;
			end process;
end Beh;