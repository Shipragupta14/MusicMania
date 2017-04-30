

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Search
 */
@WebServlet("/search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search() {
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
     //   Statement statement = null;
        ResultSet rs = null;
        String url="jdbc:mysql://localhost:3306/";
        String dbName="userlogindb";
        String driver="com.mysql.jdbc.Driver";
        
        try{
		String album = request.getParameter("album");
		//String artist = request.getParameter("artist");
		 Class.forName(driver).newInstance();  
         conn = DriverManager.getConnection(url+dbName,"root", "shipra");
        // statement = conn.createStatement();
       //  rs = statement.executeQuery("SELECT * FROM search");
		if ( album!= null && album.length() > 0  ) {
			 PreparedStatement ps = conn.prepareStatement("SELECT * FROM search WHERE artist = ?"); // ? = placeholder
			 ps.setString(1, album); // Bind the value to the placeholder
			 rs = ps.executeQuery(); // Execute the prepared statement and fetch results
			 if(rs.first()){
				 rs.last();
			     System.out.println("total rows is : " + rs.getRow());
				 System.out.println("hello");
				 Songs[] sa = new Songs[rs.getRow()];
				 rs.first();
				 sa[0] = new Songs();
				 int i = 0;
				 while(rs.next()){
					 sa[i].setName(rs.getString("album"));
					 
				 }
				// System.out.println("$$$$$$$$$$$");

				 System.out.println(sa[0].getName());
				 
			 }else{
				 System.out.println("not found");

			 }
			// System.out.println("************");
			 System.out.println(album);
		   // rs = statement.executeQuery("SELECT * FROM search WHERE album = '" + album + "'" );
		}
//		else if (artist!= null && artist.length() > 0){
//			PreparedStatement ps = conn.prepareStatement("SELECT * FROM search WHERE artist = ?");
//			ps.setString(2, artist); // Bind the value to the placeholder
//			 rs = ps.executeQuery(); // Execute the prepared statement and fetch results
//		}
		else{
			System.out.println("Please search again!!");
		}
        }
        catch (Exception e){  
        	System.out.println(e);
        }
	}

}
