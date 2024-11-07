DELIMITER $$

CREATE FUNCTION sum_while(num INT)
RETURNS INT DETERMINISTIC

BEGIN
	DECLARE suma INT DEFAULT 0;
    DECLARE cont INT DEFAULT 1;
    
    WHILE cont <= num DO
		SET suma = suma + cont;
        SET cont = cont + 1;
	END WHILE;
    
    RETURN suma;
END $$

DELIMITER ;