library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity alu_4bit_VHDL is
port ( 
	A, B	: in std_logic_vector(3 downto 0);
	S 		: in std_logic_vector(2 downto 0);
	Y 		: out std_logic_vector(3 downto 0)
	);
end alu_4bit_VHDL ;

architecture behv of alu_4bit_VHDL  is
begin
process(A, B, S)
    begin
        case S is
            when "000" =>
                Y <= std_logic_vector(unsigned(A) - unsigned(B));
            when "001" =>
                Y <= std_logic_vector(unsigned(A) + unsigned(B));
            when "010" =>
                Y <= std_logic_vector(unsigned(A) - 1);
            when "011" =>
                Y <= std_logic_vector(unsigned(A) + 1);
            when "100" =>
                Y <= (A AND B);
            when "101" =>
                Y <= (A OR B);
            when "110" =>
                Y <= (NOT A);
            when "111" =>
                Y <= (A XOR B);
            when others =>
                Y <= "0000"; -- Always include a default case in VHDL
        end case;
    end process;
end behv;