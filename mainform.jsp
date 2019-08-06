function myFunction()

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Form</title>
<style>
		* {
			box-sizing: border-box;
		}
.header {
				background-color: #f1f1f1;
		        /* background-image:url("https://i.pinimg.com/originals/5f/32/29/5f32290230af82493c894dd55e08dcf5.jpg");  */
/*	background-image:url("https://yayasandmdi.files.wordpress.com/2016/01/abstract-design-wallpaper-colorful-background-wallpapers-website.jpg"); */
			/*background-image:url("http://1.bp.blogspot.com/-o7UZhfzqiR4/Ti61J5dkCfI/AAAAAAAAIZQ/FNTdwgSDXps/s1600/CBAW.co.cc+Colourful+Art+Wallpapers+%25287%2529.jpg");  */
/*  background-image:url("https://www.androidcentral.com/sites/androidcentral.com/files/styles/w550h500/public/wallpapers/pure-black-wallpaper-159.jpg?itok=F7s-qzpr");  */
	background-image:url("http://www.raven-soft.co.uk/images/background2.jpg");
		
				padding: 20px;
				text-align: center;
			}
		body {
			margin: 0;
		}
		.navbar {
			overflow: hidden;
			background-color: #333;
			font-family: Arial;
		}

		.navbar a {
			float: left;
			font-size: 16px;
			color: white;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
		}

		.dropdown {
			float: left;
			overflow: hidden;
		}

		.dropdown .dropbtn {
			font-size: 16px;    
			border: none;
			outline: none;
			color: white;
			padding: 14px 16px;
			background-color: inherit;
		}

		.navbar a:hover, .dropdown:hover .dropbtn {
			background-color: red;
		}

		.dropdown-content {
			display: none;
			position: absolute;
			background-color: #f9f9f9;
			min-width: 160px;
			box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
			z-index: 1;
		}

		.dropdown-content a {
			float: none;
			color: black;
			padding: 12px 16px;
			text-decoration: none;
			display: block;
			text-align: left;
		}

		.dropdown-content a:hover {
			background-color: #ddd;
		}

		.dropdown:hover .dropdown-content {
			display: block;
		}
.button
				{
						background-color: #004d4d;
						border: none;
						color: white;
						padding: 10px 32px;
						text-align: center;
						align:center;
						font-size: 12px;
						margin: 3px 2px;
						cursor: pointer;
				}
		/* Create four equal columns that floats next to each other */
		.column {
			float: left;
			width: 50%;
			padding: 10px;
			height: 600px; /* Should be removed. Only for demonstration */
		}
		
	</style>
</head>
<body>
	<div class="header">
			
		<center>	<h2><FONT SIZE ="10" COLOR="black"><B>Mobile Store Management System</B></FONT></h2></center>
			<marquee><h4><font color="black">We Bring Good Things To Life...</font></h4></marquee>
		</div>
	
	<div class="navbar">
			 <div class="dropdown">
				<button class="dropbtn">Item
				<i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
				  <a href="#" onclick="openCity(event, 'additem')">Add Item</a>
				  <a href="#" onclick="openCity(event, 'deleteitem')">Delete Item</a>
				  <a href="#" onclick="openCity(event, 'updateitem')">Update Item</a>

				</div>
		</div> 
				
				
				  <a href="#" onclick="openCity(event, 'sales')">Sales</a>
		<a href="#" onclick="openCity(event, 'distributor')">Distributor</a>
		<a href="#" onclick="openCity(event, 'employee')">Employee</a>
		<a href="#" onclick="openCity(event, 'customer')">Customer</a>
		<a href="#" onclick="openCity(event, 'dailyexpense')">DailyExpense</a>

		<div class="dropdown">
				<button class="dropbtn">Reports
				<i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
				  <a href="itemstockreport.jsp" onclick="openCity(event, 'stockreport')">Stock Report</a>
				  <a href="salesreport.jsp" onclick="openCity(event, 'salesreport')">Sales Report</a>
				  <a href="distributorreport.jsp" onclick="openCity(event, 'distributorreport')">Distributor Report</a>

				  <a href="customerreport.jsp" onclick="openCity(event, 'customerreport')">Customer Report</a>
				  <a href="employeereport.jsp" onclick="openCity(event, 'employeereport')">Employee Report</a>
				</div>
		</div> 
		<a href="#" onclick="openCity(event, 'account')">Account</a>
	</div>
	
	

	<div class="row">
		<div class="column" style="background-color:#aaa;">
