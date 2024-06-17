package conuser;

public class doctor {

	private int did;
	private String dname;
	private String hospital;
	private String specialization;
	private String session;
	private double amount;
	
	public doctor() {
		
	}
	
	public doctor(int did, String dname, String hospital, String specialization,String session,double amount) {
		this.did = did;
		this.dname = dname;
		this.hospital = hospital;
		this.specialization = specialization;
		this.session = session;
		this.amount= amount;
	}


	public int getDid() {
		return did;
	}


	public String getDname() {
		return dname;
	}


	public String getHospital() {
		return hospital;
	}


	public String getSpecialization() {
		return specialization;
	}
	
	public String getSession() {
		return session;
	}
	
	public Double getAmount() {
		return amount;
	}

}
