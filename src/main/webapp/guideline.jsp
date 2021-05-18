<!DOCTYPE html>
<html>
<head>
	<%@page import="java.util.ArrayList" %>
	<%@page import="java.util.HashMap" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/main.css"/>
	
<title>DOSING GUIDELINES</title>
<style type="text/css">
table,tr, td {vertical-align:baseline}
</style>

</head>
<body>
    <%@include file="navi.jsp" %>
	<table border="1">
		<tr align="center">
			<td>ID</td>
			<td>Source</td>
			<td width="50%">Summary markdown</td>
		</tr>
		<c:forEach items="${guidelines}" var="guideline">
		<tr>
			<td align="center">${guideline.id}</td>
			<td align="center">${guideline.source}</td>
			<td>${guideline.summary_markdown}</td>
			
			
			
		</tr>
		</c:forEach>
	</table>

</body>
</html>