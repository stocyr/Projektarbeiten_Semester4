----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:33:34 04/24/2013 
-- Design Name: 
-- Module Name:    AutoRepeat - Behavioral 
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

entity AutoRepeat is
    Port ( TRIGGER : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
			  RESET : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC);
end AutoRepeat;

architecture Behavioral of AutoRepeat is
	signal output_int : std_logic;
begin

process(CLK, RESET)
	variable repeating : std_logic;
	variable clock_divider : unsigned(16 downto 0);
begin
	if RESET = '1' then
		clock_divider := "00000000000000000";
		output_int <= '0';
	elsif rising_edge(CLK) then
		clock_divider := clock_divider + 1;
		
		if clock_divider = "11111111111111111" then
			-- überlauf: ausgang toggeln
			if TRIGGER = '1' then
				output_int <= not output_int;
			else
				output_int <= '0';
			end if;
		end if;
	end if;
end process;

OUTPUT <= output_int;

end Behavioral;

