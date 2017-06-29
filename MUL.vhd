----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:24 04/20/2017 
-- Design Name: 
-- Module Name:    MUL - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUL is
    Port ( I : in  STD_LOGIC_VECTOR (5 downto 0);
           address : out  STD_LOGIC_VECTOR (31 downto 0));
end MUL;
architecture Behavioral of MUL is
begin
address<="000000000000000000000000" & I & "00";
end Behavioral;
