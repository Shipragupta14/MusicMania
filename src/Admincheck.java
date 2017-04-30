import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Admincheck  {
	static Connection conn = null;
	 static String url="jdbc:mysql://localhost:3306/";
     static String dbName="userlogindb";
     static String driver="com.mysql.jdbc.Driver";
	public static boolean validate(String Username,String Password){  
		try{  
		        Class.forName(driver).newInstance();  
	             conn = DriverManager.getConnection(url+dbName,"root", "shipra");
		      
		PreparedStatement ps=conn.prepareStatement(  
		"select * from admin where username=? and password=?");  
		ps.setString(1,Username);  
		ps.setString(2,Password);  
		System.out.println(Username);
		System.out.println(Password);
		ResultSet rs=ps.executeQuery();  
		return rs.first();  
	//	System.out.println(status);
		       //  return status;
		}catch(Exception e){System.out.println(e); 
		  return false;
		}
		
	}  
}
