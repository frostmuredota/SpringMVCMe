<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Example</title>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<script type="text/javascript"
	src="<c:url value="/resources/js/update.js" />"></script>
<script>
	window.onload = function() {
		document.getElementById("updateform").style.visibility = "hidden";
		document.getElementById("data").style.display = 'block';
		document.getElementById("data").style.display = 'none';
		
	}

	function show() {
		document.getElementById("updateform").style.visibility = "visible";
		document.getElementById("data").style.display = '';
		document.getElementById("data").style.display = '';
		document.getElementById("data").style.backgroundColor = 'transparent';
	}
</script>
</head>
<body>
	<c:choose>
		<c:when test="${Username == 'admin'}">
			<table align="center" border=1>
				<tr>
					<th colspan="7">User List</th>
				</tr>
				<tr>
					<th>Id</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Username</th>
					<th>Email</th>
					<th>Password</th>
					<th>Eliminar</th>
				</tr>
				<c:forEach var="arr" items="${persons}" varStatus="loop">
					<tr>
						<td><c:out value="${arr.id}" /></td>
						<td><c:out value="${arr.nombre}" /></td>
						<td><c:out value="${arr.apellido}" /></td>
						<td><c:out value="${arr.username}" /></td>
						<td><c:out value="${arr.email}" /></td>
						<td><c:out value="${arr.password}" /></td>
						<!--  <td><a href="editar.html?id=1">Editar</a></td>-->

						<td><a href="eliminar.html?id='${loop.index}'">Eliminar</a></td>

						<!-- Queda averiguar como mantener los datos de la sesion -->
						<!-- <td><a href="editar.html?id='${loop.index}'">Editar</a></td>-->
					</tr>

				</c:forEach>


			</table>
			<a href="inicio.html">Close Session</a>

		</c:when>
		<c:otherwise>

			<table align="center">
				<tr>
					<td rowspan="3"><img src="<c:url value='/images/${Img}'/>" height="42" width="42"/></td>
					<td>Name:</td>
					<td>${Nombre}</td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td>${Apellido}</td>
				</tr>
				<tr>
					<td>Username:</td>
					<td>${Username}</td>
				</tr>
				<tr>
				<td colspan="3"><a href="#" onclick="return show();">Update your data</a></td>
				<tr>
			</table>
			<div class="index" id="data">
				<form method="post" id="updateform" action="actualizar.html"
					id="session" novalidate="novalidate" onsubmit="return update();">
					<table align="center">
						<tr>
							<td>Name:</td>
							<td><input name="name" id="name" value="${Nombre}" /></td>
						</tr>
						<tr>
							<td>Last Name:</td>
							<td><input name="lastn" id="lastn" value="${Apellido}" /></td>
						</tr>
						<tr>
							<td>Username:</td>
							<td><input name="username" id="username" value="${Username}" /></td>
						</tr>
						<tr>
							<td>Email:</td>
							<td><input name="email" id="email" value="${Email}" /></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input name="password" id="password" value="${Password}" /></td>
						</tr>
						<tr>
							<td><input type="hidden" name="id" id="id" value="${Id}"></td>
						</tr>
						<tr>
							<td colspan=2><input type="submit" name="submit"
								value="Update" /><input type="reset" value="Clean"/></td>
						</tr>
					</table>
				</form>
			</div>
			<a href="inicio.html">Close Session</a>
		</c:otherwise>
	</c:choose>
</body>
</html>