----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:49:57 04/07/2017 
-- Design Name: 
-- Module Name:    mux2x1 - Behavioral 
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

entity mux2x1 is
	Port ( i0 , i1 : in  STD_LOGIC;
  
         selc : in  STD_LOGIC;
         
  mout : out  STD_LOGIC);
end mux2x1;

architecture Behavioral of mux2x1 is

begin
	mout <= i0 WHEN (selc = '0') ELSE
		  
		  i1 WHEN (selc = '1') ELSE
			  'Z';

end Behavioral;

