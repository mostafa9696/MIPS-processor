----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:41:44 05/03/2017 
-- Design Name: 
-- Module Name:    mux2x1_32 - Behavioral 
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

entity mux2x1_5 is
	Port ( i0 , i1 : in  STD_LOGIC_VECTOR (4 downto 0);
         selc : in  STD_LOGIC;       
  mout : out  STD_LOGIC_VECTOR (4 downto 0) );
end mux2x1_5;

architecture Behavioral of mux2x1_5 is

begin
mout <= i0 when selc ='0' else 
        i1 when selc ='1';
end Behavioral;

