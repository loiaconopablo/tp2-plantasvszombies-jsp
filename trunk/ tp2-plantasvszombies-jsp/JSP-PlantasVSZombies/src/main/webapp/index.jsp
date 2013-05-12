<%@ page isELIgnored ="false" pageEncoding="UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Plantas Vs Zombies</title>
	<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
	<h2>Jardin Zen</h2>
	<form method="get" action="search">
			Planta:<input type="text" name="nombre" value="${param.nombre}" />
			<input type="submit" value="Buscar"/>
	</form>
	
	<c:if test="${sessionScope.semillas != null}" >
			<h2>Respuestas:</h2>
			<table>
				<tr>
					<th>#</th>
					<th>Nombre</th>					
				</tr>
				<c:forEach items="${sessionScope.semillas}" var="semilla" varStatus="status">
					<tr>
						<td>${status.count}</td>
					 	<td>${semilla.nombre}</td>
				    </tr>
				</c:forEach>
			</table>
		</c:if> 
	
</body>
</html>
