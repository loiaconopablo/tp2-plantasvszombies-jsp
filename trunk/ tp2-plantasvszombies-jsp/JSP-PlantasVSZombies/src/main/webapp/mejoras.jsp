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

	<c:set var="admin" value="${sessionScope.adminAppModel}"></c:set>

	<h3>Jardin Zen - Mejoras</h3>

	Recursos Disponibles:

	<div>
		<h2>Mejoras disponibles:</h2>
		<table align="left">
			<form method="get" action="mejorar"></form>
			<c:if test="${admin.jardinZen.mejorasPredefinidas != null}">
				<tr>
					<th>Mejora</th>
					<th>Costo</th>
				</tr>

				<c:forEach items="${sessionScope.jardinZen.mejorasPredefinidas}"
					var="mejora" varStatus="status">
					<tr>
						<td>${mejora.nombre}</td>
						<td>${mejora.costo}</td>
					</tr>
				</c:forEach>
			</c:if>
			<br />

		</table>
		<input type="submit" value="Mejorar" align="right" />
		</form>
		<table align="right">
			<th>Mejoras compradas</th>

		</table>

	</div>


	<form name="input" action="index.jsp" method="post">
		<input type="submit" value="Ir al JardinZen">
	</form>
</body>
</html>

