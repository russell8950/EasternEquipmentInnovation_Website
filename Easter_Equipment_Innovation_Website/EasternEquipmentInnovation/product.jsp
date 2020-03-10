<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="bean.Product" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8" />
	<!-- referncing the stylesheet that edits the page -->
	<link rel="stylesheet" href="styles/IndexStyle.css">
	<!-- referencing the google stylesheets for a certin font -->
	<link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
	<title>Eastern Equipment Innovation</title>
</head>
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
	<!-- form for creating products -->
	<% Product p = (Product)request.getSession().getAttribute("prod");  %>
	<div id="purpose">
	<form id="Contact" class="forms" action="products" method="post">
		<input type="hidden" name="action" value="insert"><br>
		<br><input name="itemName" value="<%= p.getItemName() %>" type="text" name="Information" placeholder="Enter your product name"><br>
		<br><input name="description" value="<%= p.getDescription() %>" type="text" name="Information" placeholder="Enter your product description"><br>
		<br><input name="price" value="<%= p.getPrice() %>" type="text" name="Information" placeholder="Enter your product price"><br>
		<br><input name="image" value="<%= p.getImage() %>" type="text" name="Information" placeholder="Enter your image link"><br>
		<br><input id="submit" type="submit" value="Submit" name="submit"><br>
	</form>
	</div>
	</div>
</body>
</html>