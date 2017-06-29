----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:46:39 04/20/2017 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use work.Components.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
    Port ( START : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RegFileOut1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RegFileOut2 : out  STD_LOGIC_VECTOR (31 downto 0);
           ALUOut : out  STD_LOGIC_VECTOR (31 downto 0);
			  PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
			  DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0));
end MainModule;

architecture Behavioral of MainModule is
signal a,b,c,d,e,f,g,h:STD_LOGIC;
signal out_PC:STD_LOGIC_VECTOR (31 downto 0);
signal out_add:STD_LOGIC_VECTOR (31 downto 0);
signal out_inst:STD_LOGIC_VECTOR (31 downto 0);
signal Regdst:STD_LOGIC;
signal Jump:STD_LOGIC;
signal Alusrc:STD_LOGIC;
signal Memtoreg:STD_LOGIC;
signal Regwrite:STD_LOGIC;
signal Memread:STD_LOGIC;
signal Memwrite:STD_LOGIC;
signal Branch:STD_LOGIC;
signal NotBranch:STD_LOGIC; 
signal Aluop1:STD_LOGIC;
signal Aluop0:STD_LOGIC;
signal write_register: std_logic_vector (4 downto 0); 
signal data1:STD_LOGIC_VECTOR (31 downto 0);
signal data2:STD_LOGIC_VECTOR (31 downto 0);
signal write_data:STD_LOGIC_VECTOR (31 downto 0);
signal out_sign_extend:STD_LOGIC_VECTOR (31 downto 0);
signal op:STD_LOGIC_VECTOR (3 downto 0);
signal out9:STD_LOGIC_VECTOR (31 downto 0);
signal out_alu_under:STD_LOGIC_VECTOR (31 downto 0);
signal zflag : STD_LOGIC;
signal out_dm:STD_LOGIC_VECTOR (31 downto 0);
signal jmp_add:STD_LOGIC_VECTOR (31 downto 0);
signal out_alu_up:STD_LOGIC_VECTOR (31 downto 0);
signal out_mux:STD_LOGIC_VECTOR (31 downto 0);
signal pc_in:STD_LOGIC_VECTOR (31 downto 0);
---------------------------------------------
signal funct:STD_LOGIC_VECTOR (5 downto 0);
signal writ:STD_LOGIC;
signal out_MUL:STD_LOGIC_VECTOR (31 downto 0);
signal aluop:STD_LOGIC_VECTOR (3 downto 0);
signal cflag : STD_LOGIC;
signal oflag : STD_LOGIC;
begin
M1: PCRegister PORT MAP (pc_in,CLK,START,'0',NOT(START),out_PC);
M2: ALU PORT MAP (out_PC,"00000000000000000000000000000100","0010",'0',out_add,a,b,c);
M3: INSTRMEMORY PORT MAP(NOT(START),out_inst,out_PC,CLK);
M4: Control_unit PORT MAP(out_inst(31 downto 26),Regdst,Jump,Alusrc,Memtoreg,Regwrite,Memread,Memwrite,Branch,NotBranch,Aluop1,Aluop0);
M5: mux2x1_5 PORT MAP (out_inst(20 downto 16),out_inst(15 downto 11),Regdst,write_register);
M6: RegisterFile PORT MAP(out_inst(25 downto 21),out_inst(20 downto 16),write_register,Regwrite,CLK,write_data,data1,data2);
M7: Sign_Extend PORT MAP(out_inst(15 downto 0),out_sign_extend);
M8: Alucontrol PORT MAP(out_inst(5 downto 0),Aluop0,Aluop1,op);
M9: mux2x1_32 PORT MAP(data2,out_sign_extend,Alusrc,out9);
M10: ALU PORT MAP(data1,out9,op,op(2),out_alu_under,f,zflag,g);
M11: DATAMEMORY PORT MAP(not(start),data2,out_dm,Memread,Memwrite,out_alu_under,CLK);
M12: mux2x1_32 PORT MAP(out_alu_under,out_dm,Memtoreg,write_data);
jmp_add <= out_add(31 downto 28)&out_inst(25 downto 0)&"00";
M13: ALU PORT MAP (out_add,out_sign_extend(29 downto 0)&"00","0010",'0',out_alu_up,d,e,h);
M14: mux2x1_32 PORT MAP(out_add,out_alu_up,(Branch and zflag)or(NotBranch and not(zflag)),out_mux);
M15: mux2x1_32 PORT MAP(out_mux,jmp_add,Jump,pc_in);
-----------------------------------------------------
RegFileOut1<=data1;
RegFileOut2<=data2;
ALUOut<=write_data;
PCOut<=out_PC;
DataMemOut<=out_dm;
end Behavioral;

