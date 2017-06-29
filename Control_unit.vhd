----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:19:28 05/01/2017 
-- Design Name: 
-- Module Name:    Control_unit - Behavioral 
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

entity Control_unit is
PORT (
	I: IN  STD_LOGIC_VECTOR (5 DOWNTO 0);
	Regdst: OUT STD_LOGIC ;
	Jump: OUT STD_LOGIC ;
	Alusrc: OUT STD_LOGIC ;
	Memtoreg: OUT STD_LOGIC ;
	Regwrite: OUT STD_LOGIC ;
	Memread: OUT STD_LOGIC ;
	Memwrite: OUT STD_LOGIC ;
	Branch: OUT STD_LOGIC ;
	NotBranch: OUT STD_LOGIC ; 
	Aluop1: OUT STD_LOGIC ;
	Aluop0: OUT STD_LOGIC 
        );	
end Control_unit;

architecture Behavioral of Control_unit is
signal R_format: std_logic;
signal lw: std_logic;
signal sw:std_logic;
signal beq: std_logic;
signal nbeq: std_logic;
signal j: std_logic;

begin
R_format <= (not(I(5)) and not(I(4)) and not(I(3)) and not(I(2)) and not(I(1)) and not(I(0)));
lw <= ( I(5) and not(I(4)) and not(I(3)) and not(I(2)) and I(1) and I(0));
sw <= ( I(5) and not(I(4)) and I(3) and not(I(2)) and I(1) and I(0));
beq <= (not(I(5)) and not(I(4)) and not(I(3)) and I(2) and not(I(1)) and not(I(0)));
nbeq <= not(I(5)) and not (I(4)) and not (I(3)) and I(2) and not(I(1)) and I(0);
j <= not(I(5)) and not (I(4)) and not (I(3)) and not (I(2)) and I(1) and not (I(0));
Regdst <= R_format;
Jump <= j;
Alusrc <= lw or sw;
Memtoreg <= lw;
Regwrite <= R_format or lw;
Memread <= lw;
Memwrite <= sw;
Branch <= beq;
NotBranch <= nbeq;
Aluop1 <= R_format;
Aluop0 <= beq or nbeq;
end Behavioral;

