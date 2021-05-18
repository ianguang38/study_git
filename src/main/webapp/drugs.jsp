<!DOCTYPE html>
<html>
<head>
	<%@page import="java.util.ArrayList" %>
	<%@page import="java.util.HashMap" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/main.css"/>
	
<style type="text/css">
td {text-align:center;}
</style>

<title>DRUGS</title>
</head>
<body>
    <%if(request.getAttribute("drugs")==null){
    	request.getRequestDispatcher("/drugs").forward(request,response);} 
    %>
    
	<%@include file="navi.jsp" %>
	<table border="1">
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>Drug URL</td>
			<td>Biomarker</td>
		</tr>
		
		<c:forEach items="${drugs}" var="drug">
		<tr>
			<td>${drug.id}</td>
			<td>${drug.name}</td>
			<td>>${drug.drug_url}</td>
			<td>${drug.biomarker}</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>