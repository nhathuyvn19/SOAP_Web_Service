<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/saveEdit" var="url"/>
	<form:form method="post" modelAttribute="user" action="${url }">
		<div>
			<label>Id + ${url }</label>
			<form:input path="id" disabled="disabled" />
		</div>
		<div>
			<label>Name</label>
			<form:input path="name" />
		</div>
		<div>
			<label>Birthday</label>
			<fmt:formatDate value='${user.birthday }' pattern='yyyy-MM-dd'
				var="dateString" />
			<form:input path="birthday" value="${dateString }" />
		</div>
		<div>
			<label>Gender</label>
			<form:select path="gender">
				<c:choose>
					<c:when test="${user.gender == true }">
						<form:option selected="selected" value="true">Male</form:option>
						<form:option value="false">Female</form:option>
					</c:when>
					<c:otherwise>
						<form:option value="True">Male</form:option>
						<form:option selected="selected" value="false">Female</form:option>
					</c:otherwise>
				</c:choose>
			</form:select>
		</div>
		<div>
			<label>Address</label>
			<form:input path="address" />
		</div>
		<div>
			<label>Identity card</label>
			<form:input path="identityCard" />
		</div>
		<div>
			<label>Cell phone</label>
			<form:input path="cellPhone" />
		</div>
		<div>
			<label>Email</label>
			<form:input path="email" />
		</div>
		<div>
			<label>Nationality</label>
			<form:select path="nationality">
				<c:forEach var="item" items="${lstNation }">
					<c:choose>
						<c:when test="${user.nationality == item}">
							<form:option value="${item }" selected="selected">
								${item }
							</form:option>
						</c:when>
						<c:otherwise>
							<form:option value="${item }">
								${item }
							</form:option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</form:select>
		</div>
		<div>
			<label>Job</label>
			<form:select path="job">
				<c:forEach var="item" items="${lstJob }">
					<c:choose>
						<c:when test="${user.job == item}">
							<form:option value="${item }" selected="selected">
																		${item }
																	</form:option>
						</c:when>
						<c:otherwise>
							<form:option value="${item }">
																		${item }
																	</form:option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</form:select>
		</div>
		<div>
			<form:button type="submit">Save Changes</form:button>
		</div>
	</form:form>
</body>
</html>