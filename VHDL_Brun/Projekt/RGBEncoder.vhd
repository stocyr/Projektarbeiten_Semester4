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
	variable base : unsigned(15 downto 0);
	variable led_value : unsigned(15 downto 0);
	variable switch : unsigned(8 downto 0);
begin
	if RESET = '1' then
		base := "0000000000000000";
		led_value := "0000000000000000";
	elsif rising_edge(CLK) then
		if SAT = "00000000" then
			R <= VAL;
			G <= VAL;
			B <= VAL;
		else
			base := (("11111111" - unsigned(SAT)) * unsigned(VAL)) srl 8;
			switch := unsigned(HUE) srl 6;
			case switch(2 downto 0) is
				when "000" =>
					R <= VAL;
					led_value := (((unsigned(VAL) - base(7 downto 0)) * unsigned(HUE)) srl 6) + base(7 downto 0);
					G <= std_logic_vector(led_value(7 downto 0));
					B <= std_logic_vector(base(7 downto 0));
				
				when "001" =>
					led_value := (((unsigned(VAL) - base(7 downto 0)) * ("001000000"-(unsigned(HUE) mod "001000000"))) srl 6) + base(7 downto 0);
					R <= std_logic_vector(led_value(7 downto 0));
					G <= VAL;
					B <= std_logic_vector(base(7 downto 0));
				
				when "010" =>
					R <= std_logic_vector(base(7 downto 0));
					G <= VAL;
					led_value := (((unsigned(VAL) - base(7 downto 0)) * (unsigned(HUE) mod "001000000")) srl 6) + base(7 downto 0);
					B <= std_logic_vector(led_value(7 downto 0));
				
				when "011" =>
					R <= std_logic_vector(base(7 downto 0));
					led_value := (((unsigned(VAL) - base(7 downto 0)) * ("001000000"-(unsigned(HUE) mod "001000000"))) srl 6) + base(7 downto 0);
					G <= std_logic_vector(led_value(7 downto 0));
					B <= VAL;
				
				when "100" =>
					led_value := (((unsigned(VAL) - base(7 downto 0)) * (unsigned(HUE) mod "001000000")) srl 6) + base(7 downto 0);
					R <= std_logic_vector(led_value(7 downto 0));
					G <= std_logic_vector(base(7 downto 0));
					B <= VAL;
				
				when "101" =>
					R <= VAL;
					G <= std_logic_vector(base(7 downto 0));
					led_value := (((unsigned(VAL) - base(7 downto 0)) * ("001000000"-(unsigned(HUE) mod "001000000"))) srl 6) + base(7 downto 0);
					B <= std_logic_vector(led_value(7 downto 0));
					
				when others =>
					R <= "00000000";
					G <= "00000000";
					B <= "00000000";
			end case;
		end if;
	end if;
end process;

end Behavioral;

