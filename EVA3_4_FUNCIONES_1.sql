DELIMITER $$

DROP FUNCTION IF EXISTS dia_semana;

CREATE FUNCTION dia_semana(fecha DATE)
RETURNS VARCHAR(10) DETERMINISTIC

BEGIN
	DECLARE dia VARCHAR(10);
	DECLARE num_dia INT;
    
    SET num_dia = dayofweek(fecha);
	
    CASE num_dia
		WHEN 1 THEN SET dia = "DOMINGO";
        WHEN 2 THEN SET dia = "LUNES";
        WHEN 3 THEN SET dia = "MARTES";
        WHEN 4 THEN SET dia = "MIERCOLES";
        WHEN 5 THEN SET dia = "JUEVES";
        WHEN 6 THEN SET dia = "VIERNES";
        WHEN 7 THEN SET dia = "SABADO";
	END CASE;
    
    RETURN dia;
END $$

DELIMITER ;