<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html lang="en">
	<head>
	<style type="text/css">

	</style>
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
		<script>
		$(document).ready(function(){
			$().UItoTop({ easingType: 'easeOutQuart' });
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
		<!--================================ ticket ============== -->
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
               <div class="divTableResult">
            <div class="grid_5 prefix_1">
					<h2>Welcome</h2>
					<img src="images/luggage_passport.jpg" alt="" class="img_inner fleft">
				</div>
             <h2 font-size="22px">Journey Info</h2>
           
           <table class="journey">
<tr class=row><td>PNR : </td><td>${ticket.pnr}</td></tr>
<tr class=row><td>Amount :</td><td>${ticket.amount}</td></tr>
</table>
<br>
<h2 font-size="22px">Seat Info</h2>
<table class="journey">
<tr class=example><td class="colum">BerthNo</td><td class="colum">CoachNo</td><td class="colum">Status</td>
<c:forEach var="allotment" items="${ticket.allotments}">
	<tr class=example><td class="colum">	<c:out value="${allotment.berthNo}" /></td> 
	<td class="colum"><c:out value="${allotment.coachNo}"/></td> 
		<td class="colum"><c:out value="${allotment.status}" /></td></tr>
	</c:forEach>
	</table>
	<br>
 <h2 font-size="22px">Passenger Details</h2>
<table class="journey">
<tr class=example><td class="colum">FirstName</td><td class="colum">LastName</td><td class="colum">Address</td><td class="colum">Gender</td><td class="colum">Age</td>
<c:forEach var="ob" items="${pass.passengers}">
<tr><td class="colum"> <c:out value="${ob.firstName}" /></td>
<td class="colum"> <c:out value="${ob.lastName}" /></td>
<td class="colum"> <c:out value="${ob.address}" /></td>
<td class="colum"><c:out value="${ob.gender}" /></td>
<td class="colum"><c:out value="${ob.age}" /></td></tr>
</c:forEach>
</table>
             </div>
 
<!--==============================footer=================================-->
	 <footer class="journey">
			
					<div class="socials">
						<a href="www.facebook.com" class="fa fa-facebook"></a>
						<a href="www.twitter.com" class="fa fa-twitter"></a>
						<a href="www.gmail.com" class="fa fa-google-plus"></a>
					</div>
					<div class="copy">
						Your Trip (c) 2016 | <a href="#">Privacy Policy</a> | Website Designed by <a href="http://www.shitanshurai.com/" rel="nofollow">shitanshu Rai.com</a>
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