
<!DOCTYPE html>
<%@page import="java.util.Date" isErrorPage="true"%>

<html>


<head>
<title>page HTML</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">

</head>

<body>

<%@ include file="jspf/head.jsp" %>

<h2>Error sur cette page</h2>
<%= exception.getMessage() %>
	
	<%@ include file="jspf/script.jsp" %>

</body>

</html>