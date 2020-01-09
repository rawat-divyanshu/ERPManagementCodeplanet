package in.co.codeplanet.dao;

import in.co.codeplanet.model.EnrollStudent;
import in.co.codeplanet.model.StudentDetails;

public interface StudentRegistrationDao {

	int registerStudent(StudentDetails studentDetails);

	int enrollStudent(EnrollStudent studentDetails);

}
