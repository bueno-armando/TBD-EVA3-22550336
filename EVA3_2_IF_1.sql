delimiter  $$
    CREATE FUNCTION comparar_numeros(val1 int, val2 int)
    RETURNS VARCHAR(20) deterministic
    BEGIN
        DECLARE resu VARCHAR(20);
        IF val1 > val2 THEN
            SET resu = "MAYOR";
        ELSEIF val1 =  val2 THEN
            SET resu = "IGUAL";
        ELSE
            SET resu = "MENOR";
        END IF;
        RETURN resu;    
    END$$
delimiter ;
	