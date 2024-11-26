CREATE DEFINER=`root`@`localhost` TRIGGER `tbd_eva3`.`pruebas_AFTER_DELETE` AFTER DELETE ON `pruebas` FOR EACH ROW
BEGIN
	INSERT INTO bitacora(id_modificado, tabla, accion)
    -- es un borrado, no existen datos en NEW, se usa OLD
    VALUE(OLD.id, "pruebas", "delete");
END
