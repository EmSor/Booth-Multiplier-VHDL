library ieee;
use ieee.std_logic_1164.all;

entity CSA_24bits is 
	port (A, B, C : in std_logic_vector(23 downto 0);
			S : out std_logic_vector(23 downto 0);
			Co : out std_logic_vector(24 downto 0));
end entity;

architecture CSA_24bits_ARC of CSA_24bits is
	component FA is 
	port (A, B, Cin : in std_logic;
			s, Co : out std_logic);
	end component;
	
	begin 
	Co(0) <= '0';
	I0: FA port map (A(0), B(0), C(0), S(0), Co(1));
	I1: FA port map (A(1), B(1), C(1), S(1), Co(2));
	I2: FA port map (A(2), B(2), C(2), S(2), Co(3));
	I3: FA port map (A(3), B(3), C(3), S(3), Co(4));
	I4: FA port map (A(4), B(4), C(4), S(4), Co(5));
	I5: FA port map (A(5), B(5), C(5), S(5), Co(6));
	I6: FA port map (A(6), B(6), C(6), S(6), Co(7));
	I7: FA port map (A(7), B(7), C(7), S(7), Co(8));
	I8: FA port map (A(8), B(8), C(8), S(8), Co(9));
	I9: FA port map (A(9), B(9), C(9), S(9), Co(10));
	I10: FA port map (A(10), B(10), C(10), S(10), Co(11));
	I11: FA port map (A(11), B(11), C(11), S(11), Co(12));
	I12: FA port map (A(12), B(12), C(12), S(12), Co(13));
	I13: FA port map (A(13), B(13), C(13), S(13), Co(14));
	I14: FA port map (A(14), B(14), C(14), S(14), Co(15));
	I15: FA port map (A(15), B(15), C(15), S(15), Co(16));
	I16: FA port map (A(16), B(16), C(16), S(16), Co(17));
	I17: FA port map (A(17), B(17), C(17), S(17), Co(18));
	I18: FA port map (A(18), B(18), C(18), S(18), Co(19));
	I19: FA port map (A(19), B(19), C(19), S(19), Co(20));
	I20: FA port map (A(20), B(20), C(20), S(20), Co(21));
	I21: FA port map (A(21), B(21), C(21), S(21), Co(22));
	I22: FA port map (A(22), B(22), C(22), S(22), Co(23));
	I23: FA port map (A(23), B(23), C(23), S(23), Co(24));
end architecture;