<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>

</head>
<body>
<p style="text-align:center;">
<input type="image" src="${pageContext.request.contextPath}/images/musicmania.png" alt="Submit" width="400" height="300"> 
</p>
<div class="main">
	
      <h2> Signup here</h2>
	  
		<form action = "signup" method = "POST">
		   <div class="lable">
		        <div class="col_1_of_2 span_1_of_2">	<input type="text" class="text" value="First Name" name = "fname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}" id="active"></div>
                <div class="col_1_of_2 span_1_of_2"><input type="text" class="text" value="Last Name" name = "lname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}"></div>
                <div class="clear"> </div>
		   </div>
		   <div class="lable-2">
		        <input type="text" class="text" value="Email id " name = "email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'your@email.com ';}" required>
		        <input type="password" class="text" value="Password " name = "password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password ';}">
		   </div>
		   <div class="submit">
			  <input type="submit" value="Create account" >
		   </div>
		   <div class="clear"> </div>
		</form>
		
		</div>
		
   		<div class="copy-right">
			
		</div>
				
</body>
</html>