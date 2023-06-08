library ieee;
library work;
use ieee.std_logic_1164.all;
use work.Gates.all;


entity BIT_REV is 
	
	port(Q: in std_logic_vector(7 downto 0);
		  P: in std_logic;
		  R: out std_logic_vector(7 downto 0));
	
end entity; 

architecture structural of BIT_REV is

		component MUX_2X1 is
			port(I: in std_logic_vector(1 downto 0);
		      Sel: in std_logic;
		       Y : out std_logic);
		end component;
	
	--signal w1,w2,w3 : std_logic; 

	begin 
	
		M0: MUX_2X1 port map(I(1) => Q(7), I(0) => Q(0), Sel => P, Y => R(0));	
		M1: MUX_2X1 port map(I(1) => Q(6), I(0) => Q(1), Sel => P, Y => R(1));
		M2: MUX_2X1 port map(I(1) => Q(5), I(0) => Q(2), Sel => P, Y => R(2));
		M3: MUX_2X1 port map(I(1) => Q(4), I(0) => Q(3), Sel => P, Y => R(3));	
		M4: MUX_2X1 port map(I(1) => Q(3), I(0) => Q(4), Sel => P, Y => R(4));
		M5: MUX_2X1 port map(I(1) => Q(2), I(0) => Q(5), Sel => P, Y => R(5));	
		M6: MUX_2X1 port map(I(1) => Q(1), I(0) => Q(6), Sel => P, Y => R(6));	
		M7: MUX_2X1 port map(I(1) => Q(0), I(0) => Q(7), Sel => P, Y => R(7));		
		
end structural;