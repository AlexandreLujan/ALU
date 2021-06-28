LIBRARY IEEE;

ENTITY ALU IS 
	PORT (        
		IN_A   : IN INTEGER;        
		IN_B   : IN INTEGER;        
		OP     : IN BIT_VECTOR(1 DOWNTO 0);        
		OUTPUT : OUT INTEGER    
	);
END ENTITY;

ARCHITECTURE RTL OF ALU IS

	SIGNAL SOMA, SUBI, MULT, DIVI: INTEGER;
	
BEGIN

	SOMA <= (IN_A + IN_B);
	SUBI <= (IN_A - IN_B);
	MULT <= (IN_A * IN_B);
	DIVI <= (IN_A / IN_B);
	
	OUTPUT <= SOMA WHEN (OP = "00") ELSE
				 SUBI WHEN (OP = "01") ELSE
				 MULT WHEN (OP = "10") ELSE
				 DIVI WHEN (OP = "11");


END ARCHITECTURE;