DELIMITER $$

CREATE FUNCTION genera_rfc()
RETURNS VARCHAR(13) DETERMINISTIC 

BEGIN 
	RETURN "LOREMIPSUMDOL";
END $$

DELIMITER ;