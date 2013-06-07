----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:05:28 04/18/2013 
-- Design Name: 
-- Module Name:    RotaryDecoder - Behavioral 
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

entity RotaryDecoder is
    Port ( ROT_A : in  STD_LOGIC;
           ROT_B : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
           UP : out  STD_LOGIC;
           DOWN : out  STD_LOGIC);
end RotaryDecoder;

architecture Behavioral of RotaryDecoder is

signal rotary_a_in: std_logic;
signal rotary_b_in: std_logic;
signal rotary_q1: std_logic;
signal rotary_q2: std_logic;
signal rotary_in: std_logic_vector(1 downto 0);
signal rotary_event: std_logic;
signal rotary_left:std_logic;
signal delay_rotary_q1:std_logic;	

begin

rotary_a_in <= ROT_A;
rotary_b_in <= ROT_B;

filter: process(CLK)
begin
	if rising_edge(CLK) then
		rotary_in <= rotary_b_in & rotary_a_in;	-- beide eingänge zusammenkleben
		case rotary_in is
			when "00" => rotary_q1 <= '0';
			when "01" => rotary_q2 <= '0';
			when "10" => rotary_q2 <= '1';
			when "11" => rotary_q1 <= '1';
			when others =>
		end case;
	end if;
end process filter;

decoder: process(CLK)
begin
	if rising_edge(CLK) then
		delay_rotary_q1 <= rotary_q1;
		if rotary_q1 = '1' and delay_rotary_q1 = '0' then
			rotary_event <= '1';
			if rotary_q2 = '1' then
				DOWN <= '1';
			else
				UP <= '1';
			end if;
		else
			rotary_event <= '0';
			DOWN <= '0';
			UP <= '0';
		end if;
	end if;
end process decoder;

end Behavioral;
