<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<html lang="en">
	<head>
	
		<title>Special Offers</title>
		<meta charset="utf-8">
		<meta name="format-detection" content="telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/jquery-ui.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
	
        <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
        <script type="text/javascript">
		
		$(document).ready(function(){
			$().UItoTop({ easingType: 'easeOutQuart' });
			});

		$('.shitanshu').datetimepicker({
			
             format: 'mm/dd/yyyy hh:ii',
		      autoclose: 1,
		      pickerPosition: 'bottom-left',
		      startDate: new Date(),
		      useCurrent: false,
		      clearBtn: true,
		      //minuteStep: 15,
       });
		
		
		</script>
		<!--[if lt IE 8]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
				<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
			</a>
		</div>
		<![endif]-->
		<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<link rel="stylesheet" media="screen" href="css/ie.css">
		<![endif]-->
	</head>
	<body>
	 <form action="${pageContext.request.contextPath}/bookTicket" method="post">
<!--==============================header=================================-->
		<header>
			<div class="container_12">
				<div class="grid_12">
					<div class="menu_block">
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
								<li><a href="index.html">ABOUT</a></li>
								<li><a href="index-1.html">HOT TOURS</a></li>
								<li class="current"><a href="index-2.html">SPECIAL OFFERS</a></li>
								<li><a href="index-3.html">BLOG</a></li>
								<li><a href="index-4.html">CONTACTS</a></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
				</div>
				<div class="grid_12">
					<h1>
						<a href="index.html">
							<img src="images/logo.png" alt="Your Happy Family">
						</a>
					</h1>
				</div>
			</div>
		</header>
		<!--================================ book-ticket ============== -->
		<div class="grid_3 prefix_1">
					<h5>CHOOse the country</h5>
					<ul class="list">
					<li><a href="#">INDIA</a></li>
						<li><a href="#">Albania</a></li>
						<li><a href="#">American Samoa</a></li>
						<li><a href="#">Antarctica</a></li>
						<li><a href="#">Argentina</a></li>
						<li><a href="#">Armenia</a></li>
						<li><a href="#">Australia</a></li>
						<li><a href="#">Austria</a></li>
						<li><a href="#">Bahrain</a></li>
						<li><a href="#">Barbados</a></li>
						<li><a href="#">Belgium</a></li>
						<li><a href="#">Belize</a></li>
						<li><a href="#">Bermudas</a></li>
					</ul>
					<a href="#" class="link1">VIEW A<span class="low">ll</span></a>
				</div>
		
            <div class="divTable">
           <!--  <div class="grid_5 prefix_1">
					<h3>Welcome</h3>
					<img src="images/luggage_passport.jpg" alt="" class="img_inner fleft">
				</div> -->
            <h2 font-size="22px">Journey Info</h2>
           
           <table class="journey">
<tr class="example"><td class="colum">Source</td><td class="colum"><input type="text" name="source"></td></tr>
<tr class="example"><td class="colum">Destination</td><td class="colum"><input type="text" name="destination"></td></tr>
<tr class="example"><td class="colum">JourneyDate</td><td class="colum" ><div class="hasDatepicker"><input type="text" placeholder="2014/09/04" id="journeyDt" name="journeyDate" readonly="true"/></div></td></tr>
</table>
<div class="clear"></div><br><br>
<h2 font-size="22px">Passenger Detail</h2>
<table class="journey">
<tr><th>FirstName</th><th>LastName</th><th>Address</th><th>Gender</th><th>Age</th>
<c:forEach begin="1" end="6" step="1">
<tr class="example"><td><input type="text" name="firstName"></td>
<td><input type="text" name="lastName"></td>
<td><input type="text" name="address"></td>
<td><input type="text" name="gender"></td>
<td><input type="text" name="age"></td></tr>
</c:forEach>
</table>
<center><input type="submit" value="BookTicket"></center>
             </div>
           
	</form>							
             

<!--==============================footer=================================-->
	 <footer class="journey">
			
					<div class="socials">
						<a href="www.facebook.com" class="fa fa-facebook"></a>
						<a href="www.twitter.com" class="fa fa-twitter"></a>
						<a href="www.gmail.com" class="fa fa-google-plus"></a>
					</div>
					<div class="copy">
						Your Trip (c) 2016 | <a href="#">Privacy Policy</a> | Website Designed by <a href="http://www.shitanshurai.com/" rel="nofollow">shitanshu.com</a>
					</div>
		</footer>
		<script>
		$(function (){
			$('#bookingForm').bookingForm({
				ownerEmail: '#'
			});
		})
		</script>
	</body>
</html>