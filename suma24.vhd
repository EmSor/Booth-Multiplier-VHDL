library ieee;
use ieee.std_logic_1164.all;

entity Suma24 is
	port (A, B: in std_logic_vector(23 downto 0);
			S : out std_logic_vector(23 downto 0));			
end entity;

architecture Suma24_ARC of Suma24 is
	component FA is 
		port (A, B, Cin : in std_logic;
				S, Co : out std_logic);			
	end component;
	component HA is 
	port ( A, B : in std_logic;
			s, Co : out std_logic );
	end component;
	
	signal c : std_logic_vector(24 downto 1);
	
	begin 
	I0 : HA port map (A(0), B(0), S(0), c(1));
	I1 : FA port map (A(1), B(1), c(1), S(1), c(2));
	I2 : FA port map (A(2), B(2), c(2), S(2), c(3));
	I3 : FA port map (A(3), B(3), c(3), S(3), c(4));
	I4 : FA port map (A(4), B(4), c(4), S(4), c(5));
	I5 : FA port map (A(5), B(5), c(5), S(5), c(6));
	I6 : FA port map (A(6), B(6), c(6), S(6), c(7));
	I7 : FA port map (A(7), B(7), c(7), S(7), c(8));
	I8 : FA port map (A(8), B(8), c(8), S(8), c(9));
	I9 : FA port map (A(9), B(9), c(9), S(9), c(10));
	I10 : FA port map (A(10), B(10), c(10), S(10), c(11));
	I11 : FA port map (A(11), B(11), c(11), S(11), c(12));
	I12 : FA port map (A(12), B(12), c(12), S(12), c(13));
	I13 : FA port map (A(13), B(13), c(13), S(13), c(14));
	I14 : FA port map (A(14), B(14), c(14), S(14), c(15));
	I15 : FA port map (A(15), B(15), c(15), S(15), c(16));
	I16 : FA port map (A(16), B(16), c(16), S(16), c(17));
	I17 : FA port map (A(17), B(17), c(17), S(17), c(18));
	I18 : FA port map (A(18), B(18), c(18), S(18), c(19));
	I19 : FA port map (A(19), B(19), c(19), S(19), c(20));
	I20 : FA port map (A(20), B(20), c(20), S(20), c(21));
	I21 : FA port map (A(21), B(21), c(21), S(21), c(22));
	I22 : FA port map (A(22), B(22), c(22), S(22), c(23));
	I23 : FA port map (A(23), B(23), c(23), S(23), C(24));
end architecture;