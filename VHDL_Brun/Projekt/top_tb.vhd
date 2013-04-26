-- Vhdl test bench created from schematic D:\BFH\Projektarbeiten_Semester4\VHDL_Brun\Projekt\Top_schematic.sch - Tue Apr 23 00:40:11 2013
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Top_schematic_Top_schematic_sch_tb IS
END Top_schematic_Top_schematic_sch_tb;
ARCHITECTURE behavioral OF Top_schematic_Top_schematic_sch_tb IS 

   COMPONENT Top_schematic
   PORT( RESET	:	IN	STD_LOGIC; 
          rot_c	:	IN	STD_LOGIC; 
          BTN_EAST	:	IN	STD_LOGIC; 
          BTN_WEST	:	IN	STD_LOGIC; 
          BTN_NORTH	:	IN	STD_LOGIC; 
          BTN_SOUTH	:	IN	STD_LOGIC; 
          SYSTEM_CLK	:	IN	STD_LOGIC; 
          rot_a	:	IN	STD_LOGIC; 
          rot_b	:	IN	STD_LOGIC; 
          LED0	:	OUT	STD_LOGIC; 
          LED1	:	OUT	STD_LOGIC; 
          LED2	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL RESET	:	STD_LOGIC := '0';
   SIGNAL rot_c	:	STD_LOGIC := '0';
   SIGNAL BTN_EAST	:	STD_LOGIC := '0';
   SIGNAL BTN_WEST	:	STD_LOGIC := '0';
   SIGNAL BTN_NORTH	:	STD_LOGIC := '0';
   SIGNAL BTN_SOUTH	:	STD_LOGIC := '0';
   SIGNAL SYSTEM_CLK	:	STD_LOGIC := '0';
   SIGNAL rot_a	:	STD_LOGIC := '0';
   SIGNAL rot_b	:	STD_LOGIC := '0';
   SIGNAL LED0	:	STD_LOGIC;
   SIGNAL LED1	:	STD_LOGIC;
   SIGNAL LED2	:	STD_LOGIC;
	
	constant clk_period : time := 20 ns;

BEGIN

   UUT: Top_schematic PORT MAP(
		RESET => RESET, 
		rot_c => rot_c, 
		BTN_EAST => BTN_EAST, 
		BTN_WEST => BTN_WEST, 
		BTN_NORTH => BTN_NORTH, 
		BTN_SOUTH => BTN_SOUTH, 
		SYSTEM_CLK => SYSTEM_CLK, 
		rot_a => rot_a, 
		rot_b => rot_b, 
		LED0 => LED0, 
		LED1 => LED1, 
		LED2 => LED2
   );

process
begin
	wait for clk_period*10000;
	rot_a <= '1';
	wait for clk_period*10;
	rot_b <= '1';
	wait for clk_period*10;
	rot_a <= '0';
	wait for clk_period*10;
	rot_b <= '0';
end process;

process
begin
	wait for clk_period/2;									-- Systemclock: 50MHz Takt
	SYSTEM_CLK <= not SYSTEM_CLK;							-- alle halbe Periode toggeln	
end process;

tb : PROCESS
BEGIN
	RESET <= '1';											-- künstliches Reset
	wait for clk_period*4;								-- (80ns lang)
	RESET <= '0';
	
	wait for clk_period*50;
	
	BTN_SOUTH <= '1';
	wait for clk_period*5000000;
	BTN_SOUTH <= '0';
	
	WAIT;														-- will wait forever
END PROCESS;

END;
