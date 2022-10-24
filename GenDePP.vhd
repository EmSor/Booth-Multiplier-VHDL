library ieee;
use ieee.std_logic_1164.all;

entity GenDePP is
	port (A, Acomp : in std_logic_vector(23 downto 0);
			cb1, cb2, cb3, cb4, cb5, cb6 : in std_logic_vector(2 downto 0);
			pp1, pp2, pp3, pp4, pp5, pp6 : out std_logic_vector(23 downto 0));
end entity;

architecture GenDePP_ARC of GenDePP is
	begin 
	with cb1 select
		pp1 <= X"000000"                when "000",
				 A                        when "001",
				 A(22 downto 0) & '0'     when "010",
				 Acomp(22 downto 0) & '0' when "110",
				 Acomp                    when "111",
				 X"000000"                when others;
	
	with cb2 select
		pp2 <= X"000000"                  when "000",
				 A(21 downto 0) & "00"      when "001",
				 A(20 downto 0) & "000"     when "010",
				 Acomp(20 downto 0) & "000" when "110",
				 Acomp(21 downto 0) & "00"  when "111",
				 X"000000"                  when others;
	
	with cb3 select
		pp3 <= X"000000"                    when "000",
				 A(19 downto 0) & X"0"        when "001",
				 A(18 downto 0) & "00000"     when "010",
				 Acomp(18 downto 0) & "00000" when "110",
				 Acomp(19 downto 0) & X"0"    when "111",
				 X"000000"                    when others;
				 
	with cb4 select
	pp4 <= X"000000"                      when "000",
			 A(17 downto 0) & "000000"      when "001",
			 A(16 downto 0) & "0000000"     when "010",
			 Acomp(16 downto 0) & "0000000"  when "110",
			 Acomp(17 downto 0) & "000000" when "111",
			 X"000000"                      when others;
			 
	with cb5 select
	pp5 <= X"000000"                        when "000",
			 A(15 downto 0) & X"00"            when "001",
			 A(14 downto 0) & "000000000"     when "010",
			 Acomp(14 downto 0) & "000000000" when "110",
			 Acomp(15 downto 0) & X"00"       when "111",
			 X"000000"                        when others;
			 
	with cb6 select
	pp6 <= X"000000"                         when "000",
			 A(13 downto 0) & "0000000000"     when "001",
			 A(12 downto 0) & "00000000000"    when "010",
			 Acomp(12 downto 0) & "00000000000" when "110",
			 Acomp(13 downto 0) & "0000000000" when "111",
			 X"000000"                         when others;	
end architecture; 
			 