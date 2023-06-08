library ieee;
library work;
use ieee.std_logic_1164.all;
use work.Gates.all;


entity MUX_2X1 is 
	
	port(I: in std_logic_vector(1 downto 0);
		  Sel: in std_logic;
		  Y : out std_logic);
	
end entity; 

architecture structural of MUX_2X1 is
	
	signal w1,w2,w3 : std_logic; 

	begin 
		N1: INVERTER port map(A => Sel, Y => w3 );
		A1: AND_2 port map(A => I(0), B => w3, Y => w1);	
		A2: AND_2 port map(A => I(1), B => Sel, Y => w2);
		O1: OR_2 port map(A => w1, B => w2, Y => Y);
		
end structural;