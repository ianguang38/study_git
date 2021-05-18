<!DOCTYPE html>
<html>
<head>
	<%@page import="java.util.ArrayList" %>
	<%@page import="java.util.HashMap" %>
	<%@page import="com.example.servlet.JDBC" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
td {text-align:center;}
form {margin:50% 0}
</style>

<title>suggested medicine</title>
</head>
<body>
	<%@include file="navi.jsp" %>

	<table border="1" class="table table-striped table-sm">
        <tr align="center">
			<td>ID</td>
			<td>Source</td>
			<td>Dosing information</td>
			<td width="50%">Summary Markdown</td>
		</tr>
		<c:forEach items="${result}" var="row">
		<tr>
			<td>${row.id}</td>
			<td>${row.source}</td>
			<td >${row.dosing_information}</td>
			<td>${row.summary_markdown}</td>
	
			
		</tr>
		</c:forEach>
	</table>

</body>
</html>