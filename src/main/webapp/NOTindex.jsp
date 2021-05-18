<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="bbootstap.min.css">
</head>
<body>
	<%@include file="navi.jsp" %>
	

	<div class="z-index-1">
	<div class="search-form-container d-flex align-items-center">
		<form action="match"  enctype="multipart/form-data" method="post">
		<input type="file" name="annovar" required="required">
		<input type="submit" name="submit">
		</form>
	
	</div>
	</div>
	
	
</body>
</html>