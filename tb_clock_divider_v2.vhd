--tb_clock_divider_v2

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_clock_divider_v2 is
end tb_clock_divider_v2;

architecture rtl of tb_clock_divider_v2 is

  component clock_divider_v2
    generic ( DIVISOR : integer);
    port (
      clock_in : in std_logic;
      clock_out : out std_logic
      );
  end component;

  signal clock_in : std_logic;
  signal clock_out : std_logic;


begin
  --instance of clock_divider_v2
  inst1 : clock_divider_v2
    generic map( DIVISOR => 8)
    port map (
      clock_in => clock_in,
      clock_out => clock_out
      );
  
  --clock process
  clock : process
  begin
    clock_in <= '0';
    wait for 5 ns;
    clock_in <= '1';
    wait for 5 ns;
  end process;

end rtl;

  
