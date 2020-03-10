<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8" />
	<!-- linking to css stylesheet -->
	<link rel="stylesheet" href="styles/IndexStyle.css">
	<!-- linking with google fonts stylesheet for Cabin font -->
	<link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-2.1.0.js"></script>
	<!-- this is the title of the webpage -->
<title>Eastern Equipment Innovation</title>
</head>
<body>
	<!-- image used for top corner of page showing a returning link to homepage -->
	<div id="logo_img">
		<p>
			<!-- image logo linked to the index home page -->
			<a href="index.jsp"><img src="img/EEILogo.JPG" alt="Go to Home Page" width="200" height="75"></a>
		</p>
	</div>
	
	<!-- header of the webpage in a h1 tag -->
	<header>
		<h1>Eastern Equipment Innovation</h1>
	</header>
	<!-- main -->
	<div id = "main">
		<!-- setting a div with the navigation bar -->
		<div id="nav_list">
			<aside>
				<h3>Navigation Bar</h3>
					<!-- content of the p tags have a class="nav_item" for navigation bar connecting to other html pages -->
					<p class="nav_item"><a href="index.jsp" class="nav_light">Home Page</a></p>
					<p class="nav_item"><a href="FormPage.jsp">Form Page</a></p>
					<p class="nav_item"><a href="products?action=displayall">Shopping Page</a></p>
					<p class="nav_item"><a href="login.jsp">Login Page</a></p>		
			</aside>
		</div>
			<!-- setting a div for the purpose of the web page -->
			<div id="purpose">
				<div id="adrian">
						<!-- image of Alvis Adrian Rigsbee -->
						<img src="img/EEIAdrian.JPG" alt="Alvis Rigsbee" style="width:325px;height:400px;">
				</div>
				<!-- opening div for the message and content -->
				<div id="message">
					<article>
						<!-- Welcoming message -->
						<h2>Welcome to Eastern Equipment Innovation:</h2>
						<!-- content of the home page -->
						<p>My name is Adrian Rigsbee. I am a sales associate for a comapany called Hunter Engineering
						and the goal of this website is to help guide customers from small businesses or corporate businesses
						in purchasing the proper mechanial and engineering parts required for a certain part of machinery.
						On this website, I will include a gallary page that will have images of the types of items
						I sell through Hunter. I will also include a PDF with greater details of the products in another page,
						as well as a page that you will enter your contact information at so that I can contact you personally
						about any business inquiries.</p>
					</article>
				</div>
			</div>
	<!-- end of main -->
	</div>
	<!-- footer made for verification links -->
	<footer>
		
	</footer>
</body>
</html>