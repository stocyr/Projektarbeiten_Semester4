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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RGBEncoder is
    Port ( HUE : in  STD_LOGIC_VECTOR(8 downto 0);
           SAT : in  STD_LOGIC_VECTOR(7 downto 0);
           VAL : in  STD_LOGIC_VECTOR(7 downto 0);
           R : out  STD_LOGIC_VECTOR(7 downto 0);
           G : out  STD_LOGIC_VECTOR(7 downto 0);
           B : out  STD_LOGIC_VECTOR(7 downto 0);
           CLK : in  STD_LOGIC;
           BUTTON : in  STD_LOGIC;
			  RESET : in  STD_LOGIC);
end RGBEncoder;

architecture Behavioral of RGBEncoder is

begin

process(CLK,RESET)
	variable base : unsigned(7 downto 0);
	variable switch : unsigned(2 downto 0);
begin
	if RESET = '1' then
		base := "00000000";
	elsif rising_edge(CLK) then
		if SAT = "00000000" then
			R <= VAL;
			G <= VAL;
			B <= VAL;
		else
			base := ((255 - unsigned(SAT)) * unsigned(VAL)) srl 8;
			switch := unsigned(HUE)/64;
			case switch is
				when "000" =>
					R <= VAL;
					G <= std_logic_vector((((unsigned(VAL) - base)*unsigned(HUE))/64) + base);
					B <= std_logic_vector(base);
				
				when "001" =>
					R <= std_logic_vector((((unsigned(VAL) - base)*(64-(unsigned(HUE) mod 64)))/64) + base);
					G <= VAL;
					B <= std_logic_vector(base);
				
				when "010" =>
					R <= std_logic_vector(base);
					G <= VAL;
					B <= std_logic_vector((((unsigned(VAL) - base)*(unsigned(HUE) mod 64))/64) + base);
				
				when "011" =>
					R <= std_logic_vector(base);
					G <= std_logic_vector((((unsigned(VAL) - base)*(64-(unsigned(HUE) mod 64)))/64) + base);
					B <= VAL;
				
				when "100" =>
					R <= std_logic_vector((((unsigned(VAL) - base)*(unsigned(HUE) mod 64))/64) + base);
					G <= std_logic_vector(base);
					B <= VAL;
				
				when "101" =>
					R <= VAL;
					G <= std_logic_vector(base);
					B <= std_logic_vector((((unsigned(VAL) - base)*(64-(unsigned(HUE) mod 64)))/64) + base);
				when others =>
					R <= "11111100";
					G <= "11111101";
					B <= "11111110";
			end case;
		end if;
	end if;
end process;

end Behavioral;

