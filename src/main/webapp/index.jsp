<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="static/bootstap.min.css">
</head>
<body>
	<%@include file="navi.jsp" %>
	<form action="login.jsp"  enctype="multipart/form-data" method="post">
		<input type="file" name="annovar">
		<input type="submit" name="submit">
	</form>
</body>
</html>