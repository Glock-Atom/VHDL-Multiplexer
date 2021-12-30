-----------------------------------------------------------------
-- Project: Multiplexer
-----------------------------------------------------------------
-- File:   multiplexer_4_1_tb.vhdl 
-- Author: Hamza Tekin
-- Date: December 1, 2021  
-----------------------------------------------------------------
-- Testbench for 4:1 Multiplexer
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity multiplexer_4_1_tb is
end multiplexer_4_1_tb;

architecture sim of multiplexer_4_1_tb is

-- declaration part

component multiplexer_4_1
port(
	x : in std_logic_vector(0 to 3); 		-- data input vector
	s : in std_logic_vector(1 downto 0); 	-- control input
	z : out std_logic 						-- data out
);
end component;

signal xx : std_logic_vector(0 to 3);  
signal ss : std_logic_vector(1 downto 0);
signal zz : std_logic;

begin -- architecture body

uut: Multiplexer_4_1 port map(
	x => xx	,
	s => ss,
	z => zz
);

gen_xx: process
begin
    xx <= "0101"; 
    wait for 10 us;
    xx <= "1010"; 
    wait for 10 us;
	xx <= "1100"; 
    wait for 10 us;
    xx <= "0011"; 
    wait for 10 us;
	xx <= "1001"; 
    wait for 10 us;
    xx <= "0110"; 
    wait for 10 us;
	xx <= "1110"; 
    wait for 10 us;
    xx <= "0111"; 
    wait for 10 us;
end process;

gen_ss: process
begin
    ss <= "00"; 
    wait for 20 us;
    ss <= "01"; 
    wait for 20 us;
	ss <= "10"; 
    wait for 20 us;
    ss <= "11"; 
    wait for 20 us;
end process;

end sim;