delimiter $$
 CREATE FUNCTION es_par(numero int)
    RETURNS VARCHAR(20) DETERMINISTIC
    BEGIN   
        DECLARE residuo INT;
        DECLARE resu VARCHAR(20);
        SET residuo = MOD(numero, 2);
        IF residuo = 0 THEN
            SET resu = "ES PAR";
        ELSE
            SET resu = "ES IMPAR";
        END IF;
        RETURN resu;    
    END$$
delimiter ;