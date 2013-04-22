----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:44:48 04/18/2013 
-- Design Name: 
-- Module Name:    PWMEncoder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- PWM signal generator with 8 bit resolution (256 steps).
-- PWM frequency is driven by a divided CLK signal. Then divider
-- can be selected by the number of bits in "clock_divider".

entity PWMEncoder is
    Port ( VALUE : in STD_LOGIC_VECTOR(7 downto 0);
           CLK : in STD_LOGIC;
			  RESET : in STD_LOGIC;
           PWM : out STD_LOGIC);
end PWMEncoder;

architecture Behavioral of PWMEncoder is
	signal clock_divider : std_logic_vector(7 downto 0);
begin

process(CLK, RESET)
	variable PWM_period : unsigned(7 downto 0);
begin
	if RESET = '1' then
		clock_divider <= "00000000";
		PWM_period := (others => '0');
	elsif rising_edge(CLK) then
		clock_divider <= std_logic_vector(unsigned(clock_divider) + 1);
		
		if clock_divider = "00000000" then -- bei überlauf: PWM periodenzähler erhöhen
			PWM_period := PWM_period + 1;
			
			if PWM_period >= unsigned(VALUE) then
				PWM <= '0';
			else
				PWM <= '1';
			end if;
		end if;
	end if;
end process;

end Behavioral;

