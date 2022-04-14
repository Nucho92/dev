<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@page errorPage="error.jsp"  pageEncoding="UTF-8"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


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
<div style="padding:3% 3% ">
	<table class="table" style="border:solid;border-radius: 30px;border-color: grey;margin : 10% auto;padding: auto ;">
	<caption style="caption-side: top;text-align: center"><h1>Visual</h1></caption>
		<thead class="thead-dark">
			<tr>

				<th scope="col">Employee ID</th>
				<th scope="col">Nom</th>
				<th scope="col">Prenom</th>
				<th scope="col">start date</th>
				<th scope="col">Titre</th>
				<th scope="col">Departement</th>
			</tr>
		</thead>
		<tbody>
		
				<tr>

					<td>${empunit.empId}</td>
					<td>${empunit.firstName}</td>
					<td>${empunit.lastName}</td>
					<td><fmt:formatDate value="${empunit.startDate }" type="date" pattern="dd-MM-yyyy" /></td>
					<td>${empunit.title}</td>
					<td>${empunit.department.getName()}</td>
				</tr>
			
		</tbody>
	</table>
</div>
	


	<%@ include file="/jspf/script.jsp"%>

</body>

</html>