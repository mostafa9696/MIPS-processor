
-- VHDL Instantiation Created from source file Control_unit.vhd -- 20:39:07 05/01/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Control_unit
	PORT(
		I : IN std_logic_vector(5 downto 0);          
		Regdst : OUT std_logic;
		Alusrc : OUT std_logic;
		Memtoreg : OUT std_logic;
		Regwrite : OUT std_logic;
		Memread : OUT std_logic;
		Memwrite : OUT std_logic;
		Branch : OUT std_logic;
		Aluop1 : OUT std_logic;
		Aluop0 : OUT std_logic
		);
	END COMPONENT;

	Inst_Control_unit: Control_unit PORT MAP(
		I => ,
		Regdst => ,
		Alusrc => ,
		Memtoreg => ,
		Regwrite => ,
		Memread => ,
		Memwrite => ,
		Branch => ,
		Aluop1 => ,
		Aluop0 => 
	);


