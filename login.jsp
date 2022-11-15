<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" >
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="CSS/loginstyle.css">
</head>
<body>
<div class="main">
	
		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="IMAGES/signin-image.jpg" alt="sing up image">
						</figure>
						</div>

					<div class="signin-form">
						<h2 class="form-title">Login</h2>
						<form action="Login" method="post" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i class="zmdi zmdi-email"></i></label> <input
									type="email" id="username"
									 placeholder="Email" name="email" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									 placeholder="password" />
							</div>
							
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Login" />
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->

	<script src="JSCRIPT/mainlogin.js"></script>

  
</body>
</html>