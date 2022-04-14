<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page errorPage="error.jsp"  pageEncoding="UTF-8"%>

<html>


<head>
<title>page HTML</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">

</head>

<body>


<jsp:include page="/jspf/headcrud.jsp"/>
<div style="padding:3% 3% ">
<table class="table" style="border:solid;border-radius: 30px;border-color: grey;margin : 10% auto;padding: auto ;">
		<thead class="thead-dark">
			<tr>
				
				<th scope="col">Dept ID</th>
				<th scope="col">Name</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="dept">
		<c:choose>
					<c:when test="${dept.deptId == 2}">
						<tr style="background: red;">
							<td>${dept.deptId}</td>
							<td>${dept.name}</td>
							<td></td>
						</tr>
					</c:when>
					<c:otherwise>
						<tr>
							<td>${dept.deptId}</td>
							<td>${dept.name}</td>
							<td></td>
						</tr>
					</c:otherwise>
				</c:choose>
		</c:forEach>
		</tbody>
	</table>
</div>

	<%@ include file="/jspf/script.jsp" %>

</body>

</html>