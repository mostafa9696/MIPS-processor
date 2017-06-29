
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Components.all;

entity LastBit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
			  MySelect : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			  less : in std_logic;
			  slt :out std_logic;
           COUT : out  STD_LOGIC;
           RESULT : out  STD_LOGIC
			  
			  );
end LastBit;

architecture Behavioral of LastBit is
signal And_NORBit: STD_LOGIC;
signal AndBit: STD_LOGIC;
signal NORBit: STD_LOGIC;
signal ORBit: STD_LOGIC;
signal SumBit: STD_LOGIC;
signal NotB: STD_LOGIC;
signal MYB: STD_LOGIC;
begin
AndBit<=A AND B;
NORBit<=A nor B;
OrBit<=A OR B;
NotB<=NOT B;
m0:mux2x1 port map(B,NOTB,MySelect(2),MYB);
m1:mux2x1 port map(AndBit,NORBit,MySelect(2),And_NORBit);
SumBit <= (A xor MYB xor CIN);
slt<=SumBit;          
COUT <= (A and MYB) or ((A xor MYB) and CIN);
m2:mux4x1 port map(And_NORBit,OrBit,SumBit,less,MySelect(1)&MySelect(0),RESULT);
end Behavioral;

