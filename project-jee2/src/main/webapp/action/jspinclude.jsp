<!DOCTYPE html>
<%@page errorPage="error.jsp"  pageEncoding="UTF-8"%>

<html>


<head>
<title>page HTML</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">

</head>

<body>


<jsp:include page="/jspf/head.jsp"/>
<h2>JSP Action : include</h2>

	
	<%@ include file="/jspf/script.jsp" %>

</body>

</html>