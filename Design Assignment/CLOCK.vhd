library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CLOCK is
port (
	clk50MHz: in std_logic; -- 50 MHz, period 20 ms 
	clk_second_count: out integer range 0 to 9:= 0;
	update_lights: out std_logic);
end CLOCK;

architecture description of CLOCK is
	signal clk: std_logic:='0';
	signal s_count: integer range 0 to 9:= 0;
	signal clk50MHz_count: integer range 0 to 25000000:=0;

begin
  process(clk)
  begin
    if (clk='1') then

      if (s_count = 0) then s_count <= 5; -- Resets s_count on the loop when s_count = 4
      else s_count <= s_count - 1; end if;
    end if;
  end process;
  
  process(clk50MHz)
  begin
    if (clk50MHz='1') then
      if (clk50MHz_count<24999999) then
        clk50MHz_count<=clk50MHz_count+ 1;
      else
        clk50MHz_count<=0;
        clk<=not clk;
      end if;
    end if;
  end process;
    
	process (s_count)
	begin
		clk_second_count<=s_count;
		if (s_count  = 0) then update_lights<= '1';
		else update_lights<= '0'; end if;
	end process;
	
	
end description;
