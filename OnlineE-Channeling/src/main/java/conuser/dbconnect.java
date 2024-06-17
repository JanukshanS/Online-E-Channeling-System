package conuser;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/hospital";
	private static String uname = "root";
	private static String pwd = "workbench@24143";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,uname,pwd);
		}
		catch(Exception e) {
			System.out.println("Database Connection Unsuccessful"); 
		}
		
		return con;
	}
}
