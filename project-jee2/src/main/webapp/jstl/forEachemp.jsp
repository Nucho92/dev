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

<body >


	<jsp:include page="/jspf/headcrud.jsp" />
<div style="padding:3% 3% ">

	<table class="table" style="border:solid;border-radius: 30px;border-color: grey;margin : 10% auto;padding: auto ;" >
	<caption style="caption-side: top;text-align: center"><h1>Liste des Employes</h1></caption>
		<thead class="thead-dark">
			<tr>

				<th scope="col">Employee ID</th>
				<th scope="col">Prenom</th>
				<th scope="col">Nom</th>
				<th scope="col">title</th>
				<th scope="col">start date</th>
				<th scope="col">Nom de departement</th>
				<th scope="col" colspan="3">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="emp">
				<tr>

					<td>${emp.empId}</td>
					<td>${emp.firstName}</td>
					<td>${emp.lastName}</td>
					<td>${emp.title}</td>
					<td><fmt:formatDate value="${emp.startDate }" type="date"
							pattern="dd-MM-yyyy" /></td>
					<td>${emp.department.getName()}</td>
					<td><a class="" href="View?id=${emp.empId }"> <span
							class="material-icons md-24">visibility</span>
					</a></td>
					<c:if test="${role=='admin'}">
					<td><a class="" href="edit?id=${emp.empId }"> <span
							class="material-icons md-24">edit</span>
					</a></td>
					<td><a class="" href="Delete?id=${emp.empId }"
						onclick="return confirm('are you sure ?');"> <span
							class="material-icons md-24">delete</span>
					</a></td>
					</c:if>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>

	<%-- <h2>JSTL : fmt </h2>
	<h5><fmt:formatNumber value ="${4569.69855}"type="currency"/><br>
	</h5>
	<h5><c:out value="<%= new Date() %>"></c:out>
	<c:set value="<%= new Date() %>" var="now" scope="session"></c:set> <!-- scope session permet d'enregistrer l'élement setté  dans toutes la session -->
	<fmt:formatDate value="${now }"type="date"/> 
	<br>
	<fmt:formatDate value="${now }"type="time"/>
	<br>
	<fmt:formatDate value="${now }"type="date" pattern="dd-MM-yyyy"/>
	</h5> --%>


	<%@ include file="/jspf/script.jsp"%>

</body>

</html>