<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Example</title>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
</head>
<body>
	<c:choose>
		<c:when test="${Username == 'admin'}">
			<table align="center" border=1>
				<tr>
					<th colspan="5">Lista de Usuarios</th>
				</tr>
				<tr>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Username</th>
					<th>Password</th>
					<th>Eliminar</th>
				</tr>
				<c:forEach var="arr" items="${persons}" varStatus="loop">
					<tr>
						<td><c:out value="${arr.nombre}" /></td>
						<td><c:out value="${arr.apellido}" /></td>
						<td><c:out value="${arr.username}" /></td>
						<td><c:out value="${arr.password}" /></td>
						<!--  <td><a href="editar.html?id=1">Editar</a></td>-->
						
						<td><a href="eliminar.html?id='${loop.index}'">Eliminar</a></td>
						
						<!-- Queda averiguar como mantener los datos de la sesion -->
						<!-- <td><a href="editar.html?id='${loop.index}'">Editar</a></td>-->
					</tr>

				</c:forEach>


			</table>
			<a href="inicio.html">Volver al Inicio</a>

		</c:when>
		<c:otherwise>
		
				<a>${bienvenido} ${Nombre} ${Apellido} ${Username} </a>
		
			  <a href="inicio.html">Volver al Inicio</a>
		</c:otherwise>
	</c:choose>



</body>
</html>