<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Spring MVC</title>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

<!-- JQUERY FILES -->
<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.validate.min.js" />"></script>
<!--  <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script> -->
<!--  <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>-->
<!--  <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCJnj2nWoM86eU8Bq2G4lSNz3udIkZT4YY&sensor=false"></script>-->

<!-- JAVASCRIPT FILES -->
<script type="text/javascript" src="<c:url value="/resources/js/javascript.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/register.js" />"></script>
</head>
<body>
	<div class="register">
		<h2>Register of new User</h2>
		<form method="post" action="inicio.html" id="register" novalidate="novalidate"  enctype="multipart/form-data"   onsubmit="return register();">
			<table align="center">
				<tr>
					<td>Name:</td>
					<td><input name="name" id="name" placeholder="Ex: Ricardo"/></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input name="lastn" id="lastn" placeholder="Ex: Fuentes"/></td>
				</tr>
				<tr>
					<td>Username:</td>
					<td><input name="username" id="username" placeholder="Ex: user1233"/></td>
				</tr>
				<tr>
				   <td>Sex:</td>
					<td><input type="radio" id="male" value="M" />Male<input type="radio" id="female" value="F" />Female</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input name="email" id="email" placeholder="Ex: name@company.com"/></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input name="password" type="password" id="password" /></td>
				</tr>
				<tr>
					<td>Image:</td>
					<td><input type="file" name="image" id="image" /></td>
				</tr>
				<tr>
				<td colspan=2><input type="submit" name="submit" value="Register" /><input type="reset" value="Clean"/></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>