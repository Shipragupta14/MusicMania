<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
h1 {
    color: White;
}
</style>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>MusicMania </title>
		<link href="${pageContext.request.contextPath}/css/visit.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>
		  <script>

			    $(function () {
						      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
	</head>
	<body>

		<div class="wrap">
	
			<div class="header">
	
			<div class="top-header">
		
				<div class="top-header-right">
					<ul>
						<li><a href="#">CURRENCY:</a></li>
						<li>
							<select>
								<option>Rupees</option>
							</select>
						</li>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			<div class="clear"> </div>
			<div class="sub-header">
				<div class="logo">
					<a href="index.html"><img src="${pageContext.request.contextPath}/images/musicmania.png" title="logo" /></a>
				
				<h1> Welcome To MUSICMANIA</h1>
				</div>
				<div class="sub-header-center">
					<form action="search" method="POST">
						Search By Album: <input type="text" name="album">
						
   					 <input type ="submit" value="SEARCH"></form>
				</div>
				<div class="sub-header-right">
					<ul>
						<li><a href="${pageContext.request.contextPath}/login.jsp">log in</a></li>
						<li><a href="${pageContext.request.contextPath}/signup.jsp">Sign up</a></li>
						<li><a href="#">Your account</a></li>
						<li><a href="#">CART: (EMPTY) <img src="${pageContext.request.contextPath}/images/cart.png" title="cart" /></a></li>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			<div class="clear"> </div>
			<div class="top-nav">
				<ul>
					<li class="active1"><a href="${pageContext.request.contextPath}/visit_home.jsp">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/jazz.jsp">Jazz</a></li>
					<li><a href="${pageContext.request.contextPath}/ghazal.jsp">Ghazal</a></li>
					<li><a href="${pageContext.request.contextPath}/rock.jsp">Rock</a></li>
					<li><a href="${pageContext.request.contextPath}/pop.jsp">Pop</a></li>
					<li><a href="${pageContext.request.contextPath}/feedback.jsp">Feedback</a></li>
					<div class="clear"> </div>
				</ul>
			</div>
	
			</div>
			
					<div class="image-slider">
			
					    <ul class="rslides" id="slider1">
					      <li><img src="${pageContext.request.contextPath}/images/closer.jpg" alt=""></li>
					      <li><img src="${pageContext.request.contextPath}/images/letme.jpg" alt=""></li>
					      <li><img src="${pageContext.request.contextPath}/images/kudi.jpg" alt=""></li>
					    </ul>

					</div>
				
			
			<div class="clear"> </div>
			<div class="footer">
				<div class="wrap">
				<div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<h3>INFORMATION</h3>
					<ul>
						<li><a href="https://www.linkedin.com/in/ayush-mathur-3b895a104/">About us</a></li>
						<li><a href="">Sitemap</a></li>
						<li><a href="https://www.linkedin.com/in/ayush-mathur-3b895a104/">Contact</a></li>
				
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h3>OUR OFFERS</h3>
					<ul>
						<li><a href="#">New products</a></li>
						<li><a href="#">top sellers</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h3>YOUR ACCOUNT</h3>
					<ul>
						<li><a href="#">Your Account</a></li>
						<li><a href="#">Personal info</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4 footer-lastgrid">
					<h3>Get in touch</h3>
					<ul>
						<li><a href="https://www.facebook.com/Ayush17071996"><img src="${pageContext.request.contextPath}/images/facebook.png" title="facebook" /></a></li>
					</ul>
					<p>A Design by Milind , Shipra, Meenakshi and Ayush </p>
				</div>
			</div>
			</div>
		</div>
	</head>
</body>
</html>