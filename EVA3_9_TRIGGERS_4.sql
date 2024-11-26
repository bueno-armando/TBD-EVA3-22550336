CREATE DEFINER=`root`@`localhost` TRIGGER `tbd_eva3`.`pruebas_BEFORE_INSERT` BEFORE INSERT ON `pruebas` FOR EACH ROW
BEGIN
	SET NEW.nombre = genera_rfc();
END
