library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DECODER_7_SEG is
port (
    i : in integer range 0 to 9;
    SEGS : out std_logic_vector(6 downto 0)
	);
end DECODER_7_SEG ;

architecture behv of DECODER_7_SEG  is
  signal L : integer range 0 to 7:= 0;
begin
	process(i)
	begin
    case i is
      -- Least significant bit is a, then b, c, d, e, f, g
      when 0 => SEGS <= "1000000";
      when 1 => SEGS <= "1111001";
      when 2 => SEGS <= "0100100";
      when 3 => SEGS <= "0110000";
      when 4 => SEGS <= "0011001";
      when 5 => SEGS <= "0010010";
      when 6 => SEGS <= "0000010";
      when 7 => SEGS <= "1111000";
      when 8 => SEGS <= "0000000";
      when 9 => SEGS <= "0011000";
      when others => SEGS <= "1111111"; -- Blank display for invalid input
    end case;    
	end process;
end behv;

