<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>MusicMania</title>
		<link href="${pageContext.request.contextPath}/css/visit.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
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
		<%
boolean display_login = true;
if(session.getAttribute("user")!= null){
	display_login = false;
}


%>
				<div class="clear"> </div>
			</div>
			<div class="clear"> </div>
			<div class="sub-header">
				<div class="logo">
					<a href="${pageContext.request.contextPath}/visit_home.jsp"><img src="${pageContext.request.contextPath}/images/musicmania.png" title="logo" /></a>
				</div>
				<div class="sub-header-center">
					<form>
						<input type="text"><input type="submit"  value="search" />
					</form>
				</div>
				<div class="sub-header-right">
					<ul>
						<li id="display_login"><a href="${pageContext.request.contextPath}/login.jsp" >log in</a></li>
						
						<li id  = "display_signup"><a href="${pageContext.request.contextPath}/signup.jsp">Sign up</a></li>
						<li id = "display_welcome">Welcome: <%=session.getAttribute("user") %>
						</li>
						<li id = "display_acnt"><a href="${pageContext.request.contextPath}/admin.jsp" >Admin</a></li>
						<li id = "display_logout"><a href="${pageContext.request.contextPath}/logout.jsp">Logout</a></li>
						<li><a href="#">CART: (EMPTY) <img src="${pageContext.request.contextPath}/images/cart.png" title="cart" /></a></li>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			<div class="clear"> </div>
			<div class="top-nav">
			<div class="top-nav">
				<ul>
					<li><a href="${pageContext.request.contextPath}/visit_home.jsp">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/jazz.jsp">Jazz</a></li>
					<li><a href="${pageContext.request.contextPath}/ghazal.jsp">Ghazal</a></li>
					<li><a href="${pageContext.request.contextPath}/rock.jsp">Rock</a></li>
					<li><a href="${pageContext.request.contextPath}/pop.jsp">Pop</a></li>
					<li class="active1"><a href="${pageContext.request.contextPath}/feedback.html">Feedback</a></li>
					<div class="clear"> </div>
				</ul>
			</div>
		
			</div>
				<div class="content">
					<div class="contact">
						<div class="section group">				
				<div class="col span_1_of_3">
					<div class="contact_info">
			    	 	<h3>Find Us Here</h3>
			    	 		<div class="map">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3556.964572360701!2d75.92135051463679!3d26.93633758311735!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396dba21e8a1d1c9%3A0x5ab565cce4d44c2b!2sLNMIIT!5e0!3m2!1sen!2sin!4v1492015653696" width="300" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>					   		</div>
      				</div>
      			
				</div>				
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h3>Contact Us</h3>
					    <form>
					    	<div>
						    	<span><label>NAME</label></span>
						    	<span><input type="text" value=""></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span><input type="text" value=""></span>
						    </div>
						    <div>
						     	<span><label>MOBILE.NO</label></span>
						    	<span><input type="text" value=""></span>
						    </div>
						    <div>
						    	<span><label>SUBJECT</label></span>
						    	<span><textarea> </textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" value="Submit"><a href="https://mail.google.com/mail/u/0/#inbox?compose=15b85506a812856b"></span>
						  </div>
					    </form>
				    </div>
  				</div>				
			  </div>
					</div>
			</div>
		</div>
			<div class="clear"> </div>
			<div class="footer">
				<div class="wrap">
				<div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<h3>INFORMATION</h3>
					<ul>
						<li><a href="#">About us</a></li>
						<li><a href="#">Sitemap</a></li>
						<li><a href="#">Contact</a></li>
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
					<p>A Design by Milind , Shipra, Meenakshi and Ayush</a></p>
				</div>
			</div>
			</div>
		</div>
		<script>
var n = document.getElementById("display_login");
var p = document.getElementById("display_signup");
var m = document.getElementById("display_welcome");
var l = document.getElementById("display_logout");


console.log(n.innerHTML);
if(<%=display_login%>){
	n.style.display = "inline-block";
	p.style.display = "inline-block";
	m.style.display = "none";
	l.style.display = "none";
	
	
}else{
	n.style.display = "none";
	p.style.display = "none";
	m.style.display = "inline-block";
	l.style.display = "inline-block";


}

</script>

</body>
</html>