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
	<style type="text/css" >
		a{ 
			text-decoration: none;
		}
		.sub1,.address,.edu,.ae,.us{
			color: cornflowerblue;/*set the color of the words*/
			font-family: "arial" ;/*set the font*/
			font-size: 11;/*set the size*/
		}
		.cv footer{
			align-items: center;
			align-self: center;
		}
		#portfolio header{
			font-family: "arial";
		}
		
		div.sub1,div.sub2{
			text-align: left;
			font-family: "arial";
			color: black;
		}
		#portfolio{
			color: black;
		}
		div.col-8 col-7-large col-12-medium{
			color: black;
			font-family: "arial";
		}
	</style>
	<body class="is-preload">
            <%@include file="navi.jsp" %>

		<!-- Home -->
			<article id="Wel" class="wrapper style1">
				<div class="container">
					<div class="row">
						<div class="col-4 col-5-large col-12-medium">
							<span class="image fit"><p><img src="search.png" alt="" /></p>
							Undergraduate<br>
							<i>Zhejiang University, University of Edinburgh Institute</i></span>
						</div>
					
						<div class="col-8 col-7-large col-12-medium">
							<header>
								<h2><strong>Welcome</strong></h2>
							</header>
							<p>Welcome to use our software 
							<p>This software was built by students from Zhejiang University, University of Edinburgh Institute, majoring in bioinformatics. I've taken a series of lessons about molecular biology, functional biology, genomics and proteomics, data science, and computer science. The main programming languages I use include python, java, R, and SQL. I'm interested in exploring the human genome and solving biological questions, and I'm also committed to broadening participation within biomedical informatics and improving the communication of science outside the academic realm.</p>
							<a href="welcome.jsp" class="button large scrolly">Log in</a>
						</div>
					</div>
					
					<div class="title">GET START</div>	
						
					<div class="col-8 col-7-large col-12-medium",>
					    <header><h2><strong>Match</strong></h2></header>
								
						<form action="match"  enctype="multipart/form-data" method="post">
							Upload<input type="file" name="annovar" required="required">
							<input type="submit" name="submit">
					    </form>
	                </div>
	                        
						
					
				</div>
			</article>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>