<%@ page isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Jardin Zen - Mejoras</title>
<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<script language="javascript">

	function enabledButton() {
		document.getElementById('mejorarInput').disabled = false;
	}
</script>
<body>

	<c:set var="admin" value="${sessionScope.adminAppModel}"></c:set>

	<h3>Jardin Zen - Mejoras</h3>

	<div align="right" id="semillaActual">
		${admin.semillaSeleccionada.nombre}<br> Capacidad defensiva =
			${admin.semillaSeleccionada.capacidadDefensiva} <br> Puntos de
				daño = ${admin.semillaSeleccionada.puntosDeDanio} 
	</div>

	Recursos Disponibles: ${admin.jardinZen.jardin.recursos}

	<div>
		<h2>Mejoras disponibles:</h2>
		<form method="post" action="mejorarPlanta">
			<table align="left">
				<c:if test="${admin.jardinZen.mejorasPredefinidas != null}">
					<tr>
						<th>#</th>
						<th>Mejora</th>
						<th>Costo</th>
					</tr>
					<c:forEach items="${admin.jardinZen.mejorasPredefinidas}"
						var="mejora" varStatus="status">
						<tr>
							<td>${status.count}<input type="radio"
								name="mejoraSeleccionada" value="${mejora.nombre}"
								onclick="enabledButton()" /></td>
							<td>${mejora.nombre}</td>
							<td>${mejora.costo}</td>
						</tr>
					</c:forEach>
				</c:if>
				<br />

			</table>
			<input type="submit" value="Mejorar" align="right" id="mejorarInput"
				disabled />
		</form>
		<table align="right">
			<c:if test="${admin.semillaSeleccionada.mejorasAplicadas != null}">
				<tr>
					<th>#</th>
					<th>Mejoras compradas</th>
				</tr>
				<c:forEach items="${admin.semillaSeleccionada.mejorasAplicadas}"
					var="mejora" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${mejora.nombre}</td>
					</tr>
				</c:forEach>
			</c:if>

		</table>

	</div>


	<form name="input" action="index.jsp" method="post">
		<input type="submit" value="Volver al JardinZen">
	</form>
</body>
</html>
