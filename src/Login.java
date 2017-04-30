

import java.io.IOException;

//import java.sql.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.*;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");  
        
        
		   String email=request.getParameter("email");  
		    String password=request.getParameter("password");  
		    
		    if(Logincheck.validate(email,password)){
		    	HttpSession s = request.getSession();
		    	s.setAttribute("user", email);
		    	System.out.println("welcome to musicmania");
		        RequestDispatcher rd=request.getRequestDispatcher("visit_home.jsp");  
		        rd.include(request,response); 
		       // RequestDispatcher rd=request.getRequestDispatcher("");  
		       // rd.forward(request,response);  
		    }  
		    else{  
		        System.out.println("Sorry username or password error");  
		        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
		        rd.include(request,response);  
		    }  
		          
		    
		    }  
    	
    	
        
    	
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		/////String Fname = request.getParameter("fname");
    	//String Lname = request.getParameter("lname");
    	
    	
    	
	}

}
