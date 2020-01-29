package in.co.codeplanet.model;

public class EnrollStudent {
	
	String studentId;
	String enrollmentId;
	String studentName;
	String emailId;
	String courseId;
	String courseName;
	String courseFee;
	String batchId;
	String batchName;
	String feePaymentType;
	String amountDeposited;
	String feeSubmission;
	String amountRemaining;
	String createdBy;
	String nextPaymentDate;
	String feeStatus;
	
	public String getFeeStatus() {
		return feeStatus;
	}
	public void setFeeStatus(String feeStatus) {
		this.feeStatus = feeStatus;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getBatchName() {
		return batchName;
	}
	public void setBatchName(String batchName) {
		this.batchName = batchName;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getEnrollmentId() {
		return enrollmentId;
	}
	public void setEnrollmentId(String enrollmentId) {
		this.enrollmentId = enrollmentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getNextPaymentDate() {
		return nextPaymentDate;
	}
	public void setNextPaymentDate(String nextPaymentDate) {
		this.nextPaymentDate = nextPaymentDate;
	}
	public String getFeeSubmission() {
		return feeSubmission;
	}
	public void setFeeSubmission(String feeSubmission) {
		this.feeSubmission = feeSubmission;
	}
	public String getAmountRemaining() {
		return amountRemaining;
	}
	public void setAmountRemaining(String amountRemaining) {
		this.amountRemaining = amountRemaining;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	public String getCourseFee() {
		return courseFee;
	}
	public void setCourseFee(String courseFee) {
		this.courseFee = courseFee;
	}
	public String getBatchId() {
		return batchId;
	}
	public void setBatchId(String batchId) {
		this.batchId = batchId;
	}
	public String getFeePaymentType() {
		return feePaymentType;
	}
	public void setFeePaymentType(String feePaymentType) {
		this.feePaymentType = feePaymentType;
	}
	public String getAmountDeposited() {
		return amountDeposited;
	}
	public void setAmountDeposited(String amountDeposited) {
		this.amountDeposited = amountDeposited;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

}
