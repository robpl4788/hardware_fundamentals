----------------------------------------------------------------------------------
-- Module Name:    Clock divider 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity clk_div is
    Port ( 	clk_in : in  STD_LOGIC;
		reset: in std_logic;
		clk_lowf : out STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is
   signal cntDiv: std_logic_vector(26 downto 0); -- general clock div/cnt
 
 begin

  ckDivider: process(clk_in, reset)
  begin
	 if reset = '0' then cntDiv <= "000000000000000000000000000";
	 elsif clk_in'event and clk_in='1' then
		cntDiv <= cntDiv + 1;
	 end if;
  end process;

  clk_lowf <= cntDiv(25);  -- Uncomment for testing in the board. Comment for simulation
--  clk_lowf <= cntDiv(3); -- Uncomment for simulation. Comment for testing on the board
  
end Behavioral;

