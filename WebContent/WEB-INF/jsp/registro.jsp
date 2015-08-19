<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Spring MVC</title>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<script type="text/javascript" src="<c:url value="/resources/js/javascript.js" />"></script>
</head>
<body>
	<div style="text-align: center"></div>

	<br>
	<br>
	<div class="center">
		<h2>Registro de Usuario</h2>
		<form method="post" action="inicio.html" id="form1">
		
			<table align="center">
				<tr>
					<td>Nombre:</td>
					<td><input name="name" id="nombre"/>*</td>
					<td><h3><font color="red">${namefail}</font></h3></td>
				</tr>
				<tr>
					<td>Apellido:</td>
					<td><input name="lastn" id="apellido"/>*</td>
					<td><h3><font color="red">${lastnfail}</font></h3></td>
				</tr>
				<tr>
					<td>Username:</td>
					<td><input name="username" id="user"/>*</td>
					<td><h3><font color="red">${userfail}</font></h3></td>
				</tr>
				<tr>
					<td>Contraseña:</td>
					<td><input name="password" type="password" id="pass"/>*</td>
					<td><h3><font color="red">${passfail}</font></h3></td>
				</tr>
				<tr>
				<td colspan=2><input type="button" value="Registrarse" onclick="sendform()"/></td>
				</tr>
			</table>
		</form>
		 <h3><font color="red">${error}</font></h3>
		<!--  <h3><font color="red">${error}</font></h3>-->
	</div>
</body>
</html>