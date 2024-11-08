DELIMITER $$

CREATE FUNCTION generar_correo
(ini VARCHAR(50), ape VARCHAR(50), depa VARCHAR(50))
RETURNS VARCHAR(50) DETERMINISTIC

BEGIN
	DECLARE correo VARCHAR(50);
	SET correo = CONCAT(ini, ".", ape, "@", depa, ".com");
    RETURN correo;
END $$
DELIMITER ;