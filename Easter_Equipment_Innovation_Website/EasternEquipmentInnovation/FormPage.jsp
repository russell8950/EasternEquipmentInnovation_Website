<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8" />
	<!-- linking the css stylesheet to the html file -->
	<link rel="stylesheet" href="styles/IndexStyle.css">
	<!-- import the javascript -->
	<!-- linking with google fonts stylesheet for cabin font style -->
	<link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
	<!-- title of the page -->
	<title>Form Page</title>
</head>
<!-- body tag -->
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
					<p class="nav_item"><a href="FormPage.jsp" class="nav_light">Form Page</a></p>
					<p class="nav_item"><a href="products?action=displayall">Shopping Page</a></p>
					<p class="nav_item"><a href="login.jsp">Login Page</a></p>			
			</aside>
		</div>
		<!-- setting a div purpose that will hold our future content -->
		<div id="purpose">
			<article>
				<h2>Form</h2>
				<!-- creating a form with a id and class -->
				<form id="Contact" class="forms" action="emailthanks.jsp">
					<!-- creating a label with a class -->
					<label class="form_title">Contact Us by Giving us your Contact Info</label><br>
					<!-- prompt the user to enter their name -->
					<label>Enter your Name:</label>
					<!-- setting a text entry with its own id -->
					<br><input id="user_name" type="text" name="Information" placeholder="Enter your name"><br>
					<!-- prompt the the user to enter their telephone number -->
					<label>Enter your Phone Number:</label>
					<!-- setting a text entry with its own id and calling a function to maker sure that the number is following the style of submission -->
					<br><input id="telephone" type="text" name="PhoneNumber" placeholder="xxx-xxx-xxxx"><br>
					<!-- prompt the user to enter their email -->
					<label>Enter your Email:</label>
					<!-- setting a text entry with its own id and type being email so that the entry can autoverify -->
					<br><input id="user_email" type="email" name="Email" placeholder="Enter your email" required><br>
					<!-- submit button calling a function to check if the function is working -->
					<br><input id="submit_contact" type="submit" value="Submit" name="submit"><br>
				</form>
			</article>
		</div>	
	</div>
	<!-- footer used for verifiying css and html -->
	<footer>
	</footer>
</body>
</html>
