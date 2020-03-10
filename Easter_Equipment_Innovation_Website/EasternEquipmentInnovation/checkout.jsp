<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="bean.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- linking the css stylesheet to the html file -->
	<link rel="stylesheet" href="styles/IndexStyle.css">
	<!-- linking with google fonts stylesheet for cabin font style -->
	<link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
<title>Checkout</title>
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
		<h1>Checkout Page</h1>
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
		<% Product p = (Product)request.getSession().getAttribute("prod"); %>
		<p><%= p.getItemName() %></p>
		<p><%= p.getPrice() %></p>
	<form id="Contact" class="forms" action="thankyou.jsp" method="post">
		<input type="hidden" name="action" value="login"><br>
		<label>Checkout Information</label>
		<br><br>
		<label>Enter your Credit Card Number</label>
		<br><input id="cc" type="text" name="cc" placeholder="Enter your Credit Card Number" required><br>
		<label>Enter your Expiration Date</label>
		<div class="form-group" id="expiration-date">
                <label>Expiration Date</label>
                <select>
                    <option value="01">January</option>
                    <option value="02">February </option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">May</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                <select>
                    <option value="18"> 2018</option>
                    <option value="19"> 2019</option>
                    <option value="20"> 2020</option>
                    <option value="21"> 2021</option>
                    <option value="22"> 2022</option>
                    <option value="23"> 2023</option>
                </select>
            </div>		

			<label>Enter your CVV Number</label>
			<br><input id="cvv" type="text" name="cvv" placeholder="Enter your CVV Number" required><br>


		<br><input id="submit_contact" type="submit" value="Submit" name="submit"><br>
	</form>
	</div>
	</div>

</body>
</html>