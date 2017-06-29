----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:37:13 04/07/2017 
-- Design Name: 
-- Module Name:    mux4x1 - Behavioral 
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

entity mux4x1 is
Port ( i1 , i2 , i3 , i4 : in  STD_LOGIC;
 
          selc : in  STD_LOGIC_VECTOR (1 downto 0);
   
        mout : out  STD_LOGIC);
end mux4x1;

architecture Behavioral of mux4x1 is

begin
	
	mout <= i1 WHEN (selc ="00") ELSE

   		 i2 WHEN (selc ="01") ELSE

		 i3 WHEN (selc ="10") ELSE

		 i4 WHEN (selc ="11") ELSE

		 'Z';

end Behavioral;