<br>
		
			<div class="slideshow-container">
<div class="mySlides fade">
				<img src="http://www.consumer-voice.org/images/mobile4.gif" style="width:100%" border="2px">
				</div>
				<div class="mySlides fade">
				<img src="https://www.legalloop.co.uk/wp-content/uploads/2017/10/Phones-1.png"  style="width:100%" border="2px">
				</div>
				<div class="mySlides fade">
				<img src="https://beta.theglobeandmail.com/legacy/static/technology/reviews/giftguide2013/phones-Image-2.jpg?token=1497898855" style="width:100%" border="2px">
				</div>
			 <div class="mySlides fade">
				<img src="http://www.pixuffle.net/wp-content/uploads/2017/05/mobile.jpg" style="width:100%" border="2px">
				</div>
			</div>
			<br>

			<div style="text-align:center">
			<span class="dot"></span> 
			<span class="dot"></span> 
			<span class="dot"></span> 
             <span class="dot"></span> 
			</div>

		</div>
	
		<div class="column" style="background-color:#aaa;">
			<form action="additem.jsp" method="post">
			<div id="additem" class="tabcontent">
			<fieldset>
			<legend>Add Item</legend>
			<center><img src="https://images.cdn4.stockunlimited.net/clipart/new-item-tag-in-a-shopping-cart_1249266.jpg" width="200" height="200" border="2px" ><br><br>
			<table>
				<tr> 
					<td><label><b>Item No</b></label></td>
					<td><input type="number" class="input" name="itemno"></td>
				</tr>
				<tr> 
					<td><label><b>Company Name</b></label></td>
					<td><input type="text"  class="input" name="companyname"></td>
				</tr>
				<tr> 
					<td><label><b>Model Name</b></label></td>
					<td><input type="text" class="input" name="modelname"></td>

				</tr>
				<tr> 
					<td><label><b>Description</b></label></td>
					<td><input type="text" class="input" name="description"></td>

				</tr>
				<tr> 
					<td><label><b>Color</b></label></td>
					<td><input type="text" class="input" name="color"></td>
				</tr>
				<tr> 
					<td><label><b>Date</b></label></td>
					<td><input type="text" placeholder="yyyy-mm-dd" class="input" name="date"></td>
				</tr>

				<tr> 
					<td><label><b>Price</b></label></td>
					<td><input type="number" class="input" name="price"></td>
				</tr>
				<tr> 
					<td><label><b>Quantity</b></label></td>
					<td><input type="number" class="input" name="quantity"></td>
			
				</tr>
				<tr>
        <td><input type="submit" class="button" value="Add"></td>
				</tr>
			
				</table>
			</center>
			</fieldset>
			</div>
			</form>
			<script>
				document.getElementById("additem").style.display="none";
			</script>
			
			<form action="deleteitem.jsp" method="post">
			<div id="deleteitem" class="tabcontent">
			<fieldset>
			<legend><b>Delete Item</b></legend>
			<center><img src="https://premium.wpmudev.org/blog/wp-content/uploads/2012/07/delete-big.jpg" width="200" height="200" border="2px" ><br><br>
			<table>
				<tr> 
					<td><label><b>Item No</b></label></td>
					<td><input type="number" class="input" name="itemno"></td>
				</tr>
				<tr>
