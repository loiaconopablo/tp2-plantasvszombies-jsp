<%@ page isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Jardin Zen - Mejoras</title>
<link rel="stylesheet" type="text/css" href="styles2.css" />
</head>
<body>
	<h3>Jardin Zen - Mejoras</h3>
	<hr color="Green" width="100%">
	Recursos Disponibles:
	<table>
	<tr>
	<td> 
	<form method="get" action="comprar">
		</form>
		<c:if test="${sessionScope.mejoras != null}">
			<h2>Mejoras Disponibles:</h2>
			<table>
				<tr>
					<th>Mejora</th>
					<th>Costo</th>
				</tr>
				
				<c:forEach items="${sessionScope.mejoras}" var="mejora"
					varStatus="status">
					<tr>
						<td>${mejora.nombre}</td>
						<td>${mejora.costo}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>

		<br/>	
			<input type="submit" value="Mejorar" align="right"/> 
		</form>
		</td>
		<td> 
		La otra Tabla con mejoras compradas
				
		</td>
		</tr>
	</table>
</body>
</html>
