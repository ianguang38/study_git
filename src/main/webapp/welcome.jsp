<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Login</title>
		<title>Login</title>  
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/welcomepage.css"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/main.css"/>
        <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
	</head>
    <body>
		<div id="login-box">
		<h1>Login</h1>
	    <form name="this" action="login" method="POST">
		
			<div class="item">
			   <i class="fa fa-github-alt" style="font-size:24px"></i>
			   <input type="text" placeholder="Username" name="username">		   
			</div>
			<div class="item">
			   <i class="fa fa-search" style="font-size:24px"></i>
			   <input type="password" placeholder="Passwords" name="password">		   
			</div>
			<input type="submit" name="action" value="login">
            <input type="submit" name="action" value="register">

		</form>
		</div>
	</body>
</html>
