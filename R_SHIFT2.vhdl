library ieee;
library work;
use ieee.std_logic_1164.all;
use work.Gates.all;


entity R_SHIFT2 is 
	
	port(X: in std_logic_vector(7 downto 0);
		  Y: in std_logic;
		  Z: out std_logic_vector(7 downto 0));
	
end entity; 

architecture structural of R_SHIFT2 is

		component MUX_2X1 is
			port(I: in std_logic_vector(1 downto 0);
		      Sel: in std_logic;
		       Y : out std_logic);
		end component;
	
	--signal w1,w2,w3 : std_logic; 

	begin 
	
		B0: MUX_2X1 port map(I(1) => X(2), I(0) => X(0), Sel => Y, Y => Z(0));	
		B1: MUX_2X1 port map(I(1) => X(3), I(0) => X(1), Sel => Y, Y => Z(1));
		B2: MUX_2X1 port map(I(1) => X(4), I(0) => X(2), Sel => Y, Y => Z(2));
		B3: MUX_2X1 port map(I(1) => X(5), I(0) => X(3), Sel => Y, Y => Z(3));	
		B4: MUX_2X1 port map(I(1) => X(6), I(0) => X(4), Sel => Y, Y => Z(4));
		B5: MUX_2X1 port map(I(1) => X(7), I(0) => X(5), Sel => Y, Y => Z(5));	
		B6: MUX_2X1 port map(I(1) => '0',  I(0) => X(6),Sel => Y, Y => Z(6));	
		B7: MUX_2X1 port map(I(1) => '0',  I(0) => X(7), Sel => Y, Y => Z(7));		
		
end structural;