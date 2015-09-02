<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- JASMINE CSS -->
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="<c:url value="/resources/js/lib/jasmine/jasmine_favicon.png" />">
<link rel="stylesheet" href="<c:url value="/resources/js/lib/jasmine/jasmine.css" />">

<!-- JASMINE JS -->
<script type="text/javascript" src="<c:url value="/resources/js/lib/jasmine/jasmine.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/lib/jasmine/jasmine-html.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/lib/jasmine/boot.js" />"></script>

<!-- FILES TO TEST -->
 <script type="text/javascript" src="<c:url value="/resources/js/register.js" />"></script>
 <script type="text/javascript" src="<c:url value="/resources/js/initsession.js" />"></script>
 <script type="text/javascript" src="<c:url value="/resources/js/update.js" />"></script>
 
 <!-- SPECTS -->
 <script type="text/javascript" src="<c:url value="/resources/js/spec/register_spec.js" />"></script>
 <script type="text/javascript" src="<c:url value="/resources/js/spec/session_spec.js" />"></script>
 <script type="text/javascript" src="<c:url value="/resources/js/spec/update_spec.js" />"></script>
 
<title>Jasmine Test</title>
</head>
<body>
</body>
</html>