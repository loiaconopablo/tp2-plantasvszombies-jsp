<%@ page isELIgnored ="false" pageEncoding="UTF-8" %> 

<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Plantas Vs Zombies</title>
</head>
<body>
	<h2>Jardin Zen</h2>
	<form method="get" action="search">
			Planta:<input type="text" name="nombre" value="${param.nombre}" />
			<input type="submit" value="Buscar"/>
	</form>
	
	
</body>
</html>
