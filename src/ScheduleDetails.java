
public class ScheduleDetails {
	private String examID, examName, examDate, examTime, examDuration;

	public ScheduleDetails() {
		super();
	}

	public ScheduleDetails(String examID, String examName, String examDate, String examTime, String examDuration) {
		super();
		this.examID = examID;
		this.examName = examName;
		this.examDate = examDate;
		this.examTime = examTime;
		this.examDuration = examDuration;
	}

	public String getExamID() {
		return examID;
	}

	public void setExamID(String examID) {
		this.examID = examID;
	}

	public String getExamName() {
		return examName;
	}

	public void setExamName(String examName) {
		this.examName = examName;
	}

	public String getExamDate() {
		return examDate;
	}

	public void setExamDate(String examDate) {
		this.examDate = examDate;
	}

	public String getExamTime() {
		return examTime;
	}

	public void setExamTime(String examTime) {
		this.examTime = examTime;
	}

	public String getExamDuration() {
		return examDuration;
	}

	public void setExamDuration(String examDuration) {
		this.examDuration = examDuration;
	}

}
