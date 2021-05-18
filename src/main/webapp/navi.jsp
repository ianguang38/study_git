<!DOCTYPE HTML>
<!--
	Miniport by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Precision Medicine Seacrch Webpage</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/main.css"/>
	</head>
	<body>
		<!-- Nav -->
		<nav id="nav">
			<ul class="container">
			    <% String path=request.getContextPath();%>
				<li><a href="<%=path%>">Welcome</a></li>
				<li><a href="<%=path%>/drugs">Drug</a></li>
				<li><a href="<%=path%>/druglabels">Label</a><li>
				<li><a href="<%=path%>/guideline">Dosage</a></li>
				<li><a href="<%=path%>/result">Result</a></li>
				<li class="ml-auto"><%=(String)request.getSession().getAttribute("username")%></li>
			</ul>
		</nav>
	</body>

