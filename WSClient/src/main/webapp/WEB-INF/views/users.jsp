<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>List User</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Birthday</th>
			<th>Gender</th>
			<th></th>
		</tr>
		<c:forEach items="${users }" var="user">
			<tr>
				<td>${user.id }</td>
				<td>${user.name }</td>
				<td>${user.birthday }</td>
				<td>${user.gender }</td>
				<td><a href="<c:url value="/detailUser/${user.id }"/>">Detail</a>
					<a href="<c:url value="/deleteUser/${user.id}" />">| Delete </a> <a
					href="<c:url value="/editUser/${user.id }" />">| Edit</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>