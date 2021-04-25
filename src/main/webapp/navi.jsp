<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<% String path=request.getContextPath(); %>


<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="<%=path%>">home</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="<%=path%>/drugs">Drugs</a></li>
            <li class="active"><a href="<%=path%>/druglabels">Drug labels</a></li>
            <li class="active"><a href="<%=path%>/guideline">Dosing Guideline</a></li>
        </ul>
    </div>
    </div>
</nav>
</body>
</html> 