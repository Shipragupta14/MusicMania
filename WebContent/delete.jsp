
<%@page import="java.sql.*"%>
<%

String id=request.getParameter("id");
int no=Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userlogindb", "root", "shipra");
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM registeruser WHERE id = '"+no+"'");
response.sendRedirect("admin.jsp");
}
catch(Exception e){}
%>