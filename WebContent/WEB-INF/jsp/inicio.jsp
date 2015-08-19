<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Spring MVC </title>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
</head>
<body>
		<br>
	<br>
	<div class="center">
		<h2>${message}</h2>
		<form method="post" action="registrado.html">
			<table align="center">
				<tr>
					<td>Usuario:</td>
					<td><input name="username" required/>*</td>
					<td><h3><font color="red">${userfail}</font></h3></td>
				</tr>
				<tr>
					<td>Contrase�a:</td>
					<td><input name="password" type="password" required/>*</td>
					<td><h3><font color="red">${passfail}</font></h3></td>
				</tr>
				<tr>
				<td colspan=2><input type="submit" value="Iniciar Sesi�n" /></td>
				</tr>
			</table>
		</form>
		<h3><font color="red">${error}</font></h3>
		<h3><font color="red">${exito}</font></h3>
	</div>
</body>
</html>