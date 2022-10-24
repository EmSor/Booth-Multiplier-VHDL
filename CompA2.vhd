library ieee;
use ieee.std_logic_1164.all;

entity CompA2 is 
	port (A : in std_logic_vector(11 downto 0);
			Acomp, Aext: out std_logic_vector(23 downto 0));
end entity;

architecture CompA2_ARC of CompA2 is
	component HA is 
	port (A, B : in std_logic;
			s, Co : out std_logic );
	end component;
	
	signal notA, extA : std_logic_vector(23 downto 0);
	signal C : std_logic_vector(24 downto 0);
	
	begin 
	with A(11) select
		extA <= X"000" & A(11 downto 0) when '0',
				  X"FFF" & A(11 downto 0) when '1';
				  
	Aext <= extA;
	notA <= not(extA);
	I0 : HA port map (notA(0), '1', Acomp(0), C(1));
	I1 : HA port map (notA(1), c(1), Acomp(1), C(2));
	I2 : HA port map (notA(2), c(2), Acomp(2), C(3));
	I3 : HA port map (notA(3), c(3), Acomp(3), C(4));
	I4 : HA port map (notA(4), c(4), Acomp(4), C(5));
	I5 : HA port map (notA(5), c(5), Acomp(5), C(6));
	I6 : HA port map (notA(6), c(6), Acomp(6), C(7));
	I7 : HA port map (notA(7), c(7), Acomp(7), C(8));
	I8 : HA port map (notA(8), c(8), Acomp(8), C(9));
	I9 : HA port map (notA(9), c(9), Acomp(9), C(10));
	I10 : HA port map (notA(10), c(10), Acomp(10), C(11));
	I11 : HA port map (notA(11), c(11), Acomp(11), C(12));
	I12 : HA port map (notA(12), c(12), Acomp(12), C(13));
	I13 : HA port map (notA(13), c(13), Acomp(13), C(14));
	I14 : HA port map (notA(14), c(14), Acomp(14), C(15));
	I15 : HA port map (notA(15), c(15), Acomp(15), C(16));
	I16 : HA port map (notA(16), c(16), Acomp(16), C(17));
	I17 : HA port map (notA(17), c(17), Acomp(17), C(18));
	I18 : HA port map (notA(18), c(18), Acomp(18), C(19));
	I19 : HA port map (notA(19), c(19), Acomp(19), C(20));
	I20 : HA port map (notA(20), c(20), Acomp(20), C(21));
	I21 : HA port map (notA(21), c(21), Acomp(21), C(22));
	I22 : HA port map (notA(22), c(22), Acomp(22), C(23));
	I23 : HA port map (notA(23), c(23), Acomp(23), C(24));
end architecture;