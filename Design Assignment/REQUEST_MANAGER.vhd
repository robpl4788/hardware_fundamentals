library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity REQUEST_MANAGER is
port (
    R : in std_logic_vector(4 downto 0);
    CLK : in std_logic;
    LOUT : out integer range 0 to 4:= 0
	);
end REQUEST_MANAGER ;

architecture behv of REQUEST_MANAGER  is
  signal L : integer range 0 to 7:= 0;
  constant max_loops: integer := 5;
begin
	process(CLK)
    variable i : integer range 0 to 4 := 0;
	begin
    if (CLK='1') then
      if (R = "00000") then
        L <= L + 1;
        if (L = 4) then L <= 0; 
        end if; -- Resets L on the loop when L = 4
      else

        if (L = 4) then i := 0; 
        else i:= L + 1; end if; -- initially move i forwards

        -- Move i forward until it finds the next request
		  for loop_count in (max_loops)downto 0 loop
			  if (R(i) = '0') then
				 if (i = 4) then i := 0; 
				 else i:= i + 1; end if; 
			  end if;
			end loop;
		  L <= i; -- Set L to the next request

      end if;

    end if;
	end process;

  process (L)
  begin
    LOUT <= L;
  end process;
end behv;

