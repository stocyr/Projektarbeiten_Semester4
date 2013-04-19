----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:42:05 04/18/2013 
-- Design Name: 
-- Module Name:    RGBEncoder - Behavioral 
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

entity RGBEncoder is
    Port ( HUE : in  STD_LOGIC_VECTOR(7 downto 0);
           SAT : in  STD_LOGIC_VECTOR(7 downto 0);
           VAL : in  STD_LOGIC_VECTOR(7 downto 0);
           R : out  STD_LOGIC_VECTOR(7 downto 0);
           G : out  STD_LOGIC_VECTOR(7 downto 0);
           B : out  STD_LOGIC_VECTOR(7 downto 0);
           CLK : in  STD_LOGIC;
           BUTTON : in  STD_LOGIC);
end RGBEncoder;

architecture Behavioral of RGBEncoder is

begin


end Behavioral;

