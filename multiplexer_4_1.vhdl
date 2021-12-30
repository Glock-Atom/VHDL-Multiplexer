-----------------------------------------------------------------
-- Project: Multiplexer
-----------------------------------------------------------------
-- File:   multiplexer_4_1.vhdl 
-- Author: Hamza Tekin, Harald Fuchs 
-- Date: 19.11.2021
-----------------------------------------------------------------
-- 4:1 Multiplexer
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity multiplexer_4_1 is
port(
	x : in std_logic_vector(0 to 3); 		-- data input vector
	s : in std_logic_vector(1 downto 0); 	-- control input
	z : out std_logic 						-- data out
);
end multiplexer_4_1;

architecture structure of multiplexer_4_1 is

-- declaration part

component multiplexer_2_1
port(
a : in std_logic;
b : in std_logic;
s : in std_logic;
z : out std_logic
  );    
end component multiplexer_2_1;

signal w : std_logic_vector(1 to 2);

begin -- architecture body

mx1: multiplexer_2_1 port map(
	a => x(0),
	b => x(1),
	s => s(0),
	z => w(1)
);

mx2: multiplexer_2_1 port map(
	a => x(2),
	b => x(3),
	s => s(0),
	z => w(2)
);

mx3: multiplexer_2_1 port map(
	a => w(1),
	b => w(2),
	s => s(1),
	z => z
);

end structure;