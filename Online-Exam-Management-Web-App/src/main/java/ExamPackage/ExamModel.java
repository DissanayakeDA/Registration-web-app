package ExamPackage;


public class ExamModel {

	 private int paperID;
	 private String Title;
	 private String Date;
	 private String TotalParticipants;
	 private String Duration;
	 private String TotalQuestions;
	 private String Time;
	 private String Password;
	 
	

	public String getTime() {
		return Time;
	}


	public void setTime(String time) {
		Time = time;
	}


	public String getPassword() {
		return Password;
	}


	public void setPassword(String password) {
		Password = password;
	}


	public ExamModel(int paperID, String title, String date, String totalParticipants, String duration, String totalQuestions, String time, String password) {
			
		 	super();
			this.paperID = paperID;
			Title = title;
			Date = date;
			TotalParticipants = totalParticipants;
			Duration = duration;
			TotalQuestions = totalQuestions;
			Time = time;
			Password = password;
			
		
		}


	public int getPaperID() {
		return paperID;
	}


	public void setPaperID(int paperID) {
		this.paperID = paperID;
	}


	public String getTitle() {
		return Title;
	}


	public void setTitle(String title) {
		Title = title;
	}


	public String getDate() {
		return Date;
	}


	public void setDate(String date) {
		Date = date;
	}


	public String getTotalParticipants() {
		return TotalParticipants;
	}


	public void setTotalParticipants(String totalParticipants) {
		TotalParticipants = totalParticipants;
	}


	public String getDuration() {
		return Duration;
	}


	public void setDuration(String duration) {
		Duration = duration;
	}


	public String getTotalQuestions() {
		return TotalQuestions;
	}


	public void setTotalQuestions(String totalQuestions) {
		TotalQuestions = totalQuestions;
	}
	 
}
