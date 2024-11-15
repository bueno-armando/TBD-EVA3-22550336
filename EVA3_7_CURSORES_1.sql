DELIMITER $$

DROP PROCEDURE IF EXISTS doomsday;

CREATE PROCEDURE doomsday()
BEGIN
	DECLARE emp_id INT;
    DECLARE h_d DATE;
    DECLARE j_i VARCHAR(10);
    DECLARE dep_id INT;
    DECLARE salir INT DEFAULT FALSE;
    
    DECLARE datos_emp CURSOR FOR 
    SELECT employee_id, hire_date, job_id, department_id FROM employees;
    
    -- no lo terminamos para poder hacer algo en vez de acabar
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET salir = TRUE;
    
    OPEN datos_emp;
    
    empleados: LOOP
		FETCH datos_emp INTO emp_id, h_d, j_i, dep_id;
        IF salir THEN
			LEAVE empleados;
		END IF;
        INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)
        VALUE(emp_id, h_d, curdate(), j_i, dep_id);
    END LOOP;
END $$
DELIMITER ;