library ieee;
use ieee.std_logic_1164.all;

entity Mult_Booth is 
	port (A, B : in std_logic_vector(11 downto 0);
			Mult : out std_logic_vector(23 downto 0));
end entity;

architecture Mult_Booth_ARC of Mult_Booth is
	component CompA2 is 
	port (A : in std_logic_vector(11 downto 0);
			Acomp, Aext: out std_logic_vector(23 downto 0));
	end component;
	
	component CoefBooth is
	port (opB : in std_logic_vector(11 downto 0);
			cb1, cb2, cb3, cb4, cb5, cb6 : out std_logic_vector(2 downto 0));
	end component;
	
	component GenDePP is
	port (A, Acomp : in std_logic_vector(23 downto 0);
			cb1, cb2, cb3, cb4, cb5, cb6 : in std_logic_vector(2 downto 0);
			pp1, pp2, pp3, pp4, pp5, pp6 : out std_logic_vector(23 downto 0));
	end component;
	
	component CSA_6vectores is 
	port (A, B, C : in std_logic_vector(23 downto 0);
			D, E, F : in std_logic_vector(23 downto 0);
			Sf, Co: out std_logic_vector(23 downto 0));
	end component;
	
	component Suma24 is
	port (A, B: in std_logic_vector(23 downto 0);
			S : out std_logic_vector(23 downto 0));			
	end component;
	
	signal Aext, Acext : std_logic_vector(23 downto 0);
	signal C1, C2, C3, C4, C5, C6 : std_logic_vector(2 downto 0);
	signal P1, P2, P3, P4, P5, P6 : std_logic_vector(23 downto 0);
	signal sum, comp : std_logic_vector(23 downto 0);
	
	begin 
	I0 : CompA2 port map (A, Acext, Aext);
	I1 : CoefBooth port map (B, C1, c2, C3, C4, C5, C6);
	I2 : GenDePP port map (Aext, Acext, C1, C2, C3, C4, C5, C6, P1, P2, P3, P4, P5, P6);
	I3 : CSA_6vectores port map (P1, P2, P3, P4, P5, P6, sum, comp);
	I4 : Suma24 port map (sum, comp, Mult);
end architecture;