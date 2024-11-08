DELIMITER $$

DROP FUNCTION IF EXISTS calcular_potencia_while;

CREATE FUNCTION calcular_potencia_while(base INT, expo INT)
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE cont INT DEFAULT 0;
    DECLARE res INT DEFAULT 1;
    
    WHILE cont < expo DO
		SET res = res * base;
		SET cont = cont + 1;
	END WHILE;
    
    RETURN res;
END $$

DELIMITER ;