package Registration;

public class RegisterModel {
	
	private int student_Id;
	private String stName;
	private String stEmail;
	private String mobileNumber;
	private String password;
	
	//overload constructor 
	
	public RegisterModel(int student_Id, String stName, String stEmail, String mobileNumber, String password) {
		super();
		this.student_Id = student_Id;
		this.stName = stName;
		this.stEmail = stEmail;
		this.mobileNumber = mobileNumber;
		this.password = password;
	}


	// getters and setters
	
	public int getStudent_Id() {
		return student_Id;
	}


	public void setStudent_Id(int student_Id) {
		this.student_Id = student_Id;
	}


	public String getStName() {
		return stName;
	}


	public void setStName(String stName) {
		this.stName = stName;
	}


	public String getStEmail() {
		return stEmail;
	}


	public void setStEmail(String stEmail) {
		this.stEmail = stEmail;
	}


	public String getMobileNumber() {
		return mobileNumber;
	}


	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	

}            