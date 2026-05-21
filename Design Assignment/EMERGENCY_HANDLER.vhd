library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity EMERGENCY_HANDLER is
port (
   clk1Hz : 		in std_logic;
   emergency : 		in std_logic;
	led_in:     in std_logic_vector(4 downto 0);
	led_out:     out std_logic_vector(4 downto 0)
	);
end EMERGENCY_HANDLER ;

architecture behv of EMERGENCY_HANDLER  is
begin
	process(clk1Hz, emergency, led_in)
	begin
		if (emergency = '1') then
			led_out <= led_in;
		else
			if (clk1Hz = '0') then
				led_out <= "11111";
			else
				led_out <= "00000";
			end if;
		end if;
  end process;

end behv;

