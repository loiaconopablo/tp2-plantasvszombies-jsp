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
<script language= "javascript">
	
	function enabledButton(){
		document.getElementById('mejorarInput').disabled = false;
	} 
	
</script>
<body>
	<c:set var="admin" value="${sessionScope.adminAppModel}"></c:set>

	<h3>Jardin Zen - ${admin.jardinSelect}</h3>
	<hr color="Green" width="100%">
	<form method="get" action="search">
		Planta:<input type="text" name="nombre" value="${param.nombre}" /> <input
			type="submit" value="Buscar" />
	</form>
		
		<form method="get" action="mejorarPlanta">
		<c:if test="${admin.semillasSelect != null}">
			<h2>Respuestas:</h2>
			<table>
				<tr>
					<th>#</th>
					<th><a href="search?nombre=${param.nombre}&ordenadoPor=nombre">Nombre</a></th>
					<th><a href="search?nombre=${param.nombre}&ordenadoPor=danio">Puntos De Danio</a></th>
					<th><a href="search?nombre=${param.nombre}&oordenadoPor=capacidadDefensiva">Capacidad Defensiva</a></th>
				</tr>
				
				<c:forEach items="${admin.semillasSelect}" var="semilla"
					varStatus="status">
					<tr>
						<td>${status.count}<input type="radio" name="semillaSeleccionada" value="${semilla.nombre}" 
						onclick = "enabledButton()"/></td>
						<td>${semilla.nombre}</td>
						<td>${semilla.puntosDeDanio}</td>
						<td>${semilla.capacidadDefensiva}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	
		<input type="submit" value="MejorarPlanta" id="mejorarInput" disabled /> 	
		</form>
				 <form method="get" action="irAlOtroJardin">
		<input type="submit" value="IrAlOtroJardin" /> 
		</form>
		
	
</body>
</html>
