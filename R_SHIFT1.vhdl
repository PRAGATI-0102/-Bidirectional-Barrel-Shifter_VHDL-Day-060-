library ieee;
library work;
use ieee.std_logic_1164.all;
use work.Gates.all;


entity R_SHIFT1 is 
	
	port(L: in std_logic_vector(7 downto 0);
		  M: in std_logic;
		  N: out std_logic_vector(7 downto 0));
	
end entity; 

architecture structural of R_SHIFT1 is

		component MUX_2X1 is
			port(I: in std_logic_vector(1 downto 0);
		      Sel: in std_logic;
		       Y : out std_logic);
		end component;
	
	--signal w1,w2,w3 : std_logic; 

	begin 
	
		C0: MUX_2X1 port map(I(1) => L(1), I(0) => L(0), Sel => M, Y => N(0));	
		C1: MUX_2X1 port map(I(1) => L(2), I(0) => L(1), Sel => M, Y => N(1));
		C2: MUX_2X1 port map(I(1) => L(3), I(0) => L(2), Sel => M, Y => N(2));
		C3: MUX_2X1 port map(I(1) => L(4), I(0) => L(3), Sel => M, Y => N(3));	
		C4: MUX_2X1 port map(I(1) => L(5), I(0) => L(4), Sel => M, Y => N(4));
		C5: MUX_2X1 port map(I(1) => L(6), I(0) => L(5), Sel => M, Y => N(5));	
		C6: MUX_2X1 port map(I(1) => L(7), I(0) => L(6), Sel => M, Y => N(6));	
		C7: MUX_2X1 port map(I(1) => '0',  I(0) => L(7), Sel => M, Y => N(7));		
		
end structural;