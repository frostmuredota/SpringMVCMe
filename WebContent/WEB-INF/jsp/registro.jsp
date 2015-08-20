<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Spring MVC</title>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<!-- <script type="text/javascript" src="<c:url value="/resources/js/javascript.js" />"></script>-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script type="text/javascript" src="./javascript.js"></script>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCJnj2nWoM86eU8Bq2G4lSNz3udIkZT4YY&sensor=false"></script>
<script type="text/javascript" src="<c:url value="/resources/js/javascript.js" />"></script>
</head>
<body>
	<div class="register">
		<h2>Registro de Usuario</h2>
		<form method="post" action="inicio.html" id="formregistro" novalidate="novalidate">
			<table align="center">
				<tr>
					<td>Nombre:</td>
					<td><input name="name" id="name" class="f1"/>*</td>
					<td><h3><font color="red">${namefail}</font></h3></td>
				</tr>
				<tr>
					<td>Apellido:</td>
					<td><input name="lastn" id="lastn" class="f1"/>*</td>
					<td><h3><font color="red">${lastnfail}</font></h3></td>
				</tr>
				<tr>
					<td>Username:</td>
					<td><input name="username" id="username" class="f1"/>*</td>
					<td><h3><font color="red">${userfail}</font></h3></td>
				</tr>
				<tr>
					<td>Contraseña:</td>
					<td><input name="password" type="password" id="password" class="f1"/>*</td>
					<td><h3><font color="red">${passfail}</font></h3></td>
				</tr>
				<tr>
				<td colspan=2><input type="submit" name="submit" value="Registrarse" /></td>
				</tr>
			</table>
		</form>
		 <h3><font color="red">${error}</font></h3>
		<!--  <h3><font color="red">${error}</font></h3>-->
	</div>
</body>
</html>