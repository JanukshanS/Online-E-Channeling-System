package conuser;

public class booking {

	private int bid;
	private String pname; 
	private int age;
	private String date; 
	private String dname;
	private String hname; 
	private String session;
	private double amount;
	private String cardnumber;
	private String userId;
	
	
	public booking(int bid, String pname, int age, String date, String dname, String hname, String session, double amount, String cardnumber, String userId) {

		this.bid = bid;
		this.pname = pname;
		this.age = age;
		this.date = date;
		this.dname = dname;
		this.hname = hname;
		this.session = session;
		this.amount = amount;
		this.cardnumber = cardnumber;
		this.userId = userId;
	}


	public int getBid() {
		return bid;
	}
	

	public String getPname() {
		return pname;
	}


	public int getAge() {
		return age;
	}


	public String getDate() {
		return date;
	}


	public String getDname() {
		return dname;
	}


	public String getHname() {
		return hname;
	}


	public String getSession() {
		return session;
	}


	public double getAmount() {
		return amount;
	}


	public String getCardnumber() {
		return cardnumber;
	}
	
	public String getuserId() {
		return userId;
	}

}
