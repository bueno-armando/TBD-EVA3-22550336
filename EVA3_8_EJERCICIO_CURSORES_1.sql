DELIMITER $$

DROP PROCEDURE IF EXISTS clave_rfc;

CREATE PROCEDURE clave_rfc()
BEGIN
	-- variables donde se van a insertar los datos de tabla personas
    DECLARE _nombre VARCHAR(30);
    DECLARE _apellido_pat VARCHAR(30);
    DECLARE _apellido_mat VARCHAR(30);
    DECLARE _fecha_nac DATE;
    DECLARE _id INT; -- solo se usará de referencia para insertar el RFC donde va
    -- variable para determinar si debe finalizar la ejecución
    DECLARE salir INT DEFAULT FALSE;
    -- variable para almacenar rfc calculado (a esta no se le hace fetch)
    DECLARE rfc_calc VARCHAR(13);
    
    -- cursor para almacenar resultados de las personas
    DECLARE datos_prs CURSOR FOR
    SELECT nombre, apellido_pat, apellido_mat, fecha_nac, id FROM personas; 
    
    -- handler (no se terminará la ejecución en caso de error)
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET salir = TRUE;
    
    -- almacenar datos de cada SELECT en el cursor
    OPEN datos_prs; -- inicalizar cursor
    prs_loop: LOOP
		-- jalar datos del cursor a las variables
		FETCH datos_prs INTO _nombre, _apellido_pat, _apellido_mat, _fecha_nac, _id;
        -- salir solo del ciclo si hubo errores
        IF salir THEN
			LEAVE prs_loop;
		END IF;
        -- obtener rfc e insertar
        SET rfc_calc = UPPER(CONCAT(
			SUBSTRING(_apellido_pat, 1, 2),
            SUBSTRING(_apellido_mat, 1, 1),
            SUBSTRING(_nombre, 1, 1),
            SUBSTRING(CAST(YEAR(_fecha_nac) AS VARCHAR(4)), 3, 2),
            '123'
		));
        UPDATE personas
			SET clave_rfc = rfc_calc
			WHERE id = _id;
	END LOOP;
END $$

DELIMITER ;