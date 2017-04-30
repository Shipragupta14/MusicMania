<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 15px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
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
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>


<title>My Cart</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Payment Form Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="${pageContext.request.contextPath}/css/cartstyle.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Fugaz+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Alegreya+Sans:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</head>
<body>
	<div class="main">
		<h1>My Cart</h1>
		<div class="content">
			
			<script src="${pageContext.request.contextPath}/js/easyResponsiveTabs.js" type="text/javascript"></script>
					<script type="text/javascript">
						$(document).ready(function () {
							$('#horizontalTab').easyResponsiveTabs({
								type: 'default',           
								width: 'auto', 
								fit: true   
							});
						});
						
					</script>
						<div class="sap_tabs">
							<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
								<div class="pay-tabs">
									<h2>MusicMania
									
									<br> </h2>
									
									  <ul class="resp-tabs-list">
										  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><img src="${pageContext.request.contextPath}/images/bit.jpg" alt="Bitcoin" style="width:100px;height:78px;">
<h6>Have upto 1000 Bitcoins </h6></li> 
										 
										  <div class="clear"></div>
									  </ul>	
								</div>
								
									
									
									
		<%
		Connection conn=null;
		ResultSet rs = null;
		String url="jdbc:mysql://localhost:3306/";
		String dbName="userlogindb";
        String driver="com.mysql.jdbc.Driver";
        try{
        	
        	String email=request.getParameter("email");  
		    
			Class.forName(driver).newInstance();  
			conn = DriverManager.getConnection(url+dbName,"root", "shipra");
			PreparedStatement ps1 = conn.prepareStatement("SELECT * FROM registeruser where emailid=?"); 
			rs = ps1.executeQuery();
			int wallet = rs.getInt("wallet");
			PreparedStatement ps2 = conn.prepareStatement("SELECT * FROM jazz where price =?"); 
			rs = ps2.executeQuery();
			int pr = rs.getInt("price");
			String sql1="update jazz set wallet=wallet-price where emailid=?";
					  PreparedStatement ps3=conn.prepareStatement(sql1);
					  ps3.setString(1,"wallet");
					  ps3.executeUpdate();
			
%>
<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="payment-info">
			<h3>Your Balance :<%=wallet %></h3>
				</div>
<%
        }
}

catch(Exception e){  
	System.out.println(e);
}
 
%>
  
									
									</div>
						       			<button class="button" style="vertical-align:middle"><li><a href="${pageContext.request.contextPath}/visit_home.jsp" ></a></li>BACK</button>

										</div>	
									</div>
								</div>	
							</div>
						</div>	

		</div>

		<p class="footer">A Design by Milind , Shipra, Meenakshi and Ayush</p>
	</div>

</body>
</html>