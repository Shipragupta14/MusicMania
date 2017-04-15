import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Logincheck  {
	static Connection conn = null;
	 static String url="jdbc:mysql://localhost:3306/";
     static String dbName="userlogindb";
     static String driver="com.mysql.jdbc.Driver";
	public static boolean validate(String Emailid,String Password){  
		try{  
		        Class.forName(driver).newInstance();  
	             conn = DriverManager.getConnection(url+dbName,"root", "shipra");
		      
		PreparedStatement ps=conn.prepareStatement(  
		"select * from registeruser where emailid=? and password=?");  
		ps.setString(1,Emailid);  
		ps.setString(2,Password);  
		System.out.println(Emailid);
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
