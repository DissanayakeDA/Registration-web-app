//RegisterModel
package TeacherLogin;

public class TeacherLogInModel {
	

	private String tName;
	private String tEmail;
	
	private String tpass;

	public TeacherLogInModel(String tName, String tEmail, String tpass) {
		
		this.tName = tName;
		this.tEmail = tEmail;
		this.tpass = tpass;
	}

	public String gettName() {
		return tName;
	}

	public void settName(String tName) {
		this.tName = tName;
	}

	public String gettEmail() {
		return tEmail;
	}

	public void settEmail(String tEmail) {
		this.tEmail = tEmail;
	}

	public String getTpass() {
		return tpass;
	}

	public void setTpass(String tpass) {
		this.tpass = tpass;
	}

	
	
	

}            