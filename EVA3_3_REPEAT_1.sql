DELIMITER $$

CREATE FUNCTION sum_repeat(num INT)
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE suma INT DEFAULT 0;
    DECLARE cont INT DEFAULT 0;
    
    REPEAT
		SET suma = suma + cont;
        SET cont = cont + 1;
    UNTIL cont > num END REPEAT;
    
    RETURN suma;
END$$
DELIMITER ;