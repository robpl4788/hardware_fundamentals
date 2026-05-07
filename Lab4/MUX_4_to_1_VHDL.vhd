library ieee;
use ieee.std_logic_1164.all;

entity MUX_4_to_1_VHDL is
port ( 
	A, B, C, D : in std_logic;
	S : in std_logic_vector(1 downto 0);
	Y : out std_logic
	);
end MUX_4_to_1_VHDL ;

architecture behv of MUX_4_to_1_VHDL  is
begin
	process(A, B, C, D, S)
	begin
		case S is
			when "00" =>
				Y <= A;
			when "01" =>
				Y <= B;
			when "10" =>
				Y <= C;
			when "11" =>
				Y <= D;

		end case;
	end process;
end behv;