DELIMITER $$
    CREATE FUNCTION dia_semana(numero INT)
        RETURNS varchar(10) DETERMINISTIC
        BEGIN
            DECLARE resu VARCHAR(10);
            CASE numero
                WHEN 1 THEN SET resu = "Domingo";
                WHEN 2 THEN SET resu = "Lunes";
                WHEN 3 THEN SET resu = "Martes";
                WHEN 4 THEN SET resu = "Miércoles";
                WHEN 5 THEN SET resu = "Jueves";
                WHEN 6 THEN SET resu = "Viernes";
                WHEN 7 THEN SET resu = "Sábado";
                ELSE
                    SET resu = "NO VÁLIDO";
            END CASE;
            RETURN resu;
        END$$
DELIMITER ;