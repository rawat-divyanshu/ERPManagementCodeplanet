package in.co.codeplanet.service;

import in.co.codeplanet.model.EnrollStudent;
import in.co.codeplanet.model.StudentDetails;

public interface StudentRegistrationService {

	int registerStudent(StudentDetails studentDetails);

	int enrollStudent(EnrollStudent enrollStudent);

}
