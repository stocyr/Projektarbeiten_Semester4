--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.1
--  \   \         Application : sch2hdl
--  /   /         Filename : Top_schematic.vhf
-- /___/   /\     Timestamp : 04/24/2013 01:27:52
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl D:/BFH/Projektarbeiten_Semester4/VHDL_Brun/Projekt/Top_schematic.vhf -w D:/BFH/Projektarbeiten_Semester4/VHDL_Brun/Projekt/Top_schematic.sch
--Design Name: Top_schematic
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Top_schematic is
   port ( BTN_EAST   : in    std_logic; 
          BTN_NORTH  : in    std_logic; 
          BTN_SOUTH  : in    std_logic; 
          BTN_WEST   : in    std_logic; 
          RESET      : in    std_logic; 
          rot_a      : in    std_logic; 
          rot_b      : in    std_logic; 
          rot_c      : in    std_logic; 
          SYSTEM_CLK : in    std_logic; 
          LED0       : out   std_logic; 
          LED1       : out   std_logic; 
          LED2       : out   std_logic);
end Top_schematic;

architecture BEHAVIORAL of Top_schematic is
   signal XLXN_17    : std_logic;
   signal XLXN_18    : std_logic;
   signal XLXN_22    : std_logic_vector (7 downto 0);
   signal XLXN_23    : std_logic_vector (7 downto 0);
   signal XLXN_24    : std_logic_vector (7 downto 0);
   signal XLXN_76    : std_logic_vector (8 downto 0);
   signal XLXN_77    : std_logic_vector (7 downto 0);
   signal XLXN_78    : std_logic_vector (7 downto 0);
   component Counter256
      port ( UP    : in    std_logic; 
             DOWN  : in    std_logic; 
             CLK   : in    std_logic; 
             RESET : in    std_logic; 
             VALUE : out   std_logic_vector (7 downto 0));
   end component;
   
   component PWMEncoder
      port ( CLK   : in    std_logic; 
             RESET : in    std_logic; 
             VALUE : in    std_logic_vector (7 downto 0); 
             PWM   : out   std_logic);
   end component;
   
   component RGBEncoder
      port ( CLK    : in    std_logic; 
             BUTTON : in    std_logic; 
             RESET  : in    std_logic; 
             HUE    : in    std_logic_vector (8 downto 0); 
             SAT    : in    std_logic_vector (7 downto 0); 
             VAL    : in    std_logic_vector (7 downto 0); 
             R      : out   std_logic_vector (7 downto 0); 
             G      : out   std_logic_vector (7 downto 0); 
             B      : out   std_logic_vector (7 downto 0));
   end component;
   
   component Counter384
      port ( UP    : in    std_logic; 
             DOWN  : in    std_logic; 
             CLK   : in    std_logic; 
             RESET : in    std_logic; 
             VALUE : out   std_logic_vector (8 downto 0));
   end component;
   
   component RotaryDecoder
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             CLK   : in    std_logic; 
             UP    : out   std_logic; 
             DOWN  : out   std_logic);
   end component;
   
begin
   XLXI_2 : Counter256
      port map (CLK=>SYSTEM_CLK,
                DOWN=>BTN_WEST,
                RESET=>RESET,
                UP=>BTN_EAST,
                VALUE(7 downto 0)=>XLXN_78(7 downto 0));
   
   XLXI_3 : PWMEncoder
      port map (CLK=>SYSTEM_CLK,
                RESET=>RESET,
                VALUE(7 downto 0)=>XLXN_23(7 downto 0),
                PWM=>LED0);
   
   XLXI_4 : PWMEncoder
      port map (CLK=>SYSTEM_CLK,
                RESET=>RESET,
                VALUE(7 downto 0)=>XLXN_22(7 downto 0),
                PWM=>LED1);
   
   XLXI_5 : PWMEncoder
      port map (CLK=>SYSTEM_CLK,
                RESET=>RESET,
                VALUE(7 downto 0)=>XLXN_24(7 downto 0),
                PWM=>LED2);
   
   XLXI_27 : Counter256
      port map (CLK=>SYSTEM_CLK,
                DOWN=>BTN_SOUTH,
                RESET=>RESET,
                UP=>BTN_NORTH,
                VALUE(7 downto 0)=>XLXN_77(7 downto 0));
   
   XLXI_31 : RGBEncoder
      port map (BUTTON=>rot_c,
                CLK=>SYSTEM_CLK,
                HUE(8 downto 0)=>XLXN_76(8 downto 0),
                RESET=>RESET,
                SAT(7 downto 0)=>XLXN_78(7 downto 0),
                VAL(7 downto 0)=>XLXN_77(7 downto 0),
                B(7 downto 0)=>XLXN_24(7 downto 0),
                G(7 downto 0)=>XLXN_22(7 downto 0),
                R(7 downto 0)=>XLXN_23(7 downto 0));
   
   XLXI_33 : Counter384
      port map (CLK=>SYSTEM_CLK,
                DOWN=>XLXN_18,
                RESET=>RESET,
                UP=>XLXN_17,
                VALUE(8 downto 0)=>XLXN_76(8 downto 0));
   
   XLXI_34 : RotaryDecoder
      port map (CLK=>SYSTEM_CLK,
                ROT_A=>rot_a,
                ROT_B=>rot_b,
                DOWN=>XLXN_18,
                UP=>XLXN_17);
   
end BEHAVIORAL;

