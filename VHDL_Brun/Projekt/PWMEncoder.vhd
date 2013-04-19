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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWMEncoder is
    Port ( VALUE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           PWM : out  STD_LOGIC);
end PWMEncoder;

architecture Behavioral of PWMEncoder is

begin

process(RESET, CLK)
begin

end process


end Behavioral;

