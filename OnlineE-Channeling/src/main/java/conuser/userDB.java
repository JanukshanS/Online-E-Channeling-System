package conuser;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userDB {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean validate(String username, String password){
		
		try {
			
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where username='"+username+"'and password ='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	
		//Insert Data into Database
		public static boolean insertuser(String name,String phone, String email, String username, String password) {
			
			boolean isSuccess = false;
			
			
			try {
				con = dbconnect.getConnection();
				stmt = con.createStatement();
				String sql = "insert into user values(0,'"+name+"','"+phone+"','"+email+"','"+username+"','"+password+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
		
		public static boolean updateuser(String id, String name,String phone, String email, String username, String password) {
			
			try {
				con = dbconnect.getConnection();
				stmt = con.createStatement();
				String sql = "update user set name='"+name+"',phone='"+phone+"',email='"+email+"',username='"+username+"',password='"+password+"'"
						+"where userid='"+id+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
		public static List<User> getuserdetails(String Id){
			
			int convertedid = Integer.parseInt(Id);
			ArrayList<User> user = new ArrayList<>();
			
			try {
				
				con = dbconnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from user where userid='"+convertedid+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String phone = rs.getString(3);
					String email = rs.getString(4);
					String usernm = rs.getString(5);
					String userpwd = rs.getString(6);
					
					User u = new User(id,name,phone,email,usernm,userpwd);
					user.add(u);
				}
				
			}catch(Exception e){
				e.printStackTrace();
			}
			
			return user;
		}
		
		
		public static boolean deleteuser(String Id) {
			
			int convertedid = Integer.parseInt(Id);
			
			try {
				con = dbconnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from user where userid='"+convertedid+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
public static List<User> getdetails(String username){
			
			ArrayList<User> user = new ArrayList<>();
			
			try {
				
				con = dbconnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from user where username='"+username+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String phone = rs.getString(3);
					String email = rs.getString(4);
					String usernm = rs.getString(5);
					String userpwd = rs.getString(6);
					
					User u = new User(id,name,phone,email,usernm,userpwd);
					user.add(u);
				}
				
			}catch(Exception e){
				e.printStackTrace();
			}
			
			return user;
		}
}
