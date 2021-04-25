<!DOCTYPE html>
<html>
<head>
	<%@page import="java.util.ArrayList" %>
	<%@page import="java.util.HashMap" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>Insert title here</title>
</head>
<body>
	<%@include file="navi.jsp" %>
	
	<table border="1">
		<c:forEach items="${result}" var="row">
		<tr>
			<td>${row.id}</td>
			<td>${row.source}</td>
			<td>${row.dosing_information}</td>
			<td>${row.summary_markdown}</td>
			
			
		</tr>
		</c:forEach>
	</table>

</body>
</html>