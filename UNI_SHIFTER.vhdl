library ieee;
library work;
use ieee.std_logic_1164.all;
use work.Gates.all;


entity UNI_SHIFTER is 
	
	port(L: in std_logic;
		  A: in std_logic_vector(7 downto 0);
		  B: in std_logic_vector(2 downto 0);
		  S: out std_logic_vector(7 downto 0));
	
end entity; 

architecture structural of UNI_SHIFTER is

		component R_SHIFT4 is
			port(U: in std_logic_vector(7 downto 0);
		        V: in std_logic;
		        W: out std_logic_vector(7 downto 0));
			end component;
		
		
		component R_SHIFT2 is		
			port(X: in std_logic_vector(7 downto 0);
		        Y: in std_logic;
		        Z: out std_logic_vector(7 downto 0));
		end component;
		
		
		component R_SHIFT1 is		
			port(L: in std_logic_vector(7 downto 0);
		        M: in std_logic;
		        N: out std_logic_vector(7 downto 0));	
		end component;
		
		component BIT_REV is		
			port(Q: in std_logic_vector(7 downto 0);
		        P: in std_logic;
		        R: out std_logic_vector(7 downto 0));
		end component;
		
		signal w1,w2,w3,w4 : std_logic_vector(7 downto 0); 
		
	begin 
	
		U0: BIT_REV port map(Q => A, P => L, R => w1);	
		U1: R_SHIFT4 port map(U => w1, V => B(2), W => w2);
		U2: R_SHIFT2 port map(X => w2, Y =>  B(1), Z => w3);
		U3: R_SHIFT1 port map(L => w3, M =>  B(0), N => w4);	
		U4: BIT_REV port map(Q => w4, P => L, R => S);
		
		
end structural;