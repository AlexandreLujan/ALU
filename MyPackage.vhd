PACKAGE MyPackage IS

	COMPONENT ALU
		PORT (
			IN_A   : IN INTEGER;        
			IN_B   : IN INTEGER;        
			OP     : IN BIT_VECTOR(1 DOWNTO 0);        
			OUTPUT : OUT INTEGER 
		);
	END COMPONENT;
   
END MyPackage;

PACKAGE BODY MyPackage IS
	CONSTANT CONSTANTE_GLOBAL: INTEGER := 200;
END MyPackage;