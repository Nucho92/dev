<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>page HTML</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">


</head>
<body>

<jsp:include page="/jspf/headcrud.jsp" />
		

<div class="container" style="border:solid;border-radius: 30px;border-color: grey;margin : 20% auto;padding:30px 0px 30px 100px ;">
	<legend>Edit</legend>
	<form action="edit" method="post">
			<input type="hidden" class="form-control" value="${empunit.empId}"
				name="id"> <input type="text"
				class="form-control col-sm-6"  name="firstName" value="${empunit.firstName}">
				<input type="text" class="form-control col-sm-6"  name="lastName" value="${empunit.lastName}">
				<input type="text" class="form-control col-sm-6"  name="title" value="${empunit.title}">

	<button type="submit" class="btn btn-primary">update</button>
	</form>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</div>
</body>
</html>