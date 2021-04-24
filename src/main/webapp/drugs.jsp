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
			<td>${row.name}</td>
			<td><a href="https://api.pharmgkb.org/v1/data${row.drug_url}">${row.drug_url}</a></td>
			<td>${row.biomarker}</td>
			
			
		</tr>
		</c:forEach>
	</table>

</body>
</html>