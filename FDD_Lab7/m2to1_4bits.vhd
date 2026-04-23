----------------------------------------------------------------------------------
-- Module Name:    m2-1_4bits - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity m2to1_4bits is
    Port ( in0 : in  STD_LOGIC_VECTOR (3 downto 0);
           in1 : in  STD_LOGIC_VECTOR (3 downto 0);
           Y  : out  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC);
end m2to1_4bits;

architecture Behavioral of m2to1_4bits is
begin
   with sel select
      Y <= in0 when '0',
           in1 when others;
end Behavioral;

