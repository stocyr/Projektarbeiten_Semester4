
-- VHDL Instantiation Created from source file Counter256.vhd -- 17:31:05 04/24/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Counter256
	PORT(
		UP : IN std_logic;
		DOWN : IN std_logic;
		CLK : IN std_logic;
		RESET : IN std_logic;          
		VALUE : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Counter256: Counter256 PORT MAP(
		UP => ,
		DOWN => ,
		CLK => ,
		RESET => ,
		VALUE => 
	);