<td><input type="submit" class="button" value="Delete"></td>
				</tr>
			
				</table>
			</center>
			</fieldset>
			</div>
			</form>
			<script>
				document.getElementById("deleteitem").style.display="none";
			</script>
			
			
			<form action="updateitem.jsp" method="post">
			<div id="updateitem" class="tabcontent">
			<fieldset>
			<legend>Update Item</legend>
			<center><img src="https://martinabex.files.wordpress.com/2014/10/update_2.jpg?w=300&h=266" width="200" height="200" border="2px" ><br><br>
			<table>
				<tr> 
					<td><label><b>Item No</b></label></td>
					<td><input type="number" class="input" name="itemno"></td>
				</tr>
				<tr> 
					<td><label><b>Company Name</b></label></td>
					<td><input type="text"  class="input" name="companyname"></td>
				</tr>
				<tr> 
					<td><label><b>Model Name</b></label></td>
					<td><input type="text" class="input" name="modelname"></td>

				</tr>
				<tr> 
					<td><label><b>Description</b></label></td>
					<td><input type="text" class="input" name="description"></td>

				</tr>
				<tr> 
					<td><label><b>Color</b></label></td>
					<td><input type="text" class="input" name="color"></td>
				</tr>
				<tr> 
					<td><label><b>Date</b></label></td>
					<td><input type="text" class="input" name="date"></td>
				</tr>

				<tr> 
					<td><label><b>Price</b></label></td>
					<td><input type="number" class="input" name="price"></td>
				</tr>
				<tr> 
					<td><label><b>Quantity</b></label></td>
					<td><input type="number" class="input" name="quantity"></td>
			
				</tr>
				<tr>
 <td><input type="submit" class="button" value="Update"></td>
				</tr>
			
				</table>
			</center>
			</fieldset>
			</div>
			</form>
			<script>
				document.getElementById("updateitem").style.display="none";
			</script>
			
			
			<!-- <form action="bill.jsp" method="post">-->
			<form action="saleitem.jsp" method="post">
			
			<div id="sales" class="tabcontent">
			<fieldset>

			<legend>Sales</legend>
			<center><img src="http://hiringsimulation.com/english/wp-content/uploads/2014/05/sales.png" width="200" height="200" border="2px" ><br><br>
			<table>
				<tr>
					<td><label><b>Date</b></label></td>
					<td><input type="text" class="input" name="date"></td>
				</tr>
				<tr> 
					<td><label><b>Bill No</b></label></td>

					<td><input type="number" class="input" name="billno"></td>
				</tr>
				<tr> 
					<td><label><b>Customer Name</b></label></td>
					<td><input type="text" class="input" name="customername"></td>
				</tr>
				<tr> 
					<td><label><b>Address</b></label></td>
					<td><input type="text" class="input" name="address"></td>

				</tr>
				<tr> 
					<td><label><b>Phone Number</b></label></td>
					<td><input type="text" class="input" name="phno"></td>
				</tr>
				<tr> 
					<td><label><b>Company Name</b></label></td>
					<td><input type="text" class="input" name="cname"></td>
				</tr>

				<tr> 
					<td><label><b>Model Name</b></label></td>
					<td><input type="text" class="input"  name="modelname"></td>
				</tr>
				<tr> 
					<td><label><b>Price</b></label></td>
					<td><input type="number" class="input" name="price"></td>
				</tr>
				<tr> 
					<td><label><b>Quantity</b></label></td>

					<td><input type="number" class="input"  name="quantity"></td>
				</tr>
				<tr> 
					<td><label><b>Total Amount</b></label></td>
					<td><input type="number"  class="input"  name="totalamount"></td>
				</tr>
				<tr>
				<td><center><input type="submit" class="button" value="Add"></center></td>
				<!-- <td><center><input type="submit" class="button" value="Bill"></center></td> -->
			
				</tr>
			</table>
			</center>
			</fieldset>
			</div>
					</form>
			
          			
            <script>
				document.getElementById("sales").style.display="none";
			</script>
						<form action="distributor.jsp" method="post">
			<div id="distributor" class="tabcontent">
			<fieldset>
			<legend>Distributor</legend>

			<center><img src="http://www.optimaldata.co.uk/wp-content/uploads/2015/02/17148433_ml-300x224.jpg" width="200" height="200" border="2px" /><br><br>
			<table>
				<tr>
					<td><label><b>Distributor ID</b></label></td>
					<td><input type="number"   class="input"  name="did"></td>
				</tr>
				<tr>
					<td><label><b>Name</b></label></td>

					<td><input type="text"   class="input"  name="dname"></td>
				</tr>
				<tr>
					<td><label><b>Sex</b></label></td>
					<td><input type="text"   class="input" name="dsex"></td>
				</tr>
				<tr>
					<td><label><b>Company Name</b></label></td>

					<td><input type="text"  class="input" name="cname"></td>
				</tr>
				<tr>
					<td><label><b>Model Name</b></label></td>
					<td><input type="text"  class="input"  name="mname"></td>
				</tr>
				<tr>
					<td><label><b>Phone Number</b></label></td>

					<td><input type="text"  class="input" name="dphno"></td>
				</tr>
				<tr>
					<td><label><b>Price</b></label></td>
					<td><input type="number"   class="input"  name="dprice"></td>
				</tr>
				
				<tr>
					<td><label><b>Amount Paid</b></label></td>
					<td><input type="number"  class="input"  name="amount"></td>
				</tr>
				<tr>
					<td><label><b>Balance Amount</b></label></td>
					<td><input type="number"  class="input"  name="bamount"></td>
				</tr>
				<tr>
					<td><label><b>Quantity</b></label></td>

					<td><input type="number"  class="input"  name="dquantity"></td>
				</tr>
				<tr>
					<td><label><b>Date</b></label></td>

					<td><input type="text"  class="input" name="ddate"></td>
				</tr>
				<tr>
						<td><input type="submit" class="button" value="Add"></td>
				</tr>
			</table>
			</center>
			</fieldset>

			</div>
			</form>
                        <script>
				document.getElementById("distributor").style.display="none";
			</script>
			
			<form action="employee.jsp" method="post">
			<div id="employee" class="tabcontent">
			<fieldset>
			<legend>Employee</legend>
			<center><img src="http://www.newdesignfile.com/postpic/2014/11/employee-benefits-clip-art-icon_246752.png" width="200" height="200" border="2px" ><br><br>
			<table>
				<tr> 
					<td><label><b>Employee Id</b></label></td>

					<td><input type="number" class="input" name="eid"></td>
				</tr>
				<tr> 
					<td><label><b>First Name</b></label></td>
					<td><input type="text" class="input" name="fname"></td>
				</tr>
				<tr> 
					<td><label><b>Last Name</b></label></td>
					<td><input type="text" class="input" name="lname"></td>

				</tr>
				<tr> 
					<td><label><b>Sex</b></label></td>
					<td><input type="text" class="input"  name="esex"></td>
				</tr>
				<tr> 
					<td><label><b>Date Of Birth</b></label></td>
					<td><input type="text" class="input" name="dob"></td>
				</tr>

				<tr> 
					<td><label><b>Address</b></label></td>
					<td><input type="text" class="input" name="eaddress"></td>
				</tr>
				<tr> 
					<td><label><b>Phone Number</b></label></td>
					<td><input type="text" class="input" name="ephno"></td>
				</tr>
				<tr> 
					<td><label><b>Salary</b></label></td>

					<td><input type="number" class="input" name="esalary"></td>
				</tr>
				<tr> 
					<td><label><b>Date Of Joining</b></label></td>
					<td><input type="text" class="input"  name="edoj"></td>
				</tr>
				<tr> 
					<td><label><b>Status</b></label></td>
					<td><input type="text"  class="input" name="status"></td>

				</tr>
				<tr>
		<td><input type="submit" class="button" value="Add"></td>

				</tr>
				
			</table>
			</center>
			</fieldset>
			</div>
			</form>
                        <script>
				document.getElementById("employee").style.display="none";
			</script>
			
			<form action="customer.jsp" method="post">
			<div id="customer" class="tabcontent">
			<fieldset>
			<legend>Customer</legend>
			<center><img src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-5/256/Couple-icon.png" width="200" height="200" border="2px" ><br><br>
			<table>
				<tr> 
					<td><label><b>Customer Id</b></label></td>
					<td><input type="number" class="input" name="cid"></td>

				</tr>
				<tr> 
					<td><label><b>Name</b></label></td>
					<td><input type="text" class="input" name="name"></td>
				</tr>

				<tr> 
					<td><label><b>Sex</b></label></td>
					<td><input type="text" class="input" name="csex"></td>
				</tr>
				<tr> 
					<td><label><b>Address</b></label></td>
					<td><input type="text" class="input" name="caddress"></td>
				</tr>
				<tr> 
					<td><label><b>Phone Number</b></label></td>
					<td><input type="text" class="input" name="cphno"></td>

				</tr>
				<tr> 
					<td><label><b>Company Name</b></label></td>
					<td><input type="text" class="input" name="cname"></td>

				</tr>
				<tr> 
					<td><label><b>Model Name</b></label></td>
					<td><input type="text" class="input" name="mname"></td>

				</tr>
				<tr> 
					<td><label><b>Price</b></label></td>
					<td><input type="number" class="input" name="price"></td>

				</tr>
				<tr> 
					<td><label><b>Quantity</b></label></td>
					<td><input type="text" class="input" name="qty"></td>

				</tr>
				<tr> 
					<td><label><b>Amount Paid</b></label></td>

					<td><input type="number"  class="input" name="amtpaid"></td>
				</tr>
				<tr> 
					<td><label><b>Balance Amount</b></label></td>
					<td><input type="number" class="input" name="balance"></td>
				</tr>
				
				<tr>
						<td><input type="submit" class="button" value="Add"></td>
				</tr>
			</table>
			</center>
			</fieldset>
			</div>
			</form>
                         <script>
				document.getElementById("customer").style.display="none";
			</script>
			
			<form action="dailyexpense.jsp" method="post">
			<div id="dailyexpense" class="tabcontent">
			<fieldset>
			<legend>DailyExpense</legend>
			<center><img src="https://lh4.ggpht.com/hsHgu_mz1s_4BK9h3YqYuKWVZC1mxbVQshsSctIt4TO-3wuak37IlO9_3Vfw6by5F56X=w300"  border="2px" width="200" height="200"><br><br>
			<table>
				<tr> 
					<td><label><b>Date</b></label></td>
					<td><input type="text" class="input" name="exdate"></td>

				</tr>
				<tr> 
					<td><label><b>Amount</b></label></td>
					<td><input type="number" class="input" name="amount"></td>
				</tr>
				<tr> 
					<td><label><b>Details</b></label></td>
					<td><input type="text" class="input" name="details"></td>
				</tr>
				<tr>
					<td><input type="submit" class="button" value="Add"></td>
				</tr>

			</table>
			</center>
			</fieldset>
			</div>
			</form>
                         <script>
				document.getElementById("dailyexpense").style.display="none";
			</script>			
			
			<form action="account.jsp" method="post">
			<div id="account" class="tabcontent">
			<fieldset>
			<legend>Account</legend>
			<center><img src="https://www.wcatyweb.org/library/images/PR3C8J5.png" width="200" height="200" border="2px" ><br><br>

			<table>
				<tr> 
					<td><label><b>User Name</b></label></td>
					<td><input type="text" class="input" name="uname"></td>
				</tr>
				<tr> 
					<td><label><b>Old Password</b></label></td>
					<td><input type="text" class="input" name="opasswd"></td>
				</tr>
				<tr> 
					<td><label><b>New Password</b></label></td>
					<td><input type="text" class="input"  name="npasswd"></td>
				</tr>

				<tr>
					
					<td><input type="submit" class="button" value="OK"></td>
				</tr>
			</table>
			</center>
			</fieldset>
			</div>
			</form>
			<script>
				document.getElementById("account").style.display="none";
			</script>													
		</div>

	</div>
	<script>
		function openCity(evt, cityName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(" active", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " active";
		}
		var slideIndex = 0;
		showSlides();
		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
			   slides[i].style.display = "none";  
			}
			slideIndex++;
			if (slideIndex > slides.length) {slideIndex = 1}    
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex-1].style.display = "block";  
			dots[slideIndex-1].className += " active";
			setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>
</body>
</html>