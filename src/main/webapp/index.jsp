<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="static/bootstap.min.css">
</head>
<body>
	<%@include file="navi.jsp" %>
	<form action="match"  enctype="multipart/form-data" method="post">
		<input type="file" name="annovar">
		<input type="submit" name="submit">
		<input type="hidden" name="MAX_FILE_SIZE" value="999999">
	</form>
</body>
</html>