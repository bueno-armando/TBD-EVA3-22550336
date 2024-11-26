CREATE DEFINER=`root`@`localhost` TRIGGER `tbd_eva3`.`productos_AFTER_INSERT` AFTER INSERT ON `productos` FOR EACH ROW
BEGIN
	SET @cont = @cont+1;
END
