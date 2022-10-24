-- Diseño de un full adder -- 
-- J. Emilio Soriano Campos --
-- TE.2002B 					--

-- Definicion de librerias--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Descripcion de la entidad --

entity FA is 
	port (A, B, Cin : in std_logic;
			s, Co : out std_logic);
	end FA;
	
-- Descripcion de la arquitectura --

architecture FA_ARC of FA is

component HA is 
	port (A, B : in std_logic;
			s, Co : out std_logic);
	end component HA;

signal C : std_logic_vector (2 downto 0);

begin

I0 : HA port map (A, B, C(2), C(1)); -- instanciacion del primer half adder 
I1 : HA port map (C(2) , Cin, S, C(0)); -- instanciacion del segundo half adder

Co <= C(1) or C(0);

end FA_ARC;