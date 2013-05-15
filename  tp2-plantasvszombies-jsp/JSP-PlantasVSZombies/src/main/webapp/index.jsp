<%@ page isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Plantas Vs Zombies</title>
<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
	<h3>Jardin Zen</h3><!--  <font face="Impact" color="green" size=50>Jardin Zen</font>  -->
	<hr color="Green" width="100%">
	<form method="get" action="search">
		Planta:<input type="text" name="nombre" value="${param.nombre}" /> <input
			type="submit" value="Buscar" />
	</form>
		<c:if test="${sessionScope.semillas != null}">
			<h2>Respuestas:</h2>
			<table>
				<tr>
					<th>#</th>
					<th>Nombre</th>
					<th>Puntos de daño</th>
					<th>Capacidad defensiva</th>
				</tr>
				
				<c:forEach items="${sessionScope.semillas}" var="semilla"
					varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${semilla.nombre}</td>
						<td>${semilla.puntosDeDanio}</td>
						<td>${semilla.capacidadDefensiva}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>

		<br/>
				
		<!--
		<button type="button" action="irAlOtroJardin">IrAlOtroJardin</button>
		<button type="button" action="MejorarPlanta">MejorarPlanta</button>		
		
		O colocar lo de abajo en una tabla, pero me toma la vista igual que la de arriba
		
		-->
		

	 <form method="get" action="irAlOtroJardin">
		<input type="submit" value="IrAlOtroJardin" /> 
		</form>
		
	<form method="get" action="mejorarPlanta">
	<input type="submit" value="MejorarPlanta" /> 	
		</form>
	
	
</body>
</html>
