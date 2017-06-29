----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:03:32 04/07/2017 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use work.Components.all ;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
	GENERIC (n: NATURAL := 32) ;
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is
	SIGNAL resD : STD_LOGIC_VECTOR (31 DOWNTO 0);
	
	SIGNAL o0 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o1 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o2 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o3 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o4 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o5 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o6 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o7 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o8 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o9 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o10 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o11 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o12 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o13 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o14 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o15 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o16 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o17 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o18 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o19 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o20 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o21 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o22 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o23 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o24 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o25 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o26 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o27 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o28 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o29 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o30 :STD_LOGIC_vector (31 downto 0);
	SIGNAL o31 :STD_LOGIC_vector (31 downto 0);
	
begin
	dec: decoder5x32 port map(write_sel,resD);
	
	
	R0:  Reg1 PORT MAP(write_data,clk,resD(0) and write_ena ,'0','0',o0);
	R1:  Reg2 PORT MAP(write_data,clk,resD(1) and write_ena,'0','0',o1);
	R2:  GenericReg PORT MAP(write_data,clk,resD(2) and write_ena,'0','0',o2);
	R3:  GenericReg PORT MAP(write_data,clk,resD(3) and write_ena,'0','0',o3);
	R4:  GenericReg PORT MAP(write_data,clk,resD(4) and write_ena,'0','0',o4);
	R5:  GenericReg PORT MAP(write_data,clk,resD(5) and write_ena,'0','0',o5);
	R6:  GenericReg PORT MAP(write_data,clk,resD(6) and write_ena,'0','0',o6);
	R7:  GenericReg PORT MAP(write_data,clk,resD(7) and write_ena,'0','0',o7);
	R8:  GenericReg PORT MAP(write_data,clk,resD(8) and write_ena,'0','0',o8);
	R9:  GenericReg PORT MAP(write_data,clk,resD(9) and write_ena,'0','0',o9);
	R10:  GenericReg  PORT MAP(write_data,clk,resD(10) and write_ena,'0','0',o10);
	
	R11:  GenericReg PORT MAP(write_data,clk,resD(11) and write_ena,'0','0',o11);
	R12:  GenericReg PORT MAP(write_data,clk,resD(12) and write_ena,'0','0',o12);
	R13:  GenericReg PORT MAP(write_data,clk,resD(13) and write_ena,'0','0',o13);
	R14:  GenericReg PORT MAP(write_data,clk,resD(14) and write_ena,'0','0',o14);
	R15:  GenericReg PORT MAP(write_data,clk,resD(15) and write_ena,'0','0',o15);
	R16:  GenericReg PORT MAP(write_data,clk,resD(16) and write_ena,'0','0',o16);
	R17:  GenericReg PORT MAP(write_data,clk,resD(17) and write_ena,'0','0',o17);
	R18:  GenericReg PORT MAP(write_data,clk,resD(18) and write_ena,'0','0',o18);
	R19:  GenericReg PORT MAP(write_data,clk,resD(19) and write_ena,'0','0',o19);
	R20:  GenericReg PORT MAP(write_data,clk,resD(20) and write_ena,'0','0',o20);
	
	R21:  GenericReg PORT MAP(write_data,clk,resD(21) and write_ena,'0','0',o21);
	R22:  GenericReg PORT MAP(write_data,clk,resD(22) and write_ena,'0','0',o22);
	R23:  GenericReg PORT MAP(write_data,clk,resD(23) and write_ena,'0','0',o23);
	R24:  GenericReg PORT MAP(write_data,clk,resD(24) and write_ena,'0','0',o24);
	R25:  GenericReg PORT MAP(write_data,clk,resD(25) and write_ena,'0','0',o25);
	R26:  GenericReg PORT MAP(write_data,clk,resD(26) and write_ena,'0','0',o26);
	R27:  GenericReg PORT MAP(write_data,clk,resD(27) and write_ena,'0','0',o27);
	R28:  GenericReg PORT MAP(write_data,clk,resD(28) and write_ena,'0','0',o28);											
	R29:  GenericReg PORT MAP(write_data,clk,resD(29) and write_ena,'0','0',o29);
	R30:  GenericReg PORT MAP(write_data,clk,resD(30) and write_ena,'0','0',o30);
	R31:  GenericReg PORT MAP(write_data,clk,resD(31) and write_ena,'0','0',o31);
	
	
	mx0: mux5x32 PORT MAP(o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,
								o21,o22,o23,o24,o25,o26,o27,o28,o29,o30,o31,read_sel1,data1);

	mx1: mux5x32 PORT MAP(o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,
								o21,o22,o23,o24,o25,o26,o27,o28,o29,o30,o31,read_sel2,data2);

end Behavioral;

