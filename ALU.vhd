
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Components.all;
entity ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
signal result:STD_LOGIC_VECTOR (31 downto 0);
signal carry:STD_LOGIC_VECTOR (31 downto 0);
signal slt :std_logic;
begin
A0:ALU_1BIT PORT MAP (data1(0),data2(0),cin,aluop(2)&aluop(1)&aluop(0),slt,carry(0),result(0));
A1:ALU_1BIT PORT MAP (data1(1),data2(1),carry(0),aluop(2)&aluop(1)&aluop(0),'0',carry(1),result(1));
A2:ALU_1BIT PORT MAP (data1(2),data2(2),carry(1),aluop(2)&aluop(1)&aluop(0),'0',carry(2),result(2));
A3:ALU_1BIT PORT MAP (data1(3),data2(3),carry(2),aluop(2)&aluop(1)&aluop(0),'0',carry(3),result(3));
A4:ALU_1BIT PORT MAP (data1(4),data2(4),carry(3),aluop(2)&aluop(1)&aluop(0),'0',carry(4),result(4));
A5:ALU_1BIT PORT MAP (data1(5),data2(5),carry(4),aluop(2)&aluop(1)&aluop(0),'0',carry(5),result(5));
A6:ALU_1BIT PORT MAP (data1(6),data2(6),carry(5),aluop(2)&aluop(1)&aluop(0),'0',carry(6),result(6));
A7:ALU_1BIT PORT MAP (data1(7),data2(7),carry(6),aluop(2)&aluop(1)&aluop(0),'0',carry(7),result(7));
A8:ALU_1BIT PORT MAP (data1(8),data2(8),carry(7),aluop(2)&aluop(1)&aluop(0),'0',carry(8),result(8));
A9:ALU_1BIT PORT MAP (data1(9),data2(9),carry(8),aluop(2)&aluop(1)&aluop(0),'0',carry(9),result(9));
A10:ALU_1BIT PORT MAP (data1(10),data2(10),carry(9),aluop(2)&aluop(1)&aluop(0),'0',carry(10),result(10));
A11:ALU_1BIT PORT MAP (data1(11),data2(11),carry(10),aluop(2)&aluop(1)&aluop(0),'0',carry(11),result(11));
A12:ALU_1BIT PORT MAP (data1(12),data2(12),carry(11),aluop(2)&aluop(1)&aluop(0),'0',carry(12),result(12));
A13:ALU_1BIT PORT MAP (data1(13),data2(13),carry(12),aluop(2)&aluop(1)&aluop(0),'0',carry(13),result(13));
A14:ALU_1BIT PORT MAP (data1(14),data2(14),carry(13),aluop(2)&aluop(1)&aluop(0),'0',carry(14),result(14));
A15:ALU_1BIT PORT MAP (data1(15),data2(15),carry(14),aluop(2)&aluop(1)&aluop(0),'0',carry(15),result(15));
A16:ALU_1BIT PORT MAP (data1(16),data2(16),carry(15),aluop(2)&aluop(1)&aluop(0),'0',carry(16),result(16));
A17:ALU_1BIT PORT MAP (data1(17),data2(17),carry(16),aluop(2)&aluop(1)&aluop(0),'0',carry(17),result(17));
A18:ALU_1BIT PORT MAP (data1(18),data2(18),carry(17),aluop(2)&aluop(1)&aluop(0),'0',carry(18),result(18));
A19:ALU_1BIT PORT MAP (data1(19),data2(19),carry(18),aluop(2)&aluop(1)&aluop(0),'0',carry(19),result(19));
A20:ALU_1BIT PORT MAP (data1(20),data2(20),carry(19),aluop(2)&aluop(1)&aluop(0),'0',carry(20),result(20));
A21:ALU_1BIT PORT MAP (data1(21),data2(21),carry(20),aluop(2)&aluop(1)&aluop(0),'0',carry(21),result(21));
A22:ALU_1BIT PORT MAP (data1(22),data2(22),carry(21),aluop(2)&aluop(1)&aluop(0),'0',carry(22),result(22));
A23:ALU_1BIT PORT MAP (data1(23),data2(23),carry(22),aluop(2)&aluop(1)&aluop(0),'0',carry(23),result(23));
A24:ALU_1BIT PORT MAP (data1(24),data2(24),carry(23),aluop(2)&aluop(1)&aluop(0),'0',carry(24),result(24));
A25:ALU_1BIT PORT MAP (data1(25),data2(25),carry(24),aluop(2)&aluop(1)&aluop(0),'0',carry(25),result(25));
A26:ALU_1BIT PORT MAP (data1(26),data2(26),carry(25),aluop(2)&aluop(1)&aluop(0),'0',carry(26),result(26));
A27:ALU_1BIT PORT MAP (data1(27),data2(27),carry(26),aluop(2)&aluop(1)&aluop(0),'0',carry(27),result(27));
A28:ALU_1BIT PORT MAP (data1(28),data2(28),carry(27),aluop(2)&aluop(1)&aluop(0),'0',carry(28),result(28));
A29:ALU_1BIT PORT MAP (data1(29),data2(29),carry(28),aluop(2)&aluop(1)&aluop(0),'0',carry(29),result(29));
A30:ALU_1BIT PORT MAP (data1(30),data2(30),carry(29),aluop(2)&aluop(1)&aluop(0),'0',carry(30),result(30));
A31:LastBit PORT MAP (data1(31),data2(31),carry(30),aluop(2)&aluop(1)&aluop(0),'0',slt,carry(31),result(31));
----------------------------------------------------------------------------------------------
cflag<=carry(31);
oflag<= carry(30) xor carry(31);
zflag<='1' when result <= "00000000000000000000000000000000"	else '0' ;
dataout<=result;
end Behavioral;
