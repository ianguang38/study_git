<!DOCTYPE html>
<html>
<head>
	<%@page import="java.util.ArrayList" %>
	<%@page import="java.util.HashMap" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
td {text-align:center;}
form {margin:50% 0}
</style>

<title>Insert title here</title>
</head>
<body>
	<%@include file="navi.jsp" %>
	
	<table border="1" class="table table-striped table-sm">

		<c:forEach items="${result}" var="row">
		<tr>
			<td>${row}</td>
	
			
		</tr>
		</c:forEach>
	</table>

</body>
</html>