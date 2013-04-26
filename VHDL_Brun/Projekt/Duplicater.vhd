----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:41:55 04/26/2013 
-- Design Name: 
-- Module Name:    Duplicater - Behavioral 
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

entity Duplicater is
    Port ( INPUT : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT2 : out  STD_LOGIC);
end Duplicater;

architecture Behavioral of Duplicater is
begin

OUT1 <= INPUT;
OUT2 <= INPUT;

end Behavioral;

