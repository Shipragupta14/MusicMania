<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
h1 {
    color: white;
    text-align: center;
	
}
.center {
    margin: auto;
    width: 60%;
    border: 3px solid green;
    padding: 10px;
	  color: white;
}
</style>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/loginstyle.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", myfunction() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
</head>
<body>
<p style="text-align:center;">
<input type="image" src="${pageContext.request.contextPath}/images/musicmania.png" alt="Submit" width="400" height="300"> 
</p>
		<form action = "login" method = "GET">
		   <div class="lable-2">
		        <input type="text" name="email" class="text" value="Email id " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'your@email.com ';}">
		        <input type="password" name="password" class="text" value="Password " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password ';}">
		   <div class="submit">
		<input type="submit" value="Log In" >


<br>
		<h1 style="text-align:center;">
	
	
	 Haven't Registered Yet? <br> <br> </h1>
	<a href="${pageContext.request.contextPath}/signup.jsp"> <div class="center">
  <p><b>Signup here</b></p>
</div>
 </a>

</div>
</div>
</form>

</body>
</html>