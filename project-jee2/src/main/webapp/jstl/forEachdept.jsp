<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page errorPage="error.jsp"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<html>


<head>
<title>page HTML</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">

</head>

<body>


<jsp:include page="/jspf/headcrud.jsp" />
<div style="padding:3% 3% ">
<table class="table" style="border:solid;border-radius: 30px;border-color: grey;margin : 10% auto;padding: auto ;" >
		<thead class="thead-dark">
			<tr>
				
				<th scope="col">Dept ID</th>
				<th scope="col">Name</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="dept">
			<tr>
				
				<td>${dept.deptId}</td>
				<td>${dept.name}</td>
				<td></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
		</div>
	<%-- 
	<h5><fmt:formatNumber value ="${4569.69855}"type="currency"/><br>
	</h5>
	<h5><c:out value="<%= new Date() %>"></c:out>
	<c:set value="<%= new Date() %>" var="now" scope="session"></c:set> <!-- scope session permet d'enregistrer l'élement setté  dans toutes la session -->
	<fmt:formatDate value="${now }"type="date"/> 
	<br>
	<fmt:formatDate value="${now }"type="time"/>
	<br>
	<fmt:formatDate value="${now }"type="date" pattern="dd-MM-yyyy"/>
	</h5>
 --%>

	<%@ include file="/jspf/script.jsp" %>

</body>

</html>