--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Components is
component mux2x1 is
	Port ( i0 , i1 : in  STD_LOGIC;

         selc : in  STD_LOGIC ;
         
  mout : out  STD_LOGIC);
end component;
----------------------------
component mux4x1 is
Port ( i1 , i2 , i3 , i4 : in  STD_LOGIC;
 
          selc : in  STD_LOGIC_VECTOR (1 downto 0);
   
        mout : out  STD_LOGIC);
end component;
----------------------------
component ALU_1BIT is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
			  MySelect : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			  less : in std_logic;
           COUT : out  STD_LOGIC;
           RESULT : out  STD_LOGIC
			  );
end component;
------------------------------
component ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC
			  );
end component;
--------------------------------
component LastBit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
			  MySelect : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			  less : in std_logic;
			  slt :out std_logic;
           COUT : out  STD_LOGIC;
           RESULT : out  STD_LOGIC
			  );
end component;
-------------------------------
component GenericReg is
GENERIC (n: NATURAL := 32) ;
    Port ( I : in  STD_LOGIC_VECTOR (n-1 downto 0);
           CLK,LOD,INC,CLR : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;
--------------------------------
component decoder5x32 is
    Port ( input : in  STD_LOGIC_VECTOR (4 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
---------------------------------
component mux5x32 is
	GENERIC (n: NATURAL := 32) ;
    Port ( I0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I3 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I4 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I5 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I6 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I7 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I8 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I9 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I10 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I11 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I12 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I13 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I14 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I15 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I16 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I17 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I18 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I19 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I20 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I21 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I22 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I23 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I24 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I25 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I26 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I27 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I28 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I29 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I30 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I31 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Selector : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;
-----------------------------------
component RegisterFile is
	GENERIC (n: NATURAL := 32) ;
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end component;
--------------------------
component PCRegister is
GENERIC(n:NATURAL:=32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
end component;
---------------------------

component MUL is
    Port ( I : in  STD_LOGIC_VECTOR (5 downto 0);
           address : out  STD_LOGIC_VECTOR (31 downto 0)
			 );
end component;
----------------------------
component Condition is
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
           Writ : out  STD_LOGIC
	       );
end component;
-----------------------------
component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component;
-------------------------------
component Translation is
    Port ( funct : in  STD_LOGIC_VECTOR (5 downto 0);
           aluop : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end component;
--------------------------------
component Reg1 IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;
----------------------------------
component Reg2 IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
END component;
-----------------------------------
component Sign_Extend IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
END component;
------------------------------------
component Control_unit IS
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
END component;
--------------------------------------
component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);
end component;
---------------------------------------
component mux2x1_32 is
	Port ( i0 , i1 : in  STD_LOGIC_VECTOR (31 downto 0);
         selc : in  STD_LOGIC;       
  mout : out  STD_LOGIC_VECTOR (31 downto 0) );
end component;
----------------------------------------
component Alucontrol is
  port ( F : in std_logic_vector (5 downto 0);
         Aluop0 : in std_logic;
			Aluop1 : in std_logic;
			op : out std_logic_vector (3 downto 0));
end component;
-----------------------------------------
component mux2x1_5 is
	Port ( i0 , i1 : in  STD_LOGIC_VECTOR (4 downto 0);
         selc : in  STD_LOGIC;       
  mout : out  STD_LOGIC_VECTOR (4 downto 0) );
end component;
-- type <new_type> is
-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end Components;

package body Components is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end Components;
