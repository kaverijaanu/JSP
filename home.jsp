
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
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

/* Create four equal columns that floats next to each other */
.column {
    float: left;
    width: 50%;
    padding: 10px;
    height: 800px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
div.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
div.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
div.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
div.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}

</style>
</head>
<body bgcolor="#bbb">

<div class="header">
			
		<center>	<h2><FONT SIZE ="10" COLOR="black"><B>Mobile Store Management System</B></FONT></h2></center>
			<marquee><h4><font color="black">We Bring Good Things To Life...</font></h4></marquee>
		</div>

<div class="row">
	<div class="column" style="background-color:#aaa;">
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
    
	<div class="tab">
  		<button class="tablinks" onclick="openCity(event, 'Login')">Login</button>
  		<button class="tablinks" onclick="openCity(event, 'Register')">Register</button>
    		<button class="tablinks" onclick="openCity(event, 'Customer')">Customer</button>
  
	</div>
	
<form action="login.jsp" method="post">
	<div id="Login" class="tabcontent">
		<fieldset>
  		<legend>Login</legend>
		<center><img src="https://www.incantovallarta.com/wp-content/uploads/2016/09/login-icon-png-27.png" width="200" height="200" border="2px" ><br><br>
		<table>
		<tr><td><label><b>User name</b></label></td>
    		<td><input type="text" class="input" name="uname" required></td></tr>

 <tr><td>   		<label><b>Password</b></label></td>
    		<td><input type="password" class="input" name="psw" required ></td></tr>
        
    		<tr><td><input type="submit" class="button" value="Login"></td></tr>
    		</table>
		</center>
		</fieldset>
	</div>
</form>


<form action="register.jsp" method="post">
	<div id="Register" class="tabcontent">
  		<fieldset>
		<legend>Register</legend>
		<center>
		<img src="http://www.nationalwillsafe.co.uk/wp-content/uploads/2015/03/Register.jpg" width="200" height="200" border="2px" ><br><br>
		<table>
<tr><td><label><b>Shop License Number </b></label></td>
		<td><input type="number" class="input" name="slno" required ></td></tr>
		<tr><td><label><b>Shop Name </b></label></td>
		<td><input type="text" class="input" name="shopname" required></td></tr>
		<tr><td><label><b>User Name </b></label></td>
		<td><input type="text" class="input" name="username" required ></td></tr>
		<tr><td><label><b>Password </b></label></td>
		<td><input type="password" class="input" name="password" required ></td></tr>
		<tr><td><input type="submit" class="button" value="Register"></td></tr></table></center>
		</fieldset>
	</div>
</form>

<form action="customerview.jsp" method="post">
	<div id="Customer" class="tabcontent">
  		<fieldset>
  				<legend>Customer</legend>
  		
		<center>
		<a href="customerservice.jsp"><img src="https://www.swissbusinessacademy.com/wp-content/uploads/2017/03/customer-service.jpg" width="200" height="200" border="2px" ></a>
		
		</center>
		</fieldset>
	</div>
</form>
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