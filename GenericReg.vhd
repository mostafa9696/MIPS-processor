----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:50:00 04/01/2017 
-- Design Name: 
-- Module Name:    GenericReg - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GenericReg is
GENERIC (n: NATURAL := 32) ;
    Port ( I : in  STD_LOGIC_VECTOR (n-1 downto 0);
           CLK,LOD,INC,CLR : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (n-1 downto 0));
end GenericReg;

architecture Behavioral of GenericReg is
SIGNAL temp: STD_LOGIC_VECTOR (n-1 DOWNTO 0) := (others => '0');
begin
	PROCESS(clk)
		
		BEGIN
			
			IF(CLK'event AND CLK='1')THEN
				
				IF(LOD ='1') THEN
				
					temp <= I;
				
				ELSIF (INC='1')THEN
						
			temp <= temp +1;
					ELSIF(CLR='1') THEN
				
					temp <=(others =>'0');
					
			END IF;
				END IF;
			END PROCESS;
		
	O <= temp;

end Behavioral;

