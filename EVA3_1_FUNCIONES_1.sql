CREATE FUNCTION show_msg(msg VARCHAR(30))
	returns VARCHAR(100) DETERMINISTIC
    return CONCAT("TU MENSAJE: ", msg);