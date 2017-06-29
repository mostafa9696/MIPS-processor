----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:06:02 05/03/2017 
-- Design Name: 
-- Module Name:    Alucontrol - Behavioral 
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

entity Alucontrol is
port ( F : in std_logic_vector (5 downto 0);
         Aluop0 : in std_logic;
			Aluop1 : in std_logic;
			op : out std_logic_vector (3 downto 0));
end Alucontrol;

architecture Behavioral of Alucontrol is
signal t1 : std_logic ;
signal t2 : std_logic ;
signal t3 : std_logic ;
signal t4 : std_logic ;
begin
t1 <= F(1) and F(0);
t2 <= Aluop1 and F(1);
t3 <= F(3) or F(0);
t4 <= Aluop1 and t3;
op(3) <= Aluop1 and t1;
op(2) <= Aluop0 or t2;
op(1) <= not(Aluop1) or not (F(2));
op(0) <= not(Aluop1 and t1) and t4;
end Behavioral;

