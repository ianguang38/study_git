<!DOCTYPE html>
<html>
<head>
	<%@page import="java.util.ArrayList" %>
	<%@page import="java.util.HashMap" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/main.css"/>
	
	<title>LABELS</title>
	
	<style type="text/css">
		td {text-align:center;}
	</style>
</head>
<body>
    <%@include file="navi.jsp" %>
	<table border="1">
		<tr align="center">
			<td>ID</td>
			<td>Source</td>
			<td>Dosing information</td>
			<td width="50%">Summary Markdown</td>
		</tr>
		<c:forEach items="${labels}" var="label">
		<tr>
			<td>${label.id}</td>
			<td>${label.source}</td>
			<td>${label.dosing_information}</td>
			<td>${label.summary_markdown}</td>
			
			
		</tr>
		</c:forEach>
	</table>

</body>
</html>