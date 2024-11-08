DELIMITER $$

CREATE FUNCTION sum_loop(num INT)
RETURNS INT DETERMINISTIC

BEGIN
	DECLARE suma INT DEFAULT 0; -- inicializar en 0--
	DECLARE i INT DEFAULT 0;
	SET suma = 0;
	
	iter: LOOP -- iter es el label del ciclo--
		SET suma = suma + i;
		SET i = i + 1; -- pseudo fibonacci--
		IF i > num THEN
			LEAVE iter;
		END IF;
	END LOOP;
	
	RETURN suma;
END $$
DELIMITER ;