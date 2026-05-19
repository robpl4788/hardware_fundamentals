
-- Default VHDL example template for the HDL interactive board simulator
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Uncomment if you use the unsigned type
-- Add any other standard package you may need

-- Use this entity as a template for your own circuit. Entity can be any name
-- Port names must include clk, key, sw, led, hex0, hex1 to be matched with their panel counterparts
-- You may use std_logic_vector or unsigned for multibit ports
-- Port bit range can be different than number of devices if you do not need them all
-- Each port must be defined in its own line and you may omit or comment unused ports

entity circuit is
port (
  clk500Hz: in std_logic; -- 50 Hz, period 20 ms 
  key:     in std_logic_vector(3 downto 0);
  sw:      in std_logic_vector(9 downto 0);
  led:     out std_logic_vector(9 downto 0);
  hex0:    out std_logic_vector(6 downto 0);
  hex1:    out std_logic_vector(6 downto 0));
end circuit;

-- There are no restrictions in architecture definition
architecture description of circuit is
  signal clk: std_logic:='0';
  signal ms_count: integer range 0 to 1023:=0;
  signal s_count: integer range 0 to 9:= 0;
  signal update_lights: std_logic:='0';
  signal LOUT: integer range 0 to 4:= 0;
begin

  U1 : entity work.REQUEST_MANAGER
  port map (
    CLK => update_lights,
    LOUT => LOUT,
    R => sw(4 downto 0)
  );

  U2 : entity work.DECODER_7_SEG
  port map (
    i => s_count,
    SEGS => hex0
  );



  process(LOUT)
  begin
    led(4 downto 0) <= (others => '0');
    led(LOUT) <= '1';
  end process;

  process(s_count)
  begin
    if (s_count = 5) then
      update_lights <= '1';
    else
      update_lights <= '0';
    end if;

  end process;


  process(clk)
  begin
    if (clk='1') then

      if (s_count = 0) then s_count <= 5; -- Resets s_count on the loop when s_count = 4
      else s_count <= s_count - 1; end if;
    end if;
  end process;
  
  process(clk500Hz)
  begin
    if (clk500Hz='1') then
      if (ms_count<499) then
        ms_count<=ms_count+ 2;
      else
        ms_count<=0;
        clk<=not clk;
      end if;
    end if;
  end process;
    
end description;

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
        while (R(i) = '0') loop
          if (i = 4) then i := 0; 
          else i:= i + 1; end if; 
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

