

import java.io.IOException;


import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import javax.servlet.*;
/**
 * Servlet implementation class Signup
 */
@WebServlet("/signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");  
        PrintWriter pw = response.getWriter(); 
        Connection conn=null;
        String url="jdbc:mysql://localhost:3306/";
        String dbName="userlogindb";
        String driver="com.mysql.jdbc.Driver";
        
        try{
        	String Fname = request.getParameter("fname");
        	String Lname = request.getParameter("lname");
        	String Emailid = request.getParameter("email");
        	String Password = request.getParameter("password");
        	
        	 Class.forName(driver).newInstance();  
             conn = DriverManager.getConnection(url+dbName,"root", "shipra");
             PreparedStatement pst =(PreparedStatement) conn.prepareStatement("insert into registeruser(fname,lname,emailid,password) values(?,?,?,?)");
             pst.setString(1,Fname);  
             pst.setString(2,Lname);  
             pst.setString(3,Emailid);  
             pst.setString(4,Password);  
             int i = pst.executeUpdate();
            // conn.commit(); 
             String msg=" ";
             if(i!=0){  
               msg="Record has been inserted";
               pw.println("<font size='6' color=blue>" + msg + "</font>");  


             }  
             else{  
               msg="failed to insert the data";
               pw.println("<font size='6' color=blue>" + msg + "</font>");
              }  
          
            // String action = request.getParameter("action");
     		//if (action != null) {
     			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
     			rd.forward(request, response);
             pst.close();
        
     		
     	}
	
        catch (Exception e){  
            pw.println(e);  
          }  


	}
}
