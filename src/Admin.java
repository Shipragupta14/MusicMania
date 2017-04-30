

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");  
        
        
		   String username=request.getParameter("username");  
		    String password=request.getParameter("password");  
		    
		    if(Admincheck.validate(username,password)){
		    	HttpSession s = request.getSession();
		    	s.setAttribute("user", username);
		    	System.out.println("Welcome to Admin page of Music Mania");
		        RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");  
		        rd.include(request,response); 
		       // RequestDispatcher rd=request.getRequestDispatcher("");  
		       // rd.forward(request,response);  
		    }  
		    else{  
		        System.out.println("Sorry username or password error");  
		        RequestDispatcher rd=request.getRequestDispatcher("admin_login.jsp");  
		        rd.include(request,response);  
		    }  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
