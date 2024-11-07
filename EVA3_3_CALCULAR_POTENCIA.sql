DELIMITER $$

DROP FUNCTION IF EXISTS calcular_potencia;

CREATE FUNCTION calcular_potencia(base INT, expo INT)
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE cont INT DEFAULT 0;
    DECLARE res INT DEFAULT 1;
    
    REPEAT
		SET res = res * base;
        SET cont = cont + 1;
	UNTIL cont = expo END REPEAT;
    
    RETURN res;
END $$

DELIMITER ;