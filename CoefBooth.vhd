library ieee;
use ieee.std_logic_1164.all;

entity CoefBooth is
	port (opB : in std_logic_vector(11 downto 0);
			cb1, cb2, cb3, cb4, cb5, cb6 : out std_logic_vector(2 downto 0));
end entity;

architecture CoefBooth_ARC of CoefBooth is
	signal b1 : std_logic_vector(1 downto 0);
	signal b2, b3, b4, b5, b6 : std_logic_vector(2 downto 0);
	
	begin 
	b1 <= opB(1 downto 0);
	b2 <= opB(3 downto 1);
	b3 <= opB(5 downto 3);
	b4 <= opB(7 downto 5);
	b5 <= opB(9 downto 7);
	b6 <= opB(11 downto 9);
	
	process (b1, b2, b3, b4, b5, b6)
		begin
		case b1 is
			when "00" => cb1 <= "000";
			when "01" => cb1 <= "001";
			when "10" => cb1 <= "110";
			when "11" => cb1 <= "111";
			when others => null;
		end case;
		
		case b2 is
			 when "000" => cb2 <= "000";
			 when "001" => cb2 <= "001";
			 when "010" => cb2 <= "001";
			 when "011" => cb2 <= "010";
			 when "100" => cb2 <= "110";
			 when "101" => cb2 <= "111";
			 when "110" => cb2 <= "111";
			 when "111" => cb2 <= "000";
			 when others => null;
		end case;
		
		case b3 is
			 when "000" => cb2 <= "000";
			 when "001" => cb2 <= "001";
			 when "010" => cb2 <= "001";
			 when "011" => cb2 <= "010";
			 when "100" => cb2 <= "110";
			 when "101" => cb2 <= "111";
			 when "110" => cb2 <= "111";
			 when "111" => cb2 <= "000";
			 when others => null;
		end case;
		
		case b4 is
			 when "000" => cb2 <= "000";
			 when "001" => cb2 <= "001";
			 when "010" => cb2 <= "001";
			 when "011" => cb2 <= "010";
			 when "100" => cb2 <= "110";
			 when "101" => cb2 <= "111";
			 when "110" => cb2 <= "111";
			 when "111" => cb2 <= "000";
			 when others => null;
		end case;
		
		case b5 is
			 when "000" => cb2 <= "000";
			 when "001" => cb2 <= "001";
			 when "010" => cb2 <= "001";
			 when "011" => cb2 <= "010";
			 when "100" => cb2 <= "110";
			 when "101" => cb2 <= "111";
			 when "110" => cb2 <= "111";
			 when "111" => cb2 <= "000";
			 when others => null;
		end case;
		
		case b6 is
			 when "000" => cb2 <= "000";
			 when "001" => cb2 <= "001";
			 when "010" => cb2 <= "001";
			 when "011" => cb2 <= "010";
			 when "100" => cb2 <= "110";
			 when "101" => cb2 <= "111";
			 when "110" => cb2 <= "111";
			 when "111" => cb2 <= "000";
			 when others => null;
		end case;
	end process;
end architecture;