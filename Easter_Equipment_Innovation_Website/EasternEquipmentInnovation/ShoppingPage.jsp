<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="bean.User" %>
    <%@ page import="bean.Product" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8" />
	<!-- referncing the stylesheet that edits the page -->
	<link rel="stylesheet" href="styles/IndexStyle.css">
	<!-- referencing the google stylesheets for a certin font -->
	<link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
	<!-- title of the web page -->
	<script src="http://code.jquery.com/jquery-2.1.0.js"></script>
	<script type="text/javascript" src="script/GalleryPage.js"></script>
	<title>Eastern Equipment Innovation</title>
</head>
<body>
	<!-- div for logo image to be edited in CSS -->
	<div id="logo_img">
		<p>
			<!-- showing the image logo that is connected to the index page -->
			<a href="index.jsp"><img src="img/EEILogo.JPG" alt="Go to Home Page" width="200" height="75"></a>
		</p>
	</div>
	<!-- header tag with h1 tag saying the name-->
	<header>
		<h1>Shopping Page</h1>
	</header>
	<!-- main tag -->
	<div id="main">
		<!-- setting a div for navigation list -->
		<div id="nav_list">
			<aside>
				<h3>Navigation Bar</h3>
					<!-- content of the p tags have a class="nav_item" for navigation bar connecting to other html pages -->
					<p class="nav_item"><a href="index.jsp">Home Page</a></p>
					<p class="nav_item"><a href="FormPage.jsp">Form Page</a></p>
					<p class="nav_item"><a href="products?action=displayall"  class="nav_light">Shopping Page</a></p>
					<p class="nav_item"><a href="login.jsp">Login Page</a></p>	
					<% if(((User)request.getSession().getAttribute("user")) != null){ %>
					<%= "<p class=\"nav_item\">Welcome " %>
					<%= ((User)request.getSession().getAttribute("user")).email %>
					<%= "</p><p class=\"nav_item\"><a href=\"loginctl?action=logout\">Signout</a></p>" %>
					<%} %>		
			</aside>
		</div>
		<!-- setting a div for future content -->
		<div id="purpose">
			<!-- making article tag that will hold the gallery -->
			<article>
				<!-- h2 tag -->
				<h2>Shopping Page</h2> 
				<!-- p tag -->
				<p>Here are the products I sell through Hunter Engineering.</p>
				<!-- div for the barrier of the image -->
				<div id="imgBarrier">
					<table border="1">
						<tr>
							<th>Picture</th>
							<th>Item Name</th>
							<th>Description</th>
							<th>Price</th>
							<th>Buy</th>
							<% if (request.getSession().getAttribute("user") != null && ((User)request.getSession().getAttribute("user")).email.equals("admin@gmail.com")){ %>
							<%= "<th>Edit</th>" %>
							<%= "<th>Delete</th>" %>
							<%} %>
						
						</tr>
						<!--  for loop for table used to display products from database -->
						<% for(Product p: (ArrayList<Product>)request.getSession().getAttribute("plist")){ %>
						<%= "<tr>" %>
						<%= "<td> <a href=\"" + p.image + "\" target=\"_blank\"><img class=\"thumb\" src=\"" + p.image + "\"/></a> </td>" %>
						<%= "<td>" + p.itemName + "</td>" %>
						<%= "<td>" + p.description + "</td>" %>
						<%= "<td>" + p.price + "</td>" %>
						<%= "<td><a href=\"products?action=buy&itemname=" + p.itemName +"\">Buy</button></a></td>" %>
						<% if (request.getSession().getAttribute("user") != null && ((User)request.getSession().getAttribute("user")).email.equals("admin@gmail.com")){ %>
						<%= "<td><a href=\"products?action=update&itemname=" + p.itemName + "\">Edit Item</a></td>" %>
						<%= "<td><a href=\"products?action=destroy&itemname=" + p.itemName + "\">Delete Item</a></td>"%>
						<%} %>
						<%= "</tr>" %>					
						<%} %>
						
						<% if (request.getSession().getAttribute("user") != null && ((User)request.getSession().getAttribute("user")).email.equals("admin@gmail.com")){ %>
						<%= "<a href=\"products?action=create\">Add Item</a>" %>
						<%} %>
					
					</table>
				<!-- end of div -->
				</div>				
			</article>
		</div>	
	</div>
	<!-- footer tag -->
	<footer>
	</footer>
</body>
</html>
