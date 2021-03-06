--clock_divider_v2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity clock_divider_v2 is
	generic ( DIVISOR : integer);
	port (
		clock_in : in std_logic;
		clock_out : out std_logic
	);
end clock_divider_v2;

architecture rtl of clock_divider_v2 is
begin

	process(clock_in)
	variable counter : integer := 0;
	begin
	if (rising_edge(clock_in)) then
		
		if(counter = DIVISOR) then
			counter := 0;
		end if;
		if(counter < DIVISOR/2) then
			clock_out <= '1';
		else	
			clock_out <= '0';
		end if;
		counter := counter + 1;
		
	end if;
	end process;
end rtl;
