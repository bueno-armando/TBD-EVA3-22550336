DELIMITER $$

DROP FUNCTION IF EXISTS agregar_pais;

CREATE FUNCTION agregar_pais(id VARCHAR(2), nombre VARCHAR(50))
RETURNS INT
MODIFIES SQL DATA

BEGIN
	INSERT INTO countries(country_name, country_id, region_id) 
    VALUES(nombre, id, 1);
    RETURN 1; -- se pone porque es a fuerzas no se imprime
END $$

DELIMITER ;