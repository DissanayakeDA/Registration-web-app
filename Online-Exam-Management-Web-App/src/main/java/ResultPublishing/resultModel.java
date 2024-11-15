package  ResultPublishing;

public class resultModel {
	
	private int resultId;
	private String studentId;
	private String examName;
	private String examId;
	private String score;
	private String grade;
	
	public resultModel(int resultId, String studentId, String examName, String examId, String score, String grade) {
		super();
		this.resultId = resultId;
		this.studentId = studentId;
		this.examName = examName;
		this.examId = examId;
		this.score = score;
		this.grade = grade;
	}

	public int getResultId() {
		return resultId;
	}

	public void setResultId(int resultId) {
		this.resultId = resultId;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getExamName() {
		return examName;
	}

	public void setExamName(String examName) {
		this.examName = examName;
	}

	public String getExamId() {
		return examId;
	}

	public void setExamId(String examId) {
		this.examId = examId;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

}
