DELIMITER $$

CREATE FUNCTION calcular_potencia_loop(base INT, expo INT)
RETURNS INT DETERMINISTIC

BEGIN
	DECLARE cont INT DEFAULT 0;
    DECLARE res INT DEFAULT 1;
	iter: LOOP
		SET res = res * base;
        SET cont = cont + 1;
        IF cont = expo THEN
			LEAVE iter;
		END IF;
	END LOOP;
    
    RETURN res;
END $$

DELIMITER ;