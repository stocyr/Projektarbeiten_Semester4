--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.1
--  \   \         Application : sch2hdl
--  /   /         Filename : Top_schematic_drc.vhf
-- /___/   /\     Timestamp : 06/06/2013 10:28:38
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.1\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan3e -flat -suppress -vhdl Top_schematic_drc.vhf -w D:/BFH/Projektarbeiten_Semester4/VHDL_Brun/Projekt/Top_schematic.sch
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
          BLAU       : out   std_logic; 
          GRUEN      : out   std_logic; 
          ROT        : out   std_logic);
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
   signal XLXN_118   : std_logic;
   signal XLXN_119   : std_logic;
   signal XLXN_124   : std_logic;
   signal XLXN_125   : std_logic;
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
   
   component RotaryDecoder
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             CLK   : in    std_logic; 
             UP    : out   std_logic; 
             DOWN  : out   std_logic);
   end component;
   
   component AutoRepeat
      port ( TRIGGER : in    std_logic; 
             CLK     : in    std_logic; 
             RESET   : in    std_logic; 
             OUTPUT  : out   std_logic);
   end component;
   
   component Counter384
      port ( UP    : in    std_logic; 
             DOWN  : in    std_logic; 
             CLK   : in    std_logic; 
             RESET : in    std_logic; 
             VALUE : out   std_logic_vector (8 downto 0));
   end component;
   
begin
   XLXI_2 : Counter256
      port map (CLK=>SYSTEM_CLK,
                DOWN=>XLXN_118,
                RESET=>RESET,
                UP=>XLXN_124,
                VALUE(7 downto 0)=>XLXN_78(7 downto 0));
   
   XLXI_3 : PWMEncoder
      port map (CLK=>SYSTEM_CLK,
                RESET=>RESET,
                VALUE(7 downto 0)=>XLXN_23(7 downto 0),
                PWM=>ROT);
   
   XLXI_4 : PWMEncoder
      port map (CLK=>SYSTEM_CLK,
                RESET=>RESET,
                VALUE(7 downto 0)=>XLXN_22(7 downto 0),
                PWM=>GRUEN);
   
   XLXI_5 : PWMEncoder
      port map (CLK=>SYSTEM_CLK,
                RESET=>RESET,
                VALUE(7 downto 0)=>XLXN_24(7 downto 0),
                PWM=>BLAU);
   
   XLXI_27 : Counter256
      port map (CLK=>SYSTEM_CLK,
                DOWN=>XLXN_119,
                RESET=>RESET,
                UP=>XLXN_125,
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
   
   XLXI_34 : RotaryDecoder
      port map (CLK=>SYSTEM_CLK,
                ROT_A=>rot_a,
                ROT_B=>rot_b,
                DOWN=>XLXN_18,
                UP=>XLXN_17);
   
   XLXI_39 : AutoRepeat
      port map (CLK=>SYSTEM_CLK,
                RESET=>RESET,
                TRIGGER=>BTN_EAST,
                OUTPUT=>XLXN_124);
   
   XLXI_40 : AutoRepeat
      port map (CLK=>SYSTEM_CLK,
                RESET=>RESET,
                TRIGGER=>BTN_WEST,
                OUTPUT=>XLXN_118);
   
   XLXI_41 : AutoRepeat
      port map (CLK=>SYSTEM_CLK,
                RESET=>RESET,
                TRIGGER=>BTN_NORTH,
                OUTPUT=>XLXN_125);
   
   XLXI_42 : AutoRepeat
      port map (CLK=>SYSTEM_CLK,
                RESET=>RESET,
                TRIGGER=>BTN_SOUTH,
                OUTPUT=>XLXN_119);
   
   XLXI_43 : Counter384
      port map (CLK=>SYSTEM_CLK,
                DOWN=>XLXN_18,
                RESET=>RESET,
                UP=>XLXN_17,
                VALUE(8 downto 0)=>XLXN_76(8 downto 0));
   
end BEHAVIORAL;


