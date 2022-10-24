library ieee;
use ieee.std_logic_1164.all;

entity CSA_6vectores is 
	port (A, B, C : in std_logic_vector(23 downto 0);
			D, E, F : in std_logic_vector(23 downto 0);
			Sf, Co: out std_logic_vector(23 downto 0));
end entity;

architecture CSA_6vectores_ARC of CSA_6vectores is
	component CSA_24bits is 
	port (A, B, C : in std_logic_vector(23 downto 0);
			S : out std_logic_vector(23 downto 0);
			Co : out std_logic_vector(24 downto 0));
	end component;
	
	signal S1, S2, S3 : std_logic_vector(23 downto 0);
	signal C1, C2, C3, C4 : std_logic_vector(24 downto 0);
	
	begin 
	IO : CSA_24bits port map (A, B, C, S1, C1);
	I1 : CSA_24bits port map (D, E, F, S2, C2);
	I2 : CSA_24bits port map (S1, C1(23 downto 0), S2, S3, C3);
	I3 : CSA_24bits port map (S3, C3(23 downto 0), C2(23 downto 0), Sf, C4);
	I4 : Co <= C4(23 downto 0);

end architecture;