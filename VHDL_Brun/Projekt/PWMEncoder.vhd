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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- PWM signal generator with 8 bit resolution (256 steps).
-- PWM frequency is driven by a divided CLK signal. Then divider
-- can be selected by the number of bits in "clock_divider".


entity PWMEncoder is
    Port ( VALUE : in STD_LOGIC_VECTOR(7 downto 0);
           CLK : in STD_LOGIC;
			  RESET : in STD_LOGIC;
           PWM : out STD_LOGIC);
end PWMEncoder;

architecture Behavioral of PWMEncoder is
	
--#################################################
--            LOGARITHMIC LOOK UP TABLE
--#################################################

type nums is array(0 to 255) of integer;
constant log_table : nums := (
	0      => 0,
	1      => 0,
	2      => 0,
	3      => 0,
	4      => 0,
	5      => 0,
	6      => 0,
	7      => 0,
	8      => 0,
	9      => 0,
  10      => 1,
  11      => 1,
  12      => 1,
  13      => 1,
  14      => 1,
  15      => 1,
  16      => 1,
  17      => 1,
  18      => 1,
  19      => 1,
  20      => 1,
  21      => 1,
  22      => 1,
  23      => 1,
  24      => 1,
  25      => 1,
  26      => 2,
  27      => 2,
  28      => 2,
  29      => 2,
  30      => 2,
  31      => 2,
  32      => 2,
  33      => 2,
  34      => 2,
  35      => 2,
  36      => 2,
  37      => 2,
  38      => 3,
  39      => 3,
  40      => 3,
  41      => 3,
  42      => 3,
  43      => 3,
  44      => 3,
  45      => 3,
  46      => 3,
  47      => 3,
  48      => 4,
  49      => 4,
  50      => 4,
  51      => 4,
  52      => 4,
  53      => 4,
  54      => 4,
  55      => 4,
  56      => 5,
  57      => 5,
  58      => 5,
  59      => 5,
  60      => 5,
  61      => 5,
  62      => 5,
  63      => 5,
  64      => 6,
  65      => 6,
  66      => 6,
  67      => 6,
  68      => 6,
  69      => 6,
  70      => 7,
  71      => 7,
  72      => 7,
  73      => 7,
  74      => 7,
  75      => 7,
  76      => 8,
  77      => 8,
  78      => 8,
  79      => 8,
  80      => 8,
  81      => 9,
  82      => 9,
  83      => 9,
  84      => 9,
  85      => 9,
  86     => 10,
  87     => 10,
  88     => 10,
  89     => 10,
  90     => 11,
  91     => 11,
  92     => 11,
  93     => 11,
  94     => 11,
  95     => 12,
  96     => 12,
  97     => 12,
  98     => 13,
  99     => 13,
 100     => 13,
 101     => 13,
 102     => 14,
 103     => 14,
 104     => 14,
 105     => 15,
 106     => 15,
 107     => 15,
 108     => 16,
 109     => 16,
 110     => 16,
 111     => 17,
 112     => 17,
 113     => 17,
 114     => 18,
 115     => 18,
 116     => 18,
 117     => 19,
 118     => 19,
 119     => 20,
 120     => 20,
 121     => 20,
 122     => 21,
 123     => 21,
 124     => 22,
 125     => 22,
 126     => 22,
 127     => 23,
 128     => 23,
 129     => 24,
 130     => 24,
 131     => 25,
 132     => 25,
 133     => 26,
 134     => 26,
 135     => 27,
 136     => 27,
 137     => 28,
 138     => 29,
 139     => 29,
 140     => 30,
 141     => 30,
 142     => 31,
 143     => 32,
 144     => 32,
 145     => 33,
 146     => 33,
 147     => 34,
 148     => 35,
 149     => 35,
 150     => 36,
 151     => 37,
 152     => 38,
 153     => 38,
 154     => 39,
 155     => 40,
 156     => 41,
 157     => 41,
 158     => 42,
 159     => 43,
 160     => 44,
 161     => 45,
 162     => 45,
 163     => 46,
 164     => 47,
 165     => 48,
 166     => 49,
 167     => 50,
 168     => 51,
 169     => 52,
 170     => 53,
 171     => 54,
 172     => 55,
 173     => 56,
 174     => 57,
 175     => 58,
 176     => 59,
 177     => 60,
 178     => 62,
 179     => 63,
 180     => 64,
 181     => 65,
 182     => 66,
 183     => 68,
 184     => 69,
 185     => 70,
 186     => 72,
 187     => 73,
 188     => 74,
 189     => 76,
 190     => 77,
 191     => 79,
 192     => 80,
 193     => 81,
 194     => 83,
 195     => 85,
 196     => 86,
 197     => 88,
 198     => 89,
 199     => 91,
 200     => 93,
 201     => 95,
 202     => 96,
 203     => 98,
 204    => 100,
 205    => 102,
 206    => 104,
 207    => 106,
 208    => 108,
 209    => 110,
 210    => 112,
 211    => 114,
 212    => 116,
 213    => 118,
 214    => 120,
 215    => 123,
 216    => 125,
 217    => 127,
 218    => 129,
 219    => 132,
 220    => 134,
 221    => 137,
 222    => 139,
 223    => 142,
 224    => 145,
 225    => 147,
 226    => 150,
 227    => 153,
 228    => 156,
 229    => 158,
 230    => 161,
 231    => 164,
 232    => 167,
 233    => 171,
 234    => 174,
 235    => 177,
 236    => 180,
 237    => 184,
 238    => 187,
 239    => 190,
 240    => 194,
 241    => 197,
 242    => 201,
 243    => 205,
 244    => 209,
 245    => 212,
 246    => 216,
 247    => 220,
 248    => 224,
 249    => 229,
 250    => 233,
 251    => 237,
 252    => 241,
 253    => 246,
 254    => 250,
 255    => 255
 );

begin

process(CLK, RESET)
	variable PWM_period : unsigned(7 downto 0);
	variable clock_divider : unsigned(7 downto 0);
begin
	if RESET = '1' then
		clock_divider := "00000000";
		PWM_period := "00000000";
	elsif rising_edge(CLK) then
		clock_divider := unsigned(clock_divider) + 1;
		
		if clock_divider = "00000000" then -- bei überlauf: PWM periodenzähler erhöhen
			PWM_period := PWM_period + 1;
			
			if PWM_period = "11111111" then	-- nur bis 2^n - 2 gehen: weil es n möglichkeiten (statt n-1) gibt
				PWM_period := "00000000";
			end if;
			
			if PWM_period < log_table(to_integer(unsigned(VALUE))) then
				PWM <= '1';
			else
				PWM <= '0';
			end if;
		end if;
	end if;
end process;

end Behavioral;

