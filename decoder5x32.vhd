----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:34 04/07/2017 
-- Design Name: 
-- Module Name:    decoder5x32 - Behavioral 
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

entity decoder5x32 is
    Port ( input : in  STD_LOGIC_VECTOR (4 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end decoder5x32;

architecture Behavioral of decoder5x32 is

begin
OUTPUT <= "00000000000000000000000000000001" when INPUT = "00000" else
		"00000000000000000000000000000010" when INPUT = "00001" else
		"00000000000000000000000000000100" when INPUT = "00010" else
		"00000000000000000000000000001000" when INPUT = "00011" else
		"00000000000000000000000000010000" when INPUT = "00100" else
		"00000000000000000000000000100000" when INPUT = "00101" else
		"00000000000000000000000001000000" when INPUT = "00110" else
		"00000000000000000000000010000000" when INPUT = "00111" else
		"00000000000000000000000100000000" when INPUT = "01000" else
		"00000000000000000000001000000000" when INPUT = "01001" else
		"00000000000000000000010000000000" when INPUT = "01010" else
		"00000000000000000000100000000000" when INPUT = "01011" else
		"00000000000000000001000000000000" when INPUT = "01100" else
		"00000000000000000010000000000000" when INPUT = "01101" else
		"00000000000000000100000000000000" when INPUT = "01110" else
		"00000000000000001000000000000000" when INPUT = "01111" else
		"00000000000000010000000000000000" when INPUT = "10000" else
		"00000000000000100000000000000000" when INPUT = "10001" else
		"00000000000001000000000000000000" when INPUT = "10010" else
		"00000000000010000000000000000000" when INPUT = "10011" else
		"00000000000100000000000000000000" when INPUT = "10100" else
		"00000000001000000000000000000000" when INPUT = "10101" else
		"00000000010000000000000000000000" when INPUT = "10110" else
		"00000000100000000000000000000000" when INPUT = "10111" else
		"00000001000000000000000000000000" when INPUT = "11000" else
		"00000010000000000000000000000000" when INPUT = "11001" else
		"00000100000000000000000000000000" when INPUT = "11010" else
		"00001000000000000000000000000000" when INPUT = "11011" else
		"00010000000000000000000000000000" when INPUT = "11100" else
		"00100000000000000000000000000000" when INPUT = "11101" else
		"01000000000000000000000000000000" when INPUT = "11110" else
		"10000000000000000000000000000000" when INPUT = "11111" else
		"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" ;
end Behavioral;

