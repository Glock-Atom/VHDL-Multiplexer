-----------------------------------------------------------------
-- Project: Multiplexer
-----------------------------------------------------------------
-- File:   multiplexer_2_1.vhdl 
-- Author: Hamza Tekin
-- Date:   October 13, 2021
-----------------------------------------------------------------
-- 2 to 1 Multiplexer
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity multiplexer_2_1 is
port(
    a : in std_logic; -- data input 0
    b : in std_logic; -- data input 1
    s : in std_logic; -- control input
    z : out std_logic -- data out
);
end multiplexer_2_1;

architecture dataflow of multiplexer_2_1 is

-- declaration part

begin -- architecture body

z <= (a and (not s)) or (b and s);

end dataflow;