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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter256 is
    Port ( UP : in  STD_LOGIC;
           DOWN : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
           VALUE : out  STD_LOGIC_VECTOR(7 downto 0));
end Counter256;


architecture Behavioral of Counter256 is
  signal cnt : unsigned(7 downto 0);
  signal up1, dw1    : std_logic;
 
process(RESET, CLK)  
begin
	if RESET = '1' then
		cnt <= (others => '0');
	elsif rising_edge(CLK) then  
		if (UP='1' and up1='0' and DOWN='0') then
			cnt <= cnt + 1;   
		elsif (DOWN='1' and dw1='0' and UP='0') then  
		cnt <= cnt - 1;
		end if;
	up1 <= UP;
	dw1 <= DOWN;
	end if;  
end process;   
VALUE <= cnt; 

end Behavioral;

