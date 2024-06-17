package conuser;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class bookingdbutil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	public static boolean insertappointment(String pname,String age, String date, String dname, String hname, String session, String amount, String cnumber,String userId) {
		
		boolean isSuccess = false;
		
		try {
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into booking values(0,'"+pname+"','"+age+"','"+date+"','"+dname+"','"+hname+"','"+session+"','"+amount+"','"+cnumber+"','"+userId+"')";
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
	
	
	public static List<booking> selectAllBookings(){
		
		ArrayList<booking> book = new ArrayList<>();
		
		try {
			
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from booking";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int bid = rs.getInt(1);
				String pname = rs.getString(2);
				int age = rs.getInt(3);
				String date = rs.getString(4);
				String dname = rs.getString(5);
				String hname = rs.getString(6);
				String session = rs.getString(7);
				double amount = rs.getDouble(8);
				String cardnumber = rs.getString(9);
				String userid = rs.getString(10);
				
				booking b = new booking(bid,pname,age,date,dname,hname,session,amount,cardnumber,userid);
				book.add(b);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return book;
	}
	
	
	public static List<booking> getdetails(String userId){
		
		ArrayList<booking> book = new ArrayList<>();
		
		try {
			
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from booking where userId='"+userId+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int bid = rs.getInt(1);
				String pname = rs.getString(2);
				int age = rs.getInt(3);
				String date = rs.getString(4);
				String dname = rs.getString(5);
				String hname = rs.getString(6);
				String session = rs.getString(7);
				double amount = rs.getDouble(8);
				String cardnumber = rs.getString(9);
				String userid = rs.getString(10);
				
				booking b = new booking(bid,pname,age,date,dname,hname,session,amount,cardnumber,userid);
				book.add(b);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return book;
	}
	
	
	public static boolean deletebooking(String bid) {
		
		try {
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from booking where bid='"+bid+"'";
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


public static boolean updatebooking(String pname, String dname, String date, String session, String amount, String bid){
		
		try {
			
			double amt = Double.parseDouble(amount);
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "update booking set pname='"+pname+"',dname='"+dname+"',date='"+date+"',session='"+session+"',amount='"+amt+"'"
					+"where bid='"+bid+"'";
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
	
}

