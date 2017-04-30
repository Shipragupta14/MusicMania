<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Musicstore Website Template | Favorites :: W3layouts</title>
		<link href="${pageContext.request.contextPath}/css/visit.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<style>


h1 {
    color: white;
font-family: verdana;
}
.button {
  display: inline-block;
  border-radius: 2px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 12px;
  padding: 10px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 2px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -10px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 15px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

</style>
	</head>
	<body>
<%
boolean display_login = true;
if(session.getAttribute("user")!= null){
	display_login = false;
}


%>
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
				<ul>
					<li><a href="${pageContext.request.contextPath}/visit_home.jsp">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/jazz.jsp">Jazz</a></li>
					<li class="active1"><a href="${pageContext.request.contextPath}/ghazal.jsp">Ghazal</a></li>
					<li><a href="${pageContext.request.contextPath}/rock.jsp">Rock</a></li>
					<li><a href="${pageContext.request.contextPath}/pop.jsp">Pop</a></li>
					<li><a href="${pageContext.request.contextPath}/feedback.jsp">Feedback</a></li>
					<div class="clear"> </div>
				</ul>
			</div>
			
			</div><br />
				<div class="content">
					<div class="products-box">
					<div class="products">
						<h5><span>Ghazal </span>Songs</h5>
						<div class="section group">
						
<%
		Connection conn=null;
		ResultSet rs = null;
		String url="jdbc:mysql://localhost:3306/";
		String dbName="userlogindb";
        String driver="com.mysql.jdbc.Driver";
        try{
			Class.forName(driver).newInstance();  
			conn = DriverManager.getConnection(url+dbName,"root", "shipra");
			PreparedStatement ps1 = conn.prepareStatement("SELECT * FROM ghazal "); 
			rs = ps1.executeQuery();
			while(rs.next()){
				String album = rs.getString("album");
				int pr = rs.getInt("price");
				String art = rs.getString("artist");
				String path = rs.getString("path");
				String songs = rs.getString("songs");
%>
		<div class="grid_1_of_5 images_1_of_5">
			<img src="${pageContext.request.contextPath}/<%=path %>">
			<h3> <%=art %> - <%=album %></h3>
			<h4>Rs. <%=pr %></h4>
			<!--  <span>BUY THIS </span>-->
			<audio controls>
			<source src="${pageContext.request.contextPath}/<%=songs %>" type="audio/mpeg"></audio>
			<button class="button" style="vertical-align:middle"><a href="${pageContext.request.contextPath}/<%=songs %>" download />DOWNLOAD</button>
			
	    </div>
<%
	}
}

catch(Exception e){  
	System.out.println(e);
}
 
%>
						<!--  	<div class="grid_1_of_5 images_1_of_5">
								 <img src="${pageContext.request.contextPath}/images/jazbah.jpg">
								 <h3>Jazbah By Jagjit Singh</h3>
								 <h4>Rs. 99.00</h4>
<button class="button" style="vertical-align:middle"><span>BUY THIS </span></button>
						   </div>
							<div class="grid_1_of_5 images_1_of_5">
								 <img src="${pageContext.request.contextPath}/images/saher.jpg">
								 <h3> Saher by Jagjit Singh</h3>
								<h4>Rs. 49.00</h4>
<button class="button" style="vertical-align:middle"><span>BUY THIS </span></button>
						    </div>
							<div class="grid_1_of_5 images_1_of_5">
								<img src="${pageContext.request.contextPath}/images/shikwa.png">
								 <h3>  Shikwa by Gulzar</h3>
								 <h4>Rs. 120.00</h4>
<button class="button" style="vertical-align:middle"><span>BUY THIS </span></button>
							</div>
							<div class="grid_1_of_5 images_1_of_5">
								 <img src="${pageContext.request.contextPath}/images/khaya.jpg">
								 <h3>  Khayal By Jagjit Singh</h3>
								 <h4>Rs. 200.00</h4>
<button class="button" style="vertical-align:middle"><span>BUY THIS </span></button>
							</div>
							<div class="grid_1_of_5 images_1_of_5">
								 <img src="${pageContext.request.contextPath}/images/fari.jpg">
								 <h3>Koi Fariyad By Jagjit Singh</h3>
								 <h4>Rs. 120.00</h4>
<button class="button" style="vertical-align:middle"><span>BUY THIS </span></button>
							</div> -->
						</div>
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
		</div>
		<script>
var n = document.getElementById("display_login");
var p = document.getElementById("display_signup");
var m = document.getElementById("display_welcome");
var l = document.getElementById("display_logout");
var y = document.getElementById("display_acnt");

console.log(n.innerHTML);
if(<%=display_login%>){
	n.style.display = "inline-block";
	p.style.display = "inline-block";
	m.style.display = "none";
	l.style.display = "none";
	y.style.display = "none";
	
}else{
	n.style.display = "none";
	p.style.display = "none";
	m.style.display = "inline-block";
	l.style.display = "inline-block";
	y.style.display = "inline-block";

}

</script>
		
</body>
</html>