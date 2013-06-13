----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:10 04/18/2013 
-- Design Name: 
-- Module Name:    Counter256 - Behavioral 
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

-- Counter that counts between 0 and 255 in single steps.
-- Steps can be triggered by a rising edge on either UP
-- or DOWN input pin.

entity Counter256 is
    Port ( UP : in STD_LOGIC;
           DOWN : in STD_LOGIC;
			  CLK : in STD_LOGIC;
			  RESET : in STD_LOGIC;
           VALUE : out STD_LOGIC_VECTOR(7 downto 0));
end Counter256;


architecture Behavioral of Counter256 is
	signal cnt : unsigned(7 downto 0);
	signal UP_old, DOWN_old : std_logic;
begin
 
process(RESET, CLK)
begin
	if RESET = '1' then
		cnt <= "00000000";
	elsif rising_edge(CLK) then 
		UP_old <= UP;
		DOWN_old <= DOWN;
		
		if (UP='1' and UP_old='0' and DOWN='0') then
			if cnt /= "11111111" then
				cnt <= cnt + 1;
			end if;
			
		elsif (DOWN='1' and DOWN_old='0' and UP='0') then  
			if cnt /= "00000000" then
				cnt <= cnt - 1;
			end if;
		end if;
	end if;
end process;

VALUE <= std_logic_vector(cnt);

end Behavioral;

