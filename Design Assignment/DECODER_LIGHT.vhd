library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DECODER_LIGHT is
port (
   i : 		in integer range 0 to 4;
	led:     out std_logic_vector(4 downto 0)
	);
end DECODER_LIGHT ;

architecture behv of DECODER_LIGHT  is
begin
  process(i)
  begin
    led(4 downto 0) <= (others => '0');
    led(i) <= '1';
  end process;

end behv;

