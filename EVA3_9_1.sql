CREATE DEFINER=`root`@`localhost` TRIGGER `tbd_eva3`.`pruebas_AFTER_INSERT` AFTER INSERT ON `pruebas` FOR EACH ROW
BEGIN
	set @mensaje = "DATO INSERTADO CON EXITO";
END
