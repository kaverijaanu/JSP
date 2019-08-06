<%@page import="java.sql.DriverManager"%>
<%@ page import= "javax.servlet.RequestDispatcher"%>
<%@ page import="javax.servlet.ServletException " %>
<%@ page import=" javax.servlet.annotation.WebServlet" %>
<%@ page import=" javax.servlet.http.HttpServlet"%>
<%@page import=" javax.servlet.http.HttpServletRequest" %>
<%@ page import = "javax.servlet.http.HttpServletResponse"%>
<%@ page import=" javax.servlet.http.HttpSession" %>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add item</title>
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
			align:center;
		}

		.navbar a {
			float: left;
			font-size: 16px;
			color: white;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
		}

		

		.navbar a:hover, .dropdown:hover .dropbtn {
			background-color: red;
		}

		

		/* Create four equal columns that floats next to each other */
		.column {
			float: left;
			width: 50%;
			padding: 10px;
			height: 550px; /* Should be removed. Only for demonstration */
			
		}
		
	</style>
</head>
<body>
	<div class="header">
			
			<center><h2><FONT SIZE ="10" COLOR="black"><B>Mobile Store Management System</B></FONT></h2></center>
			<marquee><h4><font color="black">We Bring Good Things To Life...</font></h4></marquee>
		</div>
	<center><div class="navbar">
				
		<a href="#" onclick="openCity(event, 'message')">Message</a>
	</div>
	</center>
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
		</div>
	
		<br> <br>
		<script>
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
	
<%	String url="jdbc:mysql://127.0.0.1:3306/project";

String username="root";
String passwrd="jasmine1";
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn= DriverManager.getConnection(url,username,passwrd);

	try{

	String query = " INSERT into item(itemno,companyname,modelname, description, color, date, price, quantity) VALUES ( ?, ?, ?, ?, ?, ?, ?)";

	PreparedStatement ps = conn.prepareStatement(query);
	
		String ino=request.getParameter("itemno");
			String cmpyname=request.getParameter("companyname");
			String mname=request.getParameter("modelname");
			String description=request.getParameter("description");
			String color=request.getParameter("color");
			String date=request.getParameter("date");
			String price=request.getParameter("price");
			String quantity=request.getParameter("quantity");
			
			
			ps.setString(1,ino);
			ps.setString(2,cmpyname);
			ps.setString(3,mname);
			ps.setString(4,description);
			ps.setString(5,color);
			ps.setString(6,date);
			ps.setString(7,price);
			ps.setString(8,quantity);
			
			 ps.executeUpdate();
			 %>
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%
		out.println("Added");
			%>
			<br>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="mainform.jsp">Back</a>
			<% 

	}
	catch(SQLException s)
	{
		 %>
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%
		out.println("Not Added");
		%>
<br>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="mainform.jsp">Back</a>
			<% 
		s.printStackTrace();
	}
		
		
		conn.close();
}
catch(Exception e){
	 %>
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<%
out.println("Not Connected to the MySQL Data Base");
%>
<br>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="mainform.jsp">Back</a>
			<% 
e.printStackTrace();
}
%>
</body>
</html>