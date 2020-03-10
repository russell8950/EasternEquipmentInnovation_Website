<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8" />
	<!-- linking the css stylesheet to the html file -->
	<link rel="stylesheet" href="styles/IndexStyle.css">
	<!-- linking with google fonts stylesheet for cabin font style -->
	<link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
	<!-- title of the page -->
<title>Sign Up Page</title>
</head>
<body>
<body>
	<!-- setting a div id for the logo image linking to index page -->
	<div id="logo_img">
		<p>
			<!-- adding the logo image that is linking to index page -->
			<a href="index.jsp"><img src="img/EEILogo.JPG" alt="Go to Home Page" width="200" height="75"></a>
		</p>
	</div>
	<!-- header of the page in a h1 tag -->
	<header>
		<h1>Form Page</h1>
	</header>
	<!-- beginning of main -->
	<div id="main">
		<!-- setting a div for the navigation list -->
		<div id="nav_list">
			<aside>
				<h3>Navigation Bar</h3>
					<!-- content of the p tags have a class="nav_item" for navigation bar connecting to other html pages -->
					<p class="nav_item"><a href="index.jsp">Home Page</a></p>
					<p class="nav_item"><a href="FormPage.jsp">Form Page</a></p>
					<p class="nav_item"><a href="products?action=displayall">Shopping Page</a></p>
					<p class="nav_item"><a href="login.jsp" class="nav_light">Login Page</a></p>			
			</aside>
		</div>

	<div id="purpose">
	<form id="Contact" class="forms" action="loginctl" method="post">
		<input type="hidden" name="action" value="signup"><br>
		<label>Sign Up</label>
		<br><br>
		<label>Enter your Email</label>
		<br><input id="user_email" type="email" name="email" placeholder="Enter your email" required><br>
		<label>Enter your Password</label>
		<br><input id="password" type="password" name="password" placeholder="Enter your password" required><br>
		<br><input id="submit_contact" type="submit" value="Submit" name="submit"><br>
	</form>
	</div>
	</div>
</body>
</html>