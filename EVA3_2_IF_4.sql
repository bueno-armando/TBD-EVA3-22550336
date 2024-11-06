DELIMITER $$
    CREATE FUNCTION celsius_to_kelvin(celsius DECIMAL(10,2))
        RETURNS DECIMAL(10,2) DETERMINISTIC
        BEGIN
            DECLARE res DECIMAL(10,2);
            SET res = celsius + 273;
            RETURN res;
        END$$
DELIMITER ;

DELIMITER $$
    CREATE FUNCTION celsius_to_fahrenheit(celsius DECIMAL(10,2))
        RETURNS DECIMAL(10,2) DETERMINISTIC
        BEGIN
            DECLARE res DECIMAL(10,2);
            SET res = celsius * 1.8 + 32;
            RETURN res;
        END$$
DELIMITER ;

DELIMITER $$
    CREATE FUNCTION kelvin_to_celsius(kelvin DECIMAL(10,2))
        RETURNS DECIMAL(10,2) DETERMINISTIC
        BEGIN
            DECLARE res DECIMAL(10,2);
            SET res = kelvin - 273;
            RETURN res;
        END$$
DELIMITER ;