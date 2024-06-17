package conuser;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class doctordbutil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean searchdoctor(String dname, String hname){
		
			try {
				
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from doctor where dname='"+dname+"'and hosname ='"+hname+"'";
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
	
	
	public static List<doctor> getdetails(String dname,String hname){
		
		ArrayList<doctor> doc = new ArrayList<>();
		
		try {
			
			con = dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from doctor where dname='"+dname+"'and hosname='"+hname+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int did = rs.getInt(1);
				String name = rs.getString(2);
				String hospital = rs.getString(3);
				String spec = rs.getString(4);
				String session = rs.getString(5);
				Double amount = rs.getDouble(6);
				
				doctor d = new doctor(did,name,hospital,spec,session,amount);
				doc.add(d);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return doc;
	}
}
